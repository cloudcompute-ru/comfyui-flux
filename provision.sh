#!/usr/bin/env bash
#
# Tutorial provision script. Runs on the GPU instance after the container
# starts, with stdout/stderr redirected to /var/log/cc-tutorial-provision.log
# by the customer app's onstart wrapper.
#
# Plan 1: this is a deliberate no-op so the launch path is testable end-to-end
# without any tutorial-specific runtime work.
#
# Plan 2 will replace this with the real flow:
#   - download Flux.1 schnell fp8 weights from our Yandex Object Storage mirror
#     (single ~17 GB all-in-one checkpoint, aria2c with retries and integrity check)
#   - place workflow.json into ComfyUI's user/default/workflows directory
#   - install pinned custom nodes from manifest.yaml's comfyui.custom_nodes
#   - signal "ready" to the customer app by writing /var/log/cc-provision/state.json,
#     which the on-instance monitoring agent forwards to app.cloudcompute.ru
#
set -euo pipefail
echo "[cc-tutorial] comfyui-flux provision: noop (plan 1 placeholder)"
