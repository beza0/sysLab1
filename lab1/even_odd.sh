#!/bin/bash

# Kullanıcıdan sayı al
echo -n "Bir sayı girin: "
read number

# Mod işlemi ile çift veya tek olduğunu kontrol et
if (( number % 2 == 0 )); then
    echo "$number çifttir."
else
    echo "$number tektir."
fi

