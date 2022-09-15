FROM ruby as ruby_builder

COPY backend/Gemfile* ./
RUN bundle install

FROM node as node_builder

WORKDIR /frontend

COPY frontend/package*.json ./
RUN npm i
COPY frontend ./
RUN npm run build

FROM ruby

WORKDIR /app

COPY --from=ruby_builder /usr/local/bundle/ /usr/local/bundle/
COPY --from=node_builder /frontend/dist/ /app/public/
COPY backend/ ./
ENTRYPOINT ["bundle", "exec"]
