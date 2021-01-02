build:
	docker build -t wine .

run:
	docker run --name wine wine 

copy-report:
	docker cp wine:/app/report.md ./report.md
	docker cp wine:/app/metrics/metrics.json ./metrics/metrics.json
