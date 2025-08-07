# MCP Deployment Helm Chart

This chart deploys the Model Context Protocol (MCP) components including:
- MCP Host
- MCP Client
- MCP UI

## Installation

1. Add your Docker images to the registry
2. Update values.yaml with your image references
3. Install the chart:

```bash
helm dependency update
helm install mcp ./mcp-deployment
