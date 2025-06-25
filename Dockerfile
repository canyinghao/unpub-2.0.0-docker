from dart:2.19.6

WORKDIR /app
COPY . ./
RUN export PUB_HOSTED_URL=https://pub.flutter-io.cn
RUN export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn

RUN dart pub get
ENTRYPOINT ["dart", "run", "bin/unpub.dart", "--database", "mongodb://mongo:27017/dart_pub"]