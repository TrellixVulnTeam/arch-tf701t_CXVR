/*
 * audio.h
 * Copyright 2009-2013 John Lindgren
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions, and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions, and the following disclaimer in the documentation
 *    provided with the distribution.
 *
 * This software is provided "as is" and without any warranty, express or
 * implied. In no event shall the authors be liable for any damages arising from
 * the use of this software.
 */

#ifndef LIBAUDCORE_AUDIO_H
#define LIBAUDCORE_AUDIO_H

#define AUD_MAX_CHANNELS 10

/* 24-bit integer samples are padded to 32-bit; high byte is always 0 */
enum {
 FMT_FLOAT,
 FMT_S8, FMT_U8,
 FMT_S16_LE, FMT_S16_BE, FMT_U16_LE, FMT_U16_BE,
 FMT_S24_LE, FMT_S24_BE, FMT_U24_LE, FMT_U24_BE,
 FMT_S32_LE, FMT_S32_BE, FMT_U32_LE, FMT_U32_BE};

struct ReplayGainInfo {
    float track_gain; /* dB */
    float track_peak; /* 0-1 */
    float album_gain; /* dB */
    float album_peak; /* 0-1 */
};

struct StereoVolume {
    int left, right;
};

#ifdef WANT_AUD_BSWAP

#include <stdint.h>

#undef bswap16
#undef bswap32
#undef bswap64

/* GCC will optimize these to appropriate bswap instructions */
constexpr uint16_t bswap16 (uint16_t x)
    { return ((x & 0xff00) >> 8) | ((x & 0x00ff) << 8); }

constexpr uint32_t bswap32 (uint32_t x)
{
    return ((x & 0xff000000) >> 24) | ((x & 0x00ff0000) >> 8) |
           ((x & 0x0000ff00) << 8) | ((x & 0x000000ff) << 24);
}

constexpr uint64_t bswap64 (uint64_t x)
{
    return ((x & 0xff00000000000000) >> 56) | ((x & 0x00ff000000000000) >> 40) |
           ((x & 0x0000ff0000000000) >> 24) | ((x & 0x000000ff00000000) >> 8) |
           ((x & 0x00000000ff000000) << 8) | ((x & 0x0000000000ff0000) << 24) |
           ((x & 0x000000000000ff00) << 40) | ((x & 0x00000000000000ff) << 56);
}

#endif // WANT_AUD_BSWAP

#if 0

#define FMT_S16_NE FMT_S16_BE
#define FMT_U16_NE FMT_U16_BE
#define FMT_S24_NE FMT_S24_BE
#define FMT_U24_NE FMT_U24_BE
#define FMT_S32_NE FMT_S32_BE
#define FMT_U32_NE FMT_U32_BE

#ifdef WANT_AUD_BSWAP
#define FROM_BE16(x) (x)
#define FROM_BE32(x) (x)
#define FROM_BE64(x) (x)
#define FROM_LE16(x) (bswap16 (x))
#define FROM_LE32(x) (bswap32 (x))
#define FROM_LE64(x) (bswap64 (x))
#define TO_BE16(x) (x)
#define TO_BE32(x) (x)
#define TO_BE64(x) (x)
#define TO_LE16(x) (bswap16 (x))
#define TO_LE32(x) (bswap32 (x))
#define TO_LE64(x) (bswap64 (x))
#endif

#else  // ! BIGENDIAN

#define FMT_S16_NE FMT_S16_LE
#define FMT_U16_NE FMT_U16_LE
#define FMT_S24_NE FMT_S24_LE
#define FMT_U24_NE FMT_U24_LE
#define FMT_S32_NE FMT_S32_LE
#define FMT_U32_NE FMT_U32_LE

#ifdef WANT_AUD_BSWAP
#define FROM_BE16(x) (bswap16 (x))
#define FROM_BE32(x) (bswap32 (x))
#define FROM_BE64(x) (bswap64 (x))
#define FROM_LE16(x) (x)
#define FROM_LE32(x) (x)
#define FROM_LE64(x) (x)
#define TO_BE16(x) (bswap16 (x))
#define TO_BE32(x) (bswap32 (x))
#define TO_BE64(x) (bswap64 (x))
#define TO_LE16(x) (x)
#define TO_LE32(x) (x)
#define TO_LE64(x) (x)
#endif

#endif

#define FMT_SIZEOF(f) ((f) == FMT_FLOAT ? sizeof (float) : (f) <= FMT_U8 ? 1 : (f) <= FMT_U16_BE ? 2 : 4)

void audio_interlace (const void * const * in, int format, int channels, void * out, int frames);
void audio_deinterlace (const void * in, int format, int channels, void * const * out, int frames);
void audio_from_int (const void * in, int format, float * out, int samples);
void audio_to_int (const float * in, void * out, int format, int samples);
void audio_amplify (float * data, int channels, int frames, const float * factors);
void audio_amplify (float * data, int channels, int frames, StereoVolume volume);
void audio_soft_clip (float * data, int samples);

#endif /* LIBAUDCORE_AUDIO_H */
