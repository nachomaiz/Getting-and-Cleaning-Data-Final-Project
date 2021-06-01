# Getting and Cleaning Data Course Project

Final Project for Getting and Cleaning Data in R from JHU

This project uses the [HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip), comprised of accelerometer data compiled from Samsung Galaxy S smartphones. More info on the [study website](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The included `run_analysis.R` script processes the train and test datasets into a single tidy table aggregated by `Subject` and `Activity` type.

The script assumes the dataset is extracted into a `data` folder within the working directory.

This script does the following:

1.  Load train and test data, as well as labels for variables and activity types.

2.  Merge train and test data.

3.  Label each entry by activity type.

4.  Select only `mean` and `std` variables for aggregation.

5.  Aggregate the data by `Subject` and `Activity` type.

6.  Write the resulting tidy data into the working directory as `tidydata.txt`.
