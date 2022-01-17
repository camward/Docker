run:
	docker run -d -p 3000:3000 --rm --name logsapp -v logs:/app/data logsapp:myTag
run-dev:
	docker run -d -p 3000:3000 --rm --name logsapp -v logs:/app/data -v /app/node_modules -v $(pwd):/app logsapp:myTag
run-base:
	docker run -d -p 3000:3000 --name logsapp logsapp:myTag
stop:
	docker stop logsapp