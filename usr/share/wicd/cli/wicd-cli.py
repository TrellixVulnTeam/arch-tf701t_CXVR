#!/usr/bin/python2

""" Scriptable command-line interface. """
#       This program is free software; you can redistribute it and/or modify
#       it under the terms of the GNU General Public License as published by
#       the Free Software Foundation; either version 2 of the License, or
#       (at your option) any later version.
#
#       This program is distributed in the hope that it will be useful,
#       but WITHOUT ANY WARRANTY; without even the implied warranty of
#       MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#       GNU General Public License for more details.
#
#       You should have received a copy of the GNU General Public License
#       along with this program; if not, write to the Free Software
#       Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#       MA 02110-1301, USA.

import optparse
import dbus
import dbus.service
import sys
from wicd import misc
from wicd.translations import _

misc.RenameProcess('wicd-cli')

exit_status = 0

if getattr(dbus, 'version', (0, 0, 0)) < (0, 80, 0):
    import dbus.glib
else:
    from dbus.mainloop.glib import DBusGMainLoop
    DBusGMainLoop(set_as_default=True)

bus = dbus.SystemBus()
try:
    daemon = dbus.Interface(
        bus.get_object('org.wicd.daemon', '/org/wicd/daemon'),
        'org.wicd.daemon'
    )
    wireless = dbus.Interface(
        bus.get_object('org.wicd.daemon', '/org/wicd/daemon/wireless'),
        'org.wicd.daemon.wireless'
    )
    wired = dbus.Interface(
        bus.get_object('org.wicd.daemon', '/org/wicd/daemon/wired'),
        'org.wicd.daemon.wired'
    )
    config = dbus.Interface(
        bus.get_object('org.wicd.daemon', '/org/wicd/daemon/config'),
        'org.wicd.daemon.config'
    )
except dbus.DBusException:
    print 'Error: Could not connect to the daemon. ' + \
        'Please make sure it is running.'
    sys.exit(3)

if not daemon:
    print 'Error connecting to wicd via D-Bus. ' + \
        'Please make sure the wicd service is running.'
    sys.exit(3)

parser = optparse.OptionParser()

parser.add_option('--network', '-n', type='int', default=-1)
parser.add_option('--network-property', '-p')
parser.add_option('--set-to', '-s')
parser.add_option('--name', '-m')

parser.add_option('--scan', '-S', default=False, action='store_true')
parser.add_option('--save', '-w', default=False, action='store_true')
parser.add_option('--list-networks', '-l', default=False, action='store_true')
parser.add_option('--network-details', '-d', default=False, action='store_true')
parser.add_option('--disconnect', '-x', default=False, action='store_true')
parser.add_option('--connect', '-c', default=False, action='store_true')
parser.add_option('--list-encryption-types', '-e', default=False,
    action='store_true')
# short options for these aren't great.
parser.add_option('--wireless', '-y', default=False, action='store_true')
parser.add_option('--wired', '-z', default=False, action='store_true')
parser.add_option('--load-profile', '-o', default=False, action='store_true')
parser.add_option('--status', '-i', default=False,
    action='store_true') # -i(nfo)

options, arguments = parser.parse_args()

op_performed = False

if not (options.wireless or options.wired) and not options.status:
    print "Please use --wireless or --wired to specify " + \
    "the type of connection to operate on."

if options.status:
    status, info = daemon.GetConnectionStatus()
    if status in (misc.WIRED, misc.WIRELESS):
        connected = True
        status_msg = _('Connected')
        if status == misc.WIRED:
            conn_type = _('Wired')
        else:
            conn_type = _('Wireless')
    else:
        connected = False
        status_msg = misc._const_status_dict[status]

    print _('Connection status') + ': ' + status_msg
    if connected:
        print _('Connection type') + ': ' + conn_type
        if status == misc.WIRELESS:
            strength = daemon.FormatSignalForPrinting(info[2])
            print _('Connected to $A at $B (IP: $C)') \
                .replace('$A', info[1]) \
                .replace('$B', strength) \
                .replace('$C', info[0])
            print _('Network ID: $A') \
                .replace('$A', info[3])
        else:
            print _('Connected to wired network (IP: $A)') \
                .replace('$A', info[0])
    else:
        if status == misc.CONNECTING:
            if info[0] == 'wired':
                print _('Connecting to wired network.')
            elif info[0] == 'wireless':
                print _('Connecting to wireless network "$A".') \
                    .replace('$A', info[1])
    op_performed = True

# functions
def is_valid_wireless_network_id(network_id):
    """ Check if it's a valid wireless network. '"""
    if not (network_id >= 0 \
            and network_id < wireless.GetNumberOfNetworks()):
        print 'Invalid wireless network identifier.'
        sys.exit(1)

def is_valid_wired_network_id(network_id):
    """ Check if it's a valid wired network. '"""
    num = len(wired.GetWiredProfileList())
    if not (network_id < num and \
            network_id >= 0):
        print 'Invalid wired network identifier.'
        sys.exit(4)

def is_valid_wired_network_profile(profile_name):
    """ Check if it's a valid wired network profile. '"""
    if not profile_name in wired.GetWiredProfileList():
        print 'Profile of that name does not exist.'
        sys.exit(5)

if options.scan and options.wireless:
    # synchronized scan
    wireless.Scan(True)
    op_performed = True

if options.load_profile and options.wired:
    is_valid_wired_network_profile(options.name)
    wired.ReadWiredNetworkProfile(options.name)
    op_performed = True

