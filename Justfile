file := "./README.md"

lint:
    -typos {{file}}
    -awesome-lint {{file}}
    -markdown-link-check {{file}}

show:
    @inlyne {{file}}

show-tui:
    @glow --pager {{file}}
