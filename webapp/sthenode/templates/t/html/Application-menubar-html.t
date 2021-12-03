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
%#   File: Application-menubar-html.t
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
%is_do,%(%else-then(%is_do%,%(%is_Do%)%)%)%,%
%do,%(%else-then(%if-no(%is_do%,,%(%do%)%)%,%(%if-no(%is_do%,,%()%)%)%)%)%,%
%Do,%(%else-then(%if-no(%is_do%,,%(%Do%)%)%,%(%if-no(%is_do%,,%(%do%)%)%)%)%)%,%
%DO,%(%else-then(%DO%,%(%toupper(%Do%)%)%)%)%,%
%do,%(%else-then(%_do%,%(%tolower(%Do%)%)%)%)%,%
%is_what,%(%else-then(%is_what%,%(%is_What%)%)%)%,%
%what,%(%else-then(%if-no(%is_what%,,%(%what%)%)%,%(%if-no(%is_what%,,%()%)%)%)%)%,%
%What,%(%else-then(%if-no(%is_what%,,%(%What%)%)%,%(%if-no(%is_what%,,%(%what%)%)%)%)%)%,%
%WHAT,%(%else-then(%WHAT%,%(%toupper(%What%)%)%)%)%,%
%what,%(%else-then(%_what%,%(%tolower(%What%)%)%)%)%,%
%is_applicationdowhat,%(%else-then(%is_applicationdowhat%,%(%is_ApplicationDoWhat%)%)%)%,%
%applicationdowhat,%(%else-then(%if-no(%is_applicationdowhat%,,%(%applicationdowhat%)%)%,%(%if-no(%is_applicationdowhat%,,%(%Application%%then-if(%do%,-)%%then-if(%what%,-)%)%)%)%)%)%,%
%ApplicationDoWhat,%(%else-then(%if-no(%is_applicationdowhat%,,%(%ApplicationDoWhat%)%)%,%(%if-no(%is_applicationdowhat%,,%(%applicationdowhat%)%)%)%)%)%,%
%APPLICATIONDOWHAT,%(%else-then(%APPLICATIONDOWHAT%,%(%toupper(%ApplicationDoWhat%)%)%)%)%,%
%applicationdowhat,%(%else-then(%_applicationdowhat%,%(%tolower(%ApplicationDoWhat%)%)%)%)%,%
%is_base,%(%else-then(%is_base%,%(%is_Base%)%)%)%,%
%base,%(%else-then(%if-no(%is_base%,,%(%base%)%)%,%(%if-no(%is_base%,,%(%ApplicationDoWhat%-menubar)%)%)%)%)%,%
%Base,%(%else-then(%if-no(%is_base%,,%(%Base%)%)%,%(%if-no(%is_base%,,%(%base%)%)%)%)%)%,%
%BASE,%(%else-then(%BASE%,%(%toupper(%Base%)%)%)%)%,%
%base,%(%else-then(%_base%,%(%tolower(%Base%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-html.t)%%
%
<!--
=====================================================================
=== menubar
=====================================================================
-->
<ul class="menubar">%
%%parse(%include(%Include_path%/%ApplicationDoWhat%-menubar-items.t)%,%(
)%,,,,%(%
%%with(%
%is_location,%(%else-then(%is_location%,%(%is_Location%)%)%)%,%
%location,%(%else-then(%if-no(%is_location%,,%(%location%)%)%,%(%if-no(%is_location%,,%(%left(%Item%,=)%)%)%)%)%)%,%
%Location,%(%else-then(%if-no(%is_location%,,%(%Location%)%)%,%(%if-no(%is_location%,,%(%location%)%)%)%)%)%,%
%LOCATION,%(%else-then(%LOCATION%,%(%toupper(%Location%)%)%)%)%,%
%location,%(%else-then(%_location%,%(%tolower(%Location%)%)%)%)%,%
%is_label,%(%else-then(%is_label%,%(%is_Label%)%)%)%,%
%label,%(%else-then(%if-no(%is_label%,,%(%label%)%)%,%(%if-no(%is_label%,,%(%right-of-left(%Item%,=)%)%)%)%)%)%,%
%Label,%(%else-then(%if-no(%is_label%,,%(%Label%)%)%,%(%if-no(%is_label%,,%(%label%)%)%)%)%)%,%
%LABEL,%(%else-then(%LABEL%,%(%toupper(%Label%)%)%)%)%,%
%label,%(%else-then(%_label%,%(%tolower(%Label%)%)%)%)%,%
%%(
    <li><a href="%Location%">%Label%</a></li>)%)%%
%)%,Item)%
    <li class="home"><div><a href="%Application%-home.html">Home</a></div></li>
    <li class="home"><div><a href="%Application%-tools.html">Tools</a></div></li>
</ul>
%
%)%)%