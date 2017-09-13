main: run

clean:
	sudo docker-compose down
	sudo docker-compose rm -f
	sudo docker rm -f scikit || true

build: clean
	git stash save
	git pull --rebase origin master
	git stash pop
	sudo docker-compose build

run: build
	sudo docker run --name scikit \
		-p 8889:8889 \
		-v ${PWD}:/workspace \
		-it scikit-core \
		/bin/bash -c "jupyter notebook --notebook-dir=/workspace/notebooks --ip='0.0.0.0' --allow-root --port=8889 --no-browser"

shell:
	sudo docker exec -it scikit bash

docker-ip:
	@sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' scikit
