FROM gitpod/workspace-full-vnc

USER root
# Install custom tools, runtime, etc.
RUN export DEBIAN_FRONTEND=noninteractive && apt update && apt install octave -yq
RUN chmod 0777 /usr/share/octave/site/m/startup/octaverc && chmod -R 0777 /usr/share/octave
RUN echo 'graphics_toolkit("gnuplot")' >> /usr/share/octave/site/m/startup/octaverc
# USER gitpod

# Give back control
# USER root
