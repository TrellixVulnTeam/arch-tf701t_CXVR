/* -*- Mode: C; tab-width: 4; indent-tabs-mode: t; c-basic-offset: 4 -*- */
/*
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the
 * Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
 * Boston, MA 02110-1301 USA.
 *
 * Copyright 2011 Red Hat, Inc.
 */

#ifndef NM_VERSION_H
#define NM_VERSION_H

/**
 * NM_MAJOR_VERSION:
 *
 * Evaluates to the major version number of NetworkManager which this source
 * is compiled against.
 */
#define NM_MAJOR_VERSION (1)

/**
 * NM_MINOR_VERSION:
 *
 * Evaluates to the minor version number of NetworkManager which this source
 * is compiled against.
 */
#define NM_MINOR_VERSION (0)

/**
 * NM_MICRO_VERSION:
 *
 * Evaluates to the micro version number of NetworkManager which this source
 * compiled against.
 */
#define NM_MICRO_VERSION (4)

/**
 * NM_CHECK_VERSION:
 * @major: major version (e.g. 1 for version 1.2.5)
 * @minor: minor version (e.g. 2 for version 1.2.5)
 * @micro: micro version (e.g. 5 for version 1.2.5)
 *
 * Returns: %TRUE if the version of the NetworkManager header files
 * is the same as or newer than the passed-in version.
 */
#define NM_CHECK_VERSION(major,minor,micro)                         \
    (NM_MAJOR_VERSION > (major) ||                                  \
     (NM_MAJOR_VERSION == (major) && NM_MINOR_VERSION > (minor)) || \
     (NM_MAJOR_VERSION == (major) && NM_MINOR_VERSION == (minor) && NM_MICRO_VERSION >= (micro)))


/* Deprecation / Availability macros */

#define NM_ENCODE_VERSION(major,minor,micro) ((major) << 16 | (minor) << 8 | (micro))

#define NM_VERSION_0_9_8  (NM_ENCODE_VERSION (0, 9, 8))
#define NM_VERSION_0_9_10 (NM_ENCODE_VERSION (0, 9, 10))
#define NM_VERSION_1_0    (NM_ENCODE_VERSION (1, 0, 0))
#define NM_VERSION_1_0_2  (NM_ENCODE_VERSION (1, 0, 2))
#define NM_VERSION_1_0_4  (NM_ENCODE_VERSION (1, 0, 4))

#define NM_VERSION_CUR_STABLE  NM_VERSION_1_0_2
#define NM_VERSION_NEXT_STABLE NM_VERSION_1_0_4

#if !defined (NM_VERSION_MIN_REQUIRED) || (NM_VERSION_MIN_REQUIRED == 0)
# undef NM_VERSION_MIN_REQUIRED
# define NM_VERSION_MIN_REQUIRED (NM_VERSION_CUR_STABLE)
#endif

#if !defined (NM_VERSION_MAX_ALLOWED) || (NM_VERSION_MAX_ALLOWED == 0)
# undef NM_VERSION_MAX_ALLOWED
# define NM_VERSION_MAX_ALLOWED (NM_VERSION_CUR_STABLE)
#endif

/* sanity checks */
#if NM_VERSION_MIN_REQUIRED > NM_VERSION_NEXT_STABLE
#error "NM_VERSION_MIN_REQUIRED must be <= NM_VERSION_NEXT_STABLE"
#endif
#if NM_VERSION_MAX_ALLOWED < NM_VERSION_MIN_REQUIRED
#error "NM_VERSION_MAX_ALLOWED must be >= NM_VERSION_MIN_REQUIRED"
#endif
#if NM_VERSION_MIN_REQUIRED < NM_VERSION_0_9_8
#error "NM_VERSION_MIN_REQUIRED must be >= NM_VERSION_0_9_8"
#endif

#if NM_VERSION_MIN_REQUIRED >= NM_VERSION_0_9_10
# define NM_DEPRECATED_IN_0_9_10        G_DEPRECATED
# define NM_DEPRECATED_IN_0_9_10_FOR(f) G_DEPRECATED_FOR(f)
#else
# define NM_DEPRECATED_IN_0_9_10
# define NM_DEPRECATED_IN_0_9_10_FOR(f)
#endif

#if NM_VERSION_MIN_REQUIRED >= NM_VERSION_1_0
# define NM_DEPRECATED_IN_1_0           G_DEPRECATED
# define NM_DEPRECATED_IN_1_0_FOR(f)    G_DEPRECATED_FOR(f)
#else
# define NM_DEPRECATED_IN_1_0
# define NM_DEPRECATED_IN_1_0_FOR(f)
#endif

#if NM_VERSION_MAX_ALLOWED < NM_VERSION_0_9_10
# define NM_AVAILABLE_IN_0_9_10         G_UNAVAILABLE(0.9,10)
#else
# define NM_AVAILABLE_IN_0_9_10
#endif

#if NM_VERSION_MAX_ALLOWED < NM_VERSION_1_0
# define NM_AVAILABLE_IN_1_0            G_UNAVAILABLE(1,0)
#else
# define NM_AVAILABLE_IN_1_0
#endif

#if NM_VERSION_MAX_ALLOWED < NM_VERSION_1_0_4
# define NM_AVAILABLE_IN_1_0_4          G_UNAVAILABLE(1,0.4)
#else
# define NM_AVAILABLE_IN_1_0_4
#endif

#endif  /* NM_VERSION_H */
