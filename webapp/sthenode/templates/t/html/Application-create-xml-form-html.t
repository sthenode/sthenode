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
%#   File: Application-create-xml-form-html.t
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
%is_do,%(%else-then(%is_do%,%(%is_Do%)%)%)%,%
%do,%(%else-then(%if-no(%is_do%,,%(%do%)%)%,%(%if-no(%is_do%,,%(Create)%)%)%)%)%,%
%Do,%(%else-then(%if-no(%is_do%,,%(%Do%)%)%,%(%if-no(%is_do%,,%(%do%)%)%)%)%)%,%
%DO,%(%else-then(%DO%,%(%toupper(%Do%)%)%)%)%,%
%do,%(%else-then(%_do%,%(%tolower(%Do%)%)%)%)%,%
%is_what,%(%else-then(%is_what%,%(%is_What%)%)%)%,%
%what,%(%else-then(%if-no(%is_what%,,%(%what%)%)%,%(%if-no(%is_what%,,%(xml)%)%)%)%)%,%
%What,%(%else-then(%if-no(%is_what%,,%(%What%)%)%,%(%if-no(%is_what%,,%(%what%)%)%)%)%)%,%
%WHAT,%(%else-then(%WHAT%,%(%toupper(%What%)%)%)%)%,%
%what,%(%else-then(%_what%,%(%tolower(%What%)%)%)%)%,%
%is_dowhat,%(%else-then(%is_dowhat%,%(%is_DoWhat%)%)%)%,%
%dowhat,%(%else-then(%if-no(%is_dowhat%,,%(%dowhat%)%)%,%(%if-no(%is_dowhat%,,%(%do%%then-if(%what%,-)%)%)%)%)%)%,%
%DoWhat,%(%else-then(%if-no(%is_dowhat%,,%(%DoWhat%)%)%,%(%if-no(%is_dowhat%,,%(%dowhat%)%)%)%)%)%,%
%DOWHAT,%(%else-then(%DOWHAT%,%(%toupper(%DoWhat%)%)%)%)%,%
%dowhat,%(%else-then(%_dowhat%,%(%tolower(%DoWhat%)%)%)%)%,%
%is_part,%(%else-then(%is_part%,%(%is_Part%)%)%)%,%
%part,%(%else-then(%if-no(%is_part%,,%(%part%)%)%,%(%if-no(%is_part%,,%(%DoWhat%)%)%)%)%)%,%
%Part,%(%else-then(%if-no(%is_part%,,%(%Part%)%)%,%(%if-no(%is_part%,,%(%part%)%)%)%)%)%,%
%PART,%(%else-then(%PART%,%(%toupper(%Part%)%)%)%)%,%
%part,%(%else-then(%_part%,%(%tolower(%Part%)%)%)%)%,%
%is_applicationpart,%(%else-then(%is_applicationpart%,%(%is_ApplicationPart%)%)%)%,%
%applicationpart,%(%else-then(%if-no(%is_applicationpart%,,%(%applicationpart%)%)%,%(%if-no(%is_applicationpart%,,%(%Application%%then-if(%Part%,%(-)%)%)%)%)%)%)%,%
%ApplicationPart,%(%else-then(%if-no(%is_applicationpart%,,%(%ApplicationPart%)%)%,%(%if-no(%is_applicationpart%,,%(%applicationpart%)%)%)%)%)%,%
%APPLICATIONPART,%(%else-then(%APPLICATIONPART%,%(%toupper(%ApplicationPart%)%)%)%)%,%
%applicationpart,%(%else-then(%_applicationpart%,%(%tolower(%ApplicationPart%)%)%)%)%,%
%is_page,%(%else-then(%is_page%,%(%is_Page%)%)%)%,%
%page,%(%else-then(%if-no(%is_page%,,%(%page%)%)%,%(%if-no(%is_page%,,%(%Do%%then-if(%What%,%( - )%)%)%)%)%)%)%,%
%Page,%(%else-then(%if-no(%is_page%,,%(%Page%)%)%,%(%if-no(%is_page%,,%(%page%)%)%)%)%)%,%
%PAGE,%(%else-then(%PAGE%,%(%toupper(%Page%)%)%)%)%,%
%page,%(%else-then(%_page%,%(%tolower(%Page%)%)%)%)%,%
%is_applicationpage,%(%else-then(%is_applicationpage%,%(%is_ApplicationPage%)%)%)%,%
%applicationpage,%(%else-then(%if-no(%is_applicationpage%,,%(%applicationpage%)%)%,%(%if-no(%is_applicationpage%,,%(%Application%%then-if(%Page%,%( - )%)%)%)%)%)%)%,%
%ApplicationPage,%(%else-then(%if-no(%is_applicationpage%,,%(%ApplicationPage%)%)%,%(%if-no(%is_applicationpage%,,%(%applicationpage%)%)%)%)%)%,%
%APPLICATIONPAGE,%(%else-then(%APPLICATIONPAGE%,%(%toupper(%ApplicationPage%)%)%)%)%,%
%applicationpage,%(%else-then(%_applicationpage%,%(%tolower(%ApplicationPage%)%)%)%)%,%
%is_path,%(%else-then(%is_path%,%(%is_Path%)%)%)%,%
%path,%(%else-then(%if-no(%is_path%,,%(%path%)%)%,%(%if-no(%is_path%,,%(%else-then(%then-if(%application%,/)%,..)%)%)%)%)%)%,%
%Path,%(%else-then(%if-no(%is_path%,,%(%Path%)%)%,%(%if-no(%is_path%,,%(%path%)%)%)%)%)%,%
%PATH,%(%else-then(%PATH%,%(%toupper(%Path%)%)%)%)%,%
%path,%(%else-then(%_path%,%(%tolower(%Path%)%)%)%)%,%
%is_cgipath,%(%else-then(%is_cgipath%,%(%is_CGIPath%)%)%)%,%
%cgipath,%(%else-then(%if-no(%is_cgipath%,,%(%cgipath%)%)%,%(%if-no(%is_cgipath%,,%(%else-then(%if-then(%then-if(%application%,/)%,-cgi)%,/cgi)%)%)%)%)%)%,%
%CGIPath,%(%else-then(%if-no(%is_cgipath%,,%(%CGIPath%)%)%,%(%if-no(%is_cgipath%,,%(%cgipath%)%)%)%)%)%,%
%CGIPATH,%(%else-then(%CGIPATH%,%(%toupper(%CGIPath%)%)%)%)%,%
%cgipath,%(%else-then(%_cgipath%,%(%tolower(%CGIPath%)%)%)%)%,%
%is_base,%(%else-then(%is_base%,%(%is_Base%)%)%)%,%
%base,%(%else-then(%if-no(%is_base%,,%(%base%)%)%,%(%if-no(%is_base%,,%(%ApplicationPart%-form)%)%)%)%)%,%
%Base,%(%else-then(%if-no(%is_base%,,%(%Base%)%)%,%(%if-no(%is_base%,,%(%base%)%)%)%)%)%,%
%BASE,%(%else-then(%BASE%,%(%toupper(%Base%)%)%)%)%,%
%base,%(%else-then(%_base%,%(%tolower(%Base%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-html.t)%%
%
<!--
=====================================================================
=== form
=====================================================================
-->
<form name="Form" method="POST" action="%path%/templates/t/xml/xml.t"
 onSubmit="return setFormSubmit(getFormValue2('FormTemplate','FormAction','Form'),getFormValue('FormMethod','Form'),'Form')">
    <div class="form">

    File: <input name="File" value=""></input>[xml][.xml]
    <input type="radio" name="Extension" value="xml" checked="checked">.xml</input>
    <input type="checkbox" name="is_Extension" value="no" unchecked="">no</input>
    <input type="checkbox" name="is_File" value="no" unchecked="checked">no</input>
    <br/>

    Template: <select name="FormTemplate">
    <option value="%path%/templates/t/xml/xml.t">.xml file (%path%/templates/t/xml/xml.t)</option>
    <option value=""></option>
    <option value="%path%/templates/t/t/parameters.t">t parameters &nbsp;&nbsp; (%path%/templates/t/t/parameters.t)</option>
    <option value="%path%/templates/t/t/functions.t">t functions &nbsp;&nbsp; (%path%/templates/t/t/functions.t)</option>
    <option value=""></option>
    <option value="%CGIPath%/cgi">cgi parameters &nbsp;&nbsp; (%CGIPath%/cgi)</option>
    <option value="%CGIPath%/cgicatch">catch cgi parameters &nbsp;&nbsp; (%CGIPath%/cgicatch)</option>
    <option value=""/>
    </select>
    <br/>

    <br/>
    Organization: <input name="Organization" value=""></input>[$organization$]
          <input type="checkbox" name="is_Organization" value="no" unchecked="checked">no</input>
    <br/>
    Author: <input name="Author" value=""></input>[$author$]
          <input type="checkbox" name="is_Author" value="no" unchecked="checked">no</input>
    <br/>
    Date:<input name="Date" value=""/>[%%date%(()%%())%%%]<b></b>
          <input type="checkbox" name="is_Date" value="no" unchecked="checked">no</input>
    <br/>
    Year:<input name="Year" value=""/>[%%year%(()%%())%%%]<b></b>
          <input type="checkbox" name="is_Year" value="no" unchecked="checked">no</input>
    <br/>

    <br/>
    Content-Type: <select name="content_type">
    <option value="text/plain">text</option>
    <option value="text/html">html</option>
    <option value="text/xml">xml</option>
    <option value="application/json">json</option>
    <option value="application/javascript">javascript</option>
    <option value=""></option>
    </select><br/>
    Action: <select name="FormAction">
    <option value="%path%/templates/t/xml/xml.t">Create .xml file (%path%/templates/t/xml/xml.t)</option>
    <option value=""></option>
    <option value="%path%/templates/t/t/parameters.t">t parameters &nbsp;&nbsp; (%path%/templates/t/t/parameters.t)</option>
    <option value="%path%/templates/t/t/functions.t">t functions &nbsp;&nbsp; (%path%/templates/t/t/functions.t)</option>
    <option value=""></option>
    <option value="%CGIPath%/cgi">cgi parameters &nbsp;&nbsp; (%CGIPath%/cgi)</option>
    <option value="%CGIPath%/cgicatch">catch cgi parameters &nbsp;&nbsp; (%CGIPath%/cgicatch)</option>
    <option value=""/>
    </select><br/>
    Method: <select name="FormMethod">
    <option value="POST">POST</option>
    <option value="GET">GET</option>
    <option value=""></option>
    </select><br/>
    <br/>
    <input type="submit" name="submit" value="submit"/><br/>
    </div>
</form>
%
%)%)%