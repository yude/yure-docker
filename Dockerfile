FROM node:trixie-slim

RUN apt-get update && apt-get install -y \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/kusaremkn/yure /app
WORKDIR /app
RUN npm i

CMD ["node", "app.js"]
