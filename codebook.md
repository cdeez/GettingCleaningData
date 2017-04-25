## Data Source:
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

## Data Set Information:
- The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) while wearing a smartphone (Samsung Galaxy S II) on the waist . Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
- The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

## Attribute Information:
For each record in the dataset it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment. 

## Feature Selection 
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). These signals were used to estimate variables of the feature vector for each pattern:  
>'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

- mean(): Mean value
- std(): Standard deviation
- mad(): Median absolute deviation 
- max(): Largest value in array
- min(): Smallest value in array
- sma(): Signal magnitude area
- energy(): Energy measure. Sum of the squares divided by the number of values. 
- iqr(): Interquartile range 
- entropy(): Signal entropy
- arCoeff(): Autorregresion coefficients with Burg order equal to 4
- correlation(): correlation coefficient between two signals
- maxInds(): index of the frequency component with largest magnitude
- meanFreq(): Weighted average of the frequency components to obtain a mean frequency
- skewness(): skewness of the frequency domain signal 
- kurtosis(): kurtosis of the frequency domain signal 
- bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
- angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

- gravityMean
- tBodyAccMean
- tBodyAccJerkMean
- tBodyGyroMean
- tBodyGyroJerkMean

tBodyAcc.mean...X	Min.   :-1.0000  	1st Qu.: 0.2626  	Median : 0.2772  	Mean   : 0.2743  	3rd Qu.: 0.2884  	Max.   : 1.0000  
tBodyAcc.mean...Y	Min.   :-1.00000  	1st Qu.:-0.02490  	Median :-0.01716  	Mean   :-0.01774  	3rd Qu.:-0.01062  	Max.   : 1.00000  
tBodyAcc.mean...Z	Min.   :-1.00000  	1st Qu.:-0.12102  	Median :-0.10860  	Mean   :-0.10892  	3rd Qu.:-0.09759  	Max.   : 1.00000  
tBodyAcc.std...X	Min.   :-1.0000  	1st Qu.:-0.9924  	Median :-0.9430  	Mean   :-0.6078  	3rd Qu.:-0.2503  	Max.   : 1.0000  
tBodyAcc.std...Y	Min.   :-1.00000  	1st Qu.:-0.97699  	Median :-0.83503  	Mean   :-0.51019  	3rd Qu.:-0.05734  	Max.   : 1.00000  
tBodyAcc.std...Z	Min.   :-1.0000  	1st Qu.:-0.9791  	Median :-0.8508  	Mean   :-0.6131  	3rd Qu.:-0.2787  	Max.   : 1.0000  
tGravityAcc.mean...X	Min.   :-1.0000  	1st Qu.: 0.8117  	Median : 0.9218  	Mean   : 0.6692  	3rd Qu.: 0.9547  	Max.   : 1.0000  
tGravityAcc.mean...Y	Min.   :-1.000000  	1st Qu.:-0.242943  	Median :-0.143551  	Mean   : 0.004039  	3rd Qu.: 0.118905  	Max.   : 1.000000  
tGravityAcc.mean...Z	Min.   :-1.00000  	1st Qu.:-0.11671  	Median : 0.03680  	Mean   : 0.09215  	3rd Qu.: 0.21621  	Max.   : 1.00000  
tGravityAcc.std...X	Min.   :-1.0000  	1st Qu.:-0.9949  	Median :-0.9819  	Mean   :-0.9652  	3rd Qu.:-0.9615  	Max.   : 1.0000  
tGravityAcc.std...Y	Min.   :-1.0000  	1st Qu.:-0.9913  	Median :-0.9759  	Mean   :-0.9544  	3rd Qu.:-0.9464  	Max.   : 1.0000  
tGravityAcc.std...Z	Min.   :-1.0000  	1st Qu.:-0.9866  	Median :-0.9665  	Mean   :-0.9389  	3rd Qu.:-0.9296  	Max.   : 1.0000  
tBodyAccJerk.mean...X	Min.   :-1.00000  	1st Qu.: 0.06298  	Median : 0.07597  	Mean   : 0.07894  	3rd Qu.: 0.09131  	Max.   : 1.00000  
tBodyAccJerk.mean...Y	Min.   :-1.000000  	1st Qu.:-0.018555  	Median : 0.010753  	Mean   : 0.007948  	3rd Qu.: 0.033538  	Max.   : 1.000000  
tBodyAccJerk.mean...Z	Min.   :-1.000000  	1st Qu.:-0.031552  	Median :-0.001159  	Mean   :-0.004675  	3rd Qu.: 0.024578  	Max.   : 1.000000  
tBodyAccJerk.std...X	Min.   :-1.0000  	1st Qu.:-0.9913  	Median :-0.9513  	Mean   :-0.6398  	3rd Qu.:-0.2912  	Max.   : 1.0000  
tBodyAccJerk.std...Y	Min.   :-1.0000  	1st Qu.:-0.9850  	Median :-0.9250  	Mean   :-0.6080  	3rd Qu.:-0.2218  	Max.   : 1.0000  
tBodyAccJerk.std...Z	Min.   :-1.0000  	1st Qu.:-0.9892  	Median :-0.9543  	Mean   :-0.7628  	3rd Qu.:-0.5485  	Max.   : 1.0000  
tBodyGyro.mean...X	Min.   :-1.00000  	1st Qu.:-0.04579  	Median :-0.02776  	Mean   :-0.03098  	3rd Qu.:-0.01058  	Max.   : 1.00000  
tBodyGyro.mean...Y	Min.   :-1.00000  	1st Qu.:-0.10399  	Median :-0.07477  	Mean   :-0.07472  	3rd Qu.:-0.05110  	Max.   : 1.00000  
tBodyGyro.mean...Z	Min.   :-1.00000  	1st Qu.: 0.06485  	Median : 0.08626  	Mean   : 0.08836  	3rd Qu.: 0.11044  	Max.   : 1.00000  
tBodyGyro.std...X	Min.   :-1.0000  	1st Qu.:-0.9872  	Median :-0.9016  	Mean   :-0.7212  	3rd Qu.:-0.4822  	Max.   : 1.0000  
tBodyGyro.std...Y	Min.   :-1.0000  	1st Qu.:-0.9819  	Median :-0.9106  	Mean   :-0.6827  	3rd Qu.:-0.4461  	Max.   : 1.0000  
tBodyGyro.std...Z	Min.   :-1.0000  	1st Qu.:-0.9850  	Median :-0.8819  	Mean   :-0.6537  	3rd Qu.:-0.3379  	Max.   : 1.0000  
tBodyGyroJerk.mean...X	Min.   :-1.00000  	1st Qu.:-0.11723  	Median :-0.09824  	Mean   :-0.09671  	3rd Qu.:-0.07930  	Max.   : 1.00000  
tBodyGyroJerk.mean...Y	Min.   :-1.00000  	1st Qu.:-0.05868  	Median :-0.04056  	Mean   :-0.04232  	3rd Qu.:-0.02521  	Max.   : 1.00000  
tBodyGyroJerk.mean...Z	Min.   :-1.00000  	1st Qu.:-0.07936  	Median :-0.05455  	Mean   :-0.05483  	3rd Qu.:-0.03168  	Max.   : 1.00000  
tBodyGyroJerk.std...X	Min.   :-1.0000  	1st Qu.:-0.9907  	Median :-0.9348  	Mean   :-0.7313  	3rd Qu.:-0.4865  	Max.   : 1.0000  
tBodyGyroJerk.std...Y	Min.   :-1.0000  	1st Qu.:-0.9922  	Median :-0.9548  	Mean   :-0.7861  	3rd Qu.:-0.6268  	Max.   : 1.0000  
tBodyGyroJerk.std...Z	Min.   :-1.0000  	1st Qu.:-0.9926  	Median :-0.9503  	Mean   :-0.7399  	3rd Qu.:-0.5097  	Max.   : 1.0000  
tBodyAccMag.mean..	Min.   :-1.0000  	1st Qu.:-0.9819  	Median :-0.8746  	Mean   :-0.5482  	3rd Qu.:-0.1201  	Max.   : 1.0000  
tBodyAccMag.std..	Min.   :-1.0000  	1st Qu.:-0.9822  	Median :-0.8437  	Mean   :-0.5912  	3rd Qu.:-0.2423  	Max.   : 1.0000  
tGravityAccMag.mean..	Min.   :-1.0000  	1st Qu.:-0.9819  	Median :-0.8746  	Mean   :-0.5482  	3rd Qu.:-0.1201  	Max.   : 1.0000  
tGravityAccMag.std..	Min.   :-1.0000  	1st Qu.:-0.9822  	Median :-0.8437  	Mean   :-0.5912  	3rd Qu.:-0.2423  	Max.   : 1.0000  
tBodyAccJerkMag.mean..	Min.   :-1.0000  	1st Qu.:-0.9896  	Median :-0.9481  	Mean   :-0.6494  	3rd Qu.:-0.2956  	Max.   : 1.0000  
tBodyAccJerkMag.std..	Min.   :-1.0000  	1st Qu.:-0.9907  	Median :-0.9288  	Mean   :-0.6278  	3rd Qu.:-0.2733  	Max.   : 1.0000  
tBodyGyroMag.mean..	Min.   :-1.0000  	1st Qu.:-0.9781  	Median :-0.8223  	Mean   :-0.6052  	3rd Qu.:-0.2454  	Max.   : 1.0000  
tBodyGyroMag.std..	Min.   :-1.0000  	1st Qu.:-0.9775  	Median :-0.8259  	Mean   :-0.6625  	3rd Qu.:-0.3940  	Max.   : 1.0000  
tBodyGyroJerkMag.mean..	Min.   :-1.0000  	1st Qu.:-0.9923  	Median :-0.9559  	Mean   :-0.7621  	3rd Qu.:-0.5499  	Max.   : 1.0000  
tBodyGyroJerkMag.std..	Min.   :-1.0000  	1st Qu.:-0.9922  	Median :-0.9403  	Mean   :-0.7780  	3rd Qu.:-0.6093  	Max.   : 1.0000  
fBodyAcc.mean...X	Min.   :-1.0000  	1st Qu.:-0.9913  	Median :-0.9456  	Mean   :-0.6228  	3rd Qu.:-0.2646  	Max.   : 1.0000  
fBodyAcc.mean...Y	Min.   :-1.0000  	1st Qu.:-0.9792  	Median :-0.8643  	Mean   :-0.5375  	3rd Qu.:-0.1032  	Max.   : 1.0000  
fBodyAcc.mean...Z	Min.   :-1.0000  	1st Qu.:-0.9832  	Median :-0.8954  	Mean   :-0.6650  	3rd Qu.:-0.3662  	Max.   : 1.0000  
fBodyAcc.std...X	Min.   :-1.0000  	1st Qu.:-0.9929  	Median :-0.9416  	Mean   :-0.6034  	3rd Qu.:-0.2493  	Max.   : 1.0000  
fBodyAcc.std...Y	Min.   :-1.00000  	1st Qu.:-0.97689  	Median :-0.83261  	Mean   :-0.52842  	3rd Qu.:-0.09216  	Max.   : 1.00000  
fBodyAcc.std...Z	Min.   :-1.0000  	1st Qu.:-0.9780  	Median :-0.8398  	Mean   :-0.6179  	3rd Qu.:-0.3023  	Max.   : 1.0000  
fBodyAcc.meanFreq...X	Min.   :-1.00000  	1st Qu.:-0.41878  	Median :-0.23825  	Mean   :-0.22147  	3rd Qu.:-0.02043  	Max.   : 1.00000  
fBodyAcc.meanFreq...Y	Min.   :-1.000000  	1st Qu.:-0.144772  	Median : 0.004666  	Mean   : 0.015401  	3rd Qu.: 0.176603  	Max.   : 1.000000  
fBodyAcc.meanFreq...Z	Min.   :-1.00000  	1st Qu.:-0.13845  	Median : 0.06084  	Mean   : 0.04731  	3rd Qu.: 0.24922  	Max.   : 1.00000  
fBodyAccJerk.mean...X	Min.   :-1.0000  	1st Qu.:-0.9912  	Median :-0.9516  	Mean   :-0.6567  	3rd Qu.:-0.3270  	Max.   : 1.0000  
fBodyAccJerk.mean...Y	Min.   :-1.0000  	1st Qu.:-0.9848  	Median :-0.9257  	Mean   :-0.6290  	3rd Qu.:-0.2638  	Max.   : 1.0000  
fBodyAccJerk.mean...Z	Min.   :-1.0000  	1st Qu.:-0.9873  	Median :-0.9475  	Mean   :-0.7436  	3rd Qu.:-0.5133  	Max.   : 1.0000  
fBodyAccJerk.std...X	Min.   :-1.0000  	1st Qu.:-0.9920  	Median :-0.9562  	Mean   :-0.6550  	3rd Qu.:-0.3203  	Max.   : 1.0000  
fBodyAccJerk.std...Y	Min.   :-1.0000  	1st Qu.:-0.9865  	Median :-0.9280  	Mean   :-0.6122  	3rd Qu.:-0.2361  	Max.   : 1.0000  
fBodyAccJerk.std...Z	Min.   :-1.0000  	1st Qu.:-0.9895  	Median :-0.9590  	Mean   :-0.7809  	3rd Qu.:-0.5903  	Max.   : 1.0000  
fBodyAccJerk.meanFreq...X	Min.   :-1.00000  	1st Qu.:-0.29770  	Median :-0.04544  	Mean   :-0.04771  	3rd Qu.: 0.20447  	Max.   : 1.00000  
fBodyAccJerk.meanFreq...Y	Min.   :-1.000000  	1st Qu.:-0.427951  	Median :-0.236530  	Mean   :-0.213393  	3rd Qu.: 0.008651  	Max.   : 1.000000  
fBodyAccJerk.meanFreq...Z	Min.   :-1.00000  	1st Qu.:-0.33139  	Median :-0.10246  	Mean   :-0.12383  	3rd Qu.: 0.09124  	Max.   : 1.00000  
fBodyGyro.mean...X	Min.   :-1.0000  	1st Qu.:-0.9853  	Median :-0.8917  	Mean   :-0.6721  	3rd Qu.:-0.3837  	Max.   : 1.0000  
fBodyGyro.mean...Y	Min.   :-1.0000  	1st Qu.:-0.9847  	Median :-0.9197  	Mean   :-0.7062  	3rd Qu.:-0.4735  	Max.   : 1.0000  
fBodyGyro.mean...Z	Min.   :-1.0000  	1st Qu.:-0.9851  	Median :-0.8877  	Mean   :-0.6442  	3rd Qu.:-0.3225  	Max.   : 1.0000  
fBodyGyro.std...X	Min.   :-1.0000  	1st Qu.:-0.9881  	Median :-0.9053  	Mean   :-0.7386  	3rd Qu.:-0.5225  	Max.   : 1.0000  
fBodyGyro.std...Y	Min.   :-1.0000  	1st Qu.:-0.9808  	Median :-0.9061  	Mean   :-0.6742  	3rd Qu.:-0.4385  	Max.   : 1.0000  
fBodyGyro.std...Z	Min.   :-1.0000  	1st Qu.:-0.9862  	Median :-0.8915  	Mean   :-0.6904  	3rd Qu.:-0.4168  	Max.   : 1.0000  
fBodyGyro.meanFreq...X	Min.   :-1.00000  	1st Qu.:-0.27189  	Median :-0.09868  	Mean   :-0.10104  	3rd Qu.: 0.06810  	Max.   : 1.00000  
fBodyGyro.meanFreq...Y	Min.   :-1.00000  	1st Qu.:-0.36257  	Median :-0.17298  	Mean   :-0.17428  	3rd Qu.: 0.01366  	Max.   : 1.00000  
fBodyGyro.meanFreq...Z	Min.   :-1.00000  	1st Qu.:-0.23240  	Median :-0.05369  	Mean   :-0.05139  	3rd Qu.: 0.12251  	Max.   : 1.00000  
fBodyAccMag.mean..	Min.   :-1.0000  	1st Qu.:-0.9847  	Median :-0.8755  	Mean   :-0.5860  	3rd Qu.:-0.2173  	Max.   : 1.0000  
fBodyAccMag.std..	Min.   :-1.0000  	1st Qu.:-0.9829  	Median :-0.8547  	Mean   :-0.6595  	3rd Qu.:-0.3823  	Max.   : 1.0000  
fBodyAccMag.meanFreq..	Min.   :-1.00000  	1st Qu.:-0.09663  	Median : 0.07026  	Mean   : 0.07688  	3rd Qu.: 0.24495  	Max.   : 1.00000  
fBodyBodyAccJerkMag.mean..	Min.   :-1.0000  	1st Qu.:-0.9898  	Median :-0.9290  	Mean   :-0.6208  	3rd Qu.:-0.2600  	Max.   : 1.0000  
fBodyBodyAccJerkMag.std..	Min.   :-1.0000  	1st Qu.:-0.9907  	Median :-0.9255  	Mean   :-0.6401  	3rd Qu.:-0.3082  	Max.   : 1.0000  
fBodyBodyAccJerkMag.meanFreq..	Min.   :-1.000000  	1st Qu.:-0.002959  	Median : 0.164180  	Mean   : 0.173220  	3rd Qu.: 0.357307  	Max.   : 1.000000  
fBodyBodyGyroMag.mean..	Min.   :-1.0000  	1st Qu.:-0.9825  	Median :-0.8756  	Mean   :-0.6974  	3rd Qu.:-0.4514  	Max.   : 1.0000  
fBodyBodyGyroMag.std..	Min.   :-1.0000  	1st Qu.:-0.9781  	Median :-0.8275  	Mean   :-0.7000  	3rd Qu.:-0.4713  	Max.   : 1.0000  
fBodyBodyGyroMag.meanFreq..	Min.   :-1.00000  	1st Qu.:-0.23436  	Median :-0.05210  	Mean   :-0.04156  	3rd Qu.: 0.15158  	Max.   : 1.00000  
fBodyBodyGyroJerkMag.mean..	Min.   :-1.0000  	1st Qu.:-0.9921  	Median :-0.9453  	Mean   :-0.7798  	3rd Qu.:-0.6122  	Max.   : 1.0000  
fBodyBodyGyroJerkMag.std..	Min.   :-1.0000  	1st Qu.:-0.9926  	Median :-0.9382  	Mean   :-0.7922  	3rd Qu.:-0.6437  	Max.   : 1.0000  
fBodyBodyGyroJerkMag.meanFreq..	Min.   :-1.00000  	1st Qu.:-0.01948  	Median : 0.13625  	Mean   : 0.12671  	3rd Qu.: 0.28896  	Max.   : 1.00000  
angle.tBodyAccMean.gravity.	Min.   :-1.000000  	1st Qu.:-0.124694  	Median : 0.008146  	Mean   : 0.007705  	3rd Qu.: 0.149005  	Max.   : 1.000000  
angle.tBodyAccJerkMean..gravityMean.	Min.   :-1.000000  	1st Qu.:-0.287031  	Median : 0.007668  	Mean   : 0.002648  	3rd Qu.: 0.291490  	Max.   : 1.000000  
angle.tBodyGyroMean.gravityMean.	Min.   :-1.00000  	1st Qu.:-0.49311  	Median : 0.01719  	Mean   : 0.01768  	3rd Qu.: 0.53614  	Max.   : 1.00000  
angle.tBodyGyroJerkMean.gravityMean.	Min.   :-1.000000  	1st Qu.:-0.389041  	Median :-0.007186  	Mean   :-0.009219  	3rd Qu.: 0.365996  	Max.   : 1.000000  
angle.X.gravityMean.	Min.   :-1.0000  	1st Qu.:-0.8173  	Median :-0.7156  	Mean   :-0.4965  	3rd Qu.:-0.5215  	Max.   : 1.0000  
angle.Y.gravityMean.	Min.   :-1.000000  	1st Qu.: 0.002151  	Median : 0.182029  	Mean   : 0.063255  	3rd Qu.: 0.250790  	Max.   : 1.000000  
angle.Z.gravityMean.	Min.   :-1.000000  	1st Qu.:-0.131880  	Median :-0.003882  	Mean   :-0.054284  	3rd Qu.: 0.102970  	Max.   : 1.000000  

