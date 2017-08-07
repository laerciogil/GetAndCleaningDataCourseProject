# Codebook
Laercio Gil  
01/08/2017  



## The tidy.txt file

The tidy.txt file is the product of the processing performed by the run_analysis.R file. It is in csv format, in UTF-8 encoding, using a blank space as a column separator. The file contains 180 observations with 81 variables each. The observations consist of 6 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) performed by each of the 30 volunteers. The first two variables are dataset keys identifying the activities performed and the subjects identified by their ids. The other variables are averages calculated on the data collected by the accelerometer and gyroscope of the cellular attached to the waist of the subjects.
The variables that gave rise to the calculated mean values obey the following nomenclature pattern:  

* *f*: indicates frequency domain values;
* *t*: indicates time domain values;
* *Acc*: Acceleration;
* *Mean*: Mean (Average);
* *Std*: Standard deviation;
* *Gyro*: Gyroscope;
* *Mag*: Magnitude;
* *BodyBody*: Body.

***

##File Variables

### Key Variables

#### **` activity `**
* **Class**:  factor 
* **Values**: 
<pre>[1] LAYING             SITTING            STANDING          
[4] WALKING            WALKING_DOWNSTAIRS WALKING_UPSTAIRS  
6 Levels: LAYING SITTING STANDING WALKING ... WALKING_UPSTAIRS
</pre>


