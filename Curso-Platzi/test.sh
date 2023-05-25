#/usr/bin/fish

set -l dni_regex '^CC|CE\s?\d{6,9}$'
set -l city_regex '^BGT|MDE$'
set -l birthday_regex '^((19[2-9]\d)|(20[0-1]\d))-((0[1-9])|(1[0-2]))-(0[1-9]|([1-2][0-9])|(3[0-1]))$' # 1920-01-01 - 2019-12-31
set -l reply

read -P 'Introduce your DNI (CC/CE 123456789): ' -l dni
read -P 'Introduce your city\s initials (BGT, MDE): ' -l city
read -P 'Introduce your birthday (yyy-mm-dd):' -l birthday

while true
    read -n1 -P 'Do you want to validate the information? (Y/n): ' reply

    if string match --regex --quiet '(^[y|n]$|^$)' $reply
        break
    else
        echo 'Please respond with a `y` or a `n`'
    end
end

if test $reply = 'y' -o $reply = ''
    if string match --regex --quiet $dni_regex $dni
        echo "✓ The DNI is correct"
    else
        echo "× The DNI `$dni` is incorrect"
    end

    if string match --regex --quiet $city_regex $city
        echo "✓ The City is correct"
    else
        echo "× The City `$city` is incorrect"
    end

    if string match --regex --quiet $birthday_regex $birthday
        echo "✓ The Birthday is correct"
    else
        echo "× The Birthday `$birthday` is incorrect"
    end
end
