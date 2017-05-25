# PhenoMeNal H2020
# Microservices - IPO
# VERSION               0.1.1
FROM ubuntu:16.04

MAINTAINER PhenoMeNal-H2020 Project ( phenomenal-h2020-users@googlegroups.com )

LABEL software=xcms-w4m
LABEL software.version=1.7.5
LABEL version=0.2

# Setup package repos
RUN echo "deb http://cloud.r-project.org/bin/linux/ubuntu xenial/" >> /etc/apt/sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
# Add scripts folder to container
ADD scripts /scripts

# Install R
RUN apt-get update && apt-get install -y --no-install-recommends libboost-dev libcurl4-openssl-dev \
        libnetcdf-dev \
	libssl-dev \
	libssh2-1-dev \
	libxml2-dev libxml2-utils \
	icu-devtools \
	netcdf-bin \
	r-base=3.4.0-1xenial0 r-base-dev=3.4.0-1xenial0 && \
	echo 'options("repos"="http://cran.rstudio.com")' >> /etc/R/Rprofile.site && \
	Rscript /scripts/install_r_packages.sh && \
    	apt-get purge -y r-base-dev git libcurl4-openssl-dev libssl-dev libssh2-1-dev r-base-dev libboost-dev && \
apt-get clean && apt-get autoremove -y && rm -rf /var/lib/{apt,dpkg,cache,log}/ /tmp/* /var/tmp/*

# Add IPO script to path
#ADD runTest1.sh /usr/local/bin/runTest1.sh
#RUN chmod +x /usr/local/bin/runTest1.sh

# Define Entry point script
#ENTRYPOINT ["runIPO.R"]
