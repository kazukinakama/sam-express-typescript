FROM public.ecr.aws/lambda/nodejs:16-x86_64

COPY ./src package.json yarn.lock ./

RUN npm install
RUN npm install --location=global yarn
RUN yarn run build

CMD ["lambda.handler"]
