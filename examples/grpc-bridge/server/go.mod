module github.com/envoyproxy/envoy

go 1.13

require (
	github.com/envoyproxy/envoy/examples/grpc-bridge/server v0.0.0-20240806154841-793379603974
	golang.org/x/net v0.28.0
	google.golang.org/grpc v1.64.1
)

replace github.com/envoyproxy/envoy/examples/grpc-bridge/server/kv => ./kv
