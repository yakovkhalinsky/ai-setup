FROM pytorch/pytorch:2.5.1-cuda12.4-cudnn9-devel

RUN apt-get update && apt-get install -y git

WORKDIR /app

RUN git clone https://github.com/bytedance-seed/BAGEL.git .

RUN pip install -r requirements.txt
RUN pip install gradio huggingface_hub
RUN pip install flash-attn --no-build-isolation

RUN apt-get install -y libgl1-mesa-glx
RUN apt-get install -y libglib2.0-0

EXPOSE 7860

ENTRYPOINT ["python3", "app.py", "--server_name", "0.0.0.0"]
