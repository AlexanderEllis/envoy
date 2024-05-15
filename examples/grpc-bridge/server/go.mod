module github.com/envoyproxy/envoy

go 1.13

require (
	github.com/envoyproxy/envoy/examples/grpc-bridge/server v0.0.0-20240515033658-3dd6fd71c8fc
	golang.org/x/net v0.25.0
	google.golang.org/grpc v1.64.0
)

replace github.com/envoyproxy/envoy/examples/grpc-bridge/server/kv => ./kv
