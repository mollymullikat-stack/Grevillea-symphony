FROM node:20-alpine
WORKDIR /app
RUN npm install -g serve@14
COPY . .
ENV PORT=3000
EXPOSE 3000
# serve binds to 0.0.0.0 on Railway's injected $PORT so the service is reachable
CMD ["sh", "-c", "serve -l tcp://0.0.0.0:${PORT}"]
