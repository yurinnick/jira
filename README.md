# Cookbook for Atlassian JIRA

# Requirements

* CentOS 6/RHEL6

# Usage

# Attributes

# Recipes

## default

Does nothing.

## server

Unpack Atlassian JIRA from the tarball and perform basic configuration allowing you to set it up.

## local_database

Sets up a local PostgreSQL database for JIRA to talk to.

# Limitations

* It's obviously impossible to Chef out the entire JIRA install because much of it is interactive. This cookbook deals with getting JIRA onto the system and the database set up, not configuring the actual app itself.
* Various XML files in JIRA need to be edited to make things like SSL termination at a front-end apache work. These can't be managed by Chef: in particular, modifying the "proxyHost", "proxyPort" and "proxyserver" attributes of server.xml
* Single-sign-on configuration with Crowd is not managed by this cookbook either since it also involves editing XML files.

# Roadmap

* Support other databases other than PostgreSQL.
* Support databases on machines other than "localhost".
* Find a way to manage needed directives in JIRA's XML configs.

# Author

Author:: Julian Dunn <jdunn@secondmarket.com>
