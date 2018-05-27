def badge_maker(name)
  "Hello, my name is #{name}."
end  
  
def batch_badge_creator(array_of_names)
  msg_array = []
  array_of_names.each do |i|
    new_msg = badge_maker(i)
    msg_array.push(new_msg)
  end
  msg_array
end  

def assign_rooms(attendees)
  assignment_array = []
    attendees.each_index do |i|
      room_assigns = "Hello, #{attendees[i]}! You'll be assigned to room #{i+1}!"
      assignment_array.push(room_assigns)
    end
    assignment_array
end

def printer(attendees)
  badges_array = batch_badge_creator (attendees)
  rooms_array = assign_rooms (attendees)
  badges_array.each do |message|
    puts message
  end  
  rooms_array.each do |message|
    puts message
  end  
end