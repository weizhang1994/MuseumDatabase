-- Produce a query of all types that the work belongs to


SELECT * FROM TransactionTypes WHERE "Transaction Type" = ${"Transaction Type" ||Buy||String||where nullable unformatted ds=11 dt=STRING}$ AND "Institution" = ${"Institution" ||MCA||String||where nullable unformatted ds=11 dt=STRING}$;


SELECT * FROM TransactionTypes