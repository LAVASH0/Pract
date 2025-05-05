#!/bin/bash

if [ -d ".git" ]; then
  echo "Git репозиторій вже ініціалізований. Пропускаємо git init."
else
  git init
  echo "Репозиторій ініціалізовано."
fi

git add .
echo -n "Назва коміта: "
read namecomm
git commit -m "$namecomm"

echo -n "Підключення до віддаленого репозиторію (y/n): "
read connect

if [[ "$connect" == "Y" || "$connect" == "y" ]]; then
    git remote add origin https://github.com/LAVASH0/Pract
    echo "Віддалений репозиторій підключено."
fi

git push -u origin master

