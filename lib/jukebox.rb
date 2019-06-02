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
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  puts "
1. Phoenix - 1901
2. Tokyo Police Club - Wait Up
3. Sufjan Stevens - Too Much
4. The Naked and the Famous - Young Blood
5. (Far From) Home - Tiga
6. The Cults - Abducted
7. Phoenix - Consolation Prizes
8. Harry Chapin - Cats in the Cradle
9. Amos Lee - Keep It Loose, Keep It Tight"
end

def play(songs)
  puts "Please enter a song name or number: "
  user_input = gets.chomp
  songs.each_with_index do |song, value|
    if song == user_input || song == songs[(user_input.to_i)-1]
        puts "Playing #{song}"
      else
        puts "Invalid input, please try again"
      end
    end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  user_command = ""
  until user_command == "exit"
  puts "Please enter a command: "
  user_command = gets.chomp
case user_command
when "list" then list(songs)
when "play" then play(songs)
when "help" then help
when "exit" then exit_jukebox
else
  puts "Invalid entry"
    end
  end
end
