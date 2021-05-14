export FLUENTD_OUTPUT="elasticsearch"

#es
export ELASTICSEARCH_HOST="localhost"
export ELASTICSEARCH_PORT="9200"
export ELASTICSEARCH_USER="user"
#export ELASTICSEARCH_PASSWORD="password"
#export ELASTICSEARCH_PATH
#export ELASTICSEARCH_SCHEME="http"
#export ELASTICSEARCH_SSL_VERIFY=false
export bufferd_output="<buffer>123</buffer>"

#kafka
export KAFKA_BROKERS="fluentd"

#file
export FLUENTD_OUTPUT="file"
export FILE_PATH=/var/log/fluentd.out.log
