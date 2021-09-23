write-host " ________________"
write-host "|                |"
write-host "|      menu      |"
write-host "|                |"
write-host "|________________|"

write-host "1. convierte de binario a decimal"
write-host "2. convierte de hexadecimal a binario"
write-host "3. convierte de binario a octal"
write-host "4. convierte de binario a hexadecimal"
write-host "5. convierte de hexadecimal a octal"
write-host "6. convierte de decimal a binario"
$option = read-host " selecciona operacion"
if ($option -eq 1)
{
$binario = read-host "dime el numero binario"
$valor=[convert]::toint32($binario,2)
"el numero es..." + $valor
}

if ($option -eq 2)
{
$hexa = read-host "dime el numero hexadecimal"
$valor=[convert]::toint64($hexa,16)
$valor=[convert]::tostring($valor,2)
"el numero es..." + $valor
}
if ($option -eq 3)
{ 
$binario = read-host  "dime un numero en binario"
$decimal =[convert]::toint64($binario,2) 
$valor=[convert]::tostring($decimal,8)
" el valor en octal es..."+ $valor
}
if ($option -eq 4)
{ 
$binario = read-host "dime el numero en binario"
$decimal = [convert]::toint32($binario,2)
$valor = [convert]::tostring($decimal,16)
" el valor en hexadecimal es..." + $valor
}
if ($option -eq 5)
{
$hexa = read-host "dime el numero hexadecimal"
$decimal = [convert]::toint32($hexa,16)
$octal=[convert]::tostring($decimal,8)
"el numero en octal es..." + $octal
}
if ($option -eq 6)
{
$decimal= read-host "dime el numero decimal"
$decimal = [convert]::tostring($decimal,2)
"el numero es..."+ $decimal
}