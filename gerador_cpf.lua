io.write()
local cpf = io.read()
local x = 0
local s = 0
local primeiro = 0
local segundo = 0

for i = 9, 1, -1 do
  local y = string.sub(cpf, i, i)
  local num = tonumber(y)
  for j = 2, 10 do
    primeiro = num * j
    x = primeiro + x
  end
end

local resto = x % 11

if resto < 2 then
  primeiro = 0

else
  primeiro = 11 - resto
end

cpf = cpf..primeiro

for l = 1, 10 do
    local a = string.sub(cpf, l, l)
    local numero = tonumber(a)
    for m = 2, 11 do
        if l + m == 12 then
            segundo = numero * m
            s = segundo + s
        end
    end
end

local resto_dois = s % 11
if resto_dois < 2 then
  segundo = 0
else
  segundo = 11 - resto_dois
end

cpf = cpf..segundo
print("Seu CPF validado: "..cpf)
