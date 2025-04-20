#! /bin/bash
cd comfyui/models/checkpoints
wget https://huggingface.co/Comfy-Org/flux1-schnell/resolve/main/flux1-schnell-fp8.safetensors?download=true -O flux1-schnell-fp8.safetensors
cd ../../..