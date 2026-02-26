#It's All Right

use_synth :piano
#DEFINE a function that will play the notes
define :intro_piano do
  sleep 2
  play :a4
  play :a5
  sleep 0.2
  play :b4
  play :b5
  sleep 0.5
  play :d5, sustain: 3
  play :d6, sustain: 3
  sleep 2
  play :a4
  play :a5
  sleep 0.2
  play :b4
  play :b5
  sleep 0.5
  play :d4, sustain: 3
  play :d5, sustain: 3
end

live_loop :high_hat do
  # Get the current iteration count for this loop and increment it
  count = tick(:my_counter)
  
  sample :hat_tap
  sleep 0.28
  sample :hat_psych
  sleep 1
  
  # Stop the loop after 5 iterations
  if count >= 9
    stop # This stops the current thread/live_loop
  end
end

live_loop :chatter do
  sample "C:/Users/sophia_owens/Desktop/happy_chatter.mp3", amp: 2
  sleep 1
  stop
end

use_synth :piano
intro_piano
intro_piano
sleep 1

live_loop :its_alr do
  sample "C:/Users/sophia_owens/Desktop/say_it's_alr.mp3"
  sleep 1
  stop
end

sleep 1.5
live_loop :its_alr_piano do
  sample "C:/Users/sophia_owens/Desktop/it's_alr_piano.mp3"
  sleep 1
  stop
end

sleep 16.5
with_fx :tremolo do
  sample :drum_heavy_kick, amp: 3
  sleep 0.5
  use_synth :sc808_open_hihat
  play :b4, sustain: 6, amp: 5
  sleep 1
end
