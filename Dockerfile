FROM n8nio/n8n:latest

# Basic auth for safety
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=secret123

# Adapt to Render’s dynamic port
ENV N8N_PORT=${PORT}
ENV N8N_PROTOCOL=http
ENV N8N_HOST=0.0.0.0

EXPOSE ${PORT}

# Start n8n using npm to guarantee it’s found
CMD ["npm", "run", "start", "--", "--port", "${PORT}"]
