module github.com/envoyproxy/envoy

go 1.13

require (
	github.com/envoyproxy/envoy/examples/grpc-bridge/server v0.0.0-20240321054832-c4fe01c44cb7
	golang.org/x/net v0.22.0
	google.golang.org/grpc v1.62.1
)

replace github.com/envoyproxy/envoy/examples/grpc-bridge/server/kv => ./kv
