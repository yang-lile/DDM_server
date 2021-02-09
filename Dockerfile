FROM google/dart

WORKDIR /app

ADD . /app/
RUN pub get
RUN dart /app/bin/main.dart
