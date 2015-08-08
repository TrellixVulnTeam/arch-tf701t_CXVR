/* $Id$ */
/*-
 * Copyright (c) 2004 Benedikt Meurer <benny@xfce.org>
 * All rights reserved.
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Library General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Library General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
 */

#ifndef __XFCE_GTK_EXTENSIONS_H__
#define __XFCE_GTK_EXTENSIONS_H__

#if defined(LIBXFCEGUI4_COMPILATION) || !defined(XFCE_DISABLE_DEPRECATED)

#include <gtk/gtk.h>

G_BEGIN_DECLS;

void xfce_gtk_window_center_on_monitor (GtkWindow *window,
                                        GdkScreen *screen,
                                        gint       monitor);

void xfce_gtk_window_center_on_monitor_with_pointer (GtkWindow *window);

G_END_DECLS;

#endif /* !XFCE_DISABLE_DEPRECATED */

#endif /* !__XFCE_GTK_EXTENSIONS_H__ */

