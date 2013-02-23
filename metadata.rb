name             "jira"
maintainer       "SecondMarket Labs, LLC"
maintainer_email "systems@secondmarket.com"
license          "All rights reserved"
description      "Installs/Configures jira"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"

%w{database java mysql openssl postgresql}.each do |d|
  depends d
end

%w{redhat centos}.each do |os|
  supports os
end
