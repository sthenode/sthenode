%########################################################################
%# Copyright (c) 1988-2017 $organization$
%#
%# This software is provided by the author and contributors ``as is'' 
%# and any express or implied warranties, including, but not limited to, 
%# the implied warranties of merchantability and fitness for a particular 
%# purpose are disclaimed. In no event shall the author or contributors 
%# be liable for any direct, indirect, incidental, special, exemplary, 
%# or consequential damages (including, but not limited to, procurement 
%# of substitute goods or services; loss of use, data, or profits; or 
%# business interruption) however caused and on any theory of liability, 
%# whether in contract, strict liability, or tort (including negligence 
%# or otherwise) arising in any way out of the use of this software, 
%# even if advised of the possibility of such damage.
%#
%#   File: framework-target-Gcc-Makefile.t
%#
%# Author: $author$
%#   Date: 8/30/2017
%########################################################################
%with(%
%filepath,%(%else-then(%filepath%,%(%filepath(%input%)%)%)%)%,%
%Filepath,%(%else-then(%Filepath%,%(%filepath%)%)%)%,%
%FILEPATH,%(%else-then(%FILEPATH%,%(%toupper(%Filepath%)%)%)%)%,%
%filepath,%(%else-then(%_Filepath%,%(%tolower(%Filepath%)%)%)%)%,%
%organization,%(%else-then(%organization%,%($organization$)%)%)%,%
%Organization,%(%else-then(%Organization%,%(%organization%)%)%)%,%
%ORGANIZATION,%(%else-then(%ORGANIZATION%,%(%toupper(%Organization%)%)%)%)%,%
%organization,%(%else-then(%_Organization%,%(%tolower(%Organization%)%)%)%)%,%
%author,%(%else-then(%author%,%($author$)%)%)%,%
%Author,%(%else-then(%Author%,%(%author%)%)%)%,%
%AUTHOR,%(%else-then(%AUTHOR%,%(%toupper(%Author%)%)%)%)%,%
%author,%(%else-then(%_Author%,%(%tolower(%Author%)%)%)%)%,%
%date,%(%else-then(%date%,%(%date()%)%)%)%,%
%Date,%(%else-then(%Date%,%(%date%)%)%)%,%
%DATE,%(%else-then(%DATE%,%(%toupper(%Date%)%)%)%)%,%
%date,%(%else-then(%_Date%,%(%tolower(%Date%)%)%)%)%,%
%year,%(%else-then(%year%,%(%year()%)%)%)%,%
%Year,%(%else-then(%Year%,%(%year%)%)%)%,%
%YEAR,%(%else-then(%YEAR%,%(%toupper(%Year%)%)%)%)%,%
%year,%(%else-then(%_Year%,%(%tolower(%Year%)%)%)%)%,%
%month,%(%else-then(%month%,%(%month()%)%)%)%,%
%Month,%(%else-then(%Month%,%(%month%)%)%)%,%
%MONTH,%(%else-then(%MONTH%,%(%toupper(%Month%)%)%)%)%,%
%month,%(%else-then(%_Month%,%(%tolower(%Month%)%)%)%)%,%
%day,%(%else-then(%day%,%(%day()%)%)%)%,%
%Day,%(%else-then(%Day%,%(%day%)%)%)%,%
%DAY,%(%else-then(%DAY%,%(%toupper(%Day%)%)%)%)%,%
%day,%(%else-then(%_Day%,%(%tolower(%Day%)%)%)%)%,%
%depends,%(%else-then(%depends%,%(depends)%)%)%,%
%Depends,%(%else-then(%Depends%,%(%depends%)%)%)%,%
%DEPENDS,%(%else-then(%DEPENDS%,%(%toupper(%Depends%)%)%)%)%,%
%depends,%(%else-then(%_Depends%,%(%tolower(%Depends%)%)%)%)%,%
%framework,%(%else-then(%framework%,%(framework)%)%)%,%
%Framework,%(%else-then(%Framework%,%(%framework%)%)%)%,%
%FRAMEWORK,%(%else-then(%FRAMEWORK%,%(%toupper(%Framework%)%)%)%)%,%
%framework,%(%else-then(%_Framework%,%(%tolower(%Framework%)%)%)%)%,%
%out,%(%else-then(%out%,%(Lib)%)%)%,%
%Out,%(%else-then(%Out%,%(%out%)%)%)%,%
%OUT,%(%else-then(%OUT%,%(%toupper(%Out%)%)%)%)%,%
%out,%(%else-then(%_Out%,%(%tolower(%Out%)%)%)%)%,%
%slib,%(%else-then(%slib%,%(%else(%equal(EXE,%OUT%)%%equal(LIB,%OUT%)%,Lib)%)%)%)%,%
%SLib,%(%else-then(%SLib%,%(%slib%)%)%)%,%
%SLIB,%(%else-then(%SLIB%,%(%toupper(%SLib%)%)%)%)%,%
%slib,%(%else-then(%_SLib%,%(%tolower(%SLib%)%)%)%)%,%
%lib,%(%else-then(%lib%,%(%else(%equal(EXE,%OUT%)%%equal(SLIB,%OUT%)%,Lib)%)%)%)%,%
%Lib,%(%else-then(%Lib%,%(%lib%)%)%)%,%
%LIB,%(%else-then(%LIB%,%(%toupper(%Lib%)%)%)%)%,%
%lib,%(%else-then(%_Lib%,%(%tolower(%Lib%)%)%)%)%,%
%output,%(%else-then(%output%,%(%else(%Lib%%SLib%,Executable,%if(%SLib%,Shared )%Library)%)%)%)%,%
%Output,%(%else-then(%Output%,%(%output%)%)%)%,%
%OUTPUT,%(%else-then(%OUTPUT%,%(%toupper(%Output%)%)%)%)%,%
%output,%(%else-then(%_Output%,%(%tolower(%Output%)%)%)%)%,%
%target,%(%else-then(%target%,%(%slib%%lib%%Framework%)%)%)%,%
%Target,%(%else-then(%Target%,%(%target%)%)%)%,%
%TARGET,%(%else-then(%TARGET%,%(%toupper(%Target%)%)%)%)%,%
%target,%(%else-then(%_Target%,%(%tolower(%Target%)%)%)%)%,%
%exe,%(%else-then(%exe%,%(%else(%Lib%%SLib%,%(%if(%equal(%Target%,%Framework%)%,%(_exe)%)%)%)%)%)%)%,%
%Exe,%(%else-then(%Exe%,%(%exe%)%)%)%,%
%EXE,%(%else-then(%EXE%,%(%toupper(%Exe%)%)%)%)%,%
%exe,%(%else-then(%_Exe%,%(%tolower(%Exe%)%)%)%)%,%
%os,%(%else-then(%os%,%()%)%)%,%
%Os,%(%else-then(%Os%,%(%os%)%)%)%,%
%OS,%(%else-then(%OS%,%(%toupper(%Os%)%)%)%)%,%
%os,%(%else-then(%_Os%,%(%tolower(%Os%)%)%)%)%,%
%makefile,%(%else-then(%makefile%,%(Makefile)%)%)%,%
%Makefile,%(%else-then(%Makefile%,%(%makefile%)%)%)%,%
%MAKEFILE,%(%else-then(%MAKEFILE%,%(%toupper(%Makefile%)%)%)%)%,%
%makefile,%(%else-then(%_Makefile%,%(%tolower(%Makefile%)%)%)%)%,%
%extension,%(%else-then(%extension%,%(%fileextension(%file%)%)%)%)%,%
%Extension,%(%else-then(%Extension%,%(%extension%)%)%)%,%
%EXTENSION,%(%else-then(%EXTENSION%,%(%toupper(%Extension%)%)%)%)%,%
%extension,%(%else-then(%_Extension%,%(%tolower(%Extension%)%)%)%)%,%
%file,%(%else-then(%file%,%(%Makefile%)%)%)%,%
%File,%(%else-then(%File%,%(%file%)%)%)%,%
%FILE,%(%else-then(%FILE%,%(%toupper(%File%)%)%)%)%,%
%file,%(%else-then(%_File%,%(%tolower(%File%)%)%)%)%,%
%title,%(%else-then(%title%,%(generic Gcc %Makefile%%then-if(%Framework%%then-if(%Output%, )%%then-if(%Target%, )%, for )%)%)%)%,%
%Title,%(%else-then(%Title%,%(%title%)%)%)%,%
%TITLE,%(%else-then(%TITLE%,%(%toupper(%Title%)%)%)%)%,%
%title,%(%else-then(%_Title%,%(%tolower(%Title%)%)%)%)%,%
%%(%
%%include(%Filepath%/Makefile-file.t)%%
%
#
# target
#
%Target%%Exe%_%OUT%TARGET = %Target%%then-if(%if(%LIB%,%(${LIBEXT})%)%%if(%SLIB%,%(${SLIBEXT})%)%,.)%

########################################################################

#
# user c++ flags
#
%Target%%Exe%_USRCXXFLAGS += \
${%Framework%_USRCXXFLAGS} \

#
# user defines
#
%Target%%Exe%_USRDEFINES += \
${%Framework%_USRDEFINES} \

#
# user includes
#
%Target%%Exe%_USRINCLUDES += \
${%Framework%_USRINCLUDES} \

#
# user libdirs
#
%Target%%Exe%_USRLIBDIRS += \
${%Framework%_USRLIBDIRS} \

########################################################################

%parse(h;hh;hxx;hpp,;,,,,%(#
# %Output% .%cpp% headers
#
#%Target%%Exe%_%OUT%_%toupper(%cpp%)%_HEADERS += \
#${%FRAMEWORK%_SRC}/%Framework%/base/Base.%cpp% \

)%,cpp)%
#
# %Output% headers
#
%Target%%Exe%_%OUT%HEADERS += \
%parse(h;hh;hxx;hpp,;,,,,%(${%Target%%Exe%_%OUT%_%toupper(%cpp%)%_HEADERS} \
)%,cpp)%
########################################################################

%parse(c;cc;cxx;cpp;m;mm,;,,,,%(#
# %Output% .%cpp% sources
#
#%Target%%Exe%_%OUT%_%toupper(%cpp%)%_SOURCES += \
#${%FRAMEWORK%_SRC}/%Framework%/base/Base.%cpp% \

)%,cpp)%
########################################################################

%else(%Lib%,%(#
# %Output% libraries
#
%Target%%Exe%_LIBS += \
${%Framework%_LIBS}
)%)%
%
%)%)%
