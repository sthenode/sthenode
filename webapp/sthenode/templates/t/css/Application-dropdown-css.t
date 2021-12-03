%########################################################################
%# Copyright (c) 1988-2021 $organization$
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
%#   File: Application-dropdown-css.t
%#
%# Author: $author$
%#   Date: 11/29/2021
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_application,%(%else-then(%is_application%,%(%is_Application%)%)%)%,%
%application,%(%else-then(%if-no(%is_application%,,%(%application%)%)%,%(%if-no(%is_application%,,%(Application)%)%)%)%)%,%
%Application,%(%else-then(%if-no(%is_application%,,%(%Application%)%)%,%(%if-no(%is_application%,,%(%application%)%)%)%)%)%,%
%APPLICATION,%(%else-then(%APPLICATION%,%(%toupper(%Application%)%)%)%)%,%
%application,%(%else-then(%_application%,%(%tolower(%Application%)%)%)%)%,%
%is_page,%(%else-then(%is_page%,%(%is_Page%)%)%)%,%
%page,%(%else-then(%if-no(%is_page%,,%(%page%)%)%,%(%if-no(%is_page%,,%(Page)%)%)%)%)%,%
%Page,%(%else-then(%if-no(%is_page%,,%(%Page%)%)%,%(%if-no(%is_page%,,%(%page%)%)%)%)%)%,%
%PAGE,%(%else-then(%PAGE%,%(%toupper(%Page%)%)%)%)%,%
%page,%(%else-then(%_page%,%(%tolower(%Page%)%)%)%)%,%
%is_part,%(%else-then(%is_part%,%(%is_Part%)%)%)%,%
%part,%(%else-then(%if-no(%is_part%,,%(%part%)%)%,%(%if-no(%is_part%,,%(dropdown)%)%)%)%)%,%
%Part,%(%else-then(%if-no(%is_part%,,%(%Part%)%)%,%(%if-no(%is_part%,,%(%part%)%)%)%)%)%,%
%PART,%(%else-then(%PART%,%(%toupper(%Part%)%)%)%)%,%
%part,%(%else-then(%_part%,%(%tolower(%Part%)%)%)%)%,%
%is_applicationpart,%(%else-then(%is_applicationpart%,%(%is_ApplicationPart%)%)%)%,%
%applicationpart,%(%else-then(%if-no(%is_applicationpart%,,%(%applicationpart%)%)%,%(%if-no(%is_applicationpart%,,%(%Application%%then-if(%Part%,%(-)%)%)%)%)%)%)%,%
%ApplicationPart,%(%else-then(%if-no(%is_applicationpart%,,%(%ApplicationPart%)%)%,%(%if-no(%is_applicationpart%,,%(%applicationpart%)%)%)%)%)%,%
%APPLICATIONPART,%(%else-then(%APPLICATIONPART%,%(%toupper(%ApplicationPart%)%)%)%)%,%
%applicationpart,%(%else-then(%_applicationpart%,%(%tolower(%ApplicationPart%)%)%)%)%,%
%is_base,%(%else-then(%is_base%,%(%is_Base%)%)%)%,%
%base,%(%else-then(%if-no(%is_base%,,%(%base%)%)%,%(%if-no(%is_base%,,%(%ApplicationPart%)%)%)%)%)%,%
%Base,%(%else-then(%if-no(%is_base%,,%(%Base%)%)%,%(%if-no(%is_base%,,%(%base%)%)%)%)%)%,%
%BASE,%(%else-then(%BASE%,%(%toupper(%Base%)%)%)%)%,%
%base,%(%else-then(%_base%,%(%tolower(%Base%)%)%)%)%,%
%is_dropdown_fg,%(%else-then(%is_dropdown_fg%,%(%is_Dropdown_fg%)%)%)%,%
%dropdown_fg,%(%else-then(%if-no(%is_dropdown_fg%,,%(%dropdown_fg%)%)%,%(%if-no(%is_dropdown_fg%,,%(black)%)%)%)%)%,%
%Dropdown_fg,%(%else-then(%if-no(%is_dropdown_fg%,,%(%Dropdown_fg%)%)%,%(%if-no(%is_dropdown_fg%,,%(%dropdown_fg%)%)%)%)%)%,%
%DROPDOWN_FG,%(%else-then(%DROPDOWN_FG%,%(%toupper(%Dropdown_fg%)%)%)%)%,%
%dropdown_fg,%(%else-then(%_dropdown_fg%,%(%tolower(%Dropdown_fg%)%)%)%)%,%
%is_dropdown_bg,%(%else-then(%is_dropdown_bg%,%(%is_Dropdown_bg%)%)%)%,%
%dropdown_bg,%(%else-then(%if-no(%is_dropdown_bg%,,%(%dropdown_bg%)%)%,%(%if-no(%is_dropdown_bg%,,%(lightgrey)%)%)%)%)%,%
%Dropdown_bg,%(%else-then(%if-no(%is_dropdown_bg%,,%(%Dropdown_bg%)%)%,%(%if-no(%is_dropdown_bg%,,%(%dropdown_bg%)%)%)%)%)%,%
%DROPDOWN_BG,%(%else-then(%DROPDOWN_BG%,%(%toupper(%Dropdown_bg%)%)%)%)%,%
%dropdown_bg,%(%else-then(%_dropdown_bg%,%(%tolower(%Dropdown_bg%)%)%)%)%,%
%is_dropdown_bd,%(%else-then(%is_dropdown_bd%,%(%is_Dropdown_bd%)%)%)%,%
%dropdown_bd,%(%else-then(%if-no(%is_dropdown_bd%,,%(%dropdown_bd%)%)%,%(%if-no(%is_dropdown_bd%,,%(%Dropdown_fg%)%)%)%)%)%,%
%Dropdown_bd,%(%else-then(%if-no(%is_dropdown_bd%,,%(%Dropdown_bd%)%)%,%(%if-no(%is_dropdown_bd%,,%(%dropdown_bd%)%)%)%)%)%,%
%DROPDOWN_BD,%(%else-then(%DROPDOWN_BD%,%(%toupper(%Dropdown_bd%)%)%)%)%,%
%dropdown_bd,%(%else-then(%_dropdown_bd%,%(%tolower(%Dropdown_bd%)%)%)%)%,%
%is_dropdown_hv,%(%else-then(%is_dropdown_hv%,%(%is_Dropdown_hv%)%)%)%,%
%dropdown_hv,%(%else-then(%if-no(%is_dropdown_hv%,,%(%dropdown_hv%)%)%,%(%if-no(%is_dropdown_hv%,,%(%Dropdown_fg%)%)%)%)%)%,%
%Dropdown_hv,%(%else-then(%if-no(%is_dropdown_hv%,,%(%Dropdown_hv%)%)%,%(%if-no(%is_dropdown_hv%,,%(%dropdown_hv%)%)%)%)%)%,%
%DROPDOWN_HV,%(%else-then(%DROPDOWN_HV%,%(%toupper(%Dropdown_hv%)%)%)%)%,%
%dropdown_hv,%(%else-then(%_dropdown_hv%,%(%tolower(%Dropdown_hv%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-css.t)%%
%
/*
** dropdown
** ...
*/
.dropdown-content {
     border-style: solid;
     border-color: %Dropdown_bd%;
     border-width: 1px 3px 3px 1px;
     border-radius: 5px 5px 5px 5px;
     background-color: %Dropdown_bg%;
     position: absolute;
     min-width: 160px;
     right: 0;
     z-index:2;
     display: none;
}
.dropdown-content a {
     color: %Dropdown_fg%;
     padding: 12px 16px;
     text-decoration: none;
     font-face: Arial;
     font-size: 18;  
     display: block;
}
.dropdown-content a:hover {
     color: %Dropdown_hv%;
     font-style: none;
     text-decoration: underline;
}
/*
** ...
** dropdown
*/
%
%)%)%