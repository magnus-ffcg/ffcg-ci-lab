#!Make

.PHONY: install test start docker-build docker-start

install:
	cd src && npm install

build:
	cd src && npm run build

start: build
	cd src && node dist/app.js

test:
# 	ska vi köra denna i "piplinen" också?
	cd src && npm run test
	cd src && npm run lint

docker-build:
	docker build -t simple-ci-lab:latest .

docker-start:
	docker run -it -d -p 3000:3000 --name ci-lab simple-ci-lab:latest
	open http://localhost:3000

docker-stop:
	docker stop ci-lab

install-security-tool-and-test:
# 	Denna är dock globalt installerad, kanske vi ska flytta den till devDependencies istället?
	npm i snyk -g && snyk test src/

