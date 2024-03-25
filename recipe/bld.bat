
@rem required as fftw3.h installed here
set PYFFTW_INCLUDE=%LIBRARY_INC%

@rem this variable tells pyfftw to search for fftw.lib rather than libfftw.lib
set PYFFTW_WIN_CONDAFORGE=1

@rem a library search location for dynamic libraries
set PYFFTW_LIB_DIR=%LIBRARY_BIN%

%PYTHON% -m pip install . --no-deps --no-build-isolation --ignore-installed -vv
if errorlevel 1 exit 1