#!/usr/bin/python3

# $Id: rst2odt_prepstyles.py 5839 2009-01-07 19:09:28Z dkuhlman $
# Author: Dave Kuhlman <dkuhlman@rexx.com>
# Copyright: This module has been placed in the public domain.

"""
Fix a word-processor-generated styles.odt for odtwriter use: Drop page size
specifications from styles.xml in STYLE_FILE.odt.
"""

#
# Author: Michael Schutte <michi@uiae.at>

try:
    from xml.etree import ElementTree as etree
except ImportError:
    try:
        from elementtree import ElementTree as etree
    except ImportError:
        raise ImportError('Missing an implementation of ElementTree. ' \
                'Please install either Python >= 2.5 or ElementTree.')

import sys
import zipfile
from tempfile import mkstemp
import shutil
import os

NAMESPACES = {
    "style": "urn:oasis:names:tc:opendocument:xmlns:style:1.0",
    "fo": "urn:oasis:names:tc:opendocument:xmlns:xsl-fo-compatible:1.0"
}

def prepstyle(filename):
    
    zin = zipfile.ZipFile(filename)
    styles = zin.open("styles.xml")

    root = None
    # some extra effort to preserve namespace prefixes
    for event, elem in etree.iterparse(styles, events=("start", "start-ns")):
        if event == "start-ns":
            etree.register_namespace(elem[0], elem[1])
        elif event == "start":
            if root is None:
                root = elem

    styles.close()

    for el in root.findall(".//style:page-layout-properties",
            namespaces=NAMESPACES):
        for attr in el.attrib.keys():
            if attr.startswith("{%s}" % NAMESPACES["fo"]):
                del el.attrib[attr]
    
    tempname = mkstemp()
    zout = zipfile.ZipFile(os.fdopen(tempname[0], "w"), "w",
        zipfile.ZIP_DEFLATED)
    
    for item in zin.infolist():
        if item.filename == "styles.xml":
            zout.writestr(item, etree.tostring(root, encoding="UTF-8"))
        else:
            zout.writestr(item, zin.read(item.filename))
    
    zout.close()
    zin.close()
    shutil.move(tempname[1], filename)


def main():
    args = sys.argv[1:]
    if len(args) != 1:
        sys.stderr.write(__doc__)
        sys.stderr.write("\nUsage: %s STYLE_FILE.odt\n" % sys.argv[0])
        sys.exit(1)
    filename = args[0]
    prepstyle(filename)

if __name__ == '__main__':
    main()


# vim:tw=78:sw=4:sts=4:et:
