/*  xfce4
 *  Copyright (C) 1999 Olivier Fourdan (fourdan@xfce.org)
 *  Copyright (C) 2002 Jasper Huijsmans (j.b.huijsmans@hetnet.nl)
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

/* Port to gtk2 by Jasper Huijsmans, original code by Olivier Fourdan */

#ifndef __XFCE_CLOCK_H__
#define __XFCE_CLOCK_H__

#if defined(LIBXFCEGUI4_COMPILATION) || !defined(XFCE_DISABLE_DEPRECATED)

#include <gdk/gdk.h>
#include <gtk/gtkwidget.h>

G_BEGIN_DECLS

#define XFCE_TYPE_CLOCK (xfce_clock_get_type ())
#define XFCE_CLOCK(obj)          G_TYPE_CHECK_INSTANCE_CAST (obj, xfce_clock_get_type (), XfceClock)
#define XFCE_CLOCK_CLASS(klass)  G_TYPE_CHECK_CLASS_CAST (klass, xfce_clock_get_type (), XfceClockClass)
#define XFCE_IS_CLOCK(obj)       G_TYPE_CHECK_INSTANCE_TYPE (obj, xfce_clock_get_type ())

#define UPDATE_DELAY_LENGTH        30000	/* Update clock every 30 secs */

    typedef struct _XfceClock XfceClock;
    typedef struct _XfceClockClass XfceClockClass;

    /* this formatting is needed by glib-mkenums */
    typedef enum { /*< prefix=XFCE_CLOCK_ >*/
	XFCE_CLOCK_ANALOG,
	XFCE_CLOCK_DIGITAL,
	XFCE_CLOCK_LEDS
    }
    XfceClockMode;

    /* this formatting is needed by glib-mkenums */
    typedef enum { /*< prefix=DIGIT_ >*/
	DIGIT_SMALL,
	DIGIT_MEDIUM,
	DIGIT_LARGE,
	DIGIT_HUGE
    }
    XfceClockLedSize;

    struct _XfceClock
    {
	GtkWidget widget;	/* parent */

	/* Dimensions of clock components */
	gint radius;
	gint internal;
	gint pointer_width;

	gfloat hrs_angle;
	gfloat min_angle;
	gfloat sec_angle;

	gint interval;		/* Number of seconds between updates. */
	XfceClockMode mode;
	gboolean military_time;	/* true=24 hour clock, false = 12 hour clock. */
	gboolean display_am_pm;
	gboolean display_secs;
	gboolean show_formatted;
	gchar *format_string;
	XfceClockLedSize led_size;

	/* Private data */

	GdkBitmap *digits_bmap;
	/* ID of update timer, or 0 if none */
	guint32 timer;

	guint old_hour;
	guint old_minute;
	guint old_second;
    };

    struct _XfceClockClass
    {
	GtkWidgetClass parent_class;
    };


    GtkType xfce_clock_get_type (void);
    GtkWidget *xfce_clock_new (void);
    void xfce_clock_show_ampm (XfceClock * xfclock, gboolean show);
    void xfce_clock_ampm_toggle (XfceClock * xfclock);
    gboolean xfce_clock_ampm_shown (XfceClock * xfclock);
    void xfce_clock_show_secs (XfceClock * xfclock, gboolean show);
    void xfce_clock_secs_toggle (XfceClock * xfclock);
    gboolean xfce_clock_secs_shown (XfceClock * xfclock);
    void xfce_clock_show_military (XfceClock * xfclock, gboolean show);
    void xfce_clock_military_toggle (XfceClock * xfclock);
    gboolean xfce_clock_military_shown (XfceClock * xfclock);
    void xfce_clock_set_interval (XfceClock * xfclock, guint interval);
    guint xfce_clock_get_interval (XfceClock * xfclock);
    void xfce_clock_set_led_size (XfceClock * xfclock, XfceClockLedSize size);
    XfceClockLedSize xfce_clock_get_led_size (XfceClock * xfclock);
    void xfce_clock_suspend (XfceClock * xfclock);
    void xfce_clock_resume (XfceClock * xfclock);
    void xfce_clock_set_digit_size (XfceClock * xfclock, XfceClockMode mode);
    void xfce_clock_set_mode (XfceClock * xfclock, XfceClockMode mode);
    void xfce_clock_toggle_mode (XfceClock * xfclock);
    void xfce_clock_set_format (XfceClock * xfclock, const gchar * format);
    void xfce_clock_set_formatted_view (XfceClock * xfclock, gboolean formatted);
    gboolean xfce_clock_get_formatted_view (XfceClock * xfclock);
    XfceClockMode xfce_clock_get_mode (XfceClock * xfclock);

G_END_DECLS

#endif /* !XFCE_DISABLE_DEPRECATED */

#endif				/* __XFCE_CLOCK_H__ */
