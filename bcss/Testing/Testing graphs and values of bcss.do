* Testing the graph outputs and theta-opt values obtained from the program bcss
* Ella Marley-Zagar 
* Last updated : 02/04/2019

log using C:\Users\rmjlem1\Desktop\My_files\Andrew_Copas_baseline_data_for_CRT\testing\bcss_testing.log, replace

* Figure 3 from Andrew's paper (AC Article draft7 Xsect.doc last updated 14/01/2019)

bcss, pi(0.5 0.7 0.9) rho(0.01) ret endline(50) // visual inspection vs the paper looks ok

bcss, pi(0.5 0.7 0.9) rho(0.05) ret endline(50) // visual inspection vs the paper looks ok

bcss, pi(0.5 0.7 0.9) rho(0.01) ret endline(200) // visual inspection vs the paper looks ok

bcss, pi(0.5 0.7 0.9) rho(0.05) ret endline(200) // visual inspection vs the paper looks ok

* Figure 4 from Andrew's paper (AC Article draft7 Xsect.doc last updated 14/01/2019)

bcss, pi(0.5 0.7 0.9) rho(0.01) pro total(50) propxaxis(0 0.5) propyaxis(0.4 1.6) propystep(0.2)  // visual inspection vs the paper looks ok

bcss, pi(0.5 0.7 0.9) rho(0.05) pro total(50) propxaxis(0 0.5) propyaxis(0.4 1.6) propystep(0.2)  // visual inspection vs the paper looks ok

bcss, pi(0.5 0.7 0.9) rho(0.01) pro total(200) propxaxis(0 0.5) propyaxis(0.4 1.6) propystep(0.2) // visual inspection vs the paper looks ok

bcss, pi(0.5 0.7 0.9) rho(0.05) pro total(200) propxaxis(0 0.5) propyaxis(0.4 1.6) propystep(0.2) // visual inspection vs the paper looks ok


* Figure 5 / Table 1 from Andrew's paper (AC Article draft7 Xsect.doc last updated 14/01/2019)

bcss, pi(0.5 0.65 0.8) rho(0.05) pro total(300) propxaxis(0 0.5) propyaxis(0.5 1) propystep(0.1)  // visual inspection vs the paper looks ok (legend could be better placed)

bcss, pi(0.5 0.65 0.8) rho(0.05) pro total(300) propxaxis(0 0.5) propyaxis(0.5 1) propystep(0.1) leg(pos(5))

* Other testing

* extreme values of pi
bcss, pi(0.1 0.2 0.9) rho(0.01) pro total(200) // theta opt values set to zero as required (when previously negative)

bcss, pi(0 1) rho(0.01) pro total(200) // theta opt values set to zero as required (when previously negative)

bcss, pi(0.1 0.2 0.9) rho(0.01) ret endline(200) // ok

bcss, pi(0 1) rho(0.01) ret endline(200) // ok

* different number of pi entries
bcss, pi(0.5) rho(0.065) pro total(300) propxaxis(0 0.5) propyaxis(0.7 1) propystep(0.05) // ok

bcss, pi(0.5 0.6 0.7 0.8 0.9) rho(0.05) pro total(200) propxaxis(0 0.5) propyaxis(0.4 1.6) propystep(0.2) // ok

bcss, pi(0.54 0.68 0.7893 0.856 0.912 0.956) rho(0.05) pro total(200) propxaxis(0 0.5) propyaxis(0.4 1.6) propystep(0.2) // ok - legend could be better placed
bcss, pi(0.54 0.68 0.7893 0.856 0.912 0.956) rho(0.05) pro total(200) propxaxis(0 0.5) propyaxis(0.4 1.6) propystep(0.2) leg(pos(5) size(small)) // ok

bcss, pi(0.5) rho(0.065) ret endline(300) // ok

bcss, pi(0.5 0.6 0.7 0.8 0.9) rho(0.01) ret endline(200) // ok

bcss, pi(0.345 0.367 0.412 0.456 0.576 0.585 0.678 0.756 .819 0.902) rho(0.01) ret endline(200) // ok

* extreme values of rho

bcss, pi(0.5 0.7 0.9) rho(0) pro total(200) propxaxis(0 0.5) propyaxis(1 2) propystep(0.2) // ok as rho(0) is not a sensible value

bcss, pi(0.5 0.7 0.9) rho(1) pro total(200) propxaxis(0 0.5) propyaxis(1 2) propystep(0.2) // ok

bcss, pi(0.5 0.7 0.9) rho(0) ret endline(200) // ok

bcss, pi(0.5 0.7 0.9) rho(1) ret endline(200) //ok

* extreme values of total/endline

bcss, pi(0.5 0.7 0.9) rho(0.01) pro total(1) // looks silly as expected
bcss, pi(0.5 0.7 0.9) rho(0.01) pro total(1000000) propxaxis(0 0.5) propyaxis(0 1) propystep(0.2) // ok

bcss, pi(0.5 0.7 0.9) rho(0.01) ret endline(1) // looks silly as expected
bcss, pi(0.5 0.7 0.9) rho(0.01) ret endline(1000000) retxaxis(0 0.5) retyaxis(0 1) retystep(0.2) // ok

* Testing legend options
* Prospective:
* no legend specified, so goes to defaut position and format
bcss, pi(0.5 0.6 0.7) rho(0.01) pro total(200) propxaxis(0 0.5) propyaxis(1 1.25) propystep(0.05) // ok
* specifying different format/position
bcss, pi(0.5 0.6 0.7) rho(0.01) pro total(200) propxaxis(0 0.5) propyaxis(1 1.25) propystep(0.05) leg(pos(5) ring(0) forcesize symxsize(6) symysize(2) rowgap(2) size(medium) colgap(1) symplacement(right) textfirst cols(1) colfirst) // ok (has moved)
* just specifying a different position
bcss, pi(0.5 0.6 0.7) rho(0.01) pro total(200) propxaxis(0 0.5) propyaxis(1 1.25) propystep(0.05) leg(pos(5)) // ok
* just specifying a different size
bcss, pi(0.5 0.6 0.7) rho(0.01) pro total(200) propxaxis(0 0.5) propyaxis(1 1.25) propystep(0.05) leg(size(small)) // ok
* Retrospective:
* no legend specified, so goes to defaut position and format
bcss, pi(0.5 0.6 0.7) rho(0.01) ret endline(200) retxaxis(0 2) retyaxis(0 1) retystep(0.1) // ok
* specifying different format/position
bcss, pi(0.5 0.6 0.7) rho(0.01) ret endline(200) retxaxis(0 2) retyaxis(0 1) retystep(0.1) leg(pos(3) ring(0) forcesize symxsize(8) symysize(1) rowgap(1) size(large) colgap(1) symplacement(left) textfirst cols(1) colfirst) // ok
* just specifying a different position
bcss, pi(0.5 0.6 0.7) rho(0.01) ret endline(200) retxaxis(0 2) retyaxis(0 1) retystep(0.1) leg(pos(5)) // ok
* just specifying a different size
bcss, pi(0.5 0.6 0.7) rho(0.01) ret endline(200) leg(size(small)) // ok

log close
