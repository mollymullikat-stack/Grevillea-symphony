FROM node:18-alpine
WORKDIR /app
RUN npm install -g serve@14
COPY . .
# Railway injects $PORT at runtime; "serve -l <number>" binds 0.0.0.0 on it.
# sh -c ensures ${PORT} is expanded (falls back to 3000 for local runs).
CMD ["sh", "-c", "serve -s . -l ${PORT:-3000}"]
