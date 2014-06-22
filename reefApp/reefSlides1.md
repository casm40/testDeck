Great Barrier Reef App
======================
- The Great Barrier Reef is the World's largest coral reef system
- Much is protected by [Great Barrier Reef Marine Park](http://www.gbrmpa.gov.au/)
- Rich diversity of marine life

Background
==========
Dataset
-------
- [Great Barrier Reef Fish Biological Data](http://era.deedi.qld.gov.au/1776/)
- Reef fish-counting survey (Ian Walkden Brown)
- Over 9671 observations of 15 variables
- In csv file, so not easy to explore
***
The App
-------
Displays data interactively:

- graph
- table

Reef is 1400 mi long, 133,000 sq mi. Average width?

```r
133000/1400
```

```
[1] 95
```

App Layout
==========
left:50%
Left sidebar
------------
![Sidebar](reefSlides-figure/sidebar.png)

- **Slider:** fish species in Plot
- **Checkboxes:** table columns.
***
Main panel
----------
Detailed (tabbed) display

- **Plot Tab:** Interactive plot of main species measured
- **Table Tab:** Interactive table of raw data
- **Dataset Tab:** Dataset details and acknowledgements

Plot Tab
========
Bar chart of the frequency with which fish were found

- **X-Axis:** Species names
- **Y-Axis:** Count of fish in dataset
- **Slider:** Adjusts the number of species shown

***

![Plot](reefSlides-figure/plot.png)

Table Tab
=========
Displays six columns of data from the dataset in an interactive table

- **Column names:** See Dataset tab for details
- **Checkboxes:** Unchecking the checkbox removes the corresponding column
- **Details:** Hyperlinks to massive database of fish

ENJOY!

***

![Table](reefSlides-figure/table.png)

