# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end

system('cls')

puts "Choose language / Выберите язык "
puts "1. Русский."
puts "2. English."

langchoice = gets.strip.capitalize

if langchoice == "1"
	lang = 1
end

if langchoice == "РУССКИЙ"
	lang = 1
end

if langchoice == "2"
	lang = 2
end

if langchoice == "ENGLISH"
	lang = 2
end