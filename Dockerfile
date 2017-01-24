FROM nodesource/jessie:latest

RUN echo 'deb http://http.debian.net/debian wheezy main contrib non-free' >> /etc/apt/sources.list
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get clean && apt-get update && apt-get install -y --fix-missing libelf-dev libgtkextra-dev libgconf2-dev libnss3 libasound2 libxtst-dev libxss1 xvfb yarn

