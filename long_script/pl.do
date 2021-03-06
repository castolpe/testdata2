clear
version 13 

*** create p-long-data

use dist\ap.dta

gen wave = 2001
lab var wave "Welle"

rename ap01 psex
rename ap02 pgeb
rename ap03 pnat
rename ap04 pfamst
rename ap05 pfv05
rename ap06 pfv06
rename ap07 pfv07
rename ap08 pfv08
rename ap09 pfv09
rename ap10 pfv10
rename ap11 pfv11
rename ap12 pfv12
rename ap13 pfv13
rename ap14 pfv14
rename ap15 pfv15
rename ap16 pfv16
rename ap17 pfv17
rename ap18 pzuf18	
rename ap19 pzuf19	
rename ap20 pzuf20	
rename ap21 pzuf21	
rename ap22 pzuf22	
rename ap23 pzuf23	
rename ap24 pzuf24	
rename ap25 pzuf25	
rename ap26 pzuf26	
rename ap27 pzuf27	
rename ap28 pzuf28	
rename ap29 pzuf29	
rename ap30 pjob
rename ap31 peina
rename ap32 peinb
rename ap33 ppoli
rename ap34 ppart
rename ap35 pgr
rename ap36 pkilo
rename AHHNR HHNR

saveold temp\ap.dta, replace

clear
use dist\bp.dta

gen wave = 2002
lab var wave "Welle"

rename bp01 psex
rename bp02 pgeb
rename bp03 pnat
rename bp04 pfamst
rename bp05 pfv05
rename bp06 pfv06
rename bp07 pfv07
rename bp08 pfv08
rename bp09 pfv09
rename bp10 pfv10
rename bp11 pfv11
rename bp12 pfv12
rename bp13 pfv13
rename bp14 pfv14
rename bp15 pfv15
rename bp16 pfv16
rename bp17 pfv17
rename bp18 pzuf18	
rename bp19 pzuf19	
rename bp20 pzuf20	
rename bp21 pzuf21	
rename bp22 pzuf22	
rename bp23 pzuf23	
rename bp24 pzuf24	
rename bp25 pzuf25	
rename bp26 pzuf26	
rename bp27 pzuf27	
rename bp28 pzuf28	
rename bp29 pzuf29	
rename bp30 pjob
rename bp31 peina
rename bp32 peinb
rename bp33 ppoli
rename bp34 ppart
rename bp35 pgr
rename bp36 pkilo
rename BHHNR HHNR

saveold temp\bp.dta, replace

clear
use dist\cp.dta

gen wave = 2003
lab var wave "Welle" 

rename cp01 psex
rename cp02 pgeb
rename cp03 pnat
rename cp04 pfamst
rename cp05 pfv05
rename cp06 pfv06
rename cp07 pfv07
rename cp08 pfv08
rename cp09 pfv09
rename cp10 pfv10
rename cp11 pfv11
rename cp12 pfv12
rename cp13 pfv13
rename cp14 pfv14
rename cp15 pfv15
rename cp16 pfv16
rename cp17 pfv17
rename cp18 pzuf18	
rename cp19 pzuf19	
rename cp20 pzuf20	
rename cp21 pzuf21	
rename cp22 pzuf22	
rename cp23 pzuf23	
rename cp24 pzuf24	
rename cp25 pzuf25	
rename cp26 pzuf26	
rename cp27 pzuf27	
rename cp28 pzuf28	
rename cp29 pzuf29	
rename cp30 pjob
rename cp31 peina
rename cp32 peinb
rename cp33 ppoli
rename cp34 ppart
rename cp35 pgr
rename cp36 pkilo
rename cp37 pfv18
rename CHHNR HHNR

saveold temp\cp.dta, replace

append using temp\ap.dta temp\bp.dta

sort HHNR PERSNR wave

saveold long\pl.dta, replace

