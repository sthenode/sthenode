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
%#   File: Application-page-html.t
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
%is_dowhat,%(%else-then(%is_dowhat%,%(%is_DoWhat%)%)%)%,%
%dowhat,%(%else-then(%if-no(%is_dowhat%,,%(%dowhat%)%)%,%(%if-no(%is_dowhat%,,%(%Do%%then-if(%What%,-)%)%)%)%)%)%,%
%DoWhat,%(%else-then(%if-no(%is_dowhat%,,%(%DoWhat%)%)%,%(%if-no(%is_dowhat%,,%(%dowhat%)%)%)%)%)%,%
%DOWHAT,%(%else-then(%DOWHAT%,%(%toupper(%DoWhat%)%)%)%)%,%
%dowhat,%(%else-then(%_dowhat%,%(%tolower(%DoWhat%)%)%)%)%,%
%is_applicationdowhat,%(%else-then(%is_applicationdowhat%,%(%is_ApplicationDoWhat%)%)%)%,%
%applicationdowhat,%(%else-then(%if-no(%is_applicationdowhat%,,%(%applicationdowhat%)%)%,%(%if-no(%is_applicationdowhat%,,%(%Application%%then-if(%DoWhat%,-)%)%)%)%)%)%,%
%ApplicationDoWhat,%(%else-then(%if-no(%is_applicationdowhat%,,%(%ApplicationDoWhat%)%)%,%(%if-no(%is_applicationdowhat%,,%(%applicationdowhat%)%)%)%)%)%,%
%APPLICATIONDOWHAT,%(%else-then(%APPLICATIONDOWHAT%,%(%toupper(%ApplicationDoWhat%)%)%)%)%,%
%applicationdowhat,%(%else-then(%_applicationdowhat%,%(%tolower(%ApplicationDoWhat%)%)%)%)%,%
%is_page,%(%else-then(%is_page%,%(%is_Page%)%)%)%,%
%page,%(%else-then(%if-no(%is_page%,,%(%page%)%)%,%(%if-no(%is_page%,,%(%else-then(%DoWhat%,%(Page)%)%)%)%)%)%)%,%
%Page,%(%else-then(%if-no(%is_page%,,%(%Page%)%)%,%(%if-no(%is_page%,,%(%page%)%)%)%)%)%,%
%PAGE,%(%else-then(%PAGE%,%(%toupper(%Page%)%)%)%)%,%
%page,%(%else-then(%_page%,%(%tolower(%Page%)%)%)%)%,%
%is_applicationpage,%(%else-then(%is_applicationpage%,%(%is_ApplicationPage%)%)%)%,%
%applicationpage,%(%else-then(%if-no(%is_applicationpage%,,%(%applicationpage%)%)%,%(%if-no(%is_applicationpage%,,%(%Application%%then-if(%Page%,%( - )%)%)%)%)%)%)%,%
%ApplicationPage,%(%else-then(%if-no(%is_applicationpage%,,%(%ApplicationPage%)%)%,%(%if-no(%is_applicationpage%,,%(%applicationpage%)%)%)%)%)%,%
%APPLICATIONPAGE,%(%else-then(%APPLICATIONPAGE%,%(%toupper(%ApplicationPage%)%)%)%)%,%
%applicationpage,%(%else-then(%_applicationpage%,%(%tolower(%ApplicationPage%)%)%)%)%,%
%is_part,%(%else-then(%is_part%,%(%is_Part%)%)%)%,%
%part,%(%else-then(%if-no(%is_part%,,%(%part%)%)%,%(%if-no(%is_part%,,%(%page%)%)%)%)%)%,%
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
%%(%
%%include(%Include_path%/file-html.t)%%
%
<!--
=====================================================================
=== html
=====================================================================
-->
<html>
    <!--
    =====================================================================
    === head
    =====================================================================
    -->
    <head>
        <!--
        =====================================================================
        === title
        =====================================================================
        -->
        <title>%ApplicationPage%</title>

        <!--
        =====================================================================
        === style
        =====================================================================
        -->
        <link rel="stylesheet" type="text/css" href="../css/%Application%.css"></link>
        <link rel="stylesheet" type="text/css" href="../css/%Application%-logo.css"></link>
        <link rel="stylesheet" type="text/css" href="../css/%Application%-header.css"></link>
        <link rel="stylesheet" type="text/css" href="../css/%Application%-footer.css"></link>
        <link rel="stylesheet" type="text/css" href="../css/%Application%-dropdown.css"></link>
        <link rel="stylesheet" type="text/css" href="../css/%Application%-popdown.css"></link>
        <link rel="stylesheet" type="text/css" href="../css/%Application%-menubar.css"></link>
        <link rel="stylesheet" type="text/css" href="../css/%Application%-sidebar.css"></link>
        <style type="text/css">
        </style>
    
        <!--
        =====================================================================
        === script
        =====================================================================
        -->
        <script type="text/javascript" src="../js/%Application%.js"></script>
        <script type="text/javascript">
        </script>
    </head>

    <!--
    =====================================================================
    === body
    =====================================================================
    -->
    <body class="body">

         <!--
         =====================================================================
         === logo
         =====================================================================
         -->
         <div id="includeLogo" include="%Application%-logo.html">
         <script>includeHTML('includeLogo');</script>
         </div>

         <!--
         =====================================================================
         === header
         =====================================================================
         -->
         <div id="includeHeader" include="%Application%-header.html">
         <script>includeHTML('includeHeader');</script>
         </div>

         <!--
         =====================================================================
         === popdown
         =====================================================================
         -->
         <div id="includePopdown" include="%Application%-popdown.html">
         <script>includeHTML('includePopdown');</script>
         </div>

         <!--
         =====================================================================
         === dropdown
         =====================================================================
         -->
         <div id="includeDropdown" include="%Application%-dropdown.html">
         <script>includeHTML('includeDropdown');</script>
         </div>

         <!--
         =====================================================================
         === menubar
         =====================================================================
         -->
         <div id="includeMenubar" include="%ApplicationPart%-menubar.html">
         <script>includeHTML('includeMenubar');</script>
         </div>

         <!--
         =====================================================================
         === form
         =====================================================================
         -->
         <div id="includeForm" include="%ApplicationPart%-form.html">
         <script>includeHTML('includeForm');</script>
         </div>
    </body>
</html>
%
%)%)%