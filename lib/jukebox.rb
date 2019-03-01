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
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can displays
  - play : lets you choose a song to displays
  - exit : exits this program"
end

def list(songs)
  songs.each_with_index{|song, index|
    puts "#{index+1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  song_data = gets.chomp
  if songs.include?(song_data)
    index = songs.find_index(song_data)
    puts "Playing #{songs[index]}"
  elsif song_data.to_i > 0 && song_data.to_i < songs.length
    puts "Playing #{songs[song_data.to_i-1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  user_input = nil
  while user_input != "exit"
    help
    puts "Please enter a command:"
    user_input = gets.chomp

    case user_input
      when "help"
        help
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "exit"
        exit_jukebox
      end 
  end
end
