FROM node:8
WORKDIR /src
COPY . /src
ENV CONTENT_API_URL http://localhost:3001
RUN npm install
EXPOSE 3000
CMD ["npm", "start"]