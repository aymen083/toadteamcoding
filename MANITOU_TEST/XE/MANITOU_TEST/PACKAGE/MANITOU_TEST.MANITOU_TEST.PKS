CREATE OR REPLACE PACKAGE MANITOU_TEST.MANITOU_TEST AS
/******************************************************************************
   NAME:       MANITOU_TEST
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        2018-05-03      Utilisateur       1. Created this package.
******************************************************************************/

  FUNCTION MyFunction(Param1 IN NUMBER) RETURN NUMBER;
  PROCEDURE MyProcedure(Param1 IN NUMBER);
--Test comment test
END MANITOU_TEST;
/
