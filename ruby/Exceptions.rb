# Exceptions

print "Digite um número:"
n = gets.to_i

begin
    resultado = 100 / n
rescue
    puts "Número digitado inválido!"
    exit
end

puts "100/#{n} é #{resultado} "

# --------------------------------

def fala(idade)
    raise ArgumentError, "Idade negativa ?!?" unless idade > 0
rescue
    puts "ArgumentError"
end

fala(-1)