FROM ubuntu:latest
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
	nodejs  \
	npm \ 
    && rm -rf /var/lib/apt/lists/*

WORKDIR /traccar-web
COPY . .
#COPY package-lock.json ./
#COPY package.json ./
#COPY public ./
#COPY src ./
RUN	npm install 
EXPOSE 3000
CMD ["npm", "start"]
