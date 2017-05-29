# UniMaker
UniMaker is a little program that generates all the possible schedule options for your university courses.

HOW TO:
In order to make UniMaker function, first, you have to modify the sample.pl file with the information of your courses. For example, if you want to do the Artificial Intelligence subject, from the group 1, that have class from 8 am to 10 am on Mondays and  from 10 am to 12 am on Wednesday's, the correct entrance is: 
course('AI', 1, [1,2,27,28]).
Also, you have to specify the number of subjects you want to do this semester, for example, if you want to do 5 subjects:
numCourses(5).
You should put all the groups of every course you want to do this semester because the UniMaker will have more combinations to do.
Secondly, to compile it is very simple, just type "make" in your bash terminal, and "./main > output1.txt", to save the resulting schedule in the output1.txt file.

FUTURE CHANGES:

1)In the future, I want to implement this program in a web page or in an app, in order to make a nicer and cleaner output.

2)Improve the code by making the user capable of selecting a group of courses that are obligatory to be in the schedule of this semester.