if options.list_networks:
    if options.wireless:
        print '#\tBSSID\t\t\tChannel\tESSID'
        for network_id in range(0, wireless.GetNumberOfNetworks()):
            print '%s\t%s\t%s\t%s' % (network_id,
                wireless.GetWirelessProperty(network_id, 'bssid'),
                wireless.GetWirelessProperty(network_id, 'channel'),
                wireless.GetWirelessProperty(network_id, 'essid'))
    elif options.wired:
        print '#\tProfile name'
        i = 0
        for profile in wired.GetWiredProfileList():
            print '%s\t%s' % (i, profile)
            i += 1
    op_performed = True

if options.network_details:
    if options.wireless:
        if options.network >= 0:
            is_valid_wireless_network_id(options.network)
            network_id = options.network
        else:
            network_id = wireless.GetCurrentNetworkID(0)
            is_valid_wireless_network_id(network_id)
            # we're connected to a network, print IP
            print "IP: %s" % wireless.GetWirelessIP(0)

        print "Essid: %s" % wireless.GetWirelessProperty(network_id, "essid")
        print "Bssid: %s" % wireless.GetWirelessProperty(network_id, "bssid")
        if wireless.GetWirelessProperty(network_id, "encryption"):
            print "Encryption: On"
            print "Encryption Method: %s" % \
                wireless.GetWirelessProperty(network_id, "encryption_method")
        else:
            print "Encryption: Off"
        print "Quality: %s" % \
            wireless.GetWirelessProperty(network_id, "quality")
        print "Mode: %s" % \
            wireless.GetWirelessProperty(network_id, "mode")
        print "Channel: %s" % \
            wireless.GetWirelessProperty(network_id, "channel")
        print "Bit Rates: %s" % \
            wireless.GetWirelessProperty(network_id, "bitrates")
    op_performed = True

# network properties

if options.network_property:
    options.network_property = options.network_property.lower()
    if options.wireless:
        if options.network >= 0:
            is_valid_wireless_network_id(options.network)
            network_id = options.network
        else:
            network_id = wireless.GetCurrentNetworkID(0)
            is_valid_wireless_network_id(network_id)
        if not options.set_to:
            print wireless.GetWirelessProperty(network_id,
                options.network_property)
        else:
            wireless.SetWirelessProperty(network_id, \
                    options.network_property, options.set_to)
    elif options.wired:
        if not options.set_to:
            print wired.GetWiredProperty(options.network_property)
        else:
            wired.SetWiredProperty(options.network_property, options.set_to)
    op_performed = True

if options.disconnect:
    daemon.Disconnect()
    if options.wireless:
        if wireless.GetCurrentNetworkID(0) > -1:
            print "Disconnecting from %s on %s" % \
                (wireless.GetCurrentNetwork(0),
                 wireless.DetectWirelessInterface())
    elif options.wired:
        if wired.CheckPluggedIn():
            print "Disconnecting from wired connection on %s" % \
                wired.DetectWiredInterface()
    op_performed = True

if options.connect:
    check = None
    if options.wireless and options.network > -1:
        is_valid_wireless_network_id(options.network)
        name = wireless.GetWirelessProperty(options.network, 'essid')
        encryption = wireless.GetWirelessProperty(options.network, 'enctype')
        print "Connecting to %s with %s on %s" % (name, encryption,
                wireless.DetectWirelessInterface())
        wireless.ConnectWireless(options.network)

        check = wireless.CheckIfWirelessConnecting
        status = wireless.CheckWirelessConnectingStatus
        message = wireless.CheckWirelessConnectingMessage
    elif options.wired:
        print "Connecting to wired connection on %s" % \
            wired.DetectWiredInterface()
        wired.ConnectWired()

        check = wired.CheckIfWiredConnecting
        status = wired.CheckWiredConnectingStatus
        message = wired.CheckWiredConnectingMessage
    else:
        check = lambda: False
        status = lambda: False
        message = lambda: False

    # update user on what the daemon is doing
    last = None
    if check:
        while check():
            next_ = status()
            if next_ != last:
                # avoid a race condition where status is updated to "done" after
                # the loop check
                if next_ == "done":
                    break
                print message()
                last = next_
        print "done!"
        if status() != u'done':
            exit_status = 6
        op_performed = True

def str_properties(prop):
    """ Pretty print optional and required properties. """
    if len(prop) == 0:
        return "None"
    else:
        tmp = [(x[0], x[1].replace('_', ' ')) for x in type['required']]
        return ', '.join("%s (%s)" % (x, y) for x, y in tmp)

if options.wireless and options.list_encryption_types:
    et = misc.LoadEncryptionMethods()
    # print 'Installed encryption templates:'
    print '%s\t%-20s\t%s' % ('#', 'Name', 'Description')
    i = 0
    for t in et:
        print '%s\t%-20s\t%s' % (i, t['type'], t['name'])
        print '  Req: %s' % str_properties(t['required'])
        print '---'
        # don't print optionals (yet)
        #print '  Opt: %s' % str_properties(type['optional'])
        i += 1
    op_performed = True

if options.save and options.network > -1:
    if options.wireless:
        is_valid_wireless_network_id(options.network)
        config.SaveWirelessNetworkProfile(options.network)
    elif options.wired:
        config.SaveWiredNetworkProfile(options.name)
    op_performed = True

if not op_performed:
    print "No operations performed."

sys.exit(exit_status)

