# Pewlett Hackard Analysis

## Purpose
Pewlett Hackard is a large multi-national company that is preparing for a large exodus of employees from the Baby Boomer generation.  

## Data Sources
Data was provided in the following 2 files:
* city_data.csv -- provides data specific to cities of operation, including: city, driver count and city type (urban, suburban or rural).
* ride_data.csv -- provides data specific to each individual ride transaction over time, including: city, date, fare and a unique ride identification number.  

These files are located in the attached Resources folder. The data was merged into a single dataframe for analysis.  

## Methodology
The data was analyzed using Python code within Jupyter Notebook.  The code incorporated both Pandas and matplotlib.pyplot.  

## Deliverables 
1. A ride-sharing summary DataFrame by city type
2. A multiple-line chart of total fares for each city type
3. A written report for the PyBer analysis (README.md)

## Discussion
* Figure 1 provides a composite look at Pyber's ride-sharing business in 2019.  As known, the larger cities (relative driver count per city depicted by marker size) shouldered the ride volume.  However, driven down by competition, fares were significantly lower in high volume areas.  

* Table 1 provides a summary of the ride sharing business by city type.  Specific items of note include the following:
  * 63% of gross revenue from urban markets with 30% from suburban areas and the balance, rural.    
  * Rural drivers accounted for 2.6% of the total driver workforce yet brought in nearly 7% of revenue.  
  * Average fare per driver in rural areas was 335% that of urban drivers.  While suburban drivers were 238% that of their urban counter parts. 
 
 * Figure 2 further demonstrates the disparity in gross revenue between city types over time.  For each, there was monthly fluctuations, yet little movement in trend.  
  
## Recommendations 
* With potential saturation in the urban markets, focus on development of suburban and rural businesses.  
* Entice rural customer growth with short-term discounted prices or provide loyalty discounts for repeat riders. 
* Provide additional resources (drivers) in potential growth markets (rural and suburban).  

----------------------------------------------------------------------------------
### Appendix of Figures and Tables
----------------------------------------------------------------------------------

![Fig_1](analysis/Fig1.png)
<br>
<br>
**Fig. 1:  Ride Sharing - A Composite Look**
<br>
<br>
<br>
![Fig_2](analysis/PyBer_fare_summary.png)
<br>
<br>
**Fig. 2:  Fares Through Time**
<br>
<br>
<br>
![Table 1](analysis/Ride_Sharing_Summary_by_city.PNG)
<br>
**Table. 1: Ride Sharing Summary by City Type**
