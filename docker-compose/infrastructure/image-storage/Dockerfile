FROM nginx:mainline-alpine
COPY nginx.conf /etc/nginx/nginx.conf
VOLUME [ "/usr/share/nginx/imgFolder", "/usr/share/nginx/spa-mat", "/var/www/withkid" ]
#설정파일 경로  /etc/nginx/nginx.conf

#컨테이너의 볼륨의 경로 /usr/share/nginx
#도커파일의 VOLUME 속성으로는 호스트와 MOUNT 불가