# express-sample

## Copy Environment Variable
```
cp .env.local .env
```

## Up
```
docker compose up -d
```

## Down
```
docker compose down -v
```

## Build your application
```
sam build
```

## Deploy your application for the first time
```
sam deploy --guided
```

## Deploy the updated application
```
sam deploy
```

## Run the API locally on port 3000
```
sam local start-api
curl http://localhost:3000/
```

## Test
```
npm run test
```

## Cleanup
```
aws cloudformation delete-stack --stack-name express-sample
```
