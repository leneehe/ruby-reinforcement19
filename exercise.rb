seating = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]

def claim_seat?
  while input = gets.chomp #loop while getting user input
    case input
    when "y"
      return true
    when "n"
      return false
    else
      puts "Please select either y/n"
    end
  end
end

seating.each_with_index do |row, index|
  row.each_with_index do |seat, i|
    if seat == nil
      puts "Row #{index + 1} seat #{i + 1} is free. Do you want to sit there? (y/n)"

      if claim_seat?
        puts "What is your name?"
        name = gets.chomp
        seating[index][i] = name
      end

    end
  end
end

p seating
