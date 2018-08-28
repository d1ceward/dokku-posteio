FROM analogic/poste.io:2.0.15

# Add user dokku
RUN adduser -D -u 32769 -g dokku dokku
USER dokku
