# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end

system('cls')

lang = 0
gamestart = 0

puts "Choose language / Выберите язык "
puts "1. Русский."
puts "2. English."

langchoice = gets.strip.upcase

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


if lang == 1
	puts "\nВы выбрали русский язык. Помните, что поменять язык можно в любой момент с помощью клавиши F1"
	gamestart = 1
	puts "Введите команду."
	command = gets.chomp.upcase
end

if lang == 2
	puts "\nYou chose English. Remember, that you can change the language anytime by pressing F1 button."
	gamestart = 1
	puts "Enter command."
	command = gets.chomp.upcase
end 