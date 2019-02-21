* Testing the graph outputs and theta-opt values obtained from the program bcss
* Ella Marley-Zagar 
* Last updated : 21/02/2019

log using C:\Users\rmjlem1\Desktop\My_files\Andrew_Copas_baseline_data_for_CRT\testing\bcss_testing.log, replace

* Figure 3 from Andrew's paper (AC Article draft7 Xsect.doc last updated 14/01/2019)

bcss, pi(0.5 0.7 0.9) rho(0.01) ret endline(50) // visual inspection vs the paper looks ok

bcss, pi(0.5 0.7 0.9) rho(0.05) ret endline(50) // visual inspection vs the paper looks ok

bcss, pi(0.5 0.7 0.9) rho(0.01) ret endline(200) // visual inspection vs the paper looks ok

bcss, pi(0.5 0.7 0.9) rho(0.05) ret endline(200) // visual inspection vs the paper looks ok

* Figure 4 from Andrew's paper (AC Article draft7 Xsect.doc last updated 14/01/2019)

bcss, pi(0.5 0.7 0.9) rho(0.01) pro total(50) propxaxis(0 0.5) propyaxis(0.4 1.6) propystep(0.2)  // **************all have negative theta opt values, have asked Andrew****************

bcss, pi(0.5 0.7 0.9) rho(0.05) pro total(50) propxaxis(0 0.5) propyaxis(0.4 1.6) propystep(0.2)  // visual inspection vs the paper looks ok

bcss, pi(0.5 0.7 0.9) rho(0.01) pro total(200) propxaxis(0 0.5) propyaxis(0.4 1.6) propystep(0.2) // visual inspection vs the paper looks ok

bcss, pi(0.5 0.7 0.9) rho(0.05) pro total(200) propxaxis(0 0.5) propyaxis(0.4 1.6) propystep(0.2) // visual inspection vs the paper looks ok


* Figure 5 / Table 1 from Andrew's paper (AC Article draft7 Xsect.doc last updated 14/01/2019)

bcss, pi(0.5 0.65 0.8) rho(0.05) pro total(300) propxaxis(0 0.5) propyaxis(0.5 1) propystep(0.1)  // visual inspection vs the paper looks ok (ledgend could be better placed)

* Other testing

* extreme values of pi
bcss, pi(0.1 0.2 0.9) rho(0.01) pro total(200) // pi 0.1 and 0.2 give negative theta opt values which should not be possible

bcss, pi(0 1) rho(0.01) pro total(200) // pi 0 gives a negative theta opt values which should not be possible

bcss, pi(0.1 0.2 0.9) rho(0.01) ret endline(200) // ok

bcss, pi(0 1) rho(0.01) ret endline(200) // ok

* different number of pi entries
bcss, pi(0.5) rho(0.065) pro total(300) propxaxis(0 0.5) propyaxis(0.7 1) propystep(0.05) // ok

bcss, pi(0.5 0.6 0.7 0.8 0.9) rho(0.05) pro total(200) propxaxis(0 0.5) propyaxis(0.4 1.6) propystep(0.2) // ok

bcss, pi(0.54 0.68 0.7893 0.856 0.912 0.956) rho(0.05) pro total(200) propxaxis(0 0.5) propyaxis(0.4 1.6) propystep(0.2) // ok

bcss, pi(0.5) rho(0.065) ret endline(300) // ok

bcss, pi(0.5 0.6 0.7 0.8 0.9) rho(0.01) ret endline(200) // ok

bcss, pi(0.345 0.367 0.412 0.456 0.576 0.585 0.678 0.756 .819 0.902) rho(0.01) ret endline(200) // ok

* extreme values of rho

bcss, pi(0.5 0.7 0.9) rho(0) pro total(200) propxaxis(0 0.5) propyaxis(1 2) propystep(0.2) // ok

bcss, pi(0.5 0.7 0.9) rho(1) pro total(200) propxaxis(0 0.5) propyaxis(1 2) propystep(0.2) // ok

bcss, pi(0.5 0.7 0.9) rho(0) ret endline(200) // ok

bcss, pi(0.5 0.7 0.9) rho(1) ret endline(200) //ok

* extreme values of total/endline

bcss, pi(0.5 0.7 0.9) rho(0.01) pro total(1) // looks silly as expected
bcss, pi(0.5 0.7 0.9) rho(0.01) pro total(1000000) propxaxis(0 0.5) propyaxis(0 1) propystep(0.2) // ok

bcss, pi(0.5 0.7 0.9) rho(0.01) ret endline(1) // looks silly as expected
bcss, pi(0.5 0.7 0.9) rho(0.01) ret endline(1000000) retxaxis(0 0.5) retyaxis(0 1) retystep(0.2) // ok

log close
