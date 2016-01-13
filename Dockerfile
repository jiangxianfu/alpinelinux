# The FROM instruction sets the Base Image for subsequent instructions.
FROM alpine:3.2

# The RUN instruction will execute any commands
RUN apk -U add dnsmasq

# The EXPOSE instruction informs Docker that the container listens on the specified network ports at runtime
EXPOSE 53 53/udp

# The CMD instruction provides default execution command for an container
ENTRYPOINT ["dnsmasq", "-k"]
