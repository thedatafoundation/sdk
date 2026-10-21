FROM node:24.22.1-slim

# install pnpm
RUN npm i -g pnpm@8.8.0

# prepare packages
COPY . /repo
WORKDIR /repo
RUN pnpm install

# set entrypoint
ENTRYPOINT ["pnpm"]

