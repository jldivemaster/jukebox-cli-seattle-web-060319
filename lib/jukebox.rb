def help
  puts "I accept the following commands:
  - help: displays this help message
  - list: displays a list of songs you can play
  - play: lets you choose a song to play
  - exit: exits this program"
end

def list(songs)
  songs.each_with_index { |ele, idx| puts "#{idx + 1}. #{ele}" }
end

def play(songs)
  puts "Please enter a song name or number:"

  input = gets.chomp

  if songs.include?(input)
    puts "Playing #{input}"
  elsif (1..songs.length).include?(input.to_i)
    song_name = songs[input.to_i - 1]
    puts "Playing #{song_name}"
  else
    puts "Invalid input, please try again."
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run
  help

  in_use = true
  while in_use
    puts "Please enter a command:"
    input = gets.chomp

    if input == "list"
      list(songs)
    elsif input == "play"
      play(songs)
    elsif input == "help"
      help
    elsif input == "exit"
      exit_jukebox
      in_use = false
    end
  end
end
