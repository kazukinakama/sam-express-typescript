FROM public.ecr.aws/lambda/nodejs:16-x86_64

COPY ./src package*.json ./

RUN npm ci
RUN npm run build

CMD ["lambda.handler"]
