
- job_name: "Project 0-mongo-metrics"
  scrape_interval: 10s
  metrics_path: /metrics
  scheme : https
  basic_auth:
    username: prom_user_6733ea2431b70b6610767308
    password: <insert-password>
  http_sd_configs:
    - url: https://cloud.mongodb.com/prometheus/v1.0/groups/6733ea2431b70b6610767308/discovery?targetScheme=PRIVATE
      refresh_interval: 60s
      basic_auth:
        username: prom_user_6733ea2431b70b6610767308
        password: <insert-password>
  
