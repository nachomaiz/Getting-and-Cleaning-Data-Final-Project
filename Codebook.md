# Human Activity Recognition Dataset Codebook

The data used can be found in the [UCI HAR Dataset](https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) website.

## Modifications

The dataset was modified in the following ways:

-   Train and test data were merged into a single table with appropriate variable labels.

-   The `Activity` information was replaced with descriptive labels.

-   Only `mean` and `std` variables are used for the aggregation.

-   Data averaged and aggregated by `Subject` and `Activity` type.

## Description

1.  Identifiers

    a.  Subject: Unique IDs for each subject

    b.  Activity: Types of activity measured, these include:

        1.  *WALKING*

        2.  *WALKING_UPSTAIRS*

        3.  *WALKING_DOWNSTAIRS*

        4.  *SITTING*

        5.  *STANDING*

        6.  *LAYING*

2.  Measures: means and standard deviations for the following accelerometer measurements:

    1.  tBodyAcc-XYZ

    2.  tGravityAcc-XYZ

    3.  tBodyAccJerk-XYZ

    4.  tBodyGyro-XYZ

    5.  tBodyGyroJerk-XYZ

    6.  tBodyAccMag

    7.  tGravityAccMag

    8.  tBodyAccJerkMag

    9.  tBodyGyroMag

    10. tBodyGyroJerkMag

    11. fBodyAcc-XYZ

    12. fBodyAccJerk-XYZ

    13. fBodyGyro-XYZ

    14. fBodyAccMag

    15. fBodyAccJerkMag

    16. fBodyGyroMag

    17. fBodyGyroJerkMag
