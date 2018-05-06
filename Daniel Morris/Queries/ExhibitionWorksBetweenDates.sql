-- Produce a query of all types that the work belongs to


SELECT * FROM ExhibitionWorksBetweenDates WHERE "Exhibition" = ${"Exhibition" ||Revolutionary-Art||String||where nullable unformatted ds=11 dt=STRING}$
AND "Institution" = ${"Institution" ||Wei||String||where nullable unformatted ds=11 dt=STRING}$
AND (("Start Date" < ${"Start Date" ||2015-11-01||Date||where nullable unformatted ds=11 dt=DATE}$ AND "End Date" > ${"End Date" ||2016-11-01||Date||where nullable unformatted ds=11 dt=DATE}$) 
        OR ("Start Date" > ${"Start Date" ||2015-11-01||Date||where nullable unformatted ds=11 dt=DATE}$ AND "Start Date" < ${"End Date" ||2016-11-01||Date||where nullable unformatted ds=11 dt=DATE}$)
        OR ("End Date" > ${"Start Date" ||2015-11-01||Date||where nullable unformatted ds=11 dt=DATE}$ AND "End Date" < ${"End Date" ||2016-11-01||Date||where nullable unformatted ds=11 dt=DATE}$))
ORDER BY "Start Date";


