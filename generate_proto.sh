#/bin/zsh

dart pub global activate protoc_plugin
protoc --dart_out=grpc:lib/src/generated -Iprotos protos/Skyle.proto