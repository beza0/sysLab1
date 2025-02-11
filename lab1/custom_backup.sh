#!/bin/bash

# Kullanım mesajı
if [ $# -ne 1 ]; then
    echo "Kullanım: $0 <yedeklenecek_dizin>"
    exit 1
fi

# Kullanıcının girdiği dizini al
source_dir=$1

# Dizinin var olup olmadığını kontrol et
if [ ! -d "$source_dir" ]; then
    echo "Hata: '$source_dir' dizini mevcut değil!"
    exit 1
fi

# Yedekleme için zaman damgalı dosya adı oluştur
timestamp=$(date +"%Y%m%d_%H%M%S")
backup_file="backup_${timestamp}.tar.gz"

# Yedekleme işlemini gerçekleştir
tar -czf "$backup_file" "$source_dir"

echo "Yedekleme tamamlandı: $backup_file"
