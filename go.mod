module log-pilot

require (
	github.com/Microsoft/go-winio v0.4.14 // indirect
	github.com/docker/distribution v2.7.1+incompatible // indirect
	github.com/docker/docker v1.13.1
	github.com/docker/go-connections v0.4.0 // indirect
	github.com/docker/go-units v0.4.0 // indirect
	github.com/elastic/go-ucfg v0.8.3
	github.com/opencontainers/go-digest v1.0.0 // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/sirupsen/logrus v1.4.1
	golang.org/x/net v0.0.0-20200602114024-627f9648deb9
	gopkg.in/yaml.v2 v2.3.0 // indirect
)

replace (
	github.com/sirupsen/logrus v1.8.1 => github.com/Sirupsen/logrus v1.8.1
)

go 1.13
