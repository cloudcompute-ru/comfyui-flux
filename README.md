# ComfyUI с Flux.1 schnell

Готовый launcher для **[ComfyUI](https://github.com/comfyanonymous/ComfyUI)** с предустановленной моделью **[Flux.1 schnell (FP8)](https://huggingface.co/black-forest-labs/FLUX.1-schnell)** и стартовым workflow. Поднимает ComfyUI на `0.0.0.0:8188` на свежем NVIDIA-контейнере одной командой — без ручной охоты за весами и возни с custom nodes.

Подходит для генерации изображений по текстовому промпту на собственной (или арендованной) видеокарте, в том числе для тех, кто впервые знакомится с ComfyUI и не хочет тратить вечер на сборку окружения.

## Что нужно

Linux с одной NVIDIA GPU от **12 ГБ VRAM** (RTX 3090, RTX 4070 Ti, RTX 4090, A6000, A100, H100 — все подходят) и актуальный CUDA-драйвер. Flux.1 schnell в FP8 умещается в 12 ГБ и генерирует изображение за 4 шага сэмплинга.

## Запуск

```bash
git clone https://github.com/cloudcompute-ru/comfyui-flux.git
cd comfyui-flux
bash provision.sh
```

После сообщения `provisioning complete` откройте `http://<host>:8188/` в браузере. Стартовый workflow загружается автоматически — впишите промпт в зелёную ноду **CLIP Text Encode** и нажмите **Queue Prompt**.

`provision.sh` идемпотентен: если веса модели уже скачаны, повторный запуск пропускает этот шаг.

## Что внутри

- `provision.sh` — ставит ComfyUI + ComfyUI Manager, скачивает FP8-чекпоинт Flux.1 schnell, поднимает сервер на `0.0.0.0:8188`.
- `workflow.json` — ComfyUI workflow, загружаемый по умолчанию.
- `screenshots/` — примеры результатов и скриншоты интерфейса.

## Про cloudcompute.ru

Этот репозиторий поддерживает [cloudcompute.ru](https://cloudcompute.ru) — российский GPU-хостинг с почасовой оплатой. Если не хочется самостоятельно арендовать видеокарту и поднимать контейнер, [cloudcompute.ru/tutorials/comfyui-flux](https://cloudcompute.ru/tutorials/comfyui-flux) — это тот же скрипт, запущенный в один клик: подбор подходящей видеокарты от Vast.ai, оплата по факту работы (от ~40 ₽/час), готовый ComfyUI в браузере через 5 минут. Без локальной установки и без 17 ГБ загрузки на свой диск.

## Лицензии

Скрипты и конфигурация — MIT (см. `LICENSE`). Модель Flux.1 schnell распространяется под **Apache License 2.0** (Black Forest Labs) — коммерческое использование разрешено. ComfyUI — GPL-3.0, ComfyUI Manager — GPL-3.0. Этот репозиторий устанавливает их в runtime, но не модифицирует и не перераспространяет.
