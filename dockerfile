FROM nvcr.io/nvidia/pytorch:22.12-py3

RUN python -m pip install --upgrade pip && pip install fschat

RUN pip uninstall -y torch && \
    git clone https://github.com/xmcbbkad/vllm.git && \
    cd vllm && pip install -e . 

WORKDIR /workspace/vllm
