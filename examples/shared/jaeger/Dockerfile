FROM jaegertracing/all-in-one@sha256:6271118d31513239f6325b361a66d83125fc2ef039f044cadef8c7b0f36b6f23
HEALTHCHECK \
    --interval=1s \
    --timeout=1s \
    --start-period=1s \
    --retries=60 \
    CMD wget -q --header='Content-Type:application/json' -O - http://localhost:14269/health | grep "Server available"
