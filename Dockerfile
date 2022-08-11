FROM jboss/keycloak:16.1.1

# copy templates
COPY themes/base/admin/resources/partials/* /opt/jboss/keycloak/themes/base/admin/resources/partials/
# copy jar
COPY target/keycloak-service-social-lark-1.0.0.jar /opt/jboss/keycloak/providers/

# set JVM file.encoding=UTF-8 to support Chinese
COPY standalone.conf /opt/jboss/keycloak/bin
