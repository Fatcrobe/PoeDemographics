init:
	mkdir -p ./dags ./logs ./plugins
	echo "AIRFLOW_UID=$$(id -u)" > .env
up:
	docker-compose up airflow-init && docker-compose up --build -d
clean:
	docker-compose down --volumes --remove-orphans
