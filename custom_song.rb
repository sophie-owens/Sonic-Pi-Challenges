#It's All Right
#Variables
vocals = "C:/Users/sophia_owens/Desktop/say_it's_alr.mp3"
chatter = "C:/Users/sophia_owens/Desktop/happy_chatter.mp3"
alr_piano = "C:/Users/sophia_owens/Desktop/it's_alr_piano.mp3"

use_synth :piano
#DEFINE a function that will play the notes
define :intro_piano_parameter do |changing_note|
  sleep 2
  play :a4
  play :a5
  sleep 0.2
  play :b4
  play :b5
  sleep 0.5
  play :d5, sustain: 3
  play changing_note, sustain: 3
end

live_loop :high_hat do
  with_bpm 65 do
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
end

live_loop :chatter do
  sample chatter, start: 0, finish: 0.2, amp: 4
  sleep 29.184172335600906/5
  
  sample chatter, start: 0.2, finish: 0.4, amp: 3
  sleep 29.184172335600906/5
  
  sample chatter, start: 0.4, finish: 0.6, amp: 2
  sleep 29.184172335600906/5
  
  sample chatter, start: 0.6, finish: 0.8, amp: 1
  sleep 29.184172335600906/5
  
  sample chatter, start: 0.8, finish: 1, amp: 0.5
  sleep 29.184172335600906/5
  stop
end

use_synth :piano
2.times do
  intro_piano_parameter :d6
  intro_piano_parameter :d4
end
sleep 1

live_loop :its_alr do
  sample vocals
  sleep 1
  stop
end

sleep 1.5
live_loop :its_alr_piano do
  sample alr_piano, start: 0, finish: 0.2, amp: 4
  sleep 16.893809523809523/5
  
  sample alr_piano, start: 0.2, finish: 0.4, amp: 3
  sleep 16.893809523809523/5
  
  sample alr_piano, start: 0.4, finish: 0.6, amp: 2
  sleep 16.893809523809523/5
  
  sample alr_piano, start: 0.6, finish: 0.8, amp: 1
  sleep 16.893809523809523/5
  
  sample alr_piano, start: 0.8, finish: 1, amp: 0.5
  sleep 16.893809523809523/5
  stop
end
