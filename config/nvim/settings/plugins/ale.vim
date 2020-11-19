let g:ale_linters = {
\  'javascript': ['eslint'],
\  'typescript': ['tsserver', 'typescript-eslint-parser'],
\  'python': ['flake8'],
\  'ruby': ['rubocop']
\}

let g:ale_fixers = {
\  'javascript': ['prettier'],
\  'typescript': ['prettier'],
\  'python': ['black'],
\  'elixir': ['mix_format'],
\  'ruby': ['prettier'],
\  'terraform': ['terraform'],
\  'hcl': ['terraform'],
\  '*': ['trim_whitespace']
\}

let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_typescript_prettier_use_local_config = 1
let g:ale_statusline_format = ['☠ %d', '⚠️ %d', '👍 ok']
let g:ale_sign_error = "☠"
let g:ale_sign_warning = "⚠️"
let g:ale_lint_on_text_changed = 'never'
