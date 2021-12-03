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
%#   File: Application-menubar-css.t
%#
%# Author: $author$
%#   Date: 11/30/2021
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
%page,%(%else-then(%if-no(%is_page%,,%(%page%)%)%,%(%if-no(%is_page%,,%(page)%)%)%)%)%,%
%Page,%(%else-then(%if-no(%is_page%,,%(%Page%)%)%,%(%if-no(%is_page%,,%(%page%)%)%)%)%)%,%
%PAGE,%(%else-then(%PAGE%,%(%toupper(%Page%)%)%)%)%,%
%page,%(%else-then(%_page%,%(%tolower(%Page%)%)%)%)%,%
%is_part,%(%else-then(%is_part%,%(%is_Part%)%)%)%,%
%part,%(%else-then(%if-no(%is_part%,,%(%part%)%)%,%(%if-no(%is_part%,,%(menubar)%)%)%)%)%,%
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
%is_menubar_bg,%(%else-then(%is_menubar_bg%,%(%is_Menubar_bg%)%)%)%,%
%menubar_bg,%(%else-then(%if-no(%is_menubar_bg%,,%(%menubar_bg%)%)%,%(%if-no(%is_menubar_bg%,,%(lightgrey)%)%)%)%)%,%
%Menubar_bg,%(%else-then(%if-no(%is_menubar_bg%,,%(%Menubar_bg%)%)%,%(%if-no(%is_menubar_bg%,,%(%menubar_bg%)%)%)%)%)%,%
%MENUBAR_BG,%(%else-then(%MENUBAR_BG%,%(%toupper(%Menubar_bg%)%)%)%)%,%
%menubar_bg,%(%else-then(%_menubar_bg%,%(%tolower(%Menubar_bg%)%)%)%)%,%
%is_menubar_fg,%(%else-then(%is_menubar_fg%,%(%is_Menubar_fg%)%)%)%,%
%menubar_fg,%(%else-then(%if-no(%is_menubar_fg%,,%(%menubar_fg%)%)%,%(%if-no(%is_menubar_fg%,,%(black)%)%)%)%)%,%
%Menubar_fg,%(%else-then(%if-no(%is_menubar_fg%,,%(%Menubar_fg%)%)%,%(%if-no(%is_menubar_fg%,,%(%menubar_fg%)%)%)%)%)%,%
%MENUBAR_FG,%(%else-then(%MENUBAR_FG%,%(%toupper(%Menubar_fg%)%)%)%)%,%
%menubar_fg,%(%else-then(%_menubar_fg%,%(%tolower(%Menubar_fg%)%)%)%)%,%
%is_menubar_bd,%(%else-then(%is_menubar_bd%,%(%is_Menubar_bd%)%)%)%,%
%menubar_bd,%(%else-then(%if-no(%is_menubar_bd%,,%(%menubar_bd%)%)%,%(%if-no(%is_menubar_bd%,,%(%Menubar_fg%)%)%)%)%)%,%
%Menubar_bd,%(%else-then(%if-no(%is_menubar_bd%,,%(%Menubar_bd%)%)%,%(%if-no(%is_menubar_bd%,,%(%menubar_bd%)%)%)%)%)%,%
%MENUBAR_BD,%(%else-then(%MENUBAR_BD%,%(%toupper(%Menubar_bd%)%)%)%)%,%
%menubar_bd,%(%else-then(%_menubar_bd%,%(%tolower(%Menubar_bd%)%)%)%)%,%
%is_menubar_hv,%(%else-then(%is_menubar_hv%,%(%is_Menubar_hv%)%)%)%,%
%menubar_hv,%(%else-then(%if-no(%is_menubar_hv%,,%(%menubar_hv%)%)%,%(%if-no(%is_menubar_hv%,,%(%Menubar_fg%)%)%)%)%)%,%
%Menubar_hv,%(%else-then(%if-no(%is_menubar_hv%,,%(%Menubar_hv%)%)%,%(%if-no(%is_menubar_hv%,,%(%menubar_hv%)%)%)%)%)%,%
%MENUBAR_HV,%(%else-then(%MENUBAR_HV%,%(%toupper(%Menubar_hv%)%)%)%)%,%
%menubar_hv,%(%else-then(%_menubar_hv%,%(%tolower(%Menubar_hv%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-css.t)%%
%
/*
** menubar
** ...
*/
.menubar {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: %Menubar_bg%;
  border-style: solid;
  border-color: %Menubar_bd%;
  border-width: 1px 0px 1px 0px;
  position: relative;
  z-index: 1;
}
.menubar li {
  float: left;
}
.menubar .home {
  float: right;
}
.menubar li a {
  display: block;
  color: %Menubar_fg%;
  text-align: center;
  padding: 14px 16px;
  font-face: Arial;
  font-size: 18;  
  text-decoration: none;
}
.menubar li a:hover {
  color: %Menubar_hv%;
  font-style: none;
  text-decoration: underline;
}
/*
** ...
** menubar
*/
%
%)%)%