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

# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.chomp
#
# puts say_hello(users_name)
#
def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end
#
def list(song_array)
  counter = ""

  song_array.each_with_index do |song, index|
    puts (index + 1).to_s + ". " + song
  end
end
#
def play(songs)
  puts "Please enter a song name or number:"
  song_choice = gets.chomp

  songs.each_with_index do |song, index|
    chosen_song = ""
    wrong_choice = 0
      if song_choice == (index + 1).to_s || song_choice == song
        chosen_song = song
        puts "Playing " + song
      elsif song_choice != (index + 1).to_s && song_choice != song
        puts "Invalid input, please try again"
      end
  end
end


def exit_jukebox
  puts "Goodbye"
end

def run(user)
  help()

  puts "Please enter a command: "
  user_jukebox_command = gets.chomp

  if user_jukebox_command == 'exit'
    exit_jukebox()
  end
  # if command == "list"
  #   list()
  # elsif command == "play"
  #   play()
  # elsif command == "help"
  #   help()
  # elsif command == 'exit'
  #   exit_jukebox()
  # else
  #   puts "Invalid input, please try again"
  # end

end

# run()
