SELECT * FROM TAYLORM_DB.PUBLIC.APPLICANT_TRACKING 
  WHERE "APPLICATION_DATE" > {{ dateRange.value.startingDate }} AND "APPLICATION_DATE" < {{ dateRange.value.endingDate }};