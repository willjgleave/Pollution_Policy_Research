clear all
cap log close
set more off

/*
	Will Gleave QAMO 3040 Econometrics 2
*/

* Change cd/setup
	cd "C:\Users\willj\OneDrive\Desktop\Econometrics 2\Final Project\Data"
	log using Project.log, replace




	
use data_merged_raw
	
*Describe the Dataset	
		
	describe

	
keep if statename == "Utah" | statename == "Montana" | statename == "Idaho" | statename == "Wyoming" | statename == "Colorado	" 

gen date_numeric = date(date, "YMD")
gen year=year(date_numeric)

*DIFF IN DIFF Setup

bysort countyname year: egen median_county_aqi = median(aqi)

egen utahmeanpre = mean(median_county_aqi) if statename == "Utah" & year < 1998 
egen othermeanpre = mean(median_county_aqi) if statename == "Montana" | statename == "Idaho" | statename == "Wyoming" | statename == "Colorado" & year < 1998
egen utahmeanpost = mean(median_county_aqi) if statename == "Utah" & year > 1998
egen othermeanpost = mean(median_county_aqi) if statename == "Montana" | statename == "Idaho" | statename == "Wyoming" | statename == "Colorado"  & year > 1998
gen post = 0
replace post = 1 if year > 1998
gen treat = 0
replace treat = 1 if statename == "Montana" | statename == "Idaho" | statename == "Wyoming" | statename == "Colorado"
gen treatXpost = treat * post

drop if year == 1998

	save data_cleaned, replace

