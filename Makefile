
build:
	docker build -t foxylion/pgadmin4 .

run:
	docker run --rm -it -p 5433:80 -v `pwd`/.pgadmin4:/data foxylion/pgadmin4
