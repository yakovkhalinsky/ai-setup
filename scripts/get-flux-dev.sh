#! /bin/bash
cd comfyui/models/checkpoints
wget https://huggingface.co/Comfy-Org/flux1-dev/resolve/main/flux1-dev-fp8.safetensors?download=true -O flux1-dev-fp8.safetensors
cd ../../..