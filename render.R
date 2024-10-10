#run this script to knit all .rmd files
# List of Rmd files
rmd_files <- list.files(path = ".", pattern = "\\.Rmd$", full.names = TRUE)
normalizePath(rmd_files[1])

# Render each file

for (file in rmd_files) {
  path=dirname(normalizePath(file))
  outDir=paste0(path,'/docs')
  print(outDir)
  rmarkdown::render(file,params = list(output_dir = outDir),output_options = list(lib_dir=outDir))
}
