## @knitr BeginR_GettingStarted_PartOne

# This is a comment.  Anything to the right of the # will be ignored

# ~~~ Entering commands into the console ~~~

# This command will just print the words 'Hello world!'
cat("Hello world!\n")

# Some simple arithmetic
4 + 2
# R does not care about white space so this command will do the same thing
4+2
# You can also span multiple lines as long as R understands that there
# are still more commands to come
# So this will work
4 +
2
# But this will not
4
+2

# ~~~ Plotting graphs in R ~~~

# Plot a line graph in R
plot(1:10, exp(1:10), type = "l", xlab = "Days learning R", ylab = "How awesome I am")

# ~~~ Variables ~~~

# This stores the result of 4 + 2 in a variable called 'myFirstVariable'
myFirstVariable <- 4 + 2
# This displays the current value of 'myFirstVariable'
myFirstVariable
# Now we can overwrite the value of 'myFirstVariable' with 8
myFirstVariable <- 8
# We can use 'myFistVariable' in other arithmetic
myFirstVariable - 2

# ~~~ Saving and restoring your work ~~~

# Lets create two variables: 'myFirstVariable' and 'mySecondVariable'
myFirstVariable <- 4
mySecondVariable <- myFirstVariable + 2

## @knitr SaveAndLoad
# This line will save the content of these variable to an R data file
# Change the 'file = ' entry to a location where you would like to store the file
save(myFirstVariable, mySecondVariable, file = "location/to/store/the/file.RData")

# This line will load the information in the R data file that we have just created
# Change the 'file = ' entry to the location where you have stored the data file
load("location/to/store/the/file.RData")
## @knitr BeginR_GettingStarted_PartTwo

# Display the current value of 'myFirstVariable'
myFirstVariable
# Display the current value of 'mySecondVariable'
mySecondVariable