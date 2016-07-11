default['maven']['extract_path'] = '/Library/Maven'
default['maven']['source']        = '/sapmnt/production/swl/iOS/Repositories/build.milestones/com.sap.3rd-party.com.apache/apache-maven/3.0.5/apache-maven-3.0.5.tar.gz'

default['maven']['settings_source'] = 'http://nexus.wdf.sap.corp:8081/nexus/content/repositories/deploy.buildtools.ios/com/sap/prd/mobile/ios/buildenv/maven-settings-server/1.1.0/maven-settings-server-1.1.0.xml'

default['maven']['maven_Settings_Security_source'] = 'file:///sapmnt/production/info/make/pamber/IOS/settings-security.xml'

default['maven']['maveneventspyclient_source'] = 'http://nexus.wdf.sap.corp:8081/nexus/content/repositories/build.milestones/com/sap/prd/BuildCounterSlave/BuildCounterSlave/0.0.1/BuildCounterSlave-0.0.1.jar'
default['maven']['maveneventspyclient_destination'] = "#{default['maven']['extract_path']}/lib/ext/BuildCounterSlave.jar"

default['maven']['eventspyclientconfig_source'] = 'file:///sapmnt/production/swl/iOS/Repositories/build.milestones/com.sap.prd.maveneventspyclient/installer-maveneventspy-client-conf/1.0.0/installer-maveneventspy-client-conf-1.0.0.properties'
default['maven']['eventspyclientconfig_destination'] = "#{ENV['HOME']}/mvn_event_spy_slave.properties"


default['sshKeysVelocity']['sorces'] = 'file:///sapmnt/production/swl/iOS/Repositories/build.milestones/com.sap.prd.mobile.ios.buildenv/git_ssh_known_hosts/1.2/git_ssh_known_hosts-1.2'

