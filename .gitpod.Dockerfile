FROM gitpod/workspace-full:latest

SHELL ["/bin/bash", "-c"]
ENV PATH=/home/gitpod/.sdkman/candidates/java/current/bin:$PATH
ENV JAVA_HOME=/home/gitpod/.sdkman/candidates/java/current

# install ccloud CLI with shell autocompletion
RUN curl -L --http1.1 https://cnfl.io/ccloud-cli | sudo sh -s -- -b /usr/local/bin && \
    mkdir -p /home/gitpod/.local/share/bash-completion && \
    touch /home/gitpod/.local/share/bash-completion/ccloud && \
    ccloud completion bash > /home/gitpod/.local/share/bash-completion/ccloud && \
    touch /home/gitpod/.local/share/bash-completion/confluent && \
    echo "source /home/gitpod/.local/share/bash-completion/ccloud" >> ~/.bashrc

# build maven project
RUN /home/gitpod/.sdkman/candidates/maven/current/bin/mvn clean package