# CHALLENGE D: Use functions to optimize the SpongeBob theme!

use_bpm 136
use_synth :piano

live_loop :background_drums do
  16.5.times do
    sample :drum_tom_mid_hard, amp: 0.25
    sleep 1
    sample :hat_cab, amp: 0.25
    sleep 1
  end
  stop
end

live_loop:background_effects do
  33.times do
    with_fx :wobble do
      use_synth :hollow
      play :E4
      sleep 1
    end
  end
  stop
end

#DEFINE a function that will play the notes
define :repeat_first_measure do
  play:E4
  sleep 1
  play:E5
  play:Gs4
  sleep 2
  play:E5
  play:Gs4
  sleep 1
end

define :repeat_second_measure do
  with_fx :wobble do
    play :r
    sleep 1
    play:E5
    play:Gs4
    play:B4
    sleep 1
    play:B4
    sleep 1
    play:E5
    play:Gs4
    sleep 1
  end
end

define :repeat_third_measure do
  play:B4
  sleep 0.75
  play:As4
  sleep 0.25
  play:Gs4
  play:B4
  sleep 0.75
  play:Cs5
  sleep 0.25
  play:B4
  sleep 1
  play:Gs4
  play:E5
  sleep 1
end

live_loop:background_notes do
  play:E3, amp: 0.25
  sleep 1
  play:B3, amp: 0.25
  play:E4, amp: 0.25
  sleep 1
  play:B3, amp: 0.25
  sleep 1
  play:E4, amp: 0.25
  sleep 1
  
  play:E3, amp: 0.5
  sleep 1
  play:B3, amp: 0.5
  play:E4, amp: 0.5
  sleep 1
  play:B3, amp: 0.5
  sleep 1
  play:E4, amp: 0.5
  sleep 1
  
  play:E3, amp: 0.75
  sleep 1
  play:B3, amp: 0.75
  play:E4, amp: 0.75
  sleep 1
  play:B3, amp: 0.75
  sleep 1
  play:E4, amp: 0.75
  sleep 1
  
  5.times do
    play:E3, amp: 1
    sleep 1
    play:B3, amp: 1
    play:E4, amp: 1
    sleep 1
    play:B3, amp: 1
    sleep 1
    play:E4, amp: 1
    sleep 1
  end
  stop
end

# Measure 1
play :r
sleep 1
play:E4
play:Gs4
sleep 2
play:E5
play:Gs4
sleep 1

# Measure 2
repeat_first_measure

# Measure 3
repeat_second_measure

# Measure 4
repeat_second_measure

# Measure 5
repeat_third_measure

# Measure 6
repeat_second_measure

# Measure 7
repeat_third_measure

# Measure 8
repeat_first_measure

use_synth :gabberkick
play :E4, sustain: 2
