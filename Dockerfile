FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.1

RUN gem install encrypted_s3_copy --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["aes_key_gen"]
CMD ["--help"]
