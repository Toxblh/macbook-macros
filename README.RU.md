# Macbook Macros

[![en](https://img.shields.io/badge/lang-English%20%F0%9F%87%AC%F0%9F%87%A7-white)](README.md)
[![ru](https://img.shields.io/badge/%D1%8F%D0%B7%D1%8B%D0%BA-%D0%A0%D1%83%D1%81%D1%81%D0%BA%D0%B8%D0%B9%20%F0%9F%87%B7%F0%9F%87%BA-white)](README.RU.md)

Набор полезных макросов горячих клавиш для ежедневной работы. Мы будем использовать скрипты с помощью bash + AppleScripts для этого. Давайте начнем с [примера, используя Google](./.skhdrc):

- Легкий способ вернуться на встречу в Meet? <kbd>Alt</kbd>+<kbd>m</kbd> (мнемоника для Meet)
- Проверить почту? <kbd>Alt</kbd>+<kbd>e</kbd>
- Запланировать новую встречу в Календаре? <kbd>Alt</kbd>+<kbd>c</kbd>
- Переключить микрофон в Meet? <kbd>Alt</kbd>+<kbd>Space</kbd>

Для настройки пользовательских горячих клавиш мы будем использовать [skhd](https://github.com/koekeishiya/skhd).

Итак, как его установить?

1. Сначала установите skhd - `brew install koekeishiya/formulae/skhd`
2. Скопируйте [.skhdrc](./.skhdrc) в ваш домашний каталог ($HOME)
3. Также скопируйте папку [scripts](/scripts/) в ваш домашний каталог ($HOME)
4. Предоставьте права на выполнение скрипта - `chmod +x ~/scripts/activate-chrome.sh`
5. Активируйте службу skhd - `skhd --start-service`

Кстати, если вам нужно перезагрузить skhd, используйте `skhd --restart-service`. Если конфигурация не срабатывает автоматически, используйте `skhd -r`.
