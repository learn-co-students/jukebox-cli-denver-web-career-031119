require 'pry'



songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands: "
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  #If user input is a string
  if user_input.to_i == 0
    songs.each do |song|
      if user_input == song
        puts "Playing #{user_input}"
      else
        puts "Invalid input, please try again"
      end
    end

  #User input is a number
  else
      user_input = user_input.to_i
    #  binding.pry
      if user_input > 0 && user_input < 10
        puts "Playing #{songs[user_input.to_i - 1]}"
      else
        puts "Invalid input, please try again"
      end
  end
end


def list(songs)
    songs.each_with_index do |song, i|
      puts "#{i + 1}. #{song}"
    end
end

def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  input = ""
  #display availible commands to user
  help

  puts "Please enter a command:"
  input = gets.chomp

  while input != "exit"

    if input == "list"
      list(songs)
    elsif input == "play"
      list(songs)
      play(songs)
    elsif input == "help"
      help
    elsif input == "exit"
      exit_jukebox
      break
    end

    puts "Please enter a command"
    input = gets.chomp
    
  end
end
















#def say_hello(name)
#  "Hi #{name}!"
#end

#puts "Enter your name:"
#users_name = gets.chomp
#puts say_hello(users_name)
