FROM analogic/poste.io:2.0.15

# Add user dokku
RUN adduser --uid 32769 --group dokku dokku
USER dokku
