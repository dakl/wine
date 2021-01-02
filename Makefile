build:
	docker build -t wine .

run:
	docker run --name wine -v ${PWD}/data:/app/data -v ${PWD}/metrics:/app/metrics  wine
	docker cp wine:/app/report.md report.md
	docker rm wine


copy-report:
	docker cp wine:/app/report.md ./report.md
	docker cp wine:/app/metrics/metrics.json ./metrics/metrics.json
