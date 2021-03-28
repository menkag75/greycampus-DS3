#### Question 4 - Setting the final scores of john to a vector ########

#create a score vector
final_score <- c(95, 91,88)
final_score

# naming the vector  

final_score_subject_name <- c("Statistics", "Linear Algebra", "Calculus")
final_score_subject_name

# assign the name vector to the score vector 

names(final_score) <-  final_score_subject_name
final_score

#### End Of Question 4   ######


#### start Of Question 5   ######

# check the type of the vector
class(final_score)

#### End Of Question 5   ######


#### start Of Question 6 - Matrix   ######

# create the 3 vectors for students - this is optional step can create one vector with all the marks

student_1 <- c(95, 91, 88) 
student_2 <- c(96, 94, 97)
student_3 <- c(88, 98, 85) 

#create a dataset/vector with the three student marks

student_data <- c(student_1,student_2,student_3)
student_data


#create the matrix

student_marks_matrix <- matrix(data = student_data, nrow=3, byrow=TRUE)
student_marks_matrix


###name the matrix
#name the matrix column with the subjects name

colnames(student_marks_matrix) <- c("Statistics", "Linear Algebra", "Calculus")
student_marks_matrix

#name the matrix row with the student name

rownames(student_marks_matrix) <- c("Student_1","Student_2","Student_3")
student_marks_matrix

#### End Of Question 6 - Matrix   ######


#### start Of Question 7- Matrix to data frame - (please confirm if the understandig is OK) ######

student_dataframe <- as.data.frame((student_marks_matrix))
student_dataframe
class(student_dataframe)

#### End Of Question 7 - Matrix Matrix to data frame  ######



#### start Of Question 8 - Data frame - countries  ######

country_names <- c("USA", "India" , "UK" , "UAE" , "Canada")
total_cases <- c(30636534,11734058 , 4307304, 444398, 942320)
total_deaths <- c(556883,160477,126284,1451,22735)

#creating the data frame from the vectors 

corona_df <- data.frame(country_names,total_cases,total_deaths)
corona_df

#### End Of Question 8 - Data frame - countries  ######


#### start Of Question 9 - mtcars - dataset  ######

#read the first 6 observations from the mtcars dataset

head(mtcars)

#read the first 3 observations from the mtcars dataset
head(mtcars,3)

#read the last 10 observations from the mtcars dataset
tail(mtcars,10)

#read the structure of mtcars dataset

str(mtcars)

#read  distinct values of a variable in  mtcars dataset
table(mtcars$gear)

# convert the type of $vs and $am variables to logical

mtcars$vs <- as.logical(mtcars$vs)
table(mtcars$vs)


mtcars$am <- as.logical(mtcars$am)
table(mtcars$am)

str(mtcars)


# create a new data frame with the updated  mtcars dataset
new_mtcars_df <- as.data.frame(mtcars)
head(new_mtcars_df)
class(new_mtcars_df)

#### end Of Question 9 - mtcars - dataset #######

mymatrix_ds <- c(100,120,123,445,111,456,200,300,400)
desitination <- c("Delhi","Pune","Bombay")
source <- c("Chennai","banglore","Gujarat")
mymatrix <- matrix(mymatrix_ds , nrow=3 , byrow =TRUE , dimnames=list(source,desitination))
mymatrix                
                   
