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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def play(songs)
puts "Please enter a song name or number:"
   user_input = gets.chomp
   if user_input.to_i >= 1 && user_input.to_i <= songs.length
     puts "Playing #{songs[user_input.to_i - 1]}"
     elsif songs.include?(user_input)
     puts "Playing #{songs.find {|song| song == user_input}}"
   else
     puts "Invalid input, please try again"
 end
end

def list(songs)
  i = 1
  songs.each_with_index do |song_name, index_number|
    puts "#{i}. #{song_name}"
    i += 1
  end
end


def exit_jukebox
  puts "Goodbye"
end

def run
  puts "Please enter a command:"
  user_input = gets.chomp
   while user_input != "exit" do
     user_input1= gets.strip
     user_input
   if user_input == "help"
     help
     elsif user_input == "play"
       play(songs)
       elsif user_input == "list"
       list(songs)
     else
       user_input == "exit"
       exit_jukebox
       break
       end
     end
end