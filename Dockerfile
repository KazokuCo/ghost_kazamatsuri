FROM node:4-slim
RUN npm install -g bower broccoli-cli && npm cache clean
ADD monologue /monologue
RUN cd content/themes/monologue && \
	bower install && broccoli build assets
