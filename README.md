# gRPC Example Proto

## Development

### Prerequisites

1. [Protocol buffer compiler](https://grpc.io/docs/protoc-installation), version 3
2. Language plugins for the protocol buffer compiler.
```
# Go plugins
go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
```

### Generate Client and Server Library

The example command generates client and server library for Go.
```
make
```

## References

- [Google API Improvement Proposal](https://google.aip.dev/1)
- [Protocol Buffers Documentation](https://developers.google.com/protocol-buffers/docs/overview)
- [gRPC Documentation](https://grpc.io/docs)
