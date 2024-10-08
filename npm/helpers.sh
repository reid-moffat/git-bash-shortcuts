# I use pnpm, just setting npm as an alias to pnpm saves a lot of time and errors
alias npm="pnpm"

# Refresh your npm packages (work with pnpm if the above alias is set)
alias npm-refresh="rm -rf node_modules/ && npm i"
