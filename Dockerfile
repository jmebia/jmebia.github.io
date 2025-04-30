FROM python:3.12-slim

WORKDIR /docs

# Avoid interactive prompts and speed up pip
ENV PIP_DISABLE_PIP_VERSION_CHECK=1
ENV PYTHONUNBUFFERED=1

# Install MkDocs and your desired plugins
RUN pip install --no-cache-dir mkdocs mkdocs-material mkdocs-blog

EXPOSE 8000

# Command to run MkDocs in "serve" mode
CMD ["mkdocs", "serve", "--dev-addr=0.0.0.0:8000"]
