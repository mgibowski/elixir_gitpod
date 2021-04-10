FROM gitpod/workspace-base

USER root

RUN apt-get update \
    && apt-get install erlang -y \
    && apt-get install elixir -y \
    && apt-get install inotify-tools -y \
    && mix local.hex --force \
    && mix local.rebar --force \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

# Allow gitpod group to edit
RUN true \
	&& chown -R root:gitpod /home/gitpod/.mix \
    && chmod -R g+rw /home/gitpod/.mix
