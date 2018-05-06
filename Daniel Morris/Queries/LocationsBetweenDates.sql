-- Produce a query that lists the different locations that a given work was/is/will be in between two dates



SELECT * FROM LocationsBetweenDates WHERE "Letter ID" = ${"Letter Id" ||AngBic||String||where nullable unformatted ds=11 dt=STRING}$
AND "Numeric ID" = ${"Numeric ID" ||8||Integer||where nullable unformatted ds=11 dt=INTEGER}$
AND "Institution" = ${"Institution" ||MCA||String||where nullable unformatted ds=11 dt=STRING}$
AND (("Start Date-Time" < ${"Start Date" ||2015-11-01||Date||where nullable unformatted ds=11 dt=DATE}$ AND "End Date-Time" > ${"End Date" ||2016-11-01||Date||where nullable unformatted ds=11 dt=DATE}$) 
        OR ("Start Date-Time" > ${"Start Date" ||2015-11-01||Date||where nullable unformatted ds=11 dt=DATE}$ AND "Start Date-Time" < ${"End Date" ||2016-11-01||Date||where nullable unformatted ds=11 dt=DATE}$)
        OR ("End Date-Time" > ${"Start Date" ||2015-11-01||Date||where nullable unformatted ds=11 dt=DATE}$ AND "End Date-Time" < ${"End Date" ||2016-11-01||Date||where nullable unformatted ds=11 dt=DATE}$))
ORDER BY "Start Date-Time";


