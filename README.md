# Flux.1 в ComfyUI — запуск в один клик на cloudcompute.ru

Runtime-составляющая туториала **«Flux.1 в ComfyUI»** на
[cloudcompute.ru/tutorials/comfyui-flux](https://cloudcompute.ru/tutorials/comfyui-flux).

В этом репозитории лежит всё, что выполняется на облачной видеокарте, когда
пользователь нажимает «Запустить» в статье туториала: `manifest.yaml`, который
читают маркетинговый сайт и customer app, скрипт `provision.sh`, скачивающий
веса и устанавливающий custom nodes, и `workflow.json`, который ComfyUI
открывает по умолчанию.

## Запустить на cloudcompute.ru (рекомендуем)

[cloudcompute.ru/tutorials/comfyui-flux](https://cloudcompute.ru/tutorials/comfyui-flux)
— нажмите «Запустить», и через несколько минут вы окажетесь в ComfyUI с уже
загруженным workflow. Без локальной установки, без 17 ГБ загрузки на свой диск.

## Запустить у себя

Мы используем вариант **Flux.1 schnell в FP8** (Comfy-Org all-in-one) — ему
достаточно около 12 ГБ видеопамяти. Если у вас RTX 3090, 4090, A6000 или
сопоставимая карта — запустите локально:

```bash
git clone https://github.com/cloudcompute-ru/comfyui-flux.git
cd comfyui-flux
bash provision.sh
```

`provision.sh` будет дополнен в следующей итерации репозитория — сейчас это
заглушка (см. `provision.sh`).

## Что внутри

- `manifest.yaml` — декларативные метаданные, которые маркетинговый сайт и
  customer app читают по требованию.
- `article.ru.md` — текст статьи, отрендеренный по адресу туториала.
- `provision.sh` — выполняется на облачной видеокарте при старте.
- `workflow.json` — ComfyUI workflow, загружаемый по умолчанию.
- `screenshots/` — примеры результатов и скриншоты интерфейса для статьи.

## Лицензии

Скрипты и конфигурация — MIT. Модель Flux.1 schnell распространяется под
**Apache License 2.0** — её авторы (Black Forest Labs) разрешают свободное
коммерческое использование. Подробности — в upstream-репозитории на HuggingFace.
