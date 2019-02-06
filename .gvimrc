" Section: Tmux gvim
nnoremap <Leader>tm :Tmux split-window -d -h -p 40<cr>:Tmux send-keys -t 0 cd\ $PWD ENTER<cr>
nnoremap <Leader>tmc :Tmux send-keys -t 0 C-c<cr>
nnoremap <Leader>tmr :Tmux send-keys -t 0 C-c<cr>:Tmux send-keys -t 0 UP ENTER<cr>
nnoremap <Leader>du :Tmux send-keys -t 0 C-c<cr>:Tmux send-keys -t 0 'docker-compose down && docker-compose up -d && docker-compose logs -f' ENTER<cr>
nnoremap <Leader>dr :Tmux send-keys -t 0 C-c<cr>:Tmux send-keys -t 0 'docker-compose restart && docker-compose logs -f' ENTER<cr>
nnoremap <Leader>ni :Tmux send-keys -t 0 C-c<cr>:Tmux send-keys -t 0 'npm install' ENTER<cr>
nnoremap <Leader>mt :Tmux send-keys -t 0 C-c<cr>:Tmux send-keys -t 0 'make test' ENTER<cr>
