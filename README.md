# diffchecker
An open-source tool for ACM ACPC trainings to compare judge output with generated output

## Description
In order to check your program if it generates the right output, you can use diffcheker to compare them with the judge output.
diffchecker will display "Accepted" in green if the gen.out and judge.out are identical, "Wrong Answer" in red, or other problems in blue. In case of "Wrong Answer", it will display the cases that you should reconsider. If there are multiple ones, it will write them in a file called `diff.txt`.

## Dependencies
+ Colorize gem : `sudo gem install colorize` 

## How it works?
+ Terminal: `ruby diffchecker.rb judge.out gen.out`
