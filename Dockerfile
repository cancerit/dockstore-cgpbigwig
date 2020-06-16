FROM  quay.io/wtsicgp/cgpbigwig:1.1.0

LABEL maintainer="No longer maintained"\
      uk.ac.sanger.cgp="Cancer, Ageing and Somatic Mutation, Wellcome Sanger Institute" \
      version="3.0.1" \
      description="cgpBigWig for dockstore.org"

USER    ubuntu
WORKDIR /home/ubuntu

CMD ["/bin/bash"]
