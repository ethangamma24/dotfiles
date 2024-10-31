#include QMK_KEYBOARD_H


/* THIS FILE WAS GENERATED!
 *
 * This file was generated by qmk json2c. You may or may not want to
 * edit it directly.
 */


const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
	[0] = LAYOUT_split_3x6_3(KC_ESC, KC_QUOT, KC_COMM, KC_DOT, KC_P, KC_Y, KC_F, KC_G, KC_C, KC_R, KC_L, KC_BSPC, KC_LCTL, KC_A, KC_O, KC_E, KC_U, KC_I, KC_D, KC_H, KC_T, KC_N, KC_S, KC_SLSH, KC_LSFT, KC_SCLN, KC_Q, KC_J, KC_K, KC_X, KC_B, KC_M, KC_W, KC_V, KC_Z, KC_RSFT, KC_TAB, MO(1), MT(MOD_LGUI,KC_ENT), KC_SPC, MO(2), KC_RALT),
	[1] = LAYOUT_split_3x6_3(KC_ESC, _______, _______, KC_UP, _______, KC_VOLU, _______, KC_7, KC_8, KC_9, _______, KC_DEL, KC_LCTL, _______, KC_LEFT, KC_DOWN, KC_RGHT, KC_VOLD, _______, KC_4, KC_5, KC_6, KC_HOME, KC_MINS, KC_LSFT, _______, KC_MS_BTN2, KC_MS_BTN1, KC_LGUI, KC_MUTE, _______, KC_1, KC_2, KC_3, KC_END, KC_PGDN, KC_TAB, _______, MT(MOD_LGUI,KC_ENT), KC_SPC, MO(3), KC_RALT),
	[2] = LAYOUT_split_3x6_3(KC_ESC, S(KC_1), S(KC_2), S(KC_3), S(KC_4), S(KC_5), S(KC_6), S(KC_7), S(KC_8), S(KC_9), S(KC_0), KC_BSPC, KC_LCTL, _______, _______, _______, _______, _______, _______, KC_EQL, KC_LBRC, KC_RBRC, KC_BSLS, KC_GRV, KC_LSFT, _______, _______, _______, _______, _______, _______, KC_PPLS, S(KC_LBRC), S(KC_LBRC), S(KC_BSLS), S(KC_GRV), KC_TAB, MO(3), KC_MPLY, _______, _______, KC_RALT),
	[3] = LAYOUT_split_3x6_3(KC_F1, KC_F2, KC_F3, KC_F4, KC_F5, KC_F6, KC_F7, KC_F8, KC_F9, KC_F10, KC_F11, KC_F12, QK_BOOT, _______, _______, _______, _______, _______, RGB_VAI, RGB_HUI, RGB_SAI, RGB_MOD, RGB_TOG, _______, EE_CLR, _______, _______, _______, _______, _______, RGB_VAD, RGB_HUD, RGB_SAD, RGB_RMOD, CK_TOGG, _______, _______, MO(3), _______, _______, MO(3), _______)
};

#if defined(ENCODER_ENABLE) && defined(ENCODER_MAP_ENABLE)
const uint16_t PROGMEM encoder_map[][NUM_ENCODERS][NUM_DIRECTIONS] = {

};
#endif // defined(ENCODER_ENABLE) && defined(ENCODER_MAP_ENABLE)




