# Flux.1 in ComfyUI — one-click on cloudcompute.ru

Runtime payload for the **Flux.1 in ComfyUI** tutorial on
[cloudcompute.ru/tutorials/comfyui-flux](https://cloudcompute.ru/tutorials/comfyui-flux).

This repo holds everything that runs on the GPU instance when a user clicks the
"Запустить" button on the tutorial article: the manifest the customer app reads
to pick a matching offer, the provision script that downloads weights and
installs custom nodes, and the ComfyUI workflow file the user sees when the app
loads.

## Run on cloudcompute.ru (recommended)

[cloudcompute.ru/tutorials/comfyui-flux](https://cloudcompute.ru/tutorials/comfyui-flux)
— click "Запустить" and you're in ComfyUI with the workflow loaded in roughly
five minutes. No local install, no 24 GB download.

## Run it yourself

Flux.1 needs ~16-24 GB of VRAM. If you have a 3090, 4090, A6000, or comparable
card, you can run this locally:

```bash
git clone https://github.com/cloudcompute-ru/comfyui-flux.git
cd comfyui-flux
bash provision.sh
```

`provision.sh` will be filled out in the next iteration of this repo. For now
it is a no-op placeholder (see `provision.sh`).

## What's in here

- `manifest.yaml` - declarative metadata read by both the marketing site and
  the customer app at request time.
- `article.ru.md` - the article body rendered at the live tutorial URL.
- `provision.sh` - runs on the GPU instance at boot.
- `workflow.json` - the ComfyUI workflow loaded by default.
- `screenshots/` - example outputs and UI shots used by the article.

## License

MIT for the wrapper scripts and configuration. The Flux.1 model weights are
distributed under their own license - see the upstream HuggingFace repository.
