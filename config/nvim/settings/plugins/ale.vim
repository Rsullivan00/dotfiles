let g:ale_linters = {
\  'javascript': ['eslint', 'flow'],
\  'typescript': ['tsserver', 'typescript-eslint-parser'],
\  'python': ['flake8'],
\  'ruby': []
\}

let g:ale_fixers = {
\  'javascript': ['prettier'],
\  'typescript': ['prettier'],
\  'python': ['yapf'],
\  'elixir': ['mix_format']
\}

let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_typescript_prettier_use_local_config = 1
let g:ale_statusline_format = ['☠ %d', '⚠️ %d', '👍 ok']
let g:ale_sign_error = "☠"
let g:ale_sign_warning = "⚠️"
let g:ale_lint_on_text_changed = 'never'
