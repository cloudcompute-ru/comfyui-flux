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
#   - download Flux.1 model weights from HuggingFace (with retries)
#   - place workflow.json into ComfyUI's user/default/workflows directory
#   - install pinned custom nodes
#   - signal "ready" to the customer app via the cc-agent metrics endpoint
#
set -euo pipefail
echo "[cc-tutorial] comfyui-flux provision: noop (plan 1 placeholder)"
