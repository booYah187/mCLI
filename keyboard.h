#ifndef __KEYBOARD_H__
#define __KEYBOARD_H__

#include <SDL/SDL.h>

void init_keyboard();
void draw_keyboard(SDL_Surface* surface);
#ifdef RG353P
int handle_joystick_event(SDL_Event* event);
#else
int handle_keyboard_event(SDL_Event* event);
#endif
extern int active;
extern int show_help;

#endif
