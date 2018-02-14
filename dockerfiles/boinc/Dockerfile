FROM arm32v7/ubuntu:17.10

RUN apt-get update && apt-get -y dist-upgrade && apt-get clean all
RUN apt-get install -y build-essential software-properties-common boinc

WORKDIR /var/lib/boinc-client
CMD ["boinc", "--allow_remote_gui_rpc"]
