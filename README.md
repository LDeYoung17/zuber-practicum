# Zuber Data Analysis

<h2>Summary</h2>

This project performs data preprocessing and exploratory and statistical data analysis after SQL queries narrowed down the scope of the data to the correct date and locations in order to help a ride-sharing application make decisions about its market share.

<h2>Table of Contents</h2>

1. SQL Queries (queries.sql)
    - narrowing down the scope of a larger dataset to certain date ranges, company names, neighborhoods, and weather conditions
2. Parsing Data (parse_data.py)
    - obtaining weather records
3. Exploratory Data Analysis (notebooks > EDA.ipynb)
      
        a) Project introduction
        b) Library and data importation
        c) Data preprocessing - finding and removing duplicate values, filling in missing values, etc.
        d) Identifying and displaying the top ten dropoff neighborhoods (bar chart)
        e) Looking at the number of trips cab companies take in the given time frame (bar chart)
        f) Testing hypotheses about the effect of rainy weather on ride duration
        g) Project conclusion


<h2>Local Access</h2>

This project will require Python 3.9.13 or later and PostgreSQL.

All packages required can be installed from the requirements.txt file by executing the command 'pip install -r requirements.txt'

To run the files included in this repository, they can be downloaded from the repository (the main branch) and run in the IDE of your choice.

Please note that the data that was originally provided by the client and is proprietary. It is not available in this repository for that reason.

<h2>Plans for updates</h2>

Edit the labels on the bar charts using matplotlib to make it clearer what they are evaluating. 
Label the SQL queries using comments to show what data they are searching for. 

<h2>Sample Graph</h2>

![zuber_sample](https://github.com/LDeYoung17/zuber-practicum/assets/70500225/07e22a1b-dd38-4e88-885e-84b7f9fc9d46)

<h2>Demonstration Video</h2>

https://drive.google.com/file/d/1tTvXgZJMXbEvCrsTTDoDkp7S29rLuEud/view?usp=drive_link

<h2>Portfolio Link</h2>

https://ldeyoung17.github.io/

This is my portfolio where all my projects, including this one, can be found, as well as more information about my experience as a Data Scientist and Software Engineer.
