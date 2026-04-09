# How Do You Dance - Yung Kai
#variables
ocean = "C:/Users/sophia_owens/Desktop/ocean_waves.mp3"
guitar = "C:/Users/sophia_owens/Desktop/GUITAR.mp3"
vocals = "C:/Users/sophia_owens/Desktop/yung_kai_vocals.mp3"

drumSleep = [0.25, 0.75, 0.95, 0.25, 0.75, 0.95, 0.25, 0.75, 0.95, 0.25, 0.75, 0.95, 0.95, 0.95, 0.95, 0.95, 0.95, 0.95, 0.95, 0.95, 0.95, 0.95, 1, 1, 1, 1, 1]
s=0

define :parameter_notes do |note1, note2, vol|
  3.times do
    play note1, amp: vol
    sleep 0.5
    play note2, amp: vol
    sleep 0.5
  end
  
  play note1, sustain: 3
end

live_loop :waves do
  sample ocean, amp: 1
  sleep 1
  stop
end

sleep 4

x=1

live_loop :intro_kai_piano do
  use_synth :piano
  count = tick(:my_counter)
  
  with_bpm 124 do
    parameter_notes :c5, :g4, x
    play :g4, sustain: 3, amp: x
    sleep 1
    
    parameter_notes :b4, :g4, x
    sleep 1
    
    parameter_notes :c5, :g4, x
    sleep 1
    
    parameter_notes :a4, :e4, x
    sleep 1
    
    if count >= 4
      x=x-0.1
      if count >= 12
        stop
      end
    end
  end
end

sleep 15.42

live_loop :guitar do
  sample guitar, amp: 2
  sleep 1
  stop
end

sleep 0.5
live_loop :drum_beat do
  27.times do
    sample :drum_snare_soft
    sleep (drumSleep[s])
    s = s + 1
  end
  stop
end

sleep 22.5

live_loop :singing do
  sample vocals, amp: 3
  sleep 1
  stop
end
