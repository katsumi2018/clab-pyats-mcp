FROM node:22-bookworm-slim

WORKDIR /app

RUN apt-get update && apt-get install -y \
    git \
    python3 \
    python3-pip \
    openssh-client \
    && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/automateyournetwork/pyATS_MCP.git /app/pyATS_MCP

WORKDIR /app/pyATS_MCP

RUN pip3 install --break-system-packages --no-cache-dir -r requirements.txt

RUN npm install -g mcp-proxy

EXPOSE 8080

CMD ["sh", "-lc", "set -a && . /app/.env && set +a && cd /app/pyATS_MCP && mcp-proxy --port 8080 --shell -- python3 pyats_mcp_server.py"]