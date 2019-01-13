FROM node:8
WORKDIR /src
COPY . /src
ENV CONTENT_API_URL http://172.18.0.2:3001
RUN npm install
EXPOSE 3000
CMD ["npm", "start"]