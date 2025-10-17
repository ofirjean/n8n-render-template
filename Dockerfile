FROM n8nio/n8n:latest

# Basic authentication
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=secret123

# Required for Render dynamic port
ENV N8N_PORT=${PORT}
ENV N8N_PROTOCOL=http
ENV N8N_HOST=0.0.0.0

EXPOSE ${PORT}

# Run using the full path where n8n binary actually lives
CMD ["/data/node_modules/.bin/n8n", "start", "--port", "${PORT}"]
