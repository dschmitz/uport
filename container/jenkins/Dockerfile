FROM uport/ubuntu:latest

MAINTAINER David Schmitz

RUN wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | apt-key add -
RUN echo "deb http://pkg.jenkins-ci.org/debian binary/" > /etc/apt/sources.list.d/jenkins.list
RUN apt-get update && apt-get -y install jenkins


RUN mkdir -p /var/lib/jenkins/plugins
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/analysis-core.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/artifactory.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/backup.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/build-blocker-plugin.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/build-timeout.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/call-remote-job-plugin.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/checkstyle.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/config-file-provider.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/configurationslicing.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/copyartifact.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/crowd2.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/dashboard-view.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/depgraph-view.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/disk-usage.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/downstream-buildview.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/email-ext.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/findbugs.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/git-client.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/git.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/jenkins-jira-issue-updater.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/jira.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/jobConfigHistory.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/jquery.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/jquery-ui.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/jshint-checkstyle.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/jslint-checkstyle.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/leastload.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/mapdb-api.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/mercurial.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/parameterized-trigger.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/pmd.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/postbuildscript.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/postbuild-task.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/promoted-builds.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/publish-over-ssh.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/saferestart.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/scm-api.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/ssh-agent.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/ssh-credentials.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/tasks.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/timestamper.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/token-macro.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/instant-messaging.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/postbuild-task.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/build-name-setter.hpi)
RUN (cd /var/lib/jenkins/plugins && wget --no-check-certificate http://updates.jenkins-ci.org/latest/swarm.hpi)

ADD config.xml /var/lib/jenkins/config.xml

RUN chown -R jenkins:jenkins /var/lib/jenkins
RUN cd /var/lib/jenkins/plugins && for f in *.hpi; do mv $f `basename $f .hpi`.jpi; done;
VOLUME /var/lib/jenkins

EXPOSE 8080
EXPOSE 8081

ENV JENKINS_HOME /var/lib/jenkins

CMD ["/usr/bin/java", "-jar", "/usr/share/jenkins/jenkins.war"]
