# David Lawrence Miller 2022

setwd("~/lovinggrace")

library(rtoot)

# downloaded from https://github.com/dill/curtis_screens
caps <- readRDS("../curtis_screens/curtis-captions.rds")


# post to mastodon

# to create the token
#auth_setup(browser=FALSE, path="rtoot_token.rds")
# get token
token <- readRDS("rtoot_token.rds")


tp <- caps[sample(1:nrow(caps), 1), , drop=FALSE]

# post the file to botsin.space
post_toot(token = token, status = "",
          media=paste0("../curtis_screens/", tp$name),
          alt_text = paste("shot from an Adam Curtis documentary, text reads:",
                           tp$caption, "\nsorry this isn't a very good alt text, when I find time I'll go through the images more thoroughly and describe them!"))



