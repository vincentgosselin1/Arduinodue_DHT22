#Ruby_arduino_file_copy.rb by Vincent Gosselin, copyright 2016.

#This simple script is made to get ride of the anoying Copy-Paste
#from sublime text into arduino IDE and texts editors to program the arduino.

#This is a script that copies sublime text files
#Arduino file (.ino), .cpp file and .h file into the respective 
#files.


#Source
source1 = File.readlines(Dir.pwd+"/arduinodue_dht22.cpp")
source2 = File.readlines(Dir.pwd+"/library/arduinodue_dht22library/arduinodue_dht22library.cpp")
source3 = File.readlines(Dir.pwd+"/library/arduinodue_dht22library/arduinodue_dht22library.h")


#Destination files
destionation1 = "/Users/vincentgosselin/Documents/Arduino/arduinodue_dht22/arduinodue_dht22.ino"
destionation2 = "/Users/vincentgosselin/Documents/Arduino/libraries/arduinodue_dht22library/arduinodue_dht22library.cpp"
destionation3 = "/Users/vincentgosselin/Documents/Arduino/libraries/arduinodue_dht22library/arduinodue_dht22library.h"


#COPY-PASTE
File.open(destionation1, "w") do |f|
	f.puts source1
end
File.open(destionation2, "w") do |f|
	f.puts source2
end
File.open(destionation3, "w") do |f|
	f.puts source3
end

puts "COPY-PASTE DONE"



