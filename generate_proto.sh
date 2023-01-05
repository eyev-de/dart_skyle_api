#/bin/zsh

protoc --dart_out=grpc:lib/src/generated -Iprotos protos/Skyle.proto