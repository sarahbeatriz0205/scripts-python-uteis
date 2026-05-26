print "Gerador de Senhas"
print "Descrição: O script a seguir têm como objetivo gerar senhas do tamanho que o usuário inserir, incluindo caracteres especiais, letras maiúsculas e minúsculas"
local senha = ""

io.write("\nQual o tamanho da senha desejada?\n")
local tamanho = io.read()

print "\nPerfeito! Abaixo irei processar sua requisição e gerar sua senha!"

local caracteres = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "!", "\"", "#", "$", "%", "&", "'", "(", ")", "*", "+", 
    ",", "-", ".", "/", ":", ";", "<", "=", ">", "?", "@", "[", 
    "\\", "]", "^", "_", "`", "{", "|", "}", "~", "A", "a", "B", "b", "C", "c", "D", "d", "E", "e",
    "F", "f", "G", "g", "H", "h", "I", "i", "J", "j",
    "K", "k", "L", "l", "M", "m", "N", "n", "O", "o",
    "P", "p", "Q", "q", "R", "r", "S", "s", "T", "t",
    "U", "u", "V", "v", "W", "w", "X", "x", "Y", "y",
    "Z", "z"
}

math.randomseed(os.time())
local incremento = math.random(2, 5)
local final = math.random(10, 30)

for i = 0, 93 do
    i = i * incremento
    senha..caracteres[i]
end

print(senha)
