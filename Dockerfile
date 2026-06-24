FROM node:20-alpine
WORKDIR /app
RUN npm install -g serve@14
COPY . .
ENV PORT=3000
EXPOSE 3000
# serve listens on Railway's injected $PORT
CMD ["sh", "-c", "serve -l ${PORT}"]
