/* -*- Mode: C; tab-width: 8; indent-tabs-mode: t; c-basic-offset: 8 -*-
 *
 * Copyright (C) 2010 Richard Hughes <richard@hughsie.com>
 *
 * Licensed under the GNU Lesser General Public License Version 2.1
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301 USA
 */

/**
 * SECTION:gusb-version
 * @short_description: Obtains the version for the installed libgusb
 *
 * These compile time macros allow the user to enable parts of client code
 * depending on the version of libgusb installed.
 */

#if !defined (__GUSB_INSIDE__) && !defined (GUSB_COMPILATION)
#error "Only <gusb.h> can be included directly."
#endif

#ifndef __GUSB_VERSION_H
#define __GUSB_VERSION_H

/**
 * G_USB_MAJOR_VERSION:
 *
 * The compile-time major version
 */
#define G_USB_MAJOR_VERSION		(0)

/**
 * G_USB_MINOR_VERSION:
 *
 * The compile-time minor version
 */
#define G_USB_MINOR_VERSION		(2)

/**
 * G_USB_MICRO_VERSION:
 *
 * The compile-time micro version
 */
#define G_USB_MICRO_VERSION		(6)

/**
 * G_USB_CHECK_VERSION:
 *
 * Check whether a gusb version equal to or greater than
 * major.minor.micro.
 */
#define G_USB_CHECK_VERSION(major,minor,micro)    \
    (G_USB_MAJOR_VERSION > (major) || \
     (G_USB_MAJOR_VERSION == (major) && G_USB_MINOR_VERSION > (minor)) || \
     (G_USB_MAJOR_VERSION == (major) && G_USB_MINOR_VERSION == (minor) && \
      G_USB_MICRO_VERSION >= (micro)))

#endif /* __GUSB_VERSION_H */
