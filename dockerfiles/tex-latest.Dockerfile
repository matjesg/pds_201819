FROM matjes/pds_201819:latest

# Add Pandoc and Tex
RUN apt-get update && apt-get install -y \
  pandoc \
  texlive-xetex