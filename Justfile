files := "./README.md ./MO2Plugins.md"

lint:
    -typos {{files}}
    -awesome-lint {{files}}
    -markdown-link-check {{files}}
