FROM gitpod/workspace-full:latest

SHELL ["/bin/bash", "-c"]

# install confluent CLI v2.0 with shell autocompletion
RUN curl -sL --http1.1 https://cnfl.io/cli | sh -s -- -b /usr/local/bin v2.0.0 && \
    mkdir -p /home/gitpod/.local/share/bash-completion && \
    touch /home/gitpod/.local/share/bash-completion/confluent && \
    confluent completion bash > /home/gitpod/.local/share/bash-completion/confluent && \
    echo "source /home/gitpod/.local/share/bash-completion/confluent" >> ~/.bashrc