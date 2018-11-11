FROM balenalib/asus-tinker-board-python:3.7.0-stretch

WORKDIR /usr/src/app

RUN apt-get update && apt-get install build-essential git python-dev

RUN pip install --upgrade pip

RUN git clone http://github.com/TinkerBoard/gpio_lib_python --depth 1 GPIO_API_for_Python && \
    cd GPIO_API_for_Python/ && \
    python setup.py install

RUN git clone https://github.com/pimoroni/blinkt.git --depth 1 && \
    cd blinkt/library && \
    python setup.py install

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY start.sh .

CMD ["bash", "start.sh"]
