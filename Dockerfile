FROM  quay.io/wtsicgp/cgpbigwig:1.1.0

LABEL maintainer="drj@sanger.ac.uk"\
      uk.ac.sanger.cgp="Cancer, Ageing and Somatic Mutation, Wellcome Sanger Institute" \
      version="2.1.1" \
      description="cgpBigWig for dockstore.org"

USER    ubuntu
WORKDIR /home/ubuntu

CMD ["/bin/bash"]
