FROM readytalk/nodejs

WORKDIR /
RUN npm install express-generator -g
RUN express loght && cd loght && npm install && npm install log-timestamp
RUN rm -f /loght/app.js
ADD . /loght
EXPOSE 3000

RUN echo "cd /loght && npm start > logs/loght.txt" >> /run.sh

CMD ["sh","/run.sh"]
