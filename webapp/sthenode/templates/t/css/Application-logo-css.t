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
%#   File: Application-logo-css.t
%#
%# Author: $author$
%#   Date: 11/28/2021
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
%is_base,%(%else-then(%is_base%,%(%is_Base%)%)%)%,%
%base,%(%else-then(%if-no(%is_base%,,%(%base%)%)%,%(%if-no(%is_base%,,%(%Application%-logo)%)%)%)%)%,%
%Base,%(%else-then(%if-no(%is_base%,,%(%Base%)%)%,%(%if-no(%is_base%,,%(%base%)%)%)%)%)%,%
%BASE,%(%else-then(%BASE%,%(%toupper(%Base%)%)%)%)%,%
%base,%(%else-then(%_base%,%(%tolower(%Base%)%)%)%)%,%
%is_body_fg,%(%else-then(%is_body_fg%,%(%is_Body_fg%)%)%)%,%
%body_fg,%(%else-then(%if-no(%is_body_fg%,,%(%body_fg%)%)%,%(%if-no(%is_body_fg%,,%(#555555)%)%)%)%)%,%
%Body_fg,%(%else-then(%if-no(%is_body_fg%,,%(%Body_fg%)%)%,%(%if-no(%is_body_fg%,,%(%body_fg%)%)%)%)%)%,%
%BODY_FG,%(%else-then(%BODY_FG%,%(%toupper(%Body_fg%)%)%)%)%,%
%body_fg,%(%else-then(%_body_fg%,%(%tolower(%Body_fg%)%)%)%)%,%
%is_body_bg,%(%else-then(%is_body_bg%,%(%is_Body_bg%)%)%)%,%
%body_bg,%(%else-then(%if-no(%is_body_bg%,,%(%body_bg%)%)%,%(%if-no(%is_body_bg%,,%(black)%)%)%)%)%,%
%Body_bg,%(%else-then(%if-no(%is_body_bg%,,%(%Body_bg%)%)%,%(%if-no(%is_body_bg%,,%(%body_bg%)%)%)%)%)%,%
%BODY_BG,%(%else-then(%BODY_BG%,%(%toupper(%Body_bg%)%)%)%)%,%
%body_bg,%(%else-then(%_body_bg%,%(%tolower(%Body_bg%)%)%)%)%,%
%is_body_bd,%(%else-then(%is_body_bd%,%(%is_Body_bd%)%)%)%,%
%body_bd,%(%else-then(%if-no(%is_body_bd%,,%(%body_bd%)%)%,%(%if-no(%is_body_bd%,,%(lightgrey)%)%)%)%)%,%
%Body_bd,%(%else-then(%if-no(%is_body_bd%,,%(%Body_bd%)%)%,%(%if-no(%is_body_bd%,,%(%body_bd%)%)%)%)%)%,%
%BODY_BD,%(%else-then(%BODY_BD%,%(%toupper(%Body_bd%)%)%)%)%,%
%body_bd,%(%else-then(%_body_bd%,%(%tolower(%Body_bd%)%)%)%)%,%
%is_body_hv,%(%else-then(%is_body_hv%,%(%is_Body_hv%)%)%)%,%
%body_hv,%(%else-then(%if-no(%is_body_hv%,,%(%body_hv%)%)%,%(%if-no(%is_body_hv%,,%(grey)%)%)%)%)%,%
%Body_hv,%(%else-then(%if-no(%is_body_hv%,,%(%Body_hv%)%)%,%(%if-no(%is_body_hv%,,%(%body_hv%)%)%)%)%)%,%
%BODY_HV,%(%else-then(%BODY_HV%,%(%toupper(%Body_hv%)%)%)%)%,%
%body_hv,%(%else-then(%_body_hv%,%(%tolower(%Body_hv%)%)%)%)%,%
%is_ring_bg,%(%else-then(%is_ring_bg%,%(%is_Ring_bg%)%)%)%,%
%ring_bg,%(%else-then(%if-no(%is_ring_bg%,,%(%ring_bg%)%)%,%(%if-no(%is_ring_bg%,,%(%Body_fg%)%)%)%)%)%,%
%Ring_bg,%(%else-then(%if-no(%is_ring_bg%,,%(%Ring_bg%)%)%,%(%if-no(%is_ring_bg%,,%(%ring_bg%)%)%)%)%)%,%
%RING_BG,%(%else-then(%RING_BG%,%(%toupper(%Ring_bg%)%)%)%)%,%
%ring_bg,%(%else-then(%_ring_bg%,%(%tolower(%Ring_bg%)%)%)%)%,%
%is_ring_hv,%(%else-then(%is_ring_hv%,%(%is_Ring_hv%)%)%)%,%
%ring_hv,%(%else-then(%if-no(%is_ring_hv%,,%(%ring_hv%)%)%,%(%if-no(%is_ring_hv%,,%(%Body_hv%)%)%)%)%)%,%
%Ring_hv,%(%else-then(%if-no(%is_ring_hv%,,%(%Ring_hv%)%)%,%(%if-no(%is_ring_hv%,,%(%ring_hv%)%)%)%)%)%,%
%RING_HV,%(%else-then(%RING_HV%,%(%toupper(%Ring_hv%)%)%)%)%,%
%ring_hv,%(%else-then(%_ring_hv%,%(%tolower(%Ring_hv%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-css.t)%%
%
/*
** logo
** ...
*/
.logo-body {
    width: 100%%;
    height: 100%%;
    margin: auto;
    background-color: transparent;
    padding: 0px;
    border-spacing: 0px 0px;
    position: absolute;
    z-index: 0;
}
.body-logo {
    width: 360px;
    height: 360px;
    margin: auto;
    padding: 0px;
    border-spacing: 0px 0px;
    position: relative;
}
.logo {
    width: 360px;
    height: 360px;
    position: absolute;
    margin: auto;
    top: 50%%;
    left: 50%%;
    transform: translate(-50%%, -50%%);
    padding: 0px;
    border-spacing: 0px 0px;
}
.logo-rounded-frame { 
    width: 360px;
    height: 360px;
    margin: auto;
    padding: 0px;
    border-spacing: 0px 0px;
    background-color: %Ring_bg%;
    border-radius: 80px;
    cursor: pointer;
}
.logo-rounded-frame:hover {
    background-color: %Ring_hv%;
}
.logo-rounded-square { 
    width: 330px;
    height: 330px;
    padding: 0px;
    margin: auto;
    border-spacing: 0px 0px;
    background-color: %Body_bg%;
    border-radius: 65px;
}
.logo-ring { 
    width: 360px;
    height: 360px;
    margin: auto;
    padding: 0px;
    border-spacing: 0px 0px;
    background-color: %Ring_bg%;
    border-radius: 180px;
    cursor: pointer;
}
.logo-ring:hover {
    background-color: %Ring_hv%;
}
.logo-circle { 
    width: 330px;
    height: 330px;
    padding: 0px;
    margin: auto;
    border-spacing: 0px 0px;
    background-color: %Body_bg%;
    border-radius: 165px;
}
.logo-icon {
    height: 281px;
}
.logo-icon-icon { 
    width: 281px;
    height: 281px;
    margin: auto;
    padding: 0px;
    border-spacing: 0px 0px;
    background-color: %Body_bg%;
    border-radius: 140px;
}
.logo-icon-image {
    background-image: url('../images/jpeg/%Application%.jpg');
    background-repeat: no-repeat;
    background-position: bottom;
    background-size: 234px 234px;
    border-radius: 105px;
}
.logo-icon-label {
    font-size: 24px;
    font-weight: bold;
    text-align: center;
    vertical-align: top;
    color: %Body_fg%;
    opacity: 0;
    transition: .5s ease;                
}
.logo-ring:hover .logo-icon-label {
    opacity: 1;
}
.logo-rounded-frame:hover .logo-icon-label {
    opacity: 1;
}
/*
** ...
** logo
*/
%
%)%)%