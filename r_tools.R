# getgooglekey
# extracts the key part of a google doc url
getgooglekey <- function(x)
{
	y <- strsplit(x,split=c("=","#","/"))
	return(subset(y[[1]],nchar(y[[1]])>40))
}

# strsplits
# Splitting a string with different separators
# strsplits(test_1, c(" ", ","))
# "abc" "def" "ghi" "klm"
strsplits <- function(x, splits, ...)
{
  for (split in splits)
  {
    x <- unlist(strsplit(x, split, ...))
  }
  return(x[!x == ""]) # Remove empty values
}
