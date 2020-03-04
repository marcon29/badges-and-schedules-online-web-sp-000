def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(speaker_list)
  speaker_list.collect {|speaker| badge_maker(speaker)}
end

def assign_rooms(speaker_list)
  speaker_rooms = []
  speaker_list.each_with_index do |speaker, index|
    speaker_rooms.push("Hello, #{speaker}! You'll be assigned to room #{index+1}!")
  end
  speaker_rooms
end

def printer(speaker_list)
  batch_badge_creator(speaker_list).each do |badge|
    puts badge
  end

  assign_rooms(speaker_list).each do |room|
    puts room
  end
end
