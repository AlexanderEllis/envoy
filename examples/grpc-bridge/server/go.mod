module github.com/envoyproxy/envoy

go 1.13

require (
	github.com/envoyproxy/envoy/examples/grpc-bridge/server v0.0.0-20240605043324-94aa1fc58902
	golang.org/x/net v0.26.0
	google.golang.org/grpc v1.64.0
)

replace github.com/envoyproxy/envoy/examples/grpc-bridge/server/kv => ./kv
