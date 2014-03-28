library(devtools)

# Development workflow
setwd('~/Documents/Projectos')
load_all('EpiDynamics')
document('EpiDynamics')
install('EpiDynamics')
setwd('~/Documents/Projectos/EpiDynamics')

# News preview
show_news()

# Checking
check()
check_doc()
run_examples()
# build_win()

# Update version in:
#   DESCRIPTION
#   EpiDynamics-package
#   NEWS

############################
## release('EpiDynamics') ##
############################