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
%#   File: Application-popdown-css.t
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
%part,%(%else-then(%if-no(%is_part%,,%(%part%)%)%,%(%if-no(%is_part%,,%(popdown)%)%)%)%)%,%
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
%is_popdown_bg,%(%else-then(%is_popdown_bg%,%(%is_Popdown_bg%)%)%)%,%
%popdown_bg,%(%else-then(%if-no(%is_popdown_bg%,,%(%popdown_bg%)%)%,%(%if-no(%is_popdown_bg%,,%(lightgrey)%)%)%)%)%,%
%Popdown_bg,%(%else-then(%if-no(%is_popdown_bg%,,%(%Popdown_bg%)%)%,%(%if-no(%is_popdown_bg%,,%(%popdown_bg%)%)%)%)%)%,%
%POPDOWN_BG,%(%else-then(%POPDOWN_BG%,%(%toupper(%Popdown_bg%)%)%)%)%,%
%popdown_bg,%(%else-then(%_popdown_bg%,%(%tolower(%Popdown_bg%)%)%)%)%,%
%is_popdown_fg,%(%else-then(%is_popdown_fg%,%(%is_Popdown_fg%)%)%)%,%
%popdown_fg,%(%else-then(%if-no(%is_popdown_fg%,,%(%popdown_fg%)%)%,%(%if-no(%is_popdown_fg%,,%(black)%)%)%)%)%,%
%Popdown_fg,%(%else-then(%if-no(%is_popdown_fg%,,%(%Popdown_fg%)%)%,%(%if-no(%is_popdown_fg%,,%(%popdown_fg%)%)%)%)%)%,%
%POPDOWN_FG,%(%else-then(%POPDOWN_FG%,%(%toupper(%Popdown_fg%)%)%)%)%,%
%popdown_fg,%(%else-then(%_popdown_fg%,%(%tolower(%Popdown_fg%)%)%)%)%,%
%is_popdown_bd,%(%else-then(%is_popdown_bd%,%(%is_Popdown_bd%)%)%)%,%
%popdown_bd,%(%else-then(%if-no(%is_popdown_bd%,,%(%popdown_bd%)%)%,%(%if-no(%is_popdown_bd%,,%(%Popdown_fg%)%)%)%)%)%,%
%Popdown_bd,%(%else-then(%if-no(%is_popdown_bd%,,%(%Popdown_bd%)%)%,%(%if-no(%is_popdown_bd%,,%(%popdown_bd%)%)%)%)%)%,%
%POPDOWN_BD,%(%else-then(%POPDOWN_BD%,%(%toupper(%Popdown_bd%)%)%)%)%,%
%popdown_bd,%(%else-then(%_popdown_bd%,%(%tolower(%Popdown_bd%)%)%)%)%,%
%is_popdown_hv,%(%else-then(%is_popdown_hv%,%(%is_Popdown_hv%)%)%)%,%
%popdown_hv,%(%else-then(%if-no(%is_popdown_hv%,,%(%popdown_hv%)%)%,%(%if-no(%is_popdown_hv%,,%(%Popdown_fg%)%)%)%)%)%,%
%Popdown_hv,%(%else-then(%if-no(%is_popdown_hv%,,%(%Popdown_hv%)%)%,%(%if-no(%is_popdown_hv%,,%(%popdown_hv%)%)%)%)%)%,%
%POPDOWN_HV,%(%else-then(%POPDOWN_HV%,%(%toupper(%Popdown_hv%)%)%)%)%,%
%popdown_hv,%(%else-then(%_popdown_hv%,%(%tolower(%Popdown_hv%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-css.t)%%
%
/*
** popdown
** ...
*/

/*
** popdown-content
** ...
*/
.popdown-content {
     padding: 0px;
     border-spacing: 0px 0px;
     border-style: solid;
     border-color: %Popdown_bd%;
     border-width: 1px 3px 3px 1px;
     border-radius: 5px 5px 5px 5px;
     background-color: %Popdown_bg%;
     position: absolute;
     min-width: 160px;
     right: 0;
     z-index: 2;
     display: none;
 }
.popdown-content a {
     color: %Popdown_fg%;
     padding: 12px 16px;
     border-spacing: 0px 0px;
     text-decoration: none;
     font-size: 18;  
     display: block;
}
.popdown-content a:hover {
     color: %Popdown_hv%;
     text-decoration: underline;
}
/*
** ...
** popdown-content
*/

/*
** popdown-logo
** ...
*/
.popdown-logo {
    width: 64px;
    height: 64px;
    margin: auto;
    background-color: %Popdown_bg%;
    padding: 0px;
    border-spacing: 0px 0px;
    position: relative;
}
.popdown-logo-ring { 
    width: 64px;
    height: 64px;
    margin: auto;
    background-color: %Popdown_fg%;
    padding: 0px;
    border-spacing: 0px 0px;
    border-radius: 32px;
    cursor: pointer;
}
.popdown-logo-ring:hover {
    background-color: %Popdown_hv%;
}
.popdown-logo-circle { 
    width: 56px;
    height: 56px;
    margin: auto;
    background-color: black;
    padding: 0px;
    border-spacing: 0px 0px;
    border-radius: 28px;
}
.popdown-logo-frame { 
    width: 64px;
    height: 64px;
    margin: auto;
    background-color: %Popdown_fg%;
    padding: 0px;
    border-spacing: 0px 0px;
    border-radius: 0px;
    cursor: pointer;
}
.popdown-logo-frame:hover {
    background-color: %Popdown_hv%;
}
.popdown-logo-square { 
    width: 56px;
    height: 56px;
    margin: auto;
    background-color: black;
    padding: 0px;
    border-spacing: 0px 0px;
    border-radius: 0px;
}
.popdown-logo-background { 
    vertical-align: center;
}
.popdown-logo-background-background { 
    width: 48px;
    height: 48px;
    margin: auto;
    padding: 0px;
    border: 0px;
    border-style: solid;
    border-color: %Popdown_bd%;
    border-spacing: 0px 0px;
    border-radius: 18px;
}
.popdown-logo-icon {
    height: 40px;
    vertical-align: bottom;
}
.popdown-logo-icon-icon { 
    width: 32px;
    height: 32px;
    margin: auto;
    padding: 0px;
    border: 0px;
    border-style: solid;
    border-color: %Popdown_bd%;
    border-spacing: 0px 0px;
    border-radius: 8px;
}
.popdown-logo-icon-image {
    background-image: url('../images/jpeg/%Application%.jpg');
    background-repeat: no-repeat;
    background-position: bottom;
    background-size: 100%%;
    border: 0px;
    border-style: solid;
    border-color: %Popdown_bd%;
    border-radius: 8px 8px 8px 8px;
}
.popdown-logo-label-label { 
    width: 80%%;
    height: 80%%;
    margin: auto;
    padding: 0px;
    border-spacing: 0px 0px;
}
.popdown-logo-label-text {
    font-family: Arial;
    font-size: 6px;
    font-weight: bold;
    text-align: center;
    color: %Popdown_bg%;
    opacity: 0;
    transition: .5s ease;                
}
.popdown-logo-ring:hover .popdown-logo-label-text {
    opacity: 1;
}
.popdown-logo-frame:hover .popdown-logo-label-text {
    opacity: 1;
}
/*
** ...
** popdown-logo
*/

/*
** ...
** popdown
*/
%
%)%)%