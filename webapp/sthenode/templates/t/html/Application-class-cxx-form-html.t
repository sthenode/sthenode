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
%#   File: Application-class-cxx-form-html.t
%#
%# Author: $author$
%#   Date: 11/27/2021
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
%do,%(%else-then(%if-no(%is_do%,,%(%do%)%)%,%(%if-no(%is_do%,,%(create)%)%)%)%)%,%
%Do,%(%else-then(%if-no(%is_do%,,%(%Do%)%)%,%(%if-no(%is_do%,,%(%do%)%)%)%)%)%,%
%DO,%(%else-then(%DO%,%(%toupper(%Do%)%)%)%)%,%
%do,%(%else-then(%_do%,%(%tolower(%Do%)%)%)%)%,%
%is_what,%(%else-then(%is_what%,%(%is_What%)%)%)%,%
%what,%(%else-then(%if-no(%is_what%,,%(%what%)%)%,%(%if-no(%is_what%,,%(cxx-class)%)%)%)%)%,%
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
%base,%(%else-then(%if-no(%is_base%,,%(%base%)%)%,%(%if-no(%is_base%,,%(%ApplicationDoWhat%-form)%)%)%)%)%,%
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
<form name="Form" method="POST" action="%Path%/templates/t/cxx/class-hxx-cxx.t"
 onSubmit="return setFormSubmit(getFormValue2('FormTemplate','FormAction','Form'),getFormValue('FormMethod','Form'),'Form')">
    <div class="form">

    File: <input name="File" value=""></input>[hpp][.hpp]
    <input type="radio" name="Extension" value="hpp" checked="checked">.hpp</input>
    <input type="radio" name="Extension" value="cpp">.cpp</input>
    <input type="radio" name="Extension" value="hxx">.hxx</input>
    <input type="radio" name="Extension" value="cxx">.cxx</input>
    <input type="radio" name="Extension" value="hh">.hh</input>
    <input type="radio" name="Extension" value="mm">.mm</input>
    <input type="radio" name="Extension" value="h">.h</input>
    <input type="radio" name="Extension" value="c">.c</input>
    <input type="checkbox" name="is_Extension" value="no" unchecked="">no</input>
    <input type="checkbox" name="is_File" value="no" unchecked="checked">no</input>
    <br/>

    Template: <select name="FormTemplate">
    <option value="%Path%/templates/t/cxx/class-hxx-cxx.t">Create c++ class (%Path%/templates/t/cxx/class-hxx-cxx.t)</option>
    <option value="%Path%/templates/t/cxx/hxx-cxx.t">Create c/c++ file (%Path%/templates/t/cxx/hxx-cxx.t)</option>
    <option value=""></option>
    <option value="%Path%/templates/t/t/parameters.t">t parameters &nbsp;&nbsp; (%Path%/templates/t/t/parameters.t)</option>
    <option value="%Path%/templates/t/t/functions.t">t functions &nbsp;&nbsp; (%Path%/templates/t/t/functions.t)</option>
    <option value=""></option>
    <option value="%CGIPath%/cgi">cgi parameters &nbsp;&nbsp; (%CGIPath%/cgi)</option>
    <option value="%CGIPath%/cgicatch">catch cgi parameters &nbsp;&nbsp; (%CGIPath%/cgicatch)</option>
    <option value=""/>
    </select><br/>

    <br/>
    <b>#ifndef </b>
    <input type="checkbox" name="File_ifndef_define_prefix" value="_" unchecked=""/>
    <b>_</b><input name="File_ifndef" value=""/><b>_</b>
    <input type="checkbox" name="File_ifndef_define_suffix" value="_" unchecked=""/>[%%Namespace%%]
    <input type="checkbox" name="is_File_ifndef" value="no" unchecked=""/>no
    <br/>

    <b>#include "</b><input name="Include" value=""/><b>"</b>[xos/base/base][.%%Extension%%]
    <input type="checkbox" name="is_Include" value="no" unchecked=""/>no<br/>
    <b>#include &lt;</b><input name="Sys_include" value=""/><b>&gt;</b>[string]
    <input type="checkbox" name="is_Sys_include" value="no" checked="checked"/>no<br/>
    <br/>

    <b>namespace</b> <input name="Namespace" value=""/>[xos] <b>{</b>
    <input type="checkbox" name="is_Namespace" value="no" unchecked=""/>no
    <br/>

    <b>template &lt;</b> <input name="Template" value=""/><b>&gt;</b>
    <input type="checkbox" name="is_Template" value="no" unchecked=""/>no
    &nbsp;&nbsp;&nbsp;&nbsp;%%Class%%<select name="TemplateT">
    <option value="T">T</option>
    <option value="t" selected="selected">t</option>
    <option value=""></option>
    </select>
    <input type="checkbox" name="is_TemplateT" value="no" unchecked=""/>no
    <br/>

    <b>class</b> <input name="Class" value=""/>[derived]
    <input type="checkbox" name="is_Class" value="no" unchecked=""/>no
    &nbsp;&nbsp;&nbsp;&nbsp;<b>typedef </b><select name="Typedef_derives">
    <option value="Derives">Derives</option>
    <option value="derives" selected="selected">derives</option>
    <option value=""></option>
    </select><b></b>
    <input type="checkbox" name="is_Typedef_derives" value="no" unchecked="checked">no</input>
    <br/>

    <b>: virtual </b><select name="Implements_access">
    <option value="public">public</option>
    <option value="protected">protected</option>
    <option value="private">private</option>
    </select><input name="Implements" value=""/>[implement]
    <input type="checkbox" name="is_Implements" value="no" unchecked=""/>no
    <b></b>&nbsp;&nbsp;&nbsp;&nbsp;<b>typedef </b><select name="Typedef_implements">
    <option value="Implements">Implements</option>
    <option value="implements" selected="selected">implements</option>
    <option value=""></option>
    </select><b></b>
    <input type="checkbox" name="is_Typedef_implements" value="no" unchecked="checked">no</input>
    <br/>

    <b>, </b><select name="Extends_access">
    <option value="public">public</option>
    <option value="protected">protected</option>
    <option value="private">private</option>
    </select><input name="Extends" value=""/>[extend]
    <input type="checkbox" name="is_Extends" value="no" unchecked=""/>no
    <b></b>&nbsp;&nbsp;&nbsp;&nbsp;<b>typedef </b><select name="Typedef_extends">
    <option value="Extends">Extends</option>
    <option value="extends" selected="selected">extends</option>
    <option value=""></option>
    </select><b></b>
    <input type="checkbox" name="is_Typedef_extends" value="no" unchecked="checked">no</input><b> {</b>
    <br/>

    <b></b><select name="Copy_constructor_access">
    <option value="public">public</option>
    <option value="protected">protected</option>
    <option value="private">private</option>
    </select><b>:</b>
    <input type="checkbox" name="Copy_constructor" value="explicit" unchecked="checked"><b>explicit</b></input>
    <b>&nbsp;&nbsp;(const &amp; </b>copy<b>):</b>
    <input name="Copy_construct" value=""></input><b></b>
    <input type="checkbox" name="is_Copy_construct" value="no" unchecked="checked">no</input>
    <b>{</b>
    <input name="Copy_constructor_body" value=""></input><b></b>
    <input type="checkbox" name="is_Copy_constructor_body" value="no" unchecked="checked">no</input>
    <b>}</b>
    <input type="checkbox" name="is_Copy_constructor" value="no" unchecked="checked">no</input>
    <br/>

    <b></b><select name="Constructor_access">
    <option value="public">public</option>
    <option value="protected">protected</option>
    <option value="private">private</option>
    </select><b>:</b>
    <input type="checkbox" name="Constructor" value="explicit" unchecked="checked"><b>explicit</b></input>
    <b>&nbsp;&nbsp;(</b>
    <input name="Constructor_parameters" value=""></input><b></b>
    <input type="checkbox" name="is_Constructor_parameters" value="no" unchecked="checked">no</input>
    <b>):</b>
    <input name="Construct" value=""></input><b></b>
    <input type="checkbox" name="is_Construct" value="no" unchecked="checked">no</input>
    <b>{</b>
    <input name="Constructor_body" value=""></input><b></b>
    <input type="checkbox" name="is_Constructor_body" value="no" unchecked="checked">no</input>
    <b>}</b>
    <input type="checkbox" name="is_Constructor" value="no" unchecked="checked">no</input>
    <br/>

    <b></b><select name="Destructor_access">
    <option value="public">public</option>
    <option value="protected">protected</option>
    <option value="private">private</option>
    </select><b>:</b>
    <input type="checkbox" name="Destructor" value="virtual" checked="checked"><b>virtual</b></input>
    <b>&nbsp;&nbsp;~() {</b>
    <input name="Dstructor_body" value=""></input><b></b>
    <input type="checkbox" name="is_Dstructor_body" value="no" unchecked="checked">no</input>
    <b>}</b>
    <input type="checkbox" name="is_Destructor" value="no" unchecked="checked">no</input>
    <br/>

    <b>}; /// class</b>
    <br/>
    <b>} /// namespace</b>
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
    <option value="%Path%/templates/t/cxx/class-hxx-cxx.t">Create c/c++ class (%Path%/templates/t/cxx/class-hxx-cxx.t)</option>
    <option value=""></option>
    <option value="%Path%/templates/t/t/parameters.t">t parameters &nbsp;&nbsp; (%Path%/templates/t/t/parameters.t)</option>
    <option value="%Path%/templates/t/t/functions.t">t functions &nbsp;&nbsp; (%Path%/templates/t/t/functions.t)</option>
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