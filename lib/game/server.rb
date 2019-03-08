require 'socket'
require_relative '../../bin/run.rb'
require_relative '../../config/environment'

def server
  ser = TCPServer.new(4321)

while (conn = ser.accept)
  Thread.new(conn) do |c|
    c.print "Hi. What's your name? "
    name = c.gets.chomp
    c.puts "Hi #{name}. Here's the date."
    c.puts `date`
    puts "#{name} has connected"
    sleep(1)
    c.puts("Game booting...")
    sleep(1)

    # BEGIN GAME
    # def final_game
    #   greeting
    #   sleep 1
    #   system("clear")
    #   main_menu_method
    #   thanks_for_playing
    #   return "Copyleft 2019"
    # end
    
    
    # t1 = Thread.new{(`afplay lib/art/sound/pac.mp3 &`)}
    # t2 = Thread.new{(final_game)}
    # c.t1.join
    # c.t2.join
    
    # END GAME

    c.close
    puts "#{name} has now disconnected"
  end
end

end

server

# def chatroom
#   def welcome(chatter)
#     chatter.print "Welcome! Please enter your name: "
#     chatter.readline.chomp
#   end

#   def broadcast(message, chatters)
#     chatters.each do |chatter|
#       chatter.puts message
#     end
#   end

#   chat_server = TCPServer.new(4433)
#   chatters = []

#   while (chatter = chat_server.accept)
#     Thread.new(chatter) do |c|
#       name = welcome(chatter)
#       broadcast("#{name} has joined", chatters)
#       chatters << chatter
#       begin
#         loop do
#           line = c.readline
#           broadcast("#{name}: #{line}", chatters)
#         end
#       rescue EOFError
#         c.close
#         chatters.delete(c)
#         broadcast("#{name} has left", chatters)
#       end
#     end
#   end
# end

# chatroom
