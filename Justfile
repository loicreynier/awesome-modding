files := "./README.md"

lint:
    -typos {{files}}
    -awesome-lint {{files}}
    -markdown-link-check {{files}}
