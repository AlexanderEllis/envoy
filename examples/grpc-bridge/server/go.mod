module github.com/envoyproxy/envoy

go 1.13

require (
	github.com/envoyproxy/envoy/examples/grpc-bridge/server v0.0.0-20240404034208-ad9b1cc9dc79
	golang.org/x/net v0.22.0
	google.golang.org/grpc v1.63.0
)

replace github.com/envoyproxy/envoy/examples/grpc-bridge/server/kv => ./kv
