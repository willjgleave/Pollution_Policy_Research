clear all
cap log close
set more off

/*
	Will Gleave QAMO 3040 Econometrics 2
*/

* Change cd/setup
	cd "C:\Users\willj\OneDrive\Desktop\Econometrics 2\Final Project\Data"
	log using Week1_IntroducingStata.log, replace

* Load in Datasets and Merge
/*
gen id = date(date, "YMD")
replace id =id*1000+countycode
*/
	*1990
	import delimited "C:\Users\willj\OneDrive\Desktop\Econometrics 2\Final Project\Data\daily_aqi_by_county_1990.csv", clear
	save data_1990, replace
	*1991
	import delimited "C:\Users\willj\OneDrive\Desktop\Econometrics 2\Final Project\Data\daily_aqi_by_county_1991.csv", clear
	save data_1991, replace
	*1992
	import delimited "C:\Users\willj\OneDrive\Desktop\Econometrics 2\Final Project\Data\daily_aqi_by_county_1992.csv", clear
	save data_1992, replace
	*1993
	import delimited "C:\Users\willj\OneDrive\Desktop\Econometrics 2\Final Project\Data\daily_aqi_by_county_1993.csv", clear
	save data_1993, replace
	*1994
	import delimited "C:\Users\willj\OneDrive\Desktop\Econometrics 2\Final Project\Data\daily_aqi_by_county_1994.csv", clear
	save data_1994, replace
	*1995
	import delimited "C:\Users\willj\OneDrive\Desktop\Econometrics 2\Final Project\Data\daily_aqi_by_county_1995.csv", clear
	save data_1995, replace
	*1996
	import delimited "C:\Users\willj\OneDrive\Desktop\Econometrics 2\Final Project\Data\daily_aqi_by_county_1996.csv", clear
	save data_1996, replace
	*1997
	import delimited "C:\Users\willj\OneDrive\Desktop\Econometrics 2\Final Project\Data\daily_aqi_by_county_1997.csv", clear
	save data_1997, replace
	*1998
	import delimited "C:\Users\willj\OneDrive\Desktop\Econometrics 2\Final Project\Data\daily_aqi_by_county_1998.csv", clear
	save data_1998, replace
	*1999
	import delimited "C:\Users\willj\OneDrive\Desktop\Econometrics 2\Final Project\Data\daily_aqi_by_county_1999.csv", clear
	save data_1999, replace
	*2000
	import delimited "C:\Users\willj\OneDrive\Desktop\Econometrics 2\Final Project\Data\daily_aqi_by_county_2000.csv", clear
	save data_2000, replace
	*2001
	import delimited "C:\Users\willj\OneDrive\Desktop\Econometrics 2\Final Project\Data\daily_aqi_by_county_2001.csv", clear
	save data_2001, replace
	*2002
	import delimited "C:\Users\willj\OneDrive\Desktop\Econometrics 2\Final Project\Data\daily_aqi_by_county_2002.csv", clear
	save data_2002, replace
	*2003
	import delimited "C:\Users\willj\OneDrive\Desktop\Econometrics 2\Final Project\Data\daily_aqi_by_county_2003.csv", clear
	save data_2003, replace
	*2004
	import delimited "C:\Users\willj\OneDrive\Desktop\Econometrics 2\Final Project\Data\daily_aqi_by_county_2004.csv", clear
	save data_2004, replace
	*2005
	import delimited "C:\Users\willj\OneDrive\Desktop\Econometrics 2\Final Project\Data\daily_aqi_by_county_2005.csv", clear
	save data_2005, replace
	*2006
	import delimited "C:\Users\willj\OneDrive\Desktop\Econometrics 2\Final Project\Data\daily_aqi_by_county_2006.csv", clear
	save data_2006, replace
	
	


* Merge Data 
	use data_1990
	append using data_1991
	append using data_1992
	append using data_1993
	append using data_1994
	tostring statecode, replace
	append using data_1995
	append using data_1996
	append using data_1997
	append using data_1998
	append using data_1999
	append using data_2000
	append using data_2001
	append using data_2002
	append using data_2003
	append using data_2004
	append using data_2005
	append using data_2006
	
	save data_merged_raw
	
* #10: Describe the Dataset	
		
	describe

	


