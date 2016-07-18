# cakegraph

Since square pie graphs have been found to be very good for judging proportions as reported here:

https://eagereyes.org/blog/2016/a-reanalysis-of-a-study-about-square-pie-charts-from-2009

and seen by me here:

http://www.statschat.org.nz/2016/07/18/briefly-175/

I have sketched out some quick code for making square pie graphs in the accompanying R file, that I really feel should be called cake graphs.

Looking at the example this code makes, I am not convinced it is easier to read than a bar graph for multiple proportions, particularly against a bar graph with custom tick marks at the bar heights. 


I would also note that if you want binned coloured boxes (so have some rounding of the data) you should be looking at the waffle package:
https://cran.r-project.org/web/packages/waffle/index.html

