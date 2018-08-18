

default['httpd']['default']['mod_jk_url']="http://redrockdigimark.com/apachemirror/tomcat/tomcat-connectors/jk/tomcat-connectors-1.2.42-src.tar.gz"


default['httpd']['default']['tarfile']="#node{['httpd']['default']['LOC']/}"



## downloading a file from web 
LOC='/opt'

default['httpd']['default']['LOC']='/opt'

default['httpd']['default']['mod_jk_url']="http://redrockdigimark.com/apachemirror/tomcat/tomcat-connectors/jk/tomcat-connectors-1.2.42-src.tar.gz"

mod_jk_tar = default['httpd']['default']['mod_jk_url'].split('/').last # this is to get tarfile name

mod_jk_tar_dir=mod_jk_tar.gsub(".tar.gz", "")

default['httpd']['default']['tarfile'] = "#{LOC}/#{mod_jk_tar}"

default['httpd']['default']['mod_jk_tar_dir'] = "#{LOC}/#{mod_jk_tar_dir}"



