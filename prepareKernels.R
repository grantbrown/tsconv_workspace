files = dir("./kernels/")

readKernel = function(kname)
{
    paste(readLines(paste("./kernels/", kname, sep = "")), collapse = "\n")
}

out = lapply(files, readKernel)
names(out) = gsub(".cl", "", files)
attach(out)
save(list=names(out), file = "./tsconv/data/kernels.rda", 
     compress = "bzip2")
