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
%#   File: Application-header-css.t
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
%part,%(%else-then(%if-no(%is_part%,,%(%part%)%)%,%(%if-no(%is_part%,,%(header)%)%)%)%)%,%
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
%is_header_fg,%(%else-then(%is_header_fg%,%(%is_Header_fg%)%)%)%,%
%header_fg,%(%else-then(%if-no(%is_header_fg%,,%(%header_fg%)%)%,%(%if-no(%is_header_fg%,,%(grey)%)%)%)%)%,%
%Header_fg,%(%else-then(%if-no(%is_header_fg%,,%(%Header_fg%)%)%,%(%if-no(%is_header_fg%,,%(%header_fg%)%)%)%)%)%,%
%HEADER_FG,%(%else-then(%HEADER_FG%,%(%toupper(%Header_fg%)%)%)%)%,%
%header_fg,%(%else-then(%_header_fg%,%(%tolower(%Header_fg%)%)%)%)%,%
%is_header_bg,%(%else-then(%is_header_bg%,%(%is_Header_bg%)%)%)%,%
%header_bg,%(%else-then(%if-no(%is_header_bg%,,%(%header_bg%)%)%,%(%if-no(%is_header_bg%,,%(transparent)%)%)%)%)%,%
%Header_bg,%(%else-then(%if-no(%is_header_bg%,,%(%Header_bg%)%)%,%(%if-no(%is_header_bg%,,%(%header_bg%)%)%)%)%)%,%
%HEADER_BG,%(%else-then(%HEADER_BG%,%(%toupper(%Header_bg%)%)%)%)%,%
%header_bg,%(%else-then(%_header_bg%,%(%tolower(%Header_bg%)%)%)%)%,%
%is_header_bd,%(%else-then(%is_header_bd%,%(%is_Header_bd%)%)%)%,%
%header_bd,%(%else-then(%if-no(%is_header_bd%,,%(%header_bd%)%)%,%(%if-no(%is_header_bd%,,%(lightgrey)%)%)%)%)%,%
%Header_bd,%(%else-then(%if-no(%is_header_bd%,,%(%Header_bd%)%)%,%(%if-no(%is_header_bd%,,%(%header_bd%)%)%)%)%)%,%
%HEADER_BD,%(%else-then(%HEADER_BD%,%(%toupper(%Header_bd%)%)%)%)%,%
%header_bd,%(%else-then(%_header_bd%,%(%tolower(%Header_bd%)%)%)%)%,%
%is_header_hv,%(%else-then(%is_header_hv%,%(%is_Header_hv%)%)%)%,%
%header_hv,%(%else-then(%if-no(%is_header_hv%,,%(%header_hv%)%)%,%(%if-no(%is_header_hv%,,%(lightgrey)%)%)%)%)%,%
%Header_hv,%(%else-then(%if-no(%is_header_hv%,,%(%Header_hv%)%)%,%(%if-no(%is_header_hv%,,%(%header_hv%)%)%)%)%)%,%
%HEADER_HV,%(%else-then(%HEADER_HV%,%(%toupper(%Header_hv%)%)%)%)%,%
%header_hv,%(%else-then(%_header_hv%,%(%tolower(%Header_hv%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-css.t)%%
%
/*
** header
** ...
*/
.header {
    width: 100%%;
    height: 42px;
    margin: auto;
    padding: 0px;
    border: 0px;
    border-style: solid;
    border-color: %Header_bd%;
    border-spacing: 0px 0px;
    position: relative;
    float: top;
    z-index: 1;
}
.header-button {
    padding: 0px;
}

/*
** parent
** ...
*/
.parent {
     width: 64px;
     height: 100%%;
     margin: auto;
     text-align: center;
     float: left;
     border: 0px;
     border-style: solid;
     border-color: %Header_bd%;
     border-spacing: 0px 0px;
}
.parent-button {
     cursor: pointer;
     border: 0px;
     border-style: solid;
     border-color: %Header_bd%;
     border-spacing: 0px 0px;
     background-color: %Header_bg%;
}
.parent-button:hover, .parent-button:focus {
     outline: none;
}
.parent-button:hover .parent-dot, .parent-button:focus .parent-dot {
     background-color: %Header_hv%;
}
.parent-dots {
    width: 100%%;
    height: 100%%;
    margin: auto;
    border: 0px;
    border-style: solid;
    border-color: %Header_bd%;
    border-spacing: 4px 20px;
}
.parent-dot {
     width: 8px;
     height: 8px;
     padding: 0px;
     border-radius: 4px;
     background-color: %Header_fg%;
}
/*
** ...
** parent
*/

/*
** dropdown
** ...
*/
.dropdown {
     width: 64px;
     height: 100%%;
     margin: auto;
     text-align: center;
     border-style: solid;
     border-color: %Header_bd%;
     border-spacing: 0px 0px;
     float: right;
     border: 0px;
}
.dropdown-button {
     border: 0px;
     border-style: solid;
     border-color: black;
     border-spacing: 0px 0px;
     background-color: %Header_bg%;
     cursor: pointer;
}
.dropdown-button:hover, .dropdown-button:focus {
     outline: none;
}
.dropdown-button:hover .dropdown-bar, .dropdown-button:focus .dropdown-bar {
     background-color: %Header_hv%;
}
.dropdown-bars {
    width: 100%%;
    height: 100%%;
    margin: auto;
    border: 0px;
    border-style: solid;
    border-color: %Header_bd%;
    border-spacing: 4px 4px;
}
.dropdown-bar {
     width: 32px;
     height: 6px;
     padding: 0px;
     border-radius: 3px;
     background-color: %Header_fg%;
}
/*
** ...
** dropdown
*/

/*
** popdown
** ...
*/
.popdown {
     width: 64px;
     height: 100%%;
     margin: auto;
     border: 0px;
     border-style: solid;
     border-color: %Header_bd%;
     border-spacing: 0px 0px;
     text-align: center;
     float: right;
}
.popdown-button {
     margin: auto;
     border: 0px;
     border-style: solid;
     border-color: black;
     border-spacing: 0px 0px;
     background-color: %Header_bg%;
     cursor: pointer;
}
.popdown-button:hover, .popdown-button:focus {
     outline: none;
}
.popdown-button:hover .popdown-dot, .popdown-button:focus .popdown-dot {
     background-color: %Header_hv%;
}
.popdown-dots {
    width: 100%%;
    height: 100%%;
    margin: auto;
    border: 0px;
    border-style: solid;
    border-color: %Header_bd%;
    border-spacing: 4px 4px;
}
.popdown-dot {
     width: 7px;
     height: 7px;
     padding: 0px;
     border-radius: 4px;
     background-color: %Header_fg%;
}
/*
** ...
** popdown
*/

/*
** ...
** header
*/
%
%)%)%