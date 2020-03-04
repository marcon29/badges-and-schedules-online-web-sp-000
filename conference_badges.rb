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
  puts batch_badge_creator(speaker_list)
  puts assign_rooms(speaker_list)
end

speakers = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]
puts batch_badge_creator(speakers)
puts assign_rooms(speakers)
