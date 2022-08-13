FROM public.ecr.aws/lambda/nodejs:16-x86_64

COPY ./src package.json yarn.lock ./

RUN npm install
RUN npm install -g yarn
RUN yarn run build
# If you are building your code for production, instead include a package-lock.json file on this directory and use:
# RUN npm ci --production

# Command can be overwritten by providing a different command in the template directly.
CMD ["lambda.handler"]
