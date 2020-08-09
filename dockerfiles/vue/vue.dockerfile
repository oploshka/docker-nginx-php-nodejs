FROM node:12

RUN npm i -g @vue/cli
# RUN npm install @vue/cli@4.4.6 -g

# # create project
# vue create app-name
#

CMD [ "npm", "run", "serve" ]