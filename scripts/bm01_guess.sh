#!/bin/bash
target=$(( RANDOM % 100 + 1 ))
for try in {1..5}; do
  read -p "Спроба $try/5 – введи число 1-100: " n
  [[ $n -eq $target ]] && { echo "Вітаємо! Ви вгадали $target"; exit 0; }
  [[ $n -gt $target ]] && echo "Занадто високо" || echo "Занадто низько"
done
echo "Спроби закінчилися. Число було: $target"
exit 1
