FROM wso2/wso2am:4.4.0-rocky

ENV TZ=Asia/Yangon
ENV APIM_DB=apim_db
ENV SHARED_DB=shared_db
ENV WSO2_DB_USER=apimadmin
ENV WSO2_DB_PASSWORD=P@ssw0rd
ENV ADMIN_USERNAME=admin
ENV ADMIN_PASSWORD=admin

COPY postgresql-42.7.5.jar /home/wso2carbon/wso2am-4.4.0/repository/components/lib/
COPY mysql-connector-j-9.2.0.jar /home/wso2carbon/wso2am-4.4.0/repository/components/lib
COPY deployment.toml /home/wso2carbon/wso2am-4.4.0/repository/conf/
