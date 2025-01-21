xelatex -output-directory=./output thesis 
biber thesis --output-directory=./output
xelatex -output-directory=./output thesis
xelatex -output-directory=./output thesis