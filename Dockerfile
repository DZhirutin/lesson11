FROM dzhirutin/my-repo:build-1.0

ARG jenkinsUserId=
RUN if ! id $jenkinsUserId; then \
    usermod -u ${jenkinsUserId} jenkins; \
    groupmod -g ${nodeId} jenkins; \
  fi