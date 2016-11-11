FROM mhart/alpine-node:7.1

RUN mkdir /src
WORKDIR /src
ADD app /src
# RUN curl -o- -L https://yarnpkg.com/install.sh | bash
# RUN yarn
RUN npm i

EXPOSE 3000
CMD ["npm","start"]
