# Sử dụng image chính thức của Tomcat từ Docker Hub
FROM tomcat:9.0-jdk11

# Tạo thư mục trong container để lưu source code của bạn
RUN mkdir -p /usr/local/tomcat/webapps/myapp

# Sao chép toàn bộ ứng dụng web (WAR file hoặc source code) vào container
COPY ./myapp /usr/local/tomcat/webapps/myapp/

# Tạo cổng 8080 (cổng mặc định của Tomcat)
EXPOSE 8080

# Khởi động Tomcat server
CMD ["catalina.sh", "run"]
