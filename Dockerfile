FROM openfrontier/gerrit

MAINTAINER zsx <thinkernel@gmail.com>

ENV GERRIT_ADMIN_UID admin
ENV GERRIT_ADMIN_PWD passwd
ENV GERRIT_ADMIN_SSHKEY_PATH /id_rsa.pub

COPY gerrit-start.sh /
COPY /http_ldap_config.sh /docker-entrypoint-init.d/
COPY first-run.sh /
COPY addAdminUser.sh /
COPY addSSHKey.sh /
COPY setupGerritJenkins.sh /
