clear all
cap log close
set more off

/*
	Will Gleave QAMO 3040 Econometrics 2
*/

* Change cd/setup
	cd "C:\Users\willj\OneDrive\Desktop\Econometrics 2\Final Project\Data"
	log using Project.log, replace
	
use data_cleaned


*Begin Diff in Diff Analysis
bysort year statename: egen state_mean_aqi = mean(median_county_aqi)
preserve 
drop if statename == "Utah"
scatter state_mean_aqi year || lfit state_mean_aqi year , legend(order(1 "Yearly Mean of County AQIs" 2 "Line of Fit")) title(Surrounding States)
restore

preserve 
drop if statename != "Utah"
scatter state_mean_aqi year || lfit state_mean_aqi year , legend(order(1 "Yearly Mean of County AQIs" 2 "Line of Fit")) title(Utah)
restore

reg 