#### **` subject `**
* **Class**:  integer 
* **Values**: 
<pre> [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23
[24] 24 25 26 27 28 29 30
</pre>

***

### Measure Variables

#### **` tBodyAccMeanX `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
 0.2216  0.2712  0.2770  0.2743  0.2800  0.3015 
</pre>


#### **` tBodyAccMeanY `**
* **Class**:  numeric 
* **Summary**: 
<pre>     Min.   1st Qu.    Median      Mean   3rd Qu.      Max. 
-0.040514 -0.020022 -0.017262 -0.017876 -0.014936 -0.001308 
</pre>


#### **` tBodyAccMeanZ `**
* **Class**:  numeric 
* **Summary**: 
<pre>    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-0.15251 -0.11207 -0.10819 -0.10916 -0.10443 -0.07538 
</pre>


#### **` tGravityAccMeanX `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.6800  0.8376  0.9208  0.6975  0.9425  0.9745 
</pre>


#### **` tGravityAccMeanY `**
* **Class**:  numeric 
* **Summary**: 
<pre>    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-0.47989 -0.23319 -0.12782 -0.01621  0.08773  0.95659 
</pre>


#### **` tGravityAccMeanZ `**
* **Class**:  numeric 
* **Summary**: 
<pre>    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-0.49509 -0.11726  0.02384  0.07413  0.14946  0.95787 
</pre>


#### **` tBodyAccJerkMeanX `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
0.04269 0.07396 0.07640 0.07947 0.08330 0.13019 
</pre>


#### **` tBodyAccJerkMeanY `**
* **Class**:  numeric 
* **Summary**: 
<pre>      Min.    1st Qu.     Median       Mean    3rd Qu.       Max. 
-0.0386872  0.0004664  0.0094698  0.0075652  0.0134008  0.0568186 
</pre>


#### **` tBodyAccJerkMeanZ `**
* **Class**:  numeric 
* **Summary**: 
<pre>     Min.   1st Qu.    Median      Mean   3rd Qu.      Max. 
-0.067458 -0.010601 -0.003861 -0.004953  0.001958  0.038053 
</pre>


#### **` tBodyGyroMeanX `**
* **Class**:  numeric 
* **Summary**: 
<pre>    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-0.20578 -0.04712 -0.02871 -0.03244 -0.01676  0.19270 
</pre>


#### **` tBodyGyroMeanY `**
* **Class**:  numeric 
* **Summary**: 
<pre>    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-0.20421 -0.08955 -0.07318 -0.07426 -0.06113  0.02747 
</pre>


#### **` tBodyGyroMeanZ `**
* **Class**:  numeric 
* **Summary**: 
<pre>    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-0.07245  0.07475  0.08512  0.08744  0.10177  0.17910 
</pre>


#### **` tBodyGyroJerkMeanX `**
* **Class**:  numeric 
* **Summary**: 
<pre>    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-0.15721 -0.10322 -0.09868 -0.09606 -0.09110 -0.02209 
</pre>


#### **` tBodyGyroJerkMeanY `**
* **Class**:  numeric 
* **Summary**: 
<pre>    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-0.07681 -0.04552 -0.04112 -0.04269 -0.03842 -0.01320 
</pre>


#### **` tBodyGyroJerkMeanZ `**
* **Class**:  numeric 
* **Summary**: 
<pre>     Min.   1st Qu.    Median      Mean   3rd Qu.      Max. 
-0.092500 -0.061725 -0.053430 -0.054802 -0.048985 -0.006941 
</pre>


#### **` tBodyAccMagMean `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9865 -0.9573 -0.4829 -0.4973 -0.0919  0.6446 
</pre>


#### **` tGravityAccMagMean `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9865 -0.9573 -0.4829 -0.4973 -0.0919  0.6446 
</pre>


#### **` tBodyAccJerkMagMean `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9928 -0.9807 -0.8168 -0.6079 -0.2456  0.4345 
</pre>


#### **` tBodyGyroMagMean `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9807 -0.9461 -0.6551 -0.5652 -0.2159  0.4180 
</pre>


#### **` tBodyGyroJerkMagMean `**
* **Class**:  numeric 
* **Summary**: 
<pre>    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-0.99732 -0.98515 -0.86479 -0.73637 -0.51186  0.08758 
</pre>


#### **` fBodyAccMeanX `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9952 -0.9787 -0.7691 -0.5758 -0.2174  0.5370 
</pre>


#### **` fBodyAccMeanY `**
* **Class**:  numeric 
* **Summary**: 
<pre>    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-0.98903 -0.95361 -0.59498 -0.48873 -0.06341  0.52419 
</pre>


#### **` fBodyAccMeanZ `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9895 -0.9619 -0.7236 -0.6297 -0.3183  0.2807 
</pre>


#### **` fBodyAccMeanFreqX `**
* **Class**:  numeric 
* **Summary**: 
<pre>    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-0.63591 -0.39165 -0.25731 -0.23227 -0.06105  0.15912 
</pre>


#### **` fBodyAccMeanFreqY `**
* **Class**:  numeric 
* **Summary**: 
<pre>     Min.   1st Qu.    Median      Mean   3rd Qu.      Max. 
-0.379518 -0.081314  0.007855  0.011529  0.086281  0.466528 
</pre>


#### **` fBodyAccMeanFreqZ `**
* **Class**:  numeric 
* **Summary**: 
<pre>    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-0.52011 -0.03629  0.06582  0.04372  0.17542  0.40253 
</pre>


#### **` fBodyAccJerkMeanX `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9946 -0.9828 -0.8126 -0.6139 -0.2820  0.4743 
</pre>


#### **` fBodyAccJerkMeanY `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9894 -0.9725 -0.7817 -0.5882 -0.1963  0.2767 
</pre>


#### **` fBodyAccJerkMeanZ `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9920 -0.9796 -0.8707 -0.7144 -0.4697  0.1578 
</pre>


#### **` fBodyAccJerkMeanFreqX `**
* **Class**:  numeric 
* **Summary**: 
<pre>    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-0.57604 -0.28966 -0.06091 -0.06910  0.17660  0.33145 
</pre>


#### **` fBodyAccJerkMeanFreqY `**
* **Class**:  numeric 
* **Summary**: 
<pre>    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-0.60197 -0.39751 -0.23209 -0.22810 -0.04721  0.19568 
</pre>


#### **` fBodyAccJerkMeanFreqZ `**
* **Class**:  numeric 
* **Summary**: 
<pre>    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-0.62756 -0.30867 -0.09187 -0.13760  0.03858  0.23011 
</pre>


#### **` fBodyGyroMeanX `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9931 -0.9697 -0.7300 -0.6367 -0.3387  0.4750 
</pre>


#### **` fBodyGyroMeanY `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9940 -0.9700 -0.8141 -0.6767 -0.4458  0.3288 
</pre>


#### **` fBodyGyroMeanZ `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9860 -0.9624 -0.7909 -0.6044 -0.2635  0.4924 
</pre>


#### **` fBodyGyroMeanFreqX `**
* **Class**:  numeric 
* **Summary**: 
<pre>     Min.   1st Qu.    Median      Mean   3rd Qu.      Max. 
-0.395770 -0.213363 -0.115527 -0.104551  0.002655  0.249209 
</pre>


#### **` fBodyGyroMeanFreqY `**
* **Class**:  numeric 
* **Summary**: 
<pre>    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-0.66681 -0.29433 -0.15794 -0.16741 -0.04269  0.27314 
</pre>


#### **` fBodyGyroMeanFreqZ `**
* **Class**:  numeric 
* **Summary**: 
<pre>    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-0.50749 -0.15481 -0.05081 -0.05718  0.04152  0.37707 
</pre>


#### **` fBodyAccMagMean `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9868 -0.9560 -0.6703 -0.5365 -0.1622  0.5866 
</pre>


#### **` fBodyAccMagMeanFreq `**
* **Class**:  numeric 
* **Summary**: 
<pre>    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-0.31234 -0.01475  0.08132  0.07613  0.17436  0.43585 
</pre>


#### **` fBodyBodyAccJerkMagMean `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9940 -0.9770 -0.7940 -0.5756 -0.1872  0.5384 
</pre>


#### **` fBodyBodyAccJerkMagMeanFreq `**
* **Class**:  numeric 
* **Summary**: 
<pre>    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-0.12521  0.04527  0.17198  0.16255  0.27593  0.48809 
</pre>


#### **` fBodyBodyGyroMagMean `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9865 -0.9616 -0.7657 -0.6671 -0.4087  0.2040 
</pre>


#### **` fBodyBodyGyroMagMeanFreq `**
* **Class**:  numeric 
* **Summary**: 
<pre>    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-0.45664 -0.16951 -0.05352 -0.03603  0.08228  0.40952 
</pre>


#### **` fBodyBodyGyroJerkMagMean `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9976 -0.9813 -0.8779 -0.7564 -0.5831  0.1466 
</pre>


#### **` fBodyBodyGyroJerkMagMeanFreq `**
* **Class**:  numeric 
* **Summary**: 
<pre>    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-0.18292  0.05423  0.11156  0.12592  0.20805  0.42630 
</pre>


#### **` tBodyAccStdX `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9961 -0.9799 -0.7526 -0.5577 -0.1984  0.6269 
</pre>


#### **` tBodyAccStdY `**
* **Class**:  numeric 
* **Summary**: 
<pre>    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-0.99024 -0.94205 -0.50897 -0.46046 -0.03077  0.61694 
</pre>


#### **` tBodyAccStdZ `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9877 -0.9498 -0.6518 -0.5756 -0.2306  0.6090 
</pre>


#### **` tGravityAccStdX `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9968 -0.9825 -0.9695 -0.9638 -0.9509 -0.8296 
</pre>


#### **` tGravityAccStdY `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9942 -0.9711 -0.9590 -0.9524 -0.9370 -0.6436 
</pre>


#### **` tGravityAccStdZ `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9910 -0.9605 -0.9450 -0.9364 -0.9180 -0.6102 
</pre>


#### **` tBodyAccJerkStdX `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9946 -0.9832 -0.8104 -0.5949 -0.2233  0.5443 
</pre>


#### **` tBodyAccJerkStdY `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9895 -0.9724 -0.7756 -0.5654 -0.1483  0.3553 
</pre>


#### **` tBodyAccJerkStdZ `**
* **Class**:  numeric 
* **Summary**: 
<pre>    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-0.99329 -0.98266 -0.88366 -0.73596 -0.51212  0.03102 
</pre>


#### **` tBodyGyroStdX `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9943 -0.9735 -0.7890 -0.6916 -0.4414  0.2677 
</pre>


#### **` tBodyGyroStdY `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9942 -0.9629 -0.8017 -0.6533 -0.4196  0.4765 
</pre>


#### **` tBodyGyroStdZ `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9855 -0.9609 -0.8010 -0.6164 -0.3106  0.5649 
</pre>


#### **` tBodyGyroJerkStdX `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9965 -0.9800 -0.8396 -0.7036 -0.4629  0.1791 
</pre>


#### **` tBodyGyroJerkStdY `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9971 -0.9832 -0.8942 -0.7636 -0.5861  0.2959 
</pre>


#### **` tBodyGyroJerkStdZ `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9954 -0.9848 -0.8610 -0.7096 -0.4741  0.1932 
</pre>


#### **` tBodyAccMagStd `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9865 -0.9430 -0.6074 -0.5439 -0.2090  0.4284 
</pre>


#### **` tGravityAccMagStd `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9865 -0.9430 -0.6074 -0.5439 -0.2090  0.4284 
</pre>


#### **` tBodyAccJerkMagStd `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9946 -0.9765 -0.8014 -0.5842 -0.2173  0.4506 
</pre>


#### **` tBodyGyroMagStd `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9814 -0.9476 -0.7420 -0.6304 -0.3602  0.3000 
</pre>


#### **` tBodyGyroJerkMagStd `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9977 -0.9805 -0.8809 -0.7550 -0.5767  0.2502 
</pre>


#### **` fBodyAccStdX `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9966 -0.9820 -0.7470 -0.5522 -0.1966  0.6585 
</pre>


#### **` fBodyAccStdY `**
* **Class**:  numeric 
* **Summary**: 
<pre>    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-0.99068 -0.94042 -0.51338 -0.48148 -0.07913  0.56019 
</pre>


#### **` fBodyAccStdZ `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9872 -0.9459 -0.6441 -0.5824 -0.2655  0.6871 
</pre>


#### **` fBodyAccJerkStdX `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9951 -0.9847 -0.8254 -0.6121 -0.2475  0.4768 
</pre>


#### **` fBodyAccJerkStdY `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9905 -0.9737 -0.7852 -0.5707 -0.1685  0.3498 
</pre>


#### **` fBodyAccJerkStdZ `**
* **Class**:  numeric 
* **Summary**: 
<pre>     Min.   1st Qu.    Median      Mean   3rd Qu.      Max. 
-0.993108 -0.983747 -0.895121 -0.756489 -0.543787 -0.006236 
</pre>


#### **` fBodyGyroStdX `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9947 -0.9750 -0.8086 -0.7110 -0.4813  0.1966 
</pre>


#### **` fBodyGyroStdY `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9944 -0.9602 -0.7964 -0.6454 -0.4154  0.6462 
</pre>


#### **` fBodyGyroStdZ `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9867 -0.9643 -0.8224 -0.6577 -0.3916  0.5225 
</pre>


#### **` fBodyAccMagStd `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9876 -0.9452 -0.6513 -0.6210 -0.3654  0.1787 
</pre>


#### **` fBodyBodyAccJerkMagStd `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9944 -0.9752 -0.8126 -0.5992 -0.2668  0.3163 
</pre>


#### **` fBodyBodyGyroMagStd `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9815 -0.9488 -0.7727 -0.6723 -0.4277  0.2367 
</pre>


#### **` fBodyBodyGyroJerkMagStd `**
* **Class**:  numeric 
* **Summary**: 
<pre>   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9976 -0.9802 -0.8941 -0.7715 -0.6081  0.2878 
</pre>
