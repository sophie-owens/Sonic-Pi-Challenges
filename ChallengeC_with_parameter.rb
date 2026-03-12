# Challenge C
use_bpm 160

#change the sound of your notes by using a synthesizer
use_synth :saw

define :stranger_parameter do |changing_fx|
  with_fx changing_fx do
    play :c2
    sleep 0.5
    play :e2
    sleep 0.5
    play :g2
    sleep 0.5
    play :b2
    sleep 0.5
    
    play :c3
    sleep 0.5
    play :b2
    sleep 0.5
    play :g2
    sleep 0.5
    play :e2
    sleep 0.5
  end
end

# use fx to modify the sound produced by your synth
stranger_parameter :echo

stranger_parameter :octaver

stranger_parameter :flanger

stranger_parameter :bitcrusher

# sustain just means hold the note longer!
play :c2, sustain: 3
play :e2, sustain: 4
play :g2, sustain: 2
play :b2, sustain: 2
