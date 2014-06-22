---
title       : Great Barrier Reef App
subtitle    : Data Products Coursera Course
author      : casm
job         : R Hacker
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [bootstrap, quiz]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---
## Great Barrier Reef
- True natural wonder of the world
- Visible from space
- Remarkable habitat for spectacular marine life

## The Dataset
- [Great Barrier Reef Fish Biological Data](http://era.deedi.qld.gov.au/1776/)
- Reef fish-counting survey (Ian Walkden Brown)
- Over 9671 observations of 15 variables
- In csv file, so not easy to explore

--- &radio
## Question
Reef is 1400 mi long, and 133,000 sq mi.

What is the average width in miles?

1. 35
2. 65
3. _95_
4. 115

*** .explanation
This is the calculation

```r
133000/1400
```

```
## [1] 95
```

---
## App Layout
### Left sidebar
- **Slider:** fish species in Plot
- **Checkboxes:** table columns.
### Main panel
- **Plot Tab:** Interactive plot of main species measured
- **Table Tab:** Interactive table of raw data
- **Dataset Tab:** Dataset details and acknowledgements

---
## Details
### Plot Tab
Bar chart of the frequency with which fish were found

- **X-Axis:** Species names
- **Y-Axis:** Count of fish in dataset
- **Slider:** Adjusts the number of species shown

### Table Tab
Displays six columns of data from the dataset in an interactive table

- **Column names:** See Dataset tab for details
- **Checkboxes:** Unchecking the checkbox removes the corresponding column
- **Details:** Hyperlinks to massive database of fish

---
I hope you enjoy exploring this dataset through the app.

ENJOY!

