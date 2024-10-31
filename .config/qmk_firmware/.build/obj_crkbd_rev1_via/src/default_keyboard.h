// Copyright 2024 QMK
// SPDX-License-Identifier: GPL-2.0-or-later

/*******************************************************************************
  88888888888 888      d8b                .d888 d8b 888               d8b
      888     888      Y8P               d88P"  Y8P 888               Y8P
      888     888                        888        888
      888     88888b.  888 .d8888b       888888 888 888  .d88b.       888 .d8888b
      888     888 "88b 888 88K           888    888 888 d8P  Y8b      888 88K
      888     888  888 888 "Y8888b.      888    888 888 88888888      888 "Y8888b.
      888     888  888 888      X88      888    888 888 Y8b.          888      X88
      888     888  888 888  88888P'      888    888 888  "Y8888       888  88888P'
                                                        888                 888
                                                        888                 888
                                                        888                 888
     .d88b.   .d88b.  88888b.   .d88b.  888d888 8888b.  888888 .d88b.   .d88888
    d88P"88b d8P  Y8b 888 "88b d8P  Y8b 888P"      "88b 888   d8P  Y8b d88" 888
    888  888 88888888 888  888 88888888 888    .d888888 888   88888888 888  888
    Y88b 888 Y8b.     888  888 Y8b.     888    888  888 Y88b. Y8b.     Y88b 888
     "Y88888  "Y8888  888  888  "Y8888  888    "Y888888  "Y888 "Y8888   "Y88888
         888
    Y8b d88P
     "Y88P"
*******************************************************************************/

#pragma once
#include "quantum.h"

// Layout content

#define LAYOUT_split_3x5_3(k0B, k0C, k0D, k0E, k0F, k4F, k4E, k4D, k4C, k4B, k1B, k1C, k1D, k1E, k1F, k5F, k5E, k5D, k5C, k5B, k2B, k2C, k2D, k2E, k2F, k6F, k6E, k6D, k6C, k6B, k3D, k3E, k3F, k7F, k7E, k7D) { \
	 {KC_NO, k0B, k0C, k0D, k0E, k0F}, \
	 {KC_NO, k1B, k1C, k1D, k1E, k1F}, \
	 {KC_NO, k2B, k2C, k2D, k2E, k2F}, \
	 {KC_NO, KC_NO, KC_NO, k3D, k3E, k3F}, \
	 {KC_NO, k4B, k4C, k4D, k4E, k4F}, \
	 {KC_NO, k5B, k5C, k5D, k5E, k5F}, \
	 {KC_NO, k6B, k6C, k6D, k6E, k6F}, \
	 {KC_NO, KC_NO, KC_NO, k7D, k7E, k7F} \
}

#define LAYOUT_split_3x6_3(k0A, k0B, k0C, k0D, k0E, k0F, k4F, k4E, k4D, k4C, k4B, k4A, k1A, k1B, k1C, k1D, k1E, k1F, k5F, k5E, k5D, k5C, k5B, k5A, k2A, k2B, k2C, k2D, k2E, k2F, k6F, k6E, k6D, k6C, k6B, k6A, k3D, k3E, k3F, k7F, k7E, k7D) { \
	 {k0A, k0B, k0C, k0D, k0E, k0F}, \
	 {k1A, k1B, k1C, k1D, k1E, k1F}, \
	 {k2A, k2B, k2C, k2D, k2E, k2F}, \
	 {KC_NO, KC_NO, KC_NO, k3D, k3E, k3F}, \
	 {k4A, k4B, k4C, k4D, k4E, k4F}, \
	 {k5A, k5B, k5C, k5D, k5E, k5F}, \
	 {k6A, k6B, k6C, k6D, k6E, k6F}, \
	 {KC_NO, KC_NO, KC_NO, k7D, k7E, k7F} \
}

#ifndef LAYOUT
#   define LAYOUT LAYOUT_split_3x6_3
#endif

// Keycode content
