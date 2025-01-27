#!/usr/bin/env python2
# -*- Mode: Python -*-
# GObject-Introspection - a framework for introspecting GObject libraries
# Copyright (C) 2010 Red Hat, Inc.
# Copyright (C) 2010 Johan Dahlin
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
# 02110-1301, USA.
#

import os
import sys

from . import utils

(WARNING,
 ERROR,
 FATAL) = range(3)


class Position(object):
    """
    Represents a position in the source file which we
    want to inform about.
    """

    __slots__ = ('filename', 'line', 'column')

    def __init__(self, filename=None, line=None, column=None):
        self.filename = filename
        self.line = line
        self.column = column

    def __cmp__(self, other):
        return cmp((self.filename, self.line, self.column),
                   (other.filename, other.line, other.column))

    def __repr__(self):
        return '<Position %s:%d:%d>' % (os.path.basename(self.filename), self.line or -1,
                                        self.column or -1)

    def format(self, cwd):
        filename = os.path.realpath(self.filename)
        cwd = os.path.realpath(cwd)
        common_prefix = os.path.commonprefix((filename, cwd))
        if common_prefix:
            filename = os.path.relpath(filename, common_prefix)

        if self.column is not None:
            return '%s:%d:%d' % (filename, self.line, self.column)
        elif self.line is not None:
            return '%s:%d' % (filename, self.line, )
        else:
            return '%s:' % (filename, )


class MessageLogger(object):
    _instance = None

    def __init__(self, namespace, output=None):
        if output is None:
            output = sys.stderr
        self._cwd = os.getcwd()
        self._output = output
        self._namespace = namespace
        self._enable_warnings = []
        self._warning_count = 0
        self._error_count = 0

    @classmethod
    def get(cls, *args, **kwargs):
        if cls._instance is None:
            cls._instance = cls(*args, **kwargs)
        return cls._instance

    def enable_warnings(self, log_types):
        self._enable_warnings = log_types

    def get_warning_count(self):
        return self._warning_count

    def get_error_count(self):
        return self._error_count

    def log(self, log_type, text, positions=None, prefix=None):
        """
        Log a warning, using optional file positioning information.
        If the warning is related to a ast.Node type, see log_node().
        """
        utils.break_on_debug_flag('warning')

        self._warning_count += 1

        if not log_type in self._enable_warnings:
            return

        if type(positions) == set:
            positions = list(positions)
        if isinstance(positions, Position):
            positions = [positions]

        if not positions:
            positions = [Position('<unknown>')]

        for position in positions[:-1]:
            self._output.write("%s:\n" % (position.format(cwd=self._cwd), ))
        last_position = positions[-1].format(cwd=self._cwd)

        if log_type == WARNING:
            error_type = "Warning"
        elif log_type == ERROR:
            error_type = "Error"
            self._error_count += 1
        elif log_type == FATAL:
            error_type = "Fatal"

        if prefix:
            text = ('%s: %s: %s: %s: %s\n' % (last_position, error_type,
                                              self._namespace.name, prefix, text))
        else:
            if self._namespace:
                text = ('%s: %s: %s: %s\n' % (last_position, error_type,
                                              self._namespace.name, text))
            else:
                text = ('%s: %s: %s\n' % (last_position, error_type, text))

        self._output.write(text)

        if log_type == FATAL:
            utils.break_on_debug_flag('fatal')
            raise SystemExit(text)

    def log_node(self, log_type, node, text, context=None, positions=None):
        """
        Log a warning, using information about file positions from
        the given node.  The optional context argument, if given, should be
        another ast.Node type which will also be displayed.  If no file position
        information is available from the node, the position data from the
        context will be used.
        """
        if positions:
            pass
        elif getattr(node, 'file_positions', None):
            positions = node.file_positions
        elif context and context.file_positions:
            positions = context.file_positions
        else:
            positions = []
            if not context:
                text = "context=%r %s" % (node, text)

        if context:
            text = "%s: %s" % (getattr(context, 'symbol', context.name), text)
        elif not positions and hasattr(node, 'name'):
            text = "(%s)%s: %s" % (node.__class__.__name__, node.name, text)

        self.log(log_type, text, positions)

    def log_symbol(self, log_type, symbol, text):
        """Log a warning in the context of the given symbol."""
        self.log(log_type, text, symbol.position,
                 prefix="symbol=%r" % (symbol.ident, ))


def log_node(log_type, node, text, context=None, positions=None):
    ml = MessageLogger.get()
    ml.log_node(log_type, node, text, context=context, positions=positions)


def warn(text, positions=None, prefix=None):
    ml = MessageLogger.get()
    ml.log(WARNING, text, positions, prefix)


def warn_node(node, text, context=None, positions=None):
    log_node(WARNING, node, text, context=context, positions=positions)


def warn_symbol(symbol, text):
    ml = MessageLogger.get()
    ml.log_symbol(WARNING, symbol, text)


def error(text, positions=None, prefix=None):
    ml = MessageLogger.get()
    ml.log(ERROR, text, positions, prefix)


def fatal(text, positions=None, prefix=None):
    ml = MessageLogger.get()
    ml.log(FATAL, text, positions, prefix)
