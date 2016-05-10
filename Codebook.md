#Codebook

##Description
There are four types of observations in my data set. The first column is the index of the data set, from 1 to 180, when it was exported from R.
The second colum, "SubjectID", describes the person about whom the original data was recorded. This number is the same as in the original data set.
The third column, "ActivityID," describes the activity that the subject was performing when those measurements were taken. The text values in this column were derived from the original data set, and were applied by matching the number in the original data set to the text value describing it.
The remaining 66 columns each descrbe the average of all of the values for one type of measurement, for that subject and activity. This number was derived by taking all of the original observations, then using melt to turn them from a wide data set into a narrow data set, and finally using dcast to return them to a wide data set, but this time as a summary. The names for those columns follow a standard code, derived from the original data set, that can be interpreted using the below key:

* Time: It is a measurement of time
* Frequency: A frequency domain measurement resulting from a Fast Fourier Transform on the original time data
* Body: The portion of the original measurement due to movement of the body
* Gravity: The portion of the original measurement due to gravity
* Acceleration: The data was received from the accelerometer, measuring linear acceleration
* Gyroscopic: The data was received from the gyroscope, measuring angular velocity
* Jerk: The measurement was divided by the time, to measure "jerking"
* Magnitude: the magnitude of the 3 dimensional signals, according to the Euclidian norm
* mean(): The measurement is the mean of all such measurements from the original dataset
* std(): The measurement is the standard deviation of all such measurements from the original dataset
* X: The measurement was taken along the phone's X axis
* Y: The measurement was taken along the phone's Y axis
* Z: The measurement was taken along the phone's Z axis

##Column Names

* ""
* "SubjectID"
* "ActivityID"
* "Time: Body Acceleration: mean(): X"
* "Time: Body Acceleration: mean(): Y"
* "Time: Body Acceleration: mean(): Z"
* "Time: Body Acceleration: std(): X"
* "Time: Body Acceleration: std(): Y"
* "Time: Body Acceleration: std(): Z"
* "Time: Gravity Acceleration: mean(): X"
* "Time: Gravity Acceleration: mean(): Y"
* "Time: Gravity Acceleration: mean(): Z"
* "Time: Gravity Acceleration: std(): X"
* "Time: Gravity Acceleration: std(): Y"
* "Time: Gravity Acceleration: std(): Z"
* "Time: Body Acceleration Jerk: mean(): X"
* "Time: Body Acceleration Jerk: mean(): Y"
* "Time: Body Acceleration Jerk: mean(): Z"
* "Time: Body Acceleration Jerk: std(): X"
* "Time: Body Acceleration Jerk: std(): Y"
* "Time: Body Acceleration Jerk: std(): Z"
* "Time: Body Gyroscopic: mean(): X"
* "Time: Body Gyroscopic: mean(): Y"
* "Time: Body Gyroscopic: mean(): Z"
* "Time: Body Gyroscopic: std(): X"
* "Time: Body Gyroscopic: std(): Y"
* "Time: Body Gyroscopic: std(): Z"
* "Time: Body Gyroscopic Jerk: mean(): X"
* "Time: Body Gyroscopic Jerk: mean(): Y"
* "Time: Body Gyroscopic Jerk: mean(): Z"
* "Time: Body Gyroscopic Jerk: std(): X"
* "Time: Body Gyroscopic Jerk: std(): Y"
* "Time: Body Gyroscopic Jerk: std(): Z"
* "Time: Body Acceleration Magnitude: mean()"
* "Time: Body Acceleration Magnitude: std()"
* "Time: Gravity Acceleration Magnitude: mean()"
* "Time: Gravity Acceleration Magnitude: std()"
* "Time: Body Acceleration Jerk Magnitude: mean()"
* "Time: Body Acceleration Jerk Magnitude: std()"
* "Time: Body Gyroscopic Magnitude: mean()"
* "Time: Body Gyroscopic Magnitude: std()"
* "Time: Body Gyroscopic Jerk Magnitude: mean()"
* "Time: Body Gyroscopic Jerk Magnitude: std()"
* "Frequency: Body Acceleration: mean(): X"
* "Frequency: Body Acceleration: mean(): Y"
* "Frequency: Body Acceleration: mean(): Z"
* "Frequency: Body Acceleration: std(): X"
* "Frequency: Body Acceleration: std(): Y"
* "Frequency: Body Acceleration: std(): Z"
* "Frequency: Body Acceleration Jerk: mean(): X"
* "Frequency: Body Acceleration Jerk: mean(): Y"
* "Frequency: Body Acceleration Jerk: mean(): Z"
* "Frequency: Body Acceleration Jerk: std(): X"
* "Frequency: Body Acceleration Jerk: std(): Y"
* "Frequency: Body Acceleration Jerk: std(): Z"
* "Frequency: Body Gyroscopic: mean(): X"
* "Frequency: Body Gyroscopic: mean(): Y"
* "Frequency: Body Gyroscopic: mean(): Z"
* "Frequency: Body Gyroscopic: std(): X"
* "Frequency: Body Gyroscopic: std(): Y"
* "Frequency: Body Gyroscopic: std(): Z"
* "Frequency: Body Acceleration Magnitude: mean()"
* "Frequency: Body Acceleration Magnitude: std()"
* "Frequency: Body Acceleration Jerk Magnitude: mean()"
* "Frequency: Body Acceleration Jerk Magnitude: std()"
"Frequency: Body Gyroscopic Magnitude: mean()"
"Frequency: Body Gyroscopic Magnitude: std()"
"Frequency: Body Gyroscopic Jerk Magnitude: mean()"
"Frequency: Body Gyroscopic Jerk Magnitude: std()"
