FROM index.tenxcloud.com/guodong/tomcat-maven:latest

ADD pom.xml /tmp/build/
#RUN cd /tmp/build && mvn -q dependency

ADD src /tmp/build/src
#构建应用
RUN cd /tmp/build && mvn -q -Dmaven.test.skip=true package \
#拷贝编译结果到指定目录
	&& rm -rf $CATALINA_HOME/webapps/* \
    && mv /tmp/build/target/*.war $CATALINA_HOME/webapps/ROOT.war \
#清理编译痕迹
    && cd / && rm -rf /tmp/build