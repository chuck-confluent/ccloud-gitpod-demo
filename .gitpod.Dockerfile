FROM gitpod/workspace-full

# install ccloud CLI with shell autocompletion
RUN curl -L --http1.1 https://cnfl.io/ccloud-cli | sudo sh -s -- -b /usr/local/bin && \
    touch ~/.local/share/bash-completion/ccloud && \
    ccloud completion bash > ~/.local/share/bash-completion/ccloud && \
    touch ~/.local/share/bash-completion/confluent && \
    echo "source ~/.local/share/bash-completion/ccloud" >> ~/.bashrc

# build maven project
RUN mvn clean package