audio_stop_all()
audio_sound_gain(Intro, 1, 0)
if (!audio_is_playing(Intro))
    audio_play_sound(Intro, 2, true)