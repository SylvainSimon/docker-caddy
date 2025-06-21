FROM nginx:alpine3.18

# Apk install
RUN apk --no-cache update && apk --no-cache add bash nano nodejs npm sudo openssl shadow
RUN usermod -u 1000 nginx
RUN groupmod -g 1000 nginx

RUN touch /root/.bashrc
RUN echo "force_color_prompt=yes /bin/sh" >> /root/.bashrc