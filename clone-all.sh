USER=AquiGorka; curl -k "https://api.github.com/users/$USER/repos?per_page=100"
| grep -o 'https://github.com/$USER/[^"]*.git' | xargs -L1 git clone
