module github.com/envoyproxy/envoy

go 1.13

require (
	github.com/envoyproxy/envoy/examples/grpc-bridge/server v0.0.0-20240408192629-0811e148703a
	golang.org/x/net v0.24.0
	google.golang.org/grpc v1.63.2
)

replace github.com/envoyproxy/envoy/examples/grpc-bridge/server/kv => ./kv
