!------ --------------
! these are the AUTO constants, *exactly* as given in the fort.2 or c. file
! don't use this module from any parallellized function (FUNI and ICNI).
MODULE AUTO_CONSTANTS

  IMPLICIT NONE
  INTEGER NPARX,NIAP,NRAP
  INCLUDE 'auto.h'

  INTEGER NDIM,IPS,IRS,ILP
  CHARACTER(13), ALLOCATABLE :: ICU(:)
  INTEGER NTST,NCOL,IAD,ISP,ISW,IPLT,NBC,NINT
  INTEGER NMX
  DOUBLE PRECISION RL0,RL1,A0,A1
  INTEGER NPR,MXBF,IID,ITMX,ITNW,NWTN,JAC
  DOUBLE PRECISION EPSL,EPSU,EPSS
  DOUBLE PRECISION DS,DSMIN,DSMAX
  INTEGER IADS,NPAR
  TYPE INDEXVAR
     CHARACTER(13) INDEX
     DOUBLE PRECISION VAR
  END TYPE INDEXVAR
  TYPE(INDEXVAR),ALLOCATABLE :: IVTHL(:),IVTHU(:),UVALS(:),PARVALS(:)
  TYPE INDEXMVAR
     CHARACTER(13) INDEX
     DOUBLE PRECISION, POINTER :: VAR(:)
  END TYPE INDEXMVAR
  TYPE(INDEXMVAR),ALLOCATABLE :: IVUZR(:)

  TYPE INDEXSTR
     INTEGER INDEX
     CHARACTER(13) STR
  END TYPE INDEXSTR
  TYPE(INDEXSTR), ALLOCATABLE :: unames(:), parnames(:)
  CHARACTER(13), ALLOCATABLE :: SP(:)
  CHARACTER(13) :: SIRS
  CHARACTER(256) :: EFILE, SFILE, SVFILE, DATFILE

! HomCont comstants:
  TYPE HCONST_TYPE
     INTEGER NUNSTAB,NSTAB,IEQUIB,ITWIST,ISTART
     INTEGER, POINTER :: IREV(:),IFIXED(:),IPSI(:)
  END TYPE
  TYPE(HCONST_TYPE)HCONST

  LOGICAL, SAVE :: NEWCFILE=.FALSE.
END MODULE AUTO_CONSTANTS
