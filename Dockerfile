FROM zainarbani/dockerub:one4u-alpine

RUN mkdir /ProjectBish && chmod 777 /ProjectBish
ENV PATH="/ProjectBish/bin:$PATH"
WORKDIR /ProjectBish

RUN git clone https://github.com/BianSepang/ProjectBish -b experimentals-pb /ProjectBish

#
# Copies session and config(if it exists)
#
COPY ./sample_config.env ./userbot.session* ./config.env* /ProjectBish/

#
# Finalization
#
CMD ["python3","-m","userbot"]
