FROM nathankw/centos6_essentials
LABEL maintainer "Nathaniel Watson nathan.watson86@gmail.com"

# Install the sbt build tool for Scala and Java libraries
RUN curl -O https://piccolo.link/sbt-1.2.8.tgz && tar -zxf sbt-1.2.8.tgz && rm sbt-1.2.8.tgz
RUN export PATH=$(pwd)/sbt/bin:${PATH}
# Install bcl2fastq2 rpm for version 2.20.

# Install Nils Homer's bxf-examples GitHub repository
RUN git clone https://github.com/nh13/bfx-examples.git && cd bfx-examples && sbt assembly
