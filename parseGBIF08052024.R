# parseGBIF ############## August 5, 2024

####### A new method for parsing GBIF occurrence data using package parseGBIF ############
############ starting from scratch by downloading GBIF data following parseGBIF documentation #######
# file:///C:/Users/taubuchon/Downloads/parseGBIF_Manual_v2.pdf

#install the development version of parseGBIF from Github if you prefer
#devtools::install_github("pablopains/parseGBIF")
install.packages("parseGBIF")
library(parseGBIF)
library(usethis)

# download the occurrences in GBIF using the web interface or R, whatever you prefer
# requirements used:
# Plantae, North America, USA, including coordinates, draw polygon around Southern Appalachia,
# after year 1966, occurrence status present, basis of record includes observation, human observation,
# material sample, material citation, preserved specimen, occurrence
# POLYGON  POLYGON((-87.88242 36.15436,-85.82186 34.83756,-83.75717 33.45749,-80.62042 32.99249,-77.63835 34.50239,
#                  -76.92365 36.1223,-78.59129 37.01518,-81.72804 37.77226,-84.9442 37.5837,-87.88242 36.15436))

# connect to Git and Github #
use_git_config(user.name="tayaubuchon30", user.email="tayaubuchon@gmail.com")
use_git()

usethis::create_github_token()
gitcreds::gitcreds_set()

