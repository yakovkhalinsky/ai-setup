# Base image with Python 3.11 and CUDA 12.5 support
FROM nvidia/cuda:12.8.1-runtime-ubuntu22.04

ARG COMFYUI_VERSION=v0.3.33

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    python3-pip \
    libgl1-mesa-glx \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# get comfyui source and install depedencies, manager and gguf support
RUN git clone -b ${COMFYUI_VERSION} https://github.com/comfyanonymous/ComfyUI.git . && \
    pip install --upgrade pip && \
    pip install -r requirements.txt

RUN git clone https://github.com/ltdrdata/ComfyUI-Manager.git /app/custom_nodes/ComfyUI-Manager && \
    pip install -r /app/custom_nodes/ComfyUI-Manager/requirements.txt
    
RUN git clone https://github.com/city96/ComfyUI-GGUF.git /app/custom_nodes/ComfyUI-GGUF && \
    pip install --upgrade gguf

# Expose the port used by ComfyUI
EXPOSE 8188

# Run ComfyUI with the server binding to 0.0.0.0
CMD ["python3", "main.py", "--listen", "0.0.0.0"]
