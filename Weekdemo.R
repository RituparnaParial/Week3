# vector containing column names
colnames <- c("Date", "Country", "Gender", "Age", "q1", "q2", "q3", "q4", "q5")

# enter data into vectors before constructing
# the data frame
date_col <- c("2018-15-10", "2018-01-11", "2018-21-10", "2018-28-10", "2018-01-05")
country_col <- c("US", "US", "IRL", "IRL", "IRL")
gender_col <- c("M", "F", "F", "M", "F")
#need to redcode
age_col <-c(32, 45, 25, 39, 99)
q1_col <- c(5, 3, 3, 3, 2)
q2_col <- c(4, 5, 5, 3, 2)
q3_col <- c(5, 2, 5, 4, 1)
# N.A is inserted in place of missing data 
q4_col <- c(5, 5, 5, NA, 2)
q5_col <- c(5, 5, 2, NA, 1)

# Construct a data frame using the data from all vectors above
managers <- data.frame(date_col, country_col,
                       gender_col, age_col,
                       q1_col, q2_col, q3_col,
                       q4_col, q5_col)

managers
str(managers)
head(managers, 10)

colnames(managers) <- colnames
managers 
# Recode incorrect age to NA
managers$Age[managers$Age == 99] <- NA
managers

# Create a new column called AgeCat and set in AgeCat
# to the following if true
# <= 25 = Young
# >= 26 & <= 44 = Middle Aged
# >= 45 = Elderly

managers$AgeCAt[managers$Age >= 45] <- "Elderly"
managers$AgeCAt[managers$Age >= 26 & managers$Age <= 44] <- "Middle Aged"
managers$AgeCAt[managers$Age <= 25] <- "Young"
managers$AgeCAt[is.na(managers$Age)] <- "Elderly"
managers

# Create a new column called summary col
