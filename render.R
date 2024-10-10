#run this script to knit all .rmd files
# List of Rmd files
rmd_files <- list.files(path = ".", pattern = "\\.Rmd$", full.names = TRUE)

# Render each file

for (file in rmd_files) {

  Newfile=rmarkdown::render(file,output_options = list(lib_dir='./docs/libs'))

  file.copy(Newfile,'./docs/')
  file.remove(Newfile)
}


Newfile=rmarkdown::render(rmd_files[1],output_options = list(lib_dir='./docs/libs'))
file.copy(Newfile,'./docs/')
file.remove(Newfile)
