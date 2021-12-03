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
%#   File: Application-html.t
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
%base,%(%else-then(%if-no(%is_base%,,%(%base%)%)%,%(%if-no(%is_base%,,%(%Application%)%)%)%)%)%,%
%Base,%(%else-then(%if-no(%is_base%,,%(%Base%)%)%,%(%if-no(%is_base%,,%(%base%)%)%)%)%)%,%
%BASE,%(%else-then(%BASE%,%(%toupper(%Base%)%)%)%)%,%
%base,%(%else-then(%_base%,%(%tolower(%Base%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-html.t)%%
%<html>
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
        <title>%Application% - Home</title>

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
         <div id="includeLogo" include="%Application%-home-logo.html">
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
         === footer
         =====================================================================
         --
         <div id="includeFooter" include="%Application%-footer.html">
         <script>includeHTML('includeFooter');</script>
         </div-->

    </body>
</html>
%
%)%)%