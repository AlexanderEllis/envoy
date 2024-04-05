module github.com/envoyproxy/envoy

go 1.13

require (
	github.com/envoyproxy/envoy/examples/grpc-bridge/server v0.0.0-20240404231358-6eb895a02e93
	golang.org/x/net v0.24.0
	google.golang.org/grpc v1.62.1
)

replace github.com/envoyproxy/envoy/examples/grpc-bridge/server/kv => ./kv
