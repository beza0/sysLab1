#!/bin/bash

echo "hello"  # Kullanıcıyı selamla
ls ~         # Home dizinindeki dosyaları listele

# Zaman damgalı log dosyası oluştur
timestamp=$(date +"%Y%m%d_%H%M%S")
log_file="$HOME/system_report_$timestamp.log"

# Log dosyasına sistem bilgilerini kaydet
echo "System Report - $timestamp" > "$log_file"
ls ~ >> "$log_file"

echo "Log file created: $log_file"
