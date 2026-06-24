FROM node:18-alpine
WORKDIR /app
RUN npm install -g serve@14
COPY . .
# Listen on a fixed port 3000. Set Railway's target port to 3000 (Networking).
EXPOSE 3000
CMD ["serve", "-s", ".", "-l", "3000"]
