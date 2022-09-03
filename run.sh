#!/bin/bash
docker stop api-rest || true && docker rm api-rest


#Run Container Application
docker run -itd --name api-rest -p 3000:3000 lzapienmx/miappcdk-ago22:1.0

