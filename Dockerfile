FROM fedora:29
#EXPOSE 179
RUN dnf -y install python-pip
RUN pip install exabgp
#RUN mkfifo /run/exabgp.{in,out}
#RUN chmod 600 /run/exabgp.{in,out}

CMD /bin/exabgp /config/exabgp/exabgp.conf
