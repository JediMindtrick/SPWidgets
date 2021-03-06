<%-- SPWIDGETS DEMO PAGE --%>
<%-- BUILD 20140315113942 --%>
<%@ Page language="C#" MasterPageFile="~masterurl/default.master"    Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage,Microsoft.SharePoint,Version=12.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">
    SPWidgets Showcase Demo
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderPageTitleInTitleArea" runat="server">
    <h2>SPWidgets Showcase</h2>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderAdditionalPageHead" runat="server">

<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=utf-8">

<!--[if lt IE 9]>
    <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

<style type="text/css">
    body #s4-leftpanel {
        display:none;
    }
    .s4-ca {
        margin-left:0px;
    }
</style>

</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderSearchArea" runat="server"></asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderLeftActions" runat="server"></asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderPageDescription" runat="server">
SPWidgets - Widgets for building custom UIs
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderBodyRightMargin" runat="server"></asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderPageImage" runat="server"></asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderLeftNavBar" runat="server"></asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderNavSpacer" runat="server"></asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">

<script type="text/javascript">
/** 
 * SPWidgets Demo
 * 
 * Build Date:  Paul:March 15, 2014 11:39 AM
 * Version:     20140315113942 
 * 
 */
</script>
<div id="spwidgets_demo_cntr" class="ui-widget-content" style="display:none;">
    
<div class="spwidgets-demo-cntr">
    
    <div class="spwidgets-demo-top-banner ui-state-active">
        <h1>Demo of SPWidgets</h1>
        <p class="ui-widget-content ui-corner-all">
            SPWidgets is a set of Sharepoint widgets meant to facilitate the 
            building of custom UI's. This demo contains a showcase of the widgets 
            that are available and serves to only scratch at the possibilities 
            of what can be accomplished with them.  Visit the project at 
            <a href="http://purtuga.github.io/SPWidgets/">purtuga.github.io/SPWidgets</a>
        </p> 
    </div>
    <div id="ptTabsCntr" style="display: none;">
        <ul>
            <li><a href="#SPControlUploadDemo"><span>Upload</span></a></li>
            <li><a href="#SPControlPickUserDemo"><span>People Picker</span></a></li>
            <li><a href="#SPControlBoardDemo"><span>Board</span></a></li>
            <li><a href="#SPControlLookupFieldDemo"><span>Lookup Field</span></a></li>
            <li><a href="#SPControlListFilterPanel"><span>List Filter Panel</span></a></li>
            <li><a href="#SPDateField"><span>Date Field</span></a></li>
            <li><a href="#SPWidgetsAbout"><span class="ui-icon ui-icon-info">Info</span></a></li>
        </ul>
        <div id="SPControlUploadDemo">
            <h2>Upload Plugin</h2>
            <div style="padding: 1em;margin: 3em auto;" class="ui-state-highlight">
                Once an existing Document Library is selected, you will be presented 
                with an upload button that will allow you to upload files to the 
                root of the library selected.
            </div>
            <hr/>
            <div>
                <div class="spwidgets-demo-lists"></div>
                <div class="spwidget-demo-upload-cntr">
                    <h3></h3>
                    <div class="spwidget-demo-upload-widget"></div>
                    <div>
                        <span>Last File Uploaded: </span>
                        <span class="spwidget-demo-upload-last-file"></span>
                    </div>
                    <div class="spwidget-demo-library-files">
                        <table width="100%" cellpadding="4" cellspacing="0">
                            <thead>
                                <tr>
                                    <th class="ui-widget-header">File</th>
                                    <th class="ui-widget-header">Last Modified</th>
                                    <th class="ui-widget-header">Last Modified By</th>
                                </tr>
                            </thead>
                            <tbody>
                                
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        
        <div id="SPControlPickUserDemo">
            <h2>People Picker</h2>
            <div style="min-height: 300px;">
                <div style="padding: 1em;margin: 3em auto;" class="ui-state-highlight">
                    Start typing the user name (last or first) and a list of
                    suggested selections will be displayed. Because it is using jQuery
                    UI, mouse or keyboard shortcuts can be used to select a user. The
                    input field that was used to bind this plugin will be populated with
                    the selected user information in the formta expected for update to
                    the sharepoing list (ID;#userName)
                </div>
                
                <div>
                    <h3>Demo 1: Basic People Picker</h3>
                    <p>A basic setup on an input element.<br/>(Note: Once a person is selected here, Demo number two will be initiated and made visible below.</p>
                    <div>
                        <label>User Name</label>
                        <input type="text" name="spuserdemo" value="" />
                        <div id="sp_control_pick_user_detail" style="margin-top: 1em;padding:1em;"></div>
                        
                    </div>
                    <div>
                        <h4>Events Output</h4>
                        <div id="SPControlPickUserEventOut">
                            
                        </div>
                    </div>
                    
                </div>
                <hr/>
                <div id="spuserdemo2cntr" style="display:none;">
                    <h3>Demo 2: Pre-populated People Picker</h3>
                    <div>Input element in this example was pre-populated with <span class="spwidgets-demo-know-user"></span> and then initiated with the widget. Result should be a people picker that has 1 user already selected.</div>
                    <div>
                        <label>Person</label>
                        <input type="text" name="spuserdemo2" value="" />
                        <div id="sp_control_pick_user_detail2" style="margin-top: 1em;padding:1em;"></div>
                        
                    </div>
                </div>
                
            </div>
        </div>
        
        <div id="SPControlBoardDemo">
            
            <h2>Kan-Ban Board Widget</h2>
            
            <div class="spwidget-demo-tabs">
                <ul>
                    <li>
                        <a href="#spwidgets_demo_board_demo">
                            <span>Demo</span>
                        </a>
                    </li>
                    <li>
                        <a href="#spwidgets_demo_board_output">
                            <span>Output</span>
                        </a>
                    </li>
                    <li>
                        <a href="#spwidgets_demo_board_about">
                            <span>About</span>
                        </a>
                    </li>
                </ul>
                <div id="spwidgets_demo_board_demo">
                    
                    <p>
                        Click below to select a list followed by a column from
                        that list. Reminder: Column must be of a type supported
                        by the widget (Lookup, Choice).<br>
                        The Board is configured to be displayed with a fixed height
                        of 500px.
                    </p>
                    
                    <div class="spwidgets-demo-lists"></div>
                    <div class="spwidgets-demo-columns"></div>
                    
                    <div class="spwidget-board-demo-cntr"></div>
                    
                </div>
                <div id="spwidgets_demo_board_output">
                    
                    <p>
                    Events fired by the widget will populate data here.
                    </p>
                    
                    <div class="spwidget-demo-code ui-widget-content ui-corner-all"></div>
                    
                </div>
                <div id="spwidgets_demo_board_about">
                    
                    <p>
                    The Board widget displays a Kan-Ban type board for list items, allowing
                    the user to quickly move items around between states. The example below
                    is using the Tasks List commonly used in all Sharepoint Sites, and
                    specifically, the Status Field of that List.
                    </p>
                    
                </div>
            </div>
            
        </div>
        
        <div id="SPControlLookupFieldDemo">
            <h2>Lookup Field Widget</h2>
            
            <div class="spwidget-demo-fluid spwidget-demo-float-cntr">
                <div class="ui-widget-content ui-corner-all spwidget-demo-float">
                    
                    <p>Click below to select a List.</p>
                    <div class="spwidgets-demo-lists"></div>
                    
                    <div class="spwidgets-demo-lookup-examples">
                        <div>
                            <h3>Example 1</h3>
                            <p>Field below allows user to pick only 1 value.</p>
                            <div>
                                <input name="example1" value="" />
                            </div>
                        </div>
                
                        <div>
                            <h3>Example 2</h3>
                            <p>Field below allows user to select
                                mulitple values (multi-select).</p>
                            <div>
                                <input name="example2" value="" />
                            </div>
                        </div>
                        
                        <div>
                            <h3>Example 3</h3>
                            <p>Field below allows user to select
                                mulitple values (multi-select) and displays
                                the selector, which allows the user the ability
                                to "browse" the list looking for the correct value. 
                                In addition, the List items are sorted by ID in 
                                Descending order.</p>
                            <div>
                                <input name="example3" value="" />
                            </div>
                            <div class="spwidgets-dev-only">
                                <a href="javascript:" class="spwidgets-demo-lookup-example3-clear-all">Clear All</a>
                            </div>
                        </div>
                        
                    </div>
                    
                    
                </div>
                <div class="spwidget-demo-float">
                    <div class="spwidget-demo-tabs">
                        <ul>
                            <li>
                                <a href="#spwidgets_demo_lookup_output">
                                    <span>Output</span>
                                </a>
                            </li>
                            <li>
                                <a href="#spwidgets_demo_lookup_about">
                                    <span>About</span>
                                </a>
                            </li>
                        </ul>
                        <div id="spwidgets_demo_lookup_output">
                            
                            <p>
                                Area below will capture out of events from the demo.
                            </p>
                            
                            <div class="spwidget-demo-code ui-widget-content ui-corner-all"></div>
                            
                        </div>
                        
                        <div id="spwidgets_demo_lookup_about">
                            
                            <p>
                            The Lookup Field widget provides a custom interface for List/Library
                            field of type Lookup. It turns an input field into a Type-Ahead/autocomplete
                            field allowing the user to start typing values and select a match from
                            the suggestion.
                            </p>
                            
                        </div>
                        
                    </div>
                </div>
            </div>
            
        </div>
        
        <div id="SPControlListFilterPanel">
            
            <h2>List Filter Widget Demo</h2>
            
            <div class="spwidget-demo-fluid spwidget-demo-float-cntr">
                <div class="ui-widget-content ui-corner-all spwidget-demo-float">
                    
                    <p>This demo uses one of lists available on this site (picker below) and displays a filter panel for the fields on that list.</p>
                    
                    <p>Click below to select a List.</p>
                    <div class="spwidgets-demo-lists"></div>
                    
                    <div class="spwidgets-list-filter ui-widget-content" style="padding: .5em;">
                    </div>
                    
                </div>
                <div class="spwidget-demo-float">
                    <div class="spwidget-demo-tabs">
                        <ul>
                            <li>
                                <a href="#spwidgets_demo_filter_results">
                                    <span>Results</span>
                                </a>
                            </li>
                            <li>
                                <a href="#spwidgets_demo_filter_output">
                                    <span>CAML XML</span>
                                </a>
                            </li>
                            <li>
                                <a href="#spwidgets_demo_filter_about">
                                    <span>About</span>
                                </a>
                            </li>
                        </ul>
                        <div id="spwidgets_demo_filter_results">
                            
                            <p>
                                The results from the filter defined are displayed below.
                                Results are limited only to the first 10 matches and the
                                first 3 columns..
                            </p>
                            
                            <div class="spwidgets-demo-filter-result-output">
                                
                            </div>
                            
                        </div>
                        <div id="spwidgets_demo_filter_output">
                            <p>
                            Click the filter button to see CAML generated from filter values entered.
                            </p>
                            <div class="spwidgets-list-filter-query">
                                <textarea name="camlquery" class="spwidget-demo-code"></textarea>
                            </div>
                        </div>
                        
                        <div id="spwidgets_demo_filter_about">
                            
                            <p>
                            The List Filter widget displays a filter panel to collect information from the
                            user. Data can be used to then retrieve rows from the list 
                            using the criteria provided by the user.
                            </p>
                            
                            <p>Slider below is used for testing purposes.</p>
                            
                            <div style="padding: .5em; margin-bottom: 2em;margin-top:2em;">
                                <div style="margin-bottom: 1em;">
                                    Use slider below to test width of container holding the 
                                    filter panel and see how the content adjusts to the new
                                     width.</div>
                                <div class="ui-widget-content spwidgets-list-filter-slider-value ui-corner-all" style="text-align:center;width:5em;padding:.5em;margin:.2em;font-size:1.5em;font-weight:bold;">100%</div>
                                <div class="spwidgets-list-filter-width" style="width: 50%;"></div>
                            </div>
                            
                        </div>
                        
                    </div>
                </div>
            </div>
            
        </div><!-- end: #SPControlListFilterPanel -->
        
        <div id="SPDateField">
            
            <h2>Date Widget</h2>
            
            <div class="spwidget-demo-fluid spwidget-demo-float-cntr">
                <div class="ui-widget-content ui-corner-all spwidget-demo-float">
                    
                    <div class="spwidget-demo-samples">
                        
                        <p>
                            <h3>Example 1: Default</h3>
                            <p>Default functionality.</p>
                            <div class="spwidget-demo-example1">
                                <input class="spwidget-demo-input" type="text" name="example1" value="" />
                            </div>
                        </p>
                        <hr>
                        <p>
                            <h3>Example 2: Allow Multiples</h3>
                            <p>Allow multiple dates.</p>
                            <div>
                                <input class="spwidget-demo-input" type="text" name="example2" value="" />
                            </div>
                        </p>
                        <hr>
                        <p>
                            <h3>Example 3: Change Date Format</h3>
                            <p>Override date input format to Euro - mm/dd/yyyy</p>
                            <div>
                                <input class="spwidget-demo-input" type="text" name="example3" value="" />
                            </div>
                        </p>
                        
                        <hr>
                        <p>
                            <h3>Example 4: Pre-Defined Inputs</h3>
                            <p>
                                In this example, the input field used to bind SPDateField widget
                                was already storing 2 dates: August 1, 2013 and August 2, 2013.
                            </p>
                            <div>
                                <input class="spwidget-demo-input" type="text" name="example4" value="2013-08-01;2013-08-02" />
                            </div>
                        </p>
                        
                        <hr>
                        <p>
                            <h3>Example 5: Date and Time Picker</h3>
                            <p>
                                In this example, the widget is set to also show a time picker
                                along with the date picker. Time is displayed along with date
                                and the date string for use with SharePoint's API will include
                                the time element in it. When picker is displayed, it will have
                                the currently selected date pre-selected or if not has been set
                                yet, it will defaul to current time/date.                               
                            </p>
                            <div>
                                <input class="spwidget-demo-input" type="text" name="example5" value="" />
                            </div>
                        </p>
                        
                        <hr>
                        <p>
                            <h3>Example 6: Date and Time Picker - Allow Multiples</h3>
                            <p>
                                Similar to Example 5, where a date and Time picker is displayed, but
                                allows user to define multiples.
                            </p>
                            <div>
                                <input class="spwidget-demo-input" type="text" name="example6" value="" />
                            </div>
                        </p>
                        
                        <hr>
                        <p>
                            <h3>Example 7: Date and Time Picker - Pre-Defined Inputs</h3>
                            <p>
                                In this example, the input field used to bind SPDateField widget
                                was already storing 2 dates: August 1, 2013 1:05 AM and 
                                August 2, 2013 4:30PM.  This instance also shows the use of 
                                localized labels, like Time, Hour, Minutes.
                            </p>
                            <div>
                                <input class="spwidget-demo-input" type="text" name="example7" 
                                    value="2013-08-01T01:05:00;2013-08-02T16:30:00" />
                            </div>
                        </p>
                        
                        <hr>
                        <p>
                            <h3>Example 8: Date Picker Displayed inline on a non-input element</h3>
                            <p>
                                Example showing the Date picker being used on a non-input element.
                                The dates selected by the user would have to be handled by the callback
                                to the JQuery UI Datepicker widget.
                            </p>
                            <div class="spwidget-spdatefield-demo8"></div>
                        </p>
                        
                        <hr>
                        <p>
                            <h3>Example 9: Date and Time Picker Displayed inline on a non-input element</h3>
                            <p>
                                Example showing the Date and Time picker being used on a non-input element.
                                The dates selected by the user would have to be handled by the callback
                                to the JQuery UI Datepicker widget.
                            </p>
                            <div class="spwidget-spdatefield-demo9"></div>
                        </p>
                        
                        <p style="height: 15em;"></p>
                    </div>
                    
                </div>
                <div class="spwidget-demo-float">
                    <div class="spwidget-demo-tabs">
                        <ul>
                            <li>
                                <a href="#spwidgets_demo_date_results">
                                    <span>Results</span>
                                </a>
                            </li>
                            <li>
                                <a href="#spwidgets_demo_date_about">
                                    <span>About</span>
                                </a>
                            </li>
                        </ul>
                        
                        <div id="spwidgets_demo_date_results">
                            <p>
                                As the dates are selected, the demo will output data to this 
                                area when the input element's change event is triggered.
                            </p>
                            <div class="spwidget-output">
                                
                            </div>
                        </div>
                        
                        <div id="spwidgets_demo_date_about">
                            <p>
                                SPDateField is a widgets wrapped around jQuery UI Datepicker that 
                                allows the user to pick one or more dates using their own locale 
                                format, while storing the SharePoint friendly format (YYY-MM-DD) 
                                in the input field to which this widget was bound to.
                            </p>
                        </div>
                        
                    </div>
                </div>
            </div>
            
        </div> <!-- end: #SPDateField -->
        
        <div id="SPWidgetsAbout">
            
            <p>
                Below are the version of software currently being used for this demo showcase.
            </p>
            
            <ul class="spwidgets-demo-info-cntr">
                
            </ul>
            
        </div> <!-- END: #SPWidgetsAbout -->
        
    </div>
    <div>
        <span>Build: </span><span>20140315113942</span>
    </div>
    <div>
        <div id="themeSwitchWidget"></div>
    </div>
    
</div>
</div>

<script type="text/javascript" language="javascript">

//__HAS_EMBEDED_DATA_FROM_BUILD__

setTimeout(function(){
    
    (function($){
        
        var jQuery = $;
        
        $(function(){
            
            $('<link rel="stylesheet" type="text/css" href="' +
                window.location.protocol + 
                '//ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/themes/redmond/jquery-ui.css" />'
            )
            .appendTo("head");
            
//-------- demo code below: inserted by build script -----------------

/**
 * @fileOverview demo.common.js
 * Common file for all demos. Initiates the UI on the page.
 * 
 * @version 20140315113942
 * 
 */
(function($){
    
    var Main    = SPWIDGET_DEMO;
    
    Main.debug = (  String(window.location.search).indexOf("debug=1") > -1 
                    ?   true
                    :   false
                );
    
    /**
     * Given a container element, this method will insert a
     * list of List and/or Libraries in the current site
     * for the user to select/pick one.
     * 
     * @param {Object} options
     * @param {HTMLElement|jQuery} options.container
     * @param {Boolean} [options.includeLibraries=true]
     * @param {Boolean} [options.includeLists=true]
     * @param {Function} [options.onListSelect=null]
     *      Function will have the scope of the library picker
     *      HTML element (as a jQuery object) and given 2 input
     *      parameters - 1) jQuery object with the list definition
     *      and 2) the html element that the user clicked on.
     * 
     * @return {Object} Main
     * 
     */
    Main.insertListSelector = function(options) {
        
        var opt = $.extend({}, {
                container:          null,
                includeLibraries:   true,
                includeLists:       true,
                onListSelect:       null
            },
            options);
        
        if (!opt.container) {
            
            return Main;
            
        }
        
        opt.container = $(opt.container);
        
        // Have the user pick which library to use in the demo.
        $().SPServices({
            operation:  "SiteDataGetListCollection",
            async:      false,
            cacheXML:   true,
            completefunc: function (xData, Status) {
                
                var $siteLists  = $(xData.responseXML),
                    htmlList    = '';
                
                opt._lists = null;
                
                // Get a set (array) of lists to work with
                if (opt.includeLibraries && opt.includeLists) {
                    
                    opt._lists = $siteLists.find("_sList");
                    
                } else if (opt.includeLibraries) {
                    
                    opt._lists = $siteLists
                                .find("_sList BaseType:contains('DocumentLibrary')")
                                    .parent();
                    
                } else if (opt.includeLists) {
                    
                    opt._lists = $siteLists
                                .find("_sList BaseType:contains('GenericList')")
                                    .parent();
                    
                } else {
                    
                    return Main;
                    
                }
                
                // If no lists define, then exit
                if (!opt._lists || !opt._lists.length) {
                    
                    return Main;
                    
                }
                
                // Loop through all lists and build the UI for it.
                opt._lists.each(function(){
                    
                    var $list = $(this);
                    
                    htmlList +=
                        '<a href="javascript:" class="ui-state-default" data-list_uid="' +
                         $.trim($list.find("InternalName").text()) +
                         '" data-list_name="' +
                         $list.find("Title").text() + '">' +
                         $list.find("Title").text() + ' </a>';
                         
                });
                
                opt._widget = $('<div class="spwidgets-demo-list-picker">' +
                        '<div class="ui-state-active spwidgets-demo-list-selected">Select List...</div>' +
                        '</div>')
                    .appendTo(opt.container)
                    .append(
                        '<div class="spwidgets-demo-list-selector ui-widget-content" style="display:none;">' + 
                        htmlList + '</div>' )
                    .on("click", "div.spwidgets-demo-list-selected", function(ev){
                        
                        var $this = $(this).html("Select...");
                        
                        opt._widgetSelector
                            .css("display", "")
                            .position({
                                my: "left top",
                                at: "left top",
                                of: $this
                            });
                        
                    })
                    .on("click", "a", function(ev){
                        
                        var $this   = $(this),
                            $list   = opt._lists
                                        .find(
                                            "_sList InternalName:contains('" +
                                            $this.data("list_uid") + "')" 
                                        )
                                        .parent();
                        
                        opt._widgetSelector.hide();
                        
                        opt._widgetSelected.html("List: " + $list.find("Title").text());
                        
                        if ($.isFunction(opt.onListSelect)) {
                            
                            opt.onListSelect.call(
                                opt.container, $list, $this);
                            
                        }
                        
                    });
                
                opt._widgetSelector = opt._widget.find("div.spwidgets-demo-list-selector");
                opt._widgetSelected = opt._widget.find("div.spwidgets-demo-list-selected");
                
            }//end: completefunc()
        });
        
        return Main;
        
    }; //end: Main.insertListSelector();
    
    
    /**
     * Inserts a list column selector into the defined container.
     * 
     * @param {Object} options
     * @param {Object} options
     * @param {Object} options
     * @param {Object} [options.onColumnSelect=null]
     *          Called with a scope of container and 3 params:
     *          thisCol, opt.listName, html a element
     *          
     * 
     * @return {jQuery.Promise}
     *          Resolved with scope of the container
     * 
     */
    Main.insertListColumnSelector = function(options) {
        
        return $.Deferred(function(dfd){
            
             var opt = $.extend({}, {
                    container:      null,
                    listName:       "",
                    ColumnType:     "",
                    onColumnSelect: null
                },
                options);
            
            if (!opt.container) {
                
                dfd.resolve();
                return;
                
            }
            
            opt.container = $(opt.container).empty();
            
            Main.getListColumns(opt.listName)
                .then(function(columns){
                    
                    var htmlList = "";
                    
                    // Loop through all lists and build the UI for it.
                    $.each(columns, function(i, column){
                        
                        htmlList +=
                            '<a href="javascript:" class="ui-state-default" data-list_name="' +
                             opt.listName + '" data-column_name="' + column + '">' +
                             column + ' </a>';
                             
                    });
                    
                    // If no columns, entere default message
                    if (htmlList === "") {
                        
                        htmlList += '<div>No Columns!</div>';
                        
                    }
                    
                    opt._widget = $('<div class="spwidgets-demo-list-picker">' +
                            '<div class="ui-state-active spwidgets-demo-list-selected">Select Column...</div>' +
                            '</div>')
                        .appendTo(opt.container)
                        .append(
                            '<div class="spwidgets-demo-list-selector ui-widget-content" style="display:none;">' + 
                            htmlList + '</div>' )
                        .on("click", "div.spwidgets-demo-list-selected", function(ev){
                            
                            var $this = $(this).html("Column: Select...");
                            
                            opt._widgetSelector
                                .css("display", "")
                                .position({
                                    my: "left top",
                                    at: "left top",
                                    of: $this
                                });
                            
                        })
                        .on("click", "a", function(ev){
                            
                            var $this   = $(this),
                                thisCol  = $this.data("column_name");
                            
                            opt._widgetSelector.hide();
                            
                            opt._widgetSelected.html( "Column: " + thisCol );
                            
                            if ($.isFunction(opt.onColumnSelect)) {
                                
                                opt.onColumnSelect.call(
                                    opt.container, thisCol, opt.listName, $this);
                                
                            }
                            
                        });
                    
                    opt._widgetSelector = opt._widget.find("div.spwidgets-demo-list-selector");
                    opt._widgetSelected = opt._widget.find("div.spwidgets-demo-list-selected");
                    
                    dfd.resolveWith(opt.container);
                    
                });
            
        })
        .promise();
        
        
    }; //end: Main.insertListColumnSelector()
    
    
    /**
     * Gets the list of columns names by using the Edit form
     * 
     * @param {Object} listName
     * 
     * @return {jQuery.Promise}
     */
    Main.getListColumns = function(listName){
        
        return $.Deferred(function(dfd){
            
            $('<div style="display:none;"/>')
                .load(
                    String(
                            $().SPServices.SPGetCurrentSite() +
                            "/Lists/" + listName + "/NewForm.aspx"
                        )
                        .replace(/ /, "%20") +
                        " .ms-formtable",
                    function(){
                        
                        var $ele = $(this),
                            cols = ['ID'];
                        
                        $ele.find(".ms-standardheader").each(function(){
                            
                            cols.push( $.trim( $(this).text().replace(/ \*/, "") ) );
                            
                        });
                        
                        dfd.resolveWith($, [cols]);
                        
                        $ele.remove();  
                        
                    }
                );
            
        })
        .promise();
        
    }; //end: getListColumns()
    
    /**
     * Given an element, this method will setup it up for logging data,
     * and return an object ready to interact with it.
     */
    Main.setupLogOutput = function(options) {
        
        var opt     = $.extend({}, {
                        container: null,
                        fixHeight: true,
                        height:     '40em'
                    }, options),
            Inst    = {},
            css     = {
                        padding: ".2em",
                        position: "relative"
                    };
        
        if (!opt.container) {
            
            return;
            
        }
        
        opt.container = $(opt.container);
        
        if (opt.fixHeight){
            
            css.height      = opt.height;
            css.overflow    = "auto";
            
        }
        
        opt.container
            .addClass("ui-widget-content")
            .css(css);
        
        Inst.log = function(data) {
            
            opt.container.append('<div>' + data + '<div>');
            opt.container.scrollTop(opt.container.children(":last").position().top);
            
        }; //end: log()
        
        return Inst;
        
    }; //end: Main.setupLogOutput()
    
    Main.$ui = $("#spwidgets_demo_cntr")
            .css("display", "")
            .on("keyup", function(ev){
                
                if (ev.which === 13) {
                    ev.preventDefault();
                    ev.stopPropagation();
                }
                
            });
    
    // Create TABs and make ui visible
    Main.$ui.find("#ptTabsCntr")
        .tabs()
        .fadeIn("slow");
    
    // Populate the About page
    $("#SPWidgetsAbout ul.spwidgets-demo-info-cntr").each(function(){
        
        var $ul     = $(this);
        
        setTimeout(function(){
            
            var info    = $.SPWidgets.getRuntimeInfo(),
                display = '',
                key;
            
            for (key in info){
                
                if (info.hasOwnProperty(key)) {
                    
                    display += '<li>' + key + ': ' + info[key] + '</li>';
                    
                }
                
            }
            
            $ul.append(display);
            
            
        }, 2000);
        
    });
    
    
 /* function return jQuery to closure above */
})( (function($){
    
    var styles = "/**\n"
+ " * Stylesheet for the demo area\n"
+ " */\n"
+ "/*! normalize.css v2.1.2 | MIT License | git.io/normalize */\n"
+ "\n"
+ "/* ==========================================================================\n"
+ "   HTML5 display definitions\n"
+ "   ========================================================================== */\n"
+ "\n"
+ "/**\n"
+ " * Correct `block` display not defined in IE 8/9.\n"
+ " */\n"
+ "\n"
+ "#spwidgets_demo_cntr article,\n"
+ "#spwidgets_demo_cntr aside,\n"
+ "#spwidgets_demo_cntr details,\n"
+ "#spwidgets_demo_cntr figcaption,\n"
+ "#spwidgets_demo_cntr figure,\n"
+ "#spwidgets_demo_cntr footer,\n"
+ "#spwidgets_demo_cntr header,\n"
+ "#spwidgets_demo_cntr hgroup,\n"
+ "#spwidgets_demo_cntr main,\n"
+ "#spwidgets_demo_cntr nav,\n"
+ "#spwidgets_demo_cntr section,\n"
+ "#spwidgets_demo_cntr summary {\n"
+ "    display: block;\n"
+ "}\n"
+ "\n"
+ "/**\n"
+ " * Address `[hidden]` styling not present in IE 8/9.\n"
+ " * Hide the `template` element in IE, Safari, and Firefox < 22.\n"
+ " */\n"
+ "\n"
+ "#spwidgets_demo_cntr [hidden],\n"
+ "#spwidgets_demo_cntr template {\n"
+ "    display: none;\n"
+ "}\n"
+ "\n"
+ "/* ==========================================================================\n"
+ "   Links\n"
+ "   ========================================================================== */\n"
+ "\n"
+ "/**\n"
+ " * Address `outline` inconsistency between Chrome and other browsers.\n"
+ " */\n"
+ "\n"
+ "#spwidgets_demo_cntr a:focus {\n"
+ "    outline: thin dotted;\n"
+ "}\n"
+ "\n"
+ "/**\n"
+ " * Improve readability when focused and also mouse hovered in all browsers.\n"
+ " */\n"
+ "\n"
+ "#spwidgets_demo_cntr a:active,\n"
+ "#spwidgets_demo_cntr a:hover {\n"
+ "    outline: 0;\n"
+ "}\n"
+ "\n"
+ "/* ==========================================================================\n"
+ "   Typography\n"
+ "   ========================================================================== */\n"
+ "\n"
+ "/**\n"
+ " * Address variable `h1` font-size and margin within `section` and `article`\n"
+ " * contexts in Firefox 4+, Safari 5, and Chrome.\n"
+ " */\n"
+ "\n"
+ "#spwidgets_demo_cntr h1 {\n"
+ "    font-size: 2em;\n"
+ "    margin: 0.67em 0;\n"
+ "}\n"
+ "\n"
+ "/**\n"
+ " * Address styling not present in IE 8/9, Safari 5, and Chrome.\n"
+ " */\n"
+ "\n"
+ "#spwidgets_demo_cntr abbr[title] {\n"
+ "    border-bottom: 1px dotted;\n"
+ "}\n"
+ "\n"
+ "/**\n"
+ " * Address style set to `bolder` in Firefox 4+, Safari 5, and Chrome.\n"
+ " */\n"
+ "\n"
+ "#spwidgets_demo_cntr b,\n"
+ "#spwidgets_demo_cntr strong {\n"
+ "    font-weight: bold;\n"
+ "}\n"
+ "\n"
+ "/**\n"
+ " * Address styling not present in Safari 5 and Chrome.\n"
+ " */\n"
+ "\n"
+ "#spwidgets_demo_cntr dfn {\n"
+ "    font-style: italic;\n"
+ "}\n"
+ "\n"
+ "/**\n"
+ " * Address differences between Firefox and other browsers.\n"
+ " */\n"
+ "\n"
+ "#spwidgets_demo_cntr hr {\n"
+ "    -moz-box-sizing: content-box;\n"
+ "    box-sizing: content-box;\n"
+ "    height: 0;\n"
+ "}\n"
+ "\n"
+ "/**\n"
+ " * Address styling not present in IE 8/9.\n"
+ " */\n"
+ "\n"
+ "#spwidgets_demo_cntr mark {\n"
+ "    background: #ff0;\n"
+ "    color: #000;\n"
+ "}\n"
+ "\n"
+ "/**\n"
+ " * Correct font family set oddly in Safari 5 and Chrome.\n"
+ " */\n"
+ "\n"
+ "#spwidgets_demo_cntr code,\n"
+ "#spwidgets_demo_cntr kbd,\n"
+ "#spwidgets_demo_cntr pre,\n"
+ "#spwidgets_demo_cntr samp {\n"
+ "    font-family: monospace, serif;\n"
+ "    font-size: 1em;\n"
+ "}\n"
+ "\n"
+ "/**\n"
+ " * Improve readability of pre-formatted text in all browsers.\n"
+ " */\n"
+ "\n"
+ "#spwidgets_demo_cntr pre {\n"
+ "    white-space: pre-wrap;\n"
+ "}\n"
+ "\n"
+ "/**\n"
+ " * Set consistent quote types.\n"
+ " */\n"
+ "\n"
+ "#spwidgets_demo_cntr q {\n"
+ "    quotes: \"\201C\" \"\201D\" \"\2018\" \"\2019\";\n"
+ "}\n"
+ "\n"
+ "/**\n"
+ " * Address inconsistent and variable font size in all browsers.\n"
+ " */\n"
+ "\n"
+ "#spwidgets_demo_cntr small {\n"
+ "    font-size: 80%;\n"
+ "}\n"
+ "\n"
+ "/**\n"
+ " * Prevent `sub` and `sup` affecting `line-height` in all browsers.\n"
+ " */\n"
+ "\n"
+ "#spwidgets_demo_cntr sub,\n"
+ "#spwidgets_demo_cntr sup {\n"
+ "    font-size: 75%;\n"
+ "    line-height: 0;\n"
+ "    position: relative;\n"
+ "    vertical-align: baseline;\n"
+ "}\n"
+ "\n"
+ "#spwidgets_demo_cntr sup {\n"
+ "    top: -0.5em;\n"
+ "}\n"
+ "\n"
+ "#spwidgets_demo_cntr sub {\n"
+ "    bottom: -0.25em;\n"
+ "}\n"
+ "\n"
+ "/* ==========================================================================\n"
+ "   Embedded content\n"
+ "   ========================================================================== */\n"
+ "\n"
+ "/**\n"
+ " * Remove border when inside `a` element in IE 8/9.\n"
+ " */\n"
+ "\n"
+ "#spwidgets_demo_cntr img {\n"
+ "    border: 0;\n"
+ "}\n"
+ "\n"
+ "/**\n"
+ " * Correct overflow displayed oddly in IE 9.\n"
+ " */\n"
+ "\n"
+ "#spwidgets_demo_cntr svg:not(:root) {\n"
+ "    overflow: hidden;\n"
+ "}\n"
+ "\n"
+ "/* ==========================================================================\n"
+ "   Figures\n"
+ "   ========================================================================== */\n"
+ "\n"
+ "/**\n"
+ " * Address margin not present in IE 8/9 and Safari 5.\n"
+ " */\n"
+ "\n"
+ "#spwidgets_demo_cntr figure {\n"
+ "    margin: 0;\n"
+ "}\n"
+ "\n"
+ "/* ==========================================================================\n"
+ "   Forms\n"
+ "   ========================================================================== */\n"
+ "\n"
+ "/**\n"
+ " * Define consistent border, margin, and padding.\n"
+ " */\n"
+ "\n"
+ "#spwidgets_demo_cntr fieldset {\n"
+ "    border: 1px solid #c0c0c0;\n"
+ "    margin: 0 2px;\n"
+ "    padding: 0.35em 0.625em 0.75em;\n"
+ "}\n"
+ "\n"
+ "/**\n"
+ " * 1. Correct `color` not being inherited in IE 8/9.\n"
+ " * 2. Remove padding so people aren't caught out if they zero out fieldsets.\n"
+ " */\n"
+ "\n"
+ "#spwidgets_demo_cntr legend {\n"
+ "    border: 0; /* 1 */\n"
+ "    padding: 0; /* 2 */\n"
+ "}\n"
+ "\n"
+ "/**\n"
+ " * 1. Correct font family not being inherited in all browsers.\n"
+ " * 2. Correct font size not being inherited in all browsers.\n"
+ " * 3. Address margins set differently in Firefox 4+, Safari 5, and Chrome.\n"
+ " */\n"
+ "\n"
+ "#spwidgets_demo_cntr button,\n"
+ "#spwidgets_demo_cntr input,\n"
+ "#spwidgets_demo_cntr select,\n"
+ "#spwidgets_demo_cntr textarea {\n"
+ "    font-family: inherit; /* 1 */\n"
+ "    /* font-size: 100%; */ /* 2 */\n"
+ "    margin: 0; /* 3 */\n"
+ "}\n"
+ "\n"
+ "/**\n"
+ " * Address Firefox 4+ setting `line-height` on `input` using `!important` in\n"
+ " * the UA stylesheet.\n"
+ " */\n"
+ "\n"
+ "#spwidgets_demo_cntr button,\n"
+ "#spwidgets_demo_cntr input {\n"
+ "    line-height: normal;\n"
+ "}\n"
+ "\n"
+ "/**\n"
+ " * Address inconsistent `text-transform` inheritance for `button` and `select`.\n"
+ " * All other form control elements do not inherit `text-transform` values.\n"
+ " * Correct `button` style inheritance in Chrome, Safari 5+, and IE 8+.\n"
+ " * Correct `select` style inheritance in Firefox 4+ and Opera.\n"
+ " */\n"
+ "\n"
+ "#spwidgets_demo_cntr button,\n"
+ "#spwidgets_demo_cntr select {\n"
+ "    text-transform: none;\n"
+ "}\n"
+ "\n"
+ "/**\n"
+ " * 1. Avoid the WebKit bug in Android 4.0.* where (2) destroys native `audio`\n"
+ " *    and `video` controls.\n"
+ " * 2. Correct inability to style clickable `input` types in iOS.\n"
+ " * 3. Improve usability and consistency of cursor style between image-type\n"
+ " *    `input` and others.\n"
+ " */\n"
+ "\n"
+ "#spwidgets_demo_cntr button,\n"
+ "#spwidgets_demo_cntr html input[type=\"button\"], /* 1 */\n"
+ "#spwidgets_demo_cntr input[type=\"reset\"],\n"
+ "#spwidgets_demo_cntr input[type=\"submit\"] {\n"
+ "    -webkit-appearance: button; /* 2 */\n"
+ "    cursor: pointer; /* 3 */\n"
+ "}\n"
+ "\n"
+ "/**\n"
+ " * Re-set default cursor for disabled elements.\n"
+ " */\n"
+ "\n"
+ "#spwidgets_demo_cntr button[disabled],\n"
+ "#spwidgets_demo_cntr html input[disabled] {\n"
+ "    cursor: default;\n"
+ "}\n"
+ "\n"
+ "/**\n"
+ " * 1. Address box sizing set to `content-box` in IE 8/9.\n"
+ " * 2. Remove excess padding in IE 8/9.\n"
+ " */\n"
+ "\n"
+ "#spwidgets_demo_cntr input[type=\"checkbox\"],\n"
+ "#spwidgets_demo_cntr input[type=\"radio\"] {\n"
+ "    box-sizing: border-box; /* 1 */\n"
+ "    padding: 0; /* 2 */\n"
+ "}\n"
+ "\n"
+ "/**\n"
+ " * 1. Address `appearance` set to `searchfield` in Safari 5 and Chrome.\n"
+ " * 2. Address `box-sizing` set to `border-box` in Safari 5 and Chrome\n"
+ " *    (include `-moz` to future-proof).\n"
+ " */\n"
+ "\n"
+ "#spwidgets_demo_cntr input[type=\"search\"] {\n"
+ "    -webkit-appearance: textfield; /* 1 */\n"
+ "    -moz-box-sizing: content-box;\n"
+ "    -webkit-box-sizing: content-box; /* 2 */\n"
+ "    box-sizing: content-box;\n"
+ "}\n"
+ "\n"
+ "/**\n"
+ " * Remove inner padding and search cancel button in Safari 5 and Chrome\n"
+ " * on OS X.\n"
+ " */\n"
+ "\n"
+ "#spwidgets_demo_cntr input[type=\"search\"]::-webkit-search-cancel-button,\n"
+ "#spwidgets_demo_cntr input[type=\"search\"]::-webkit-search-decoration {\n"
+ "    -webkit-appearance: none;\n"
+ "}\n"
+ "\n"
+ "/**\n"
+ " * Remove inner padding and border in Firefox 4+.\n"
+ " */\n"
+ "\n"
+ "#spwidgets_demo_cntr button::-moz-focus-inner,\n"
+ "#spwidgets_demo_cntr input::-moz-focus-inner {\n"
+ "    border: 0;\n"
+ "    padding: 0;\n"
+ "}\n"
+ "\n"
+ "/**\n"
+ " * 1. Remove default vertical scrollbar in IE 8/9.\n"
+ " * 2. Improve readability and alignment in all browsers.\n"
+ " */\n"
+ "\n"
+ "#spwidgets_demo_cntr textarea {\n"
+ "    overflow: auto; /* 1 */\n"
+ "    vertical-align: top; /* 2 */\n"
+ "}\n"
+ "\n"
+ "/* ==========================================================================\n"
+ "   Tables\n"
+ "   ========================================================================== */\n"
+ "\n"
+ "/**\n"
+ " * Remove most spacing between table cells.\n"
+ " */\n"
+ "\n"
+ "#spwidgets_demo_cntr table {\n"
+ "    border-collapse: collapse;\n"
+ "    border-spacing: 0;\n"
+ "}\n"
+ "\n"
+ "\n"
+ "/** ==================================================================== */\n"
+ "/** ==================================================================== */\n"
+ "/** ==[[   SPWIDGETS DEMO   ]]========================================== */\n"
+ "/** ==================================================================== */\n"
+ "/** ==================================================================== */\n"
+ "/** ==================================================================== */\n"
+ "\n"
+ "#s4-leftpanel,\n"
+ "#sideNavBox {\n"
+ "    display:none !important;\n"
+ "}\n"
+ ".s4-ca,\n"
+ "#contentBox {\n"
+ "    margin-left: .5em !important;\n"
+ "    width: 98%;\n"
+ "}\n"
+ "\n"
+ "#spwidgets_demo_cntr {\n"
+ "    padding: 1em;\n"
+ "    minHeight: 100em;;\n"
+ "}\n"
+ "#spwidgets_demo_cntr thead {\n"
+ "    display:table-header-group;\n"
+ "}\n"
+ "#spwidgets_demo_cntr tbody {\n"
+ "    display:table-row-group;\n"
+ "} \n"
+ "\n"
+ "#spwidgets_demo_cntr .spwidgets-demo-top-banner {\n"
+ "    padding:1em;\n"
+ "    margin:.5em;\n"
+ "}\n"
+ "#spwidgets_demo_cntr p {\n"
+ "    padding: .5em;\n"
+ "}\n"
+ "\n"
+ "#spwidgets_demo_cntr .spwidget-demo-samples {\n"
+ "    padding: .5em;\n"
+ "}\n"
+ "\n"
+ "/** LIST PICKER **/\n"
+ "#spwidgets_demo_cntr div.spwidgets-demo-list-picker {\n"
+ "    position: relative;\n"
+ "    width: 60%;\n"
+ "}\n"
+ "\n"
+ "#spwidgets_demo_cntr div.spwidgets-demo-list-picker .spwidgets-demo-list-selector {\n"
+ "    position: absolute;\n"
+ "    z-index: 20;\n"
+ "    height: 15em;\n"
+ "    overflow: auto;\n"
+ "    width: 100%;\n"
+ "}\n"
+ "#spwidgets_demo_cntr div.spwidgets-demo-list-picker .spwidgets-demo-list-selected,\n"
+ "#spwidgets_demo_cntr div.spwidgets-demo-list-picker .spwidgets-demo-list-selector a {\n"
+ "    display: block;\n"
+ "    margin: 0.3em;\n"
+ "    padding: 0.5em;\n"
+ "    cursor: pointer;\n"
+ "}\n"
+ "\n"
+ "/* Classes for when container has floating element */\n"
+ "#spwidgets_demo_cntr .spwidget-demo-fluid:before,\n"
+ "#spwidgets_demo_cntr .spwidget-demo-fluid:after {\n"
+ "    content: \"\";\n"
+ "    display: table;\n"
+ "    line-height: 0;\n"
+ "}\n"
+ "#spwidgets_demo_cntr .spwidget-demo-fluid:after {\n"
+ "    clear: both;\n"
+ "}\n"
+ "\n"
+ "#spwidgets_demo_cntr .spwidget-demo-float-cntr div.spwidget-demo-float {\n"
+ "    float: left;\n"
+ "    width: 49%;\n"
+ "    overflow: visible;\n"
+ "    min-height: 40em;\n"
+ "}\n"
+ "#spwidgets_demo_cntr .spwidget-demo-float-cntr div.spwidget-demo-float:first-child {\n"
+ "    margin-right: .5%;\n"
+ "}\n"
+ "\n"
+ "/* code container */\n"
+ "#spwidgets_demo_cntr .spwidget-demo-code {\n"
+ "    width: 98%;\n"
+ "    font-family: Monaco,Courier;\n"
+ "    font-size: 1.1em;\n"
+ "    min-height: 20em;\n"
+ "}\n"
+ "#spwidgets_demo_cntr textarea.spwidget-demo-code {\n"
+ "    height: 35em;\n"
+ "    resize: none;\n"
+ "}\n"
+ "\n"
+ "/* Tabs within Tabs */\n"
+ "#spwidgets_demo_cntr .ui-tabs .ui-tabs {\n"
+ "    border: medium none;    \n"
+ "}\n"
+ "#spwidgets_demo_cntr .ui-tabs .ui-tabs .ui-tabs-nav {\n"
+ "    background: none repeat scroll 0 0 transparent;\n"
+ "    border-left: medium none;\n"
+ "    border-right: medium none;\n"
+ "    border-top: medium none;\n"
+ "}\n"
+ "#spwidgets_demo_cntr .ui-tabs .ui-tabs .ui-tabs-panel {\n"
+ "    border-top: 1px none;\n"
+ "    border-width: 1px;\n"
+ "    margin-left: 0;\n"
+ "    margin-right: 0;\n"
+ "    margin-top: 0;\n"
+ "    min-height: 40em;\n"
+ "}\n"
+ "\n"
+ "/** LIST FILTER DEMO AREA */\n"
+ "#SPControlListFilterPanel #spwidgets_demo_filter_output {\n"
+ "    padding: .5em;\n"
+ "}\n"
+ "#SPControlListFilterPanel .spwidgets-list-filter {\n"
+ "    margin: 1em .5em;\n"
+ "    padding: .5em;\n"
+ "}\n"
+ "\n"
+ "/** BOARD DEMO AREA */\n"
+ "#SPControlBoardDemo .ui-tabs-panel {\n"
+ "    min-height: 15em;\n"
+ "}\n"
+ "#SPControlBoardDemo .spwidget-board-demo-cntr {\n"
+ "    margin-top: 1.5em;\n"
+ "}\n"
+ "#SPControlBoardDemo  .spwidget-demo-code {\n"
+ "    padding: .5em;\n"
+ "}\n"
+ "\n"
+ "/** LOOKUP FIELD AREA */\n"
+ "#SPControlLookupFieldDemo .spwidgets-demo-lookup-examples {\n"
+ "    padding: .5em;\n"
+ "}\n"
+ "#SPControlLookupFieldDemo div.spwidget-demo-float-cntr div.spwidget-demo-float {\n"
+ "    min-height: 70em;\n"
+ "}    \n"
+ "\n"
+ "\n"
+ "/** UPLOAD WIDGET */\n"
+ "#SPControlUploadDemo .spwidget-demo-upload-cntr {\n"
+ "    display: none;\n"
+ "}\n"
+ "#SPControlUploadDemo .spwidget-demo-library-files {\n"
+ "    min-height: 60em;\n"
+ "    margin-top: 1em;\n"
+ "}\n"
+ "#SPControlUploadDemo .spwidget-demo-library-files table,\n"
+ "#SPControlUploadDemo .spwidget-demo-library-files table tr,\n"
+ "#SPControlUploadDemo .spwidget-demo-library-files table td,\n"
+ "#SPControlUploadDemo .spwidget-demo-library-files table th {\n"
+ "    border-collapse: collapse;\n"
+ "}\n"
+ "#SPControlUploadDemo .spwidget-demo-library-files table th {\n"
+ "    font-size: 1.1em;\n"
+ "    font-weight: bold;\n"
+ "}\n"
+ "\n"
+ "/** DATE WIDGET **/\n"
+ "#SPDateField div.spwidget-date-cntr {\n"
+ "    display: block;\n"
+ "}\n"
+ "\n"; 
//__HAS_EMBEDED_DATA_FROM_BUILD__
    
    $('<style type="text/css">' + styles + "</style>")
        .appendTo(document.head || document.getElementsByTagName('head')[0]);
    
    return $;
    
})(SPWIDGET_DEMO.JQUERY || jQuery) );
/**
 * widget.board.demo.js
 * Code for the board widget demo.
 */
(function($){
    
     var Main       = SPWIDGET_DEMO,
        $cntr       = $("#SPControlBoardDemo"),
        $boardCntr  = $cntr.find("div.spwidget-board-demo-cntr"),
        $colCntr    = $cntr.find("div.spwidgets-demo-columns"),
        $output     = $cntr.find(".spwidget-demo-code");
    
    
    // Create the tabs
    $cntr.find("div.spwidget-demo-tabs").tabs();
    
    // Populate the container to select a list
    Main.insertListSelector({
        container: $cntr.find("div.spwidgets-demo-lists"),
        onListSelect: function($list){
            
            var listName = $list.find("Title").text();
            
            $colCntr.empty();
            $boardCntr.empty();
            
            // Insert the column picker
            Main.insertListColumnSelector({
                container:      $colCntr,
                listName:       listName,
                onColumnSelect: function(columnName){
                    
                    // Kan-Ban Board
                    $("<div/>")
                        .appendTo( $boardCntr.empty() )
                        .on("spwidget:boardColumnChange", function(ev, $board, colObj){
                            
                            $output.append(
                                "<div>spwidget:boardColumnChange = Columns changed:" + 
                                colObj.join(" | ") + "</div>");
                               
                        })
                        .SPShowBoard({
                            list:                   listName,
                            field:                  columnName,
                            showColPicker:          true,
                            colPickerLabel:         "Choose Columns",
                            colPickerCloseLabel:    "Close Picker",
                            colPickerApplyLabel:    "Change",
                            height:                 "500px"
                        });
                    
                }
            });
            
        }//end: insertListSelector.onListSelect()
    });
    
    
    
})(SPWIDGET_DEMO.JQUERY || jQuery);
/**
 * widget.date.demo.js
 * Demo code for the Date widget
 * 
 */
(function($){
    
    "use strict";
    /*jslint nomen: true, plusplus: true */
    /*global SPWidgets, SPWIDGET_DEMO */
    
    
    var Main        = SPWIDGET_DEMO,
        $cntr       = $("#SPDateField"),
        $demoCntr   = $cntr.find("div.spwidget-demo-samples"),
        output      = Main.setupLogOutput({ container: $cntr.find("div.spwidget-output") });
    
    
    //---------------------------------------
    
    // Create the tabs under this demo
    $cntr.find("div.spwidget-demo-tabs").tabs();
    
    // Initialize the demos
    $demoCntr.find("input[name='example1']")
        .SPDateField()
        .on("change", function(){
            output.log("Example 1: input change: " + $(this).val());
        });
    
    $demoCntr.find("input[name='example2']")
        .SPDateField({ allowMultiples: true })
        .on("change", function(){
            output.log("Example 2: input change: " + $(this).val());
        });
        
    $demoCntr.find("input[name='example3']")
        .SPDateField({
            allowMultiples: true,
            datepicker: {
                dateFormat: "dd/mm/yy"
            } 
        })
        .on("change", function(){
            output.log("Example 3: input change: " + $(this).val());
        });
    
    $demoCntr.find("input[name='example4']")
        .SPDateField({
            allowMultiples: true
        })
        .on("change", function(){
            output.log("Example 4: input change: " + $(this).val());
        });
    
    $demoCntr.find("input[name='example5']")
        .SPDateField({
            showTimepicker: true,
            datepicker:     {
                dateFormat: "mm/dd/yy"
            }
        })
        .on("change", function(){
            output.log("Example 5: input change: " + $(this).val());
        });
    
    $demoCntr.find("input[name='example6']")
        .SPDateField({
            showTimepicker: true,
            allowMultiples: true
        })
        .on("change", function(){
            output.log("Example 6: input change: " + $(this).val());
        });
    
    
    $demoCntr.find("input[name='example7']")
        .SPDateField({
            showTimepicker: true,
            allowMultiples: true,
            labelAMPM:      'T. Day',
            labelTime:      'Select',
            labelMinutes:   'Min',
            labelHour:      'Hr',
            labelSet:       'Pick',
            timeUTC:        false
        })
        .on("change", function(){
            output.log("Example 7: input change: " + $(this).val());
        });
    
    $demoCntr.find("div.spwidget-spdatefield-demo8")
        .SPDateField({
            onSelect: function(){
                
                output.log(
                    "Example 8: date change: " +
                    $(this).SPDateField("getDate").input
                );
                
            }
        });
    
    $demoCntr.find("div.spwidget-spdatefield-demo9")
        .SPDateField({
            showTimepicker: true,
            onSelect: function() {
                
                output.log(
                    "Example 9: date change: " +
                    $(this).SPDateField("getDate").input
                );
                
            }
        });
    
})(SPWIDGET_DEMO.JQUERY || jQuery);
/**
 * widget.filter.demo.js
 * Demo code for the Filter Panel widget
 * 
 */
(function($){
    
    var Main        = SPWIDGET_DEMO,
        $cntr       = $("#SPControlListFilterPanel"),
        $textarea   = $cntr.find("textarea"),
        $demoCntr   = $cntr.find("div.spwidgets-list-filter"),
        $sliderVal  = $cntr.find("div.spwidgets-list-filter-slider-value"),
        $results    = $cntr.find("div.spwidgets-demo-filter-result-output");
    
    
    //---------------------------------------
    
    // Create the tabs under this demo
    $cntr.find("div.spwidget-demo-tabs").tabs();
    
    
    // Insert the set of Lists on this site and when user
    // selects one, get is list of columns and display a filter
    // panel for it.
    Main.insertListSelector({
        container:          $cntr.find("div.spwidgets-demo-lists"),
        includeLibraries:   false,
        onListSelect:       function($listInfo){
            
            var listName = $listInfo.find("Title").text();
            
            $results.html("");
            
            // Get a list of columns for this list and then
            // display a filter panel for them.
            Main.getListColumns(listName).then(function(columns){
                
                var tblHeader   = '',
                    rowTemplate = '',
                    camlFields  = '';
                
                $demoCntr
                    .empty()
                    .SPFilterPanel({
                        list:       listName,
                        columns:    columns,
                        onFilterClick: function(filters){
                            
                            $textarea.val( vkbeautify.xml( filters.CAMLQuery ) );
                            
                            $results.html("<p>Loading...</p>");
                            
                            // Retrieve data from this list using the
                            // filter defined by the user
                            $().SPServices({
                                operation:      "GetListItems",
                                listName:       listName,
                                async:          true,
                                cacheXML:       false,
                                CAMLQuery:      '<Query><Where>' +
                                                filters.CAMLQuery +
                                                '</Where></Query>',
                                CAMLRowLimit:   10,
                                CAMLViewFields: camlFields,
                                completefunc:   function(xData, status){
                                    
                                    var rows = $(xData.responseXML)
                                                .SPFilterNode("z:row")
                                                .SPXmlToJson({
                                                    includeAllAttrs: true
                                                });
                                    
                                    $results.html(
                                        "<table width='98%' class='ui-widget-content'>" +
                                            tblHeader + 
                                            $.SPWidgets.fillTemplate(
                                                rowTemplate,
                                                rows
                                            ) +
                                        "</table>"
                                    );
                                    
                                    
                                } //end: completefunc()
                            });
                            
                            
                            
                        } //end: onFilterClick()
                    });
                
                
                // Get the list definition and build the template for the
                // output of what was found.
                $().SPServices({
                    operation:  "GetList",
                    listName:   listName,
                    cacheXML:   true,
                    async:      true,
                    completefunc: function(xData, status) {
                        
                        var resp = $(xData.responseXML);
                        
                        $.each(columns, function(i, col){
                            
                            var $colXml = resp.find("Fields Field[DisplayName='" + 
                                            col + "']");
                            
                            tblHeader   += '<th class="ui-widget-content">' + 
                                            col + '</th>';
                            
                            rowTemplate += '<td class="ui-widget-content">{{' + 
                                            $colXml.attr("StaticName") + '}}</td>';
                            
                            camlFields  += '<FieldRef Name="' + 
                                            $colXml.attr("StaticName") + '" />';
                            
                            if (i === 2) {
                                
                                return false;
                                
                            }
                            
                        });
                        
                        tblHeader   = '<tr>' + tblHeader + '</tr>';
                        rowTemplate = '<tr>' + rowTemplate + '</tr>';
                        camlFields  = '<ViewFields>' + camlFields + '</ViewFields>';
                        
                    }//end: completefunc
                });
                
            });
        }
    });
    
    
    $cntr.find("div.spwidgets-list-filter-width")
        .slider({
            orientation: "horizontal",
            min:    10,
            max:    100,
            value:  100,
            slide:  function(ev, ui){
                
                $demoCntr.css("width", ui.value + "%");
                $sliderVal.html(ui.value + "%");
                
            }
        });
    
    
})(SPWIDGET_DEMO.JQUERY || jQuery);
/**
 * widget.lookup.demo.js
 * Code for the lookup field widget.
 */
(function($){
    
    var Main        = SPWIDGET_DEMO,
        $cntr       = $("#SPControlLookupFieldDemo"),
        $lookups    = $cntr.find("div.spwidgets-demo-lookup-examples"),
        lookupTmplt = '',
        $output     = $cntr.find(".spwidget-demo-code");
    
    
    $cntr.find("div.spwidget-demo-tabs").tabs();
    
    lookupTmplt = $lookups.html();
    
    $lookups.empty();
    
    Main.insertListSelector({
        container: $cntr.find("div.spwidgets-demo-lists"),
        onListSelect: function($list){
            
            var listName = $list.find("Title").text();
            
            $lookups
                .html(lookupTmplt)
                .find("input[name='example1']")
                    .change(function(){
                        
                        $output.append(
                            "<div>Example 1 input Value: " +
                            $(this).val() + "</div>");
                        
                    })
                    .SPLookupField({
                        list:           listName,
                        allowMultiples: false,
                        showSelector:   true
                    })
                    .end()
                .find("input[name='example2']")
                    .change(function(){
                        
                        $output.append(
                            "<div>Example 2 input Value: " +
                            $(this).val() + "</div>");
                        
                    })
                    .SPLookupField({
                        list:           listName,
                        allowMultiples: true
                    })
                    .end()
                .find("input[name='example3']")
                    .change(function(){
                        
                        $output.append(
                            "<div>Example 3 input Value: " +
                            $(this).val() + "</div>");
                        
                    })
                    .SPLookupField({
                        list:           listName,
                        allowMultiples: true,
                        showSelector:   true,
                        maxResults:     10,
                        listTemplate:   '#{{ID}}: {{Title}}',
                        filterOrderBy:  '<OrderBy><FieldRef Name="ID" Ascending="FALSE"/></OrderBy>',
                        onItemAdd:      function($newItemSelection, itemObject, widgetCntr){
                            
                            $output.append(
                            "<div>Example 3 onItemAdd Event: Item ID " +
                            itemObject.ID + " was added: " +
                            itemObject.Title + "</div>");
                            
                        },
                        onItemRemove:   function($items, itemObjects, $widgetCntr) {
                            
                            var removedItems = "";
                            
                            $.each(itemObjects, function(i, item){
                                
                                if (removedItems.length) {
                                    
                                    removedItems += " | ";
                                    
                                }
                                
                                removedItems += item.Title;
                                                                
                            });
                            
                            $output.append(
                            "<div>Example 3 onItemRemove Event: [" +
                            removedItems + "] were removed!</div>");
                            
                        }
                    })
                    .end()
                .find(".spwidgets-demo-lookup-example3-clear-all")
                    .click(function(){
                        
                        $lookups.find("input[name='example3']")
                            .SPLookupField("method", "clear");
                        
                    })
                    .end();
                
        }
    });
    
    
})(SPWIDGET_DEMO.JQUERY || jQuery);
/**
 * widget.people.demo.js
 * Code for the people picker widget.
 */
(function(){
    
    var $cntr                   = $("#SPControlPickUserDemo"),
        $output                 = $cntr.find("#SPControlPickUserEventOut"),
        prePopuplatedInputDone  = false,
        knownUserString         = '';
    
    /**
     * Logs output to the people picker output area
     */
    function logOutput(data) {
        
        $output.append($("<div/>").html(data));
        
    }
    
    function initPrePopulatedInputDemo(){
        
        $("#spuserdemo2cntr")
            .find("input")
                .val(knownUserString)
                .pickSPUser({
                    type: 'All',
                    onPickUser: function(u){
                        
                        logOutput("onPickUser Person added: " + u.displayName + ")");
                    }
                })
                .end()
            .show()
            .find(".spwidgets-demo-know-user")
                .html(knownUserString);
        
    }
    
    // SEtup listners
    $cntr
        .on("spwidget:peoplePickerCreate", function(ev, $input){
            
            logOutput("spwidget:peoplePickerCreate EVENT TRIGGERED!");
            
        })
        .on("spwidget:peoplePickerAdd", function(ev, $input, personObj){
            
            logOutput(
                "spwidget:peoplePickerAdd TRIGGERED! (Person: " + 
                personObj.displayName + ")");
                
        })
        .on("spwidget:peoplePickerRemove", function(ev, $input, personObj){
            
            logOutput(
                "spwidget:peoplePickerRemove TRIGGERED! (Person: " + 
                personObj.displayName + ")");
                
        });
    
    // Attach widget to input.
    $("input[name='spuserdemo']").pickSPUser({
        type: 'All',
        onPickUser: function(u){
            
            logOutput("onPickUser CALLED!(Person: " + u.displayName + ")");
            
            $("#sp_control_pick_user_detail")
                .empty()
                .append(
                    '<div>The following User was selected:</div>' +
                    '<div>User Name: ' + u.displayName + '</div>' +
                    '<div>Account Name: ' + u.accountName + '</div>' +
                    '<div>Account ID: ' + u.accountId + '</div>' +
                    '<div>Account Type: ' + u.accountType + '</div>'
                );
            
            // If Demo 2 is not yet initiated, do it now. 
            if (!prePopuplatedInputDone) {
                
                prePopuplatedInputDone  = true;
                knownUserString         = $(this).val();
                
                initPrePopulatedInputDemo();
                
                logOutput("NOTE: SECOND DEMO WAS INITIATED!");
                
            }
            
        },
        onCreate: function($input) {
            
            logOutput("onCreate CALLED!");
            
        },
        onRemoveUser: function($input, $ui, person){
            
            logOutput("onRemoveUser CALLED! (Person: " + person.displayName + ")");
            
        }
    });
    
    
})(SPWIDGET_DEMO.JQUERY || jQuery);
/**
 * widget.upload.demo.js
 * Code for the upload widget demo.
 */
(function($){
    
    "use strict";
    /*jslint nomen: true, plusplus: true */
    /*global SPWidgets, SPWIDGET_DEMO */
    
    var Main        = SPWIDGET_DEMO,    
        $ui         = Main.$ui.find("#SPControlUploadDemo"),
        $demoCntr   = $ui.find("div.spwidget-demo-upload-cntr"),
        $widgetCntr = $demoCntr.find("div.spwidget-demo-upload-widget"),
        $libFiles   = $demoCntr.find("div.spwidget-demo-library-files > table tbody"),
        $lastFile   = $demoCntr.find(".spwidget-demo-upload-last-file");
    
    
    /**
     * Removes the internal representation of a lookup value and
     * return only the expected visible value.
     */
    function getLookupFieldValue(xmlFieldValue, returnID){
        
        if (!xmlFieldValue) {
            
            return "";
            
        }
        
        if (xmlFieldValue.indexOf("#") < 0) {
            
            return xmlFieldValue;
            
        }
        
        var field = xmlFieldValue.substring(xmlFieldValue.indexOf("#") + 1);
        
        if (returnID) {
            
            field = parseInt(xmlFieldValue.substring(0, xmlFieldValue.indexOf(";")));
            
        }
        
        return field;
        
    } //end: getLookupFieldValue
    
    /**
     *  Pulls in all files under th elibrary's root folder and displays them
     *  on the page, under the Files container.
     */
    function refreshFileList(listName) {
        
        $().SPServices({
            operation:  "GetListItems",
            async:      true,
            listName:   listName,
            CAMLQuery:  '<Query><Where>'
                    +       "<Neq>"
                    +           "<FieldRef Name='ContentType' />"
                    +           "<Value Type='Text'>Folder</Value>"
                    +       "</Neq>"
                    +   "</Where>"
                    +   "<OrderBy>"
                    +       "<FieldRef Name='Title' Ascending='True' />"
                    +   "</OrderBy></Query>",
            CAMLViewFields: "<ViewFields>"
                    +   "<FieldRef Name='Title'/>"
                    +   "<FieldRef Name='FileLeafRef'/>"
                    +   "<FieldRef Name='Filename'/>"
                    +   "<FieldRef Name='ContentType'/>"
                    +   "<FieldRef Name='Editor'/>"
                    +   "<FieldRef Name='Modified'/>"
                    +   "<FieldRef Name='EncodedAbsUrl'/>"
                    +   "<FieldRef Name='DocIcon'/>"
                    +   "</ViewFields>",
            CAMLRowLimit: 0,
            completefunc: function(xData, Status) {
                
                var r = $(xData.responseXML).SPFilterNode("z:row"),
                    s = "";
                    
                if (!r.length) {
                    
                    $libFiles.append("<tr><td colspan='20' class='ui-widget-content'>No documents found at root of Document Library!</td></tr>");
                    
                    return;
                    
                }
                
                r.each(function(){
                    
                    var d = $(this);
                    
                    s += '<tr>' +
                        '<td class="ui-widget-content">' + getLookupFieldValue(d.attr("ows_FileLeafRef")) + '</td>' +
                        '<td class="ui-widget-content">' + d.attr("ows_Modified") + '</td>' +
                        '<td class="ui-widget-content">' + getLookupFieldValue(d.attr("ows_Editor")) + '</td>' +
                    '</tr>';
                    
                });
                
                $libFiles.html(s);
                
            }//end: completefunc()
        });
    }//end: refreshFileList()
    
    
    // Insert the list picker
    Main.insertListSelector({
        container:      $ui.find("div.spwidgets-demo-lists"),
        includeLists:   false,
        onListSelect:   function($library){
            
            var libraryName = $library.find("Title").text();
            
            refreshFileList(libraryName);
            
            $demoCntr.show();
            
            $widgetCntr
                .empty()
                .append("<h3>Upload with Overwrite = False</h3>");
            
            $("<div/>")
                .appendTo($widgetCntr)
                .SPControlUpload({
                    listName:       libraryName,
                    debug:          Main.debug,
                    onUploadDone:   function(file){
                        
                        refreshFileList(libraryName);
                        
                        $lastFile.html(decodeURIComponent(file.EncodedAbsUrl));
                        
                    }
                });
            
            $widgetCntr
                .append("<h3>Upload with Overwrite = True</h3>");
                
            $("<div/>")
                .appendTo($widgetCntr)
                .SPControlUpload({
                    listName:       libraryName,
                    debug:          Main.debug,
                    overwrite:      true,
                    onUploadDone:   function(file){
                        
                        refreshFileList(libraryName);
                        
                        $lastFile.html(decodeURIComponent(file.EncodedAbsUrl));
                        
                    }
                });
            
        }//end: onListSelect()
    });
    
})(SPWIDGET_DEMO.JQUERY || jQuery);


//----------------- end of demo code (above) -------------------------
            
        }); //end: ready()
        
    })(
        // Execute the function below to load all the needed libraries
        // and then return the jQuery object as input to the function
        // above.
        (function(){
            
            if (!window.SPWIDGET_DEMO) {
                
                window.SPWIDGET_DEMO = {};
                
            }
            
            window.SPWIDGET_DEMO.JQUERY = null;
            
//-------- 3rd Party Libs below: inserted by build script ----------------- 
            
/*! jQuery v1.10.2 | (c) 2005, 2013 jQuery Foundation, Inc. | jquery.org/license
//@ sourceMappingURL=jquery-1.10.2.min.map
*/
(function(e,t){var n,r,i=typeof t,o=e.location,a=e.document,s=a.documentElement,l=e.jQuery,u=e.$,c={},p=[],f="1.10.2",d=p.concat,h=p.push,g=p.slice,m=p.indexOf,y=c.toString,v=c.hasOwnProperty,b=f.trim,x=function(e,t){return new x.fn.init(e,t,r)},w=/[+-]?(?:\d*\.|)\d+(?:[eE][+-]?\d+|)/.source,T=/\S+/g,C=/^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g,N=/^(?:\s*(<[\w\W]+>)[^>]*|#([\w-]*))$/,k=/^<(\w+)\s*\/?>(?:<\/\1>|)$/,E=/^[\],:{}\s]*$/,S=/(?:^|:|,)(?:\s*\[)+/g,A=/\\(?:["\\\/bfnrt]|u[\da-fA-F]{4})/g,j=/"[^"\\\r\n]*"|true|false|null|-?(?:\d+\.|)\d+(?:[eE][+-]?\d+|)/g,D=/^-ms-/,L=/-([\da-z])/gi,H=function(e,t){return t.toUpperCase()},q=function(e){(a.addEventListener||"load"===e.type||"complete"===a.readyState)&&(_(),x.ready())},_=function(){a.addEventListener?(a.removeEventListener("DOMContentLoaded",q,!1),e.removeEventListener("load",q,!1)):(a.detachEvent("onreadystatechange",q),e.detachEvent("onload",q))};x.fn=x.prototype={jquery:f,constructor:x,init:function(e,n,r){var i,o;if(!e)return this;if("string"==typeof e){if(i="<"===e.charAt(0)&&">"===e.charAt(e.length-1)&&e.length>=3?[null,e,null]:N.exec(e),!i||!i[1]&&n)return!n||n.jquery?(n||r).find(e):this.constructor(n).find(e);if(i[1]){if(n=n instanceof x?n[0]:n,x.merge(this,x.parseHTML(i[1],n&&n.nodeType?n.ownerDocument||n:a,!0)),k.test(i[1])&&x.isPlainObject(n))for(i in n)x.isFunction(this[i])?this[i](n[i]):this.attr(i,n[i]);return this}if(o=a.getElementById(i[2]),o&&o.parentNode){if(o.id!==i[2])return r.find(e);this.length=1,this[0]=o}return this.context=a,this.selector=e,this}return e.nodeType?(this.context=this[0]=e,this.length=1,this):x.isFunction(e)?r.ready(e):(e.selector!==t&&(this.selector=e.selector,this.context=e.context),x.makeArray(e,this))},selector:"",length:0,toArray:function(){return g.call(this)},get:function(e){return null==e?this.toArray():0>e?this[this.length+e]:this[e]},pushStack:function(e){var t=x.merge(this.constructor(),e);return t.prevObject=this,t.context=this.context,t},each:function(e,t){return x.each(this,e,t)},ready:function(e){return x.ready.promise().done(e),this},slice:function(){return this.pushStack(g.apply(this,arguments))},first:function(){return this.eq(0)},last:function(){return this.eq(-1)},eq:function(e){var t=this.length,n=+e+(0>e?t:0);return this.pushStack(n>=0&&t>n?[this[n]]:[])},map:function(e){return this.pushStack(x.map(this,function(t,n){return e.call(t,n,t)}))},end:function(){return this.prevObject||this.constructor(null)},push:h,sort:[].sort,splice:[].splice},x.fn.init.prototype=x.fn,x.extend=x.fn.extend=function(){var e,n,r,i,o,a,s=arguments[0]||{},l=1,u=arguments.length,c=!1;for("boolean"==typeof s&&(c=s,s=arguments[1]||{},l=2),"object"==typeof s||x.isFunction(s)||(s={}),u===l&&(s=this,--l);u>l;l++)if(null!=(o=arguments[l]))for(i in o)e=s[i],r=o[i],s!==r&&(c&&r&&(x.isPlainObject(r)||(n=x.isArray(r)))?(n?(n=!1,a=e&&x.isArray(e)?e:[]):a=e&&x.isPlainObject(e)?e:{},s[i]=x.extend(c,a,r)):r!==t&&(s[i]=r));return s},x.extend({expando:"jQuery"+(f+Math.random()).replace(/\D/g,""),noConflict:function(t){return e.$===x&&(e.$=u),t&&e.jQuery===x&&(e.jQuery=l),x},isReady:!1,readyWait:1,holdReady:function(e){e?x.readyWait++:x.ready(!0)},ready:function(e){if(e===!0?!--x.readyWait:!x.isReady){if(!a.body)return setTimeout(x.ready);x.isReady=!0,e!==!0&&--x.readyWait>0||(n.resolveWith(a,[x]),x.fn.trigger&&x(a).trigger("ready").off("ready"))}},isFunction:function(e){return"function"===x.type(e)},isArray:Array.isArray||function(e){return"array"===x.type(e)},isWindow:function(e){return null!=e&&e==e.window},isNumeric:function(e){return!isNaN(parseFloat(e))&&isFinite(e)},type:function(e){return null==e?e+"":"object"==typeof e||"function"==typeof e?c[y.call(e)]||"object":typeof e},isPlainObject:function(e){var n;if(!e||"object"!==x.type(e)||e.nodeType||x.isWindow(e))return!1;try{if(e.constructor&&!v.call(e,"constructor")&&!v.call(e.constructor.prototype,"isPrototypeOf"))return!1}catch(r){return!1}if(x.support.ownLast)for(n in e)return v.call(e,n);for(n in e);return n===t||v.call(e,n)},isEmptyObject:function(e){var t;for(t in e)return!1;return!0},error:function(e){throw Error(e)},parseHTML:function(e,t,n){if(!e||"string"!=typeof e)return null;"boolean"==typeof t&&(n=t,t=!1),t=t||a;var r=k.exec(e),i=!n&&[];return r?[t.createElement(r[1])]:(r=x.buildFragment([e],t,i),i&&x(i).remove(),x.merge([],r.childNodes))},parseJSON:function(n){return e.JSON&&e.JSON.parse?e.JSON.parse(n):null===n?n:"string"==typeof n&&(n=x.trim(n),n&&E.test(n.replace(A,"@").replace(j,"]").replace(S,"")))?Function("return "+n)():(x.error("Invalid JSON: "+n),t)},parseXML:function(n){var r,i;if(!n||"string"!=typeof n)return null;try{e.DOMParser?(i=new DOMParser,r=i.parseFromString(n,"text/xml")):(r=new ActiveXObject("Microsoft.XMLDOM"),r.async="false",r.loadXML(n))}catch(o){r=t}return r&&r.documentElement&&!r.getElementsByTagName("parsererror").length||x.error("Invalid XML: "+n),r},noop:function(){},globalEval:function(t){t&&x.trim(t)&&(e.execScript||function(t){e.eval.call(e,t)})(t)},camelCase:function(e){return e.replace(D,"ms-").replace(L,H)},nodeName:function(e,t){return e.nodeName&&e.nodeName.toLowerCase()===t.toLowerCase()},each:function(e,t,n){var r,i=0,o=e.length,a=M(e);if(n){if(a){for(;o>i;i++)if(r=t.apply(e[i],n),r===!1)break}else for(i in e)if(r=t.apply(e[i],n),r===!1)break}else if(a){for(;o>i;i++)if(r=t.call(e[i],i,e[i]),r===!1)break}else for(i in e)if(r=t.call(e[i],i,e[i]),r===!1)break;return e},trim:b&&!b.call("\ufeff\u00a0")?function(e){return null==e?"":b.call(e)}:function(e){return null==e?"":(e+"").replace(C,"")},makeArray:function(e,t){var n=t||[];return null!=e&&(M(Object(e))?x.merge(n,"string"==typeof e?[e]:e):h.call(n,e)),n},inArray:function(e,t,n){var r;if(t){if(m)return m.call(t,e,n);for(r=t.length,n=n?0>n?Math.max(0,r+n):n:0;r>n;n++)if(n in t&&t[n]===e)return n}return-1},merge:function(e,n){var r=n.length,i=e.length,o=0;if("number"==typeof r)for(;r>o;o++)e[i++]=n[o];else while(n[o]!==t)e[i++]=n[o++];return e.length=i,e},grep:function(e,t,n){var r,i=[],o=0,a=e.length;for(n=!!n;a>o;o++)r=!!t(e[o],o),n!==r&&i.push(e[o]);return i},map:function(e,t,n){var r,i=0,o=e.length,a=M(e),s=[];if(a)for(;o>i;i++)r=t(e[i],i,n),null!=r&&(s[s.length]=r);else for(i in e)r=t(e[i],i,n),null!=r&&(s[s.length]=r);return d.apply([],s)},guid:1,proxy:function(e,n){var r,i,o;return"string"==typeof n&&(o=e[n],n=e,e=o),x.isFunction(e)?(r=g.call(arguments,2),i=function(){return e.apply(n||this,r.concat(g.call(arguments)))},i.guid=e.guid=e.guid||x.guid++,i):t},access:function(e,n,r,i,o,a,s){var l=0,u=e.length,c=null==r;if("object"===x.type(r)){o=!0;for(l in r)x.access(e,n,l,r[l],!0,a,s)}else if(i!==t&&(o=!0,x.isFunction(i)||(s=!0),c&&(s?(n.call(e,i),n=null):(c=n,n=function(e,t,n){return c.call(x(e),n)})),n))for(;u>l;l++)n(e[l],r,s?i:i.call(e[l],l,n(e[l],r)));return o?e:c?n.call(e):u?n(e[0],r):a},now:function(){return(new Date).getTime()},swap:function(e,t,n,r){var i,o,a={};for(o in t)a[o]=e.style[o],e.style[o]=t[o];i=n.apply(e,r||[]);for(o in t)e.style[o]=a[o];return i}}),x.ready.promise=function(t){if(!n)if(n=x.Deferred(),"complete"===a.readyState)setTimeout(x.ready);else if(a.addEventListener)a.addEventListener("DOMContentLoaded",q,!1),e.addEventListener("load",q,!1);else{a.attachEvent("onreadystatechange",q),e.attachEvent("onload",q);var r=!1;try{r=null==e.frameElement&&a.documentElement}catch(i){}r&&r.doScroll&&function o(){if(!x.isReady){try{r.doScroll("left")}catch(e){return setTimeout(o,50)}_(),x.ready()}}()}return n.promise(t)},x.each("Boolean Number String Function Array Date RegExp Object Error".split(" "),function(e,t){c["[object "+t+"]"]=t.toLowerCase()});function M(e){var t=e.length,n=x.type(e);return x.isWindow(e)?!1:1===e.nodeType&&t?!0:"array"===n||"function"!==n&&(0===t||"number"==typeof t&&t>0&&t-1 in e)}r=x(a),function(e,t){var n,r,i,o,a,s,l,u,c,p,f,d,h,g,m,y,v,b="sizzle"+-new Date,w=e.document,T=0,C=0,N=st(),k=st(),E=st(),S=!1,A=function(e,t){return e===t?(S=!0,0):0},j=typeof t,D=1<<31,L={}.hasOwnProperty,H=[],q=H.pop,_=H.push,M=H.push,O=H.slice,F=H.indexOf||function(e){var t=0,n=this.length;for(;n>t;t++)if(this[t]===e)return t;return-1},B="checked|selected|async|autofocus|autoplay|controls|defer|disabled|hidden|ismap|loop|multiple|open|readonly|required|scoped",P="[\\x20\\t\\r\\n\\f]",R="(?:\\\\.|[\\w-]|[^\\x00-\\xa0])+",W=R.replace("w","w#"),$="\\["+P+"*("+R+")"+P+"*(?:([*^$|!~]?=)"+P+"*(?:(['\"])((?:\\\\.|[^\\\\])*?)\\3|("+W+")|)|)"+P+"*\\]",I=":("+R+")(?:\\(((['\"])((?:\\\\.|[^\\\\])*?)\\3|((?:\\\\.|[^\\\\()[\\]]|"+$.replace(3,8)+")*)|.*)\\)|)",z=RegExp("^"+P+"+|((?:^|[^\\\\])(?:\\\\.)*)"+P+"+$","g"),X=RegExp("^"+P+"*,"+P+"*"),U=RegExp("^"+P+"*([>+~]|"+P+")"+P+"*"),V=RegExp(P+"*[+~]"),Y=RegExp("="+P+"*([^\\]'\"]*)"+P+"*\\]","g"),J=RegExp(I),G=RegExp("^"+W+"$"),Q={ID:RegExp("^#("+R+")"),CLASS:RegExp("^\\.("+R+")"),TAG:RegExp("^("+R.replace("w","w*")+")"),ATTR:RegExp("^"+$),PSEUDO:RegExp("^"+I),CHILD:RegExp("^:(only|first|last|nth|nth-last)-(child|of-type)(?:\\("+P+"*(even|odd|(([+-]|)(\\d*)n|)"+P+"*(?:([+-]|)"+P+"*(\\d+)|))"+P+"*\\)|)","i"),bool:RegExp("^(?:"+B+")$","i"),needsContext:RegExp("^"+P+"*[>+~]|:(even|odd|eq|gt|lt|nth|first|last)(?:\\("+P+"*((?:-\\d)?\\d*)"+P+"*\\)|)(?=[^-]|$)","i")},K=/^[^{]+\{\s*\[native \w/,Z=/^(?:#([\w-]+)|(\w+)|\.([\w-]+))$/,et=/^(?:input|select|textarea|button)$/i,tt=/^h\d$/i,nt=/'|\\/g,rt=RegExp("\\\\([\\da-f]{1,6}"+P+"?|("+P+")|.)","ig"),it=function(e,t,n){var r="0x"+t-65536;return r!==r||n?t:0>r?String.fromCharCode(r+65536):String.fromCharCode(55296|r>>10,56320|1023&r)};try{M.apply(H=O.call(w.childNodes),w.childNodes),H[w.childNodes.length].nodeType}catch(ot){M={apply:H.length?function(e,t){_.apply(e,O.call(t))}:function(e,t){var n=e.length,r=0;while(e[n++]=t[r++]);e.length=n-1}}}function at(e,t,n,i){var o,a,s,l,u,c,d,m,y,x;if((t?t.ownerDocument||t:w)!==f&&p(t),t=t||f,n=n||[],!e||"string"!=typeof e)return n;if(1!==(l=t.nodeType)&&9!==l)return[];if(h&&!i){if(o=Z.exec(e))if(s=o[1]){if(9===l){if(a=t.getElementById(s),!a||!a.parentNode)return n;if(a.id===s)return n.push(a),n}else if(t.ownerDocument&&(a=t.ownerDocument.getElementById(s))&&v(t,a)&&a.id===s)return n.push(a),n}else{if(o[2])return M.apply(n,t.getElementsByTagName(e)),n;if((s=o[3])&&r.getElementsByClassName&&t.getElementsByClassName)return M.apply(n,t.getElementsByClassName(s)),n}if(r.qsa&&(!g||!g.test(e))){if(m=d=b,y=t,x=9===l&&e,1===l&&"object"!==t.nodeName.toLowerCase()){c=mt(e),(d=t.getAttribute("id"))?m=d.replace(nt,"\\$&"):t.setAttribute("id",m),m="[id='"+m+"'] ",u=c.length;while(u--)c[u]=m+yt(c[u]);y=V.test(e)&&t.parentNode||t,x=c.join(",")}if(x)try{return M.apply(n,y.querySelectorAll(x)),n}catch(T){}finally{d||t.removeAttribute("id")}}}return kt(e.replace(z,"$1"),t,n,i)}function st(){var e=[];function t(n,r){return e.push(n+=" ")>o.cacheLength&&delete t[e.shift()],t[n]=r}return t}function lt(e){return e[b]=!0,e}function ut(e){var t=f.createElement("div");try{return!!e(t)}catch(n){return!1}finally{t.parentNode&&t.parentNode.removeChild(t),t=null}}function ct(e,t){var n=e.split("|"),r=e.length;while(r--)o.attrHandle[n[r]]=t}function pt(e,t){var n=t&&e,r=n&&1===e.nodeType&&1===t.nodeType&&(~t.sourceIndex||D)-(~e.sourceIndex||D);if(r)return r;if(n)while(n=n.nextSibling)if(n===t)return-1;return e?1:-1}function ft(e){return function(t){var n=t.nodeName.toLowerCase();return"input"===n&&t.type===e}}function dt(e){return function(t){var n=t.nodeName.toLowerCase();return("input"===n||"button"===n)&&t.type===e}}function ht(e){return lt(function(t){return t=+t,lt(function(n,r){var i,o=e([],n.length,t),a=o.length;while(a--)n[i=o[a]]&&(n[i]=!(r[i]=n[i]))})})}s=at.isXML=function(e){var t=e&&(e.ownerDocument||e).documentElement;return t?"HTML"!==t.nodeName:!1},r=at.support={},p=at.setDocument=function(e){var n=e?e.ownerDocument||e:w,i=n.defaultView;return n!==f&&9===n.nodeType&&n.documentElement?(f=n,d=n.documentElement,h=!s(n),i&&i.attachEvent&&i!==i.top&&i.attachEvent("onbeforeunload",function(){p()}),r.attributes=ut(function(e){return e.className="i",!e.getAttribute("className")}),r.getElementsByTagName=ut(function(e){return e.appendChild(n.createComment("")),!e.getElementsByTagName("*").length}),r.getElementsByClassName=ut(function(e){return e.innerHTML="<div class='a'></div><div class='a i'></div>",e.firstChild.className="i",2===e.getElementsByClassName("i").length}),r.getById=ut(function(e){return d.appendChild(e).id=b,!n.getElementsByName||!n.getElementsByName(b).length}),r.getById?(o.find.ID=function(e,t){if(typeof t.getElementById!==j&&h){var n=t.getElementById(e);return n&&n.parentNode?[n]:[]}},o.filter.ID=function(e){var t=e.replace(rt,it);return function(e){return e.getAttribute("id")===t}}):(delete o.find.ID,o.filter.ID=function(e){var t=e.replace(rt,it);return function(e){var n=typeof e.getAttributeNode!==j&&e.getAttributeNode("id");return n&&n.value===t}}),o.find.TAG=r.getElementsByTagName?function(e,n){return typeof n.getElementsByTagName!==j?n.getElementsByTagName(e):t}:function(e,t){var n,r=[],i=0,o=t.getElementsByTagName(e);if("*"===e){while(n=o[i++])1===n.nodeType&&r.push(n);return r}return o},o.find.CLASS=r.getElementsByClassName&&function(e,n){return typeof n.getElementsByClassName!==j&&h?n.getElementsByClassName(e):t},m=[],g=[],(r.qsa=K.test(n.querySelectorAll))&&(ut(function(e){e.innerHTML="<select><option selected=''></option></select>",e.querySelectorAll("[selected]").length||g.push("\\["+P+"*(?:value|"+B+")"),e.querySelectorAll(":checked").length||g.push(":checked")}),ut(function(e){var t=n.createElement("input");t.setAttribute("type","hidden"),e.appendChild(t).setAttribute("t",""),e.querySelectorAll("[t^='']").length&&g.push("[*^$]="+P+"*(?:''|\"\")"),e.querySelectorAll(":enabled").length||g.push(":enabled",":disabled"),e.querySelectorAll("*,:x"),g.push(",.*:")})),(r.matchesSelector=K.test(y=d.webkitMatchesSelector||d.mozMatchesSelector||d.oMatchesSelector||d.msMatchesSelector))&&ut(function(e){r.disconnectedMatch=y.call(e,"div"),y.call(e,"[s!='']:x"),m.push("!=",I)}),g=g.length&&RegExp(g.join("|")),m=m.length&&RegExp(m.join("|")),v=K.test(d.contains)||d.compareDocumentPosition?function(e,t){var n=9===e.nodeType?e.documentElement:e,r=t&&t.parentNode;return e===r||!(!r||1!==r.nodeType||!(n.contains?n.contains(r):e.compareDocumentPosition&&16&e.compareDocumentPosition(r)))}:function(e,t){if(t)while(t=t.parentNode)if(t===e)return!0;return!1},A=d.compareDocumentPosition?function(e,t){if(e===t)return S=!0,0;var i=t.compareDocumentPosition&&e.compareDocumentPosition&&e.compareDocumentPosition(t);return i?1&i||!r.sortDetached&&t.compareDocumentPosition(e)===i?e===n||v(w,e)?-1:t===n||v(w,t)?1:c?F.call(c,e)-F.call(c,t):0:4&i?-1:1:e.compareDocumentPosition?-1:1}:function(e,t){var r,i=0,o=e.parentNode,a=t.parentNode,s=[e],l=[t];if(e===t)return S=!0,0;if(!o||!a)return e===n?-1:t===n?1:o?-1:a?1:c?F.call(c,e)-F.call(c,t):0;if(o===a)return pt(e,t);r=e;while(r=r.parentNode)s.unshift(r);r=t;while(r=r.parentNode)l.unshift(r);while(s[i]===l[i])i++;return i?pt(s[i],l[i]):s[i]===w?-1:l[i]===w?1:0},n):f},at.matches=function(e,t){return at(e,null,null,t)},at.matchesSelector=function(e,t){if((e.ownerDocument||e)!==f&&p(e),t=t.replace(Y,"='$1']"),!(!r.matchesSelector||!h||m&&m.test(t)||g&&g.test(t)))try{var n=y.call(e,t);if(n||r.disconnectedMatch||e.document&&11!==e.document.nodeType)return n}catch(i){}return at(t,f,null,[e]).length>0},at.contains=function(e,t){return(e.ownerDocument||e)!==f&&p(e),v(e,t)},at.attr=function(e,n){(e.ownerDocument||e)!==f&&p(e);var i=o.attrHandle[n.toLowerCase()],a=i&&L.call(o.attrHandle,n.toLowerCase())?i(e,n,!h):t;return a===t?r.attributes||!h?e.getAttribute(n):(a=e.getAttributeNode(n))&&a.specified?a.value:null:a},at.error=function(e){throw Error("Syntax error, unrecognized expression: "+e)},at.uniqueSort=function(e){var t,n=[],i=0,o=0;if(S=!r.detectDuplicates,c=!r.sortStable&&e.slice(0),e.sort(A),S){while(t=e[o++])t===e[o]&&(i=n.push(o));while(i--)e.splice(n[i],1)}return e},a=at.getText=function(e){var t,n="",r=0,i=e.nodeType;if(i){if(1===i||9===i||11===i){if("string"==typeof e.textContent)return e.textContent;for(e=e.firstChild;e;e=e.nextSibling)n+=a(e)}else if(3===i||4===i)return e.nodeValue}else for(;t=e[r];r++)n+=a(t);return n},o=at.selectors={cacheLength:50,createPseudo:lt,match:Q,attrHandle:{},find:{},relative:{">":{dir:"parentNode",first:!0}," ":{dir:"parentNode"},"+":{dir:"previousSibling",first:!0},"~":{dir:"previousSibling"}},preFilter:{ATTR:function(e){return e[1]=e[1].replace(rt,it),e[3]=(e[4]||e[5]||"").replace(rt,it),"~="===e[2]&&(e[3]=" "+e[3]+" "),e.slice(0,4)},CHILD:function(e){return e[1]=e[1].toLowerCase(),"nth"===e[1].slice(0,3)?(e[3]||at.error(e[0]),e[4]=+(e[4]?e[5]+(e[6]||1):2*("even"===e[3]||"odd"===e[3])),e[5]=+(e[7]+e[8]||"odd"===e[3])):e[3]&&at.error(e[0]),e},PSEUDO:function(e){var n,r=!e[5]&&e[2];return Q.CHILD.test(e[0])?null:(e[3]&&e[4]!==t?e[2]=e[4]:r&&J.test(r)&&(n=mt(r,!0))&&(n=r.indexOf(")",r.length-n)-r.length)&&(e[0]=e[0].slice(0,n),e[2]=r.slice(0,n)),e.slice(0,3))}},filter:{TAG:function(e){var t=e.replace(rt,it).toLowerCase();return"*"===e?function(){return!0}:function(e){return e.nodeName&&e.nodeName.toLowerCase()===t}},CLASS:function(e){var t=N[e+" "];return t||(t=RegExp("(^|"+P+")"+e+"("+P+"|$)"))&&N(e,function(e){return t.test("string"==typeof e.className&&e.className||typeof e.getAttribute!==j&&e.getAttribute("class")||"")})},ATTR:function(e,t,n){return function(r){var i=at.attr(r,e);return null==i?"!="===t:t?(i+="","="===t?i===n:"!="===t?i!==n:"^="===t?n&&0===i.indexOf(n):"*="===t?n&&i.indexOf(n)>-1:"$="===t?n&&i.slice(-n.length)===n:"~="===t?(" "+i+" ").indexOf(n)>-1:"|="===t?i===n||i.slice(0,n.length+1)===n+"-":!1):!0}},CHILD:function(e,t,n,r,i){var o="nth"!==e.slice(0,3),a="last"!==e.slice(-4),s="of-type"===t;return 1===r&&0===i?function(e){return!!e.parentNode}:function(t,n,l){var u,c,p,f,d,h,g=o!==a?"nextSibling":"previousSibling",m=t.parentNode,y=s&&t.nodeName.toLowerCase(),v=!l&&!s;if(m){if(o){while(g){p=t;while(p=p[g])if(s?p.nodeName.toLowerCase()===y:1===p.nodeType)return!1;h=g="only"===e&&!h&&"nextSibling"}return!0}if(h=[a?m.firstChild:m.lastChild],a&&v){c=m[b]||(m[b]={}),u=c[e]||[],d=u[0]===T&&u[1],f=u[0]===T&&u[2],p=d&&m.childNodes[d];while(p=++d&&p&&p[g]||(f=d=0)||h.pop())if(1===p.nodeType&&++f&&p===t){c[e]=[T,d,f];break}}else if(v&&(u=(t[b]||(t[b]={}))[e])&&u[0]===T)f=u[1];else while(p=++d&&p&&p[g]||(f=d=0)||h.pop())if((s?p.nodeName.toLowerCase()===y:1===p.nodeType)&&++f&&(v&&((p[b]||(p[b]={}))[e]=[T,f]),p===t))break;return f-=i,f===r||0===f%r&&f/r>=0}}},PSEUDO:function(e,t){var n,r=o.pseudos[e]||o.setFilters[e.toLowerCase()]||at.error("unsupported pseudo: "+e);return r[b]?r(t):r.length>1?(n=[e,e,"",t],o.setFilters.hasOwnProperty(e.toLowerCase())?lt(function(e,n){var i,o=r(e,t),a=o.length;while(a--)i=F.call(e,o[a]),e[i]=!(n[i]=o[a])}):function(e){return r(e,0,n)}):r}},pseudos:{not:lt(function(e){var t=[],n=[],r=l(e.replace(z,"$1"));return r[b]?lt(function(e,t,n,i){var o,a=r(e,null,i,[]),s=e.length;while(s--)(o=a[s])&&(e[s]=!(t[s]=o))}):function(e,i,o){return t[0]=e,r(t,null,o,n),!n.pop()}}),has:lt(function(e){return function(t){return at(e,t).length>0}}),contains:lt(function(e){return function(t){return(t.textContent||t.innerText||a(t)).indexOf(e)>-1}}),lang:lt(function(e){return G.test(e||"")||at.error("unsupported lang: "+e),e=e.replace(rt,it).toLowerCase(),function(t){var n;do if(n=h?t.lang:t.getAttribute("xml:lang")||t.getAttribute("lang"))return n=n.toLowerCase(),n===e||0===n.indexOf(e+"-");while((t=t.parentNode)&&1===t.nodeType);return!1}}),target:function(t){var n=e.location&&e.location.hash;return n&&n.slice(1)===t.id},root:function(e){return e===d},focus:function(e){return e===f.activeElement&&(!f.hasFocus||f.hasFocus())&&!!(e.type||e.href||~e.tabIndex)},enabled:function(e){return e.disabled===!1},disabled:function(e){return e.disabled===!0},checked:function(e){var t=e.nodeName.toLowerCase();return"input"===t&&!!e.checked||"option"===t&&!!e.selected},selected:function(e){return e.parentNode&&e.parentNode.selectedIndex,e.selected===!0},empty:function(e){for(e=e.firstChild;e;e=e.nextSibling)if(e.nodeName>"@"||3===e.nodeType||4===e.nodeType)return!1;return!0},parent:function(e){return!o.pseudos.empty(e)},header:function(e){return tt.test(e.nodeName)},input:function(e){return et.test(e.nodeName)},button:function(e){var t=e.nodeName.toLowerCase();return"input"===t&&"button"===e.type||"button"===t},text:function(e){var t;return"input"===e.nodeName.toLowerCase()&&"text"===e.type&&(null==(t=e.getAttribute("type"))||t.toLowerCase()===e.type)},first:ht(function(){return[0]}),last:ht(function(e,t){return[t-1]}),eq:ht(function(e,t,n){return[0>n?n+t:n]}),even:ht(function(e,t){var n=0;for(;t>n;n+=2)e.push(n);return e}),odd:ht(function(e,t){var n=1;for(;t>n;n+=2)e.push(n);return e}),lt:ht(function(e,t,n){var r=0>n?n+t:n;for(;--r>=0;)e.push(r);return e}),gt:ht(function(e,t,n){var r=0>n?n+t:n;for(;t>++r;)e.push(r);return e})}},o.pseudos.nth=o.pseudos.eq;for(n in{radio:!0,checkbox:!0,file:!0,password:!0,image:!0})o.pseudos[n]=ft(n);for(n in{submit:!0,reset:!0})o.pseudos[n]=dt(n);function gt(){}gt.prototype=o.filters=o.pseudos,o.setFilters=new gt;function mt(e,t){var n,r,i,a,s,l,u,c=k[e+" "];if(c)return t?0:c.slice(0);s=e,l=[],u=o.preFilter;while(s){(!n||(r=X.exec(s)))&&(r&&(s=s.slice(r[0].length)||s),l.push(i=[])),n=!1,(r=U.exec(s))&&(n=r.shift(),i.push({value:n,type:r[0].replace(z," ")}),s=s.slice(n.length));for(a in o.filter)!(r=Q[a].exec(s))||u[a]&&!(r=u[a](r))||(n=r.shift(),i.push({value:n,type:a,matches:r}),s=s.slice(n.length));if(!n)break}return t?s.length:s?at.error(e):k(e,l).slice(0)}function yt(e){var t=0,n=e.length,r="";for(;n>t;t++)r+=e[t].value;return r}function vt(e,t,n){var r=t.dir,o=n&&"parentNode"===r,a=C++;return t.first?function(t,n,i){while(t=t[r])if(1===t.nodeType||o)return e(t,n,i)}:function(t,n,s){var l,u,c,p=T+" "+a;if(s){while(t=t[r])if((1===t.nodeType||o)&&e(t,n,s))return!0}else while(t=t[r])if(1===t.nodeType||o)if(c=t[b]||(t[b]={}),(u=c[r])&&u[0]===p){if((l=u[1])===!0||l===i)return l===!0}else if(u=c[r]=[p],u[1]=e(t,n,s)||i,u[1]===!0)return!0}}function bt(e){return e.length>1?function(t,n,r){var i=e.length;while(i--)if(!e[i](t,n,r))return!1;return!0}:e[0]}function xt(e,t,n,r,i){var o,a=[],s=0,l=e.length,u=null!=t;for(;l>s;s++)(o=e[s])&&(!n||n(o,r,i))&&(a.push(o),u&&t.push(s));return a}function wt(e,t,n,r,i,o){return r&&!r[b]&&(r=wt(r)),i&&!i[b]&&(i=wt(i,o)),lt(function(o,a,s,l){var u,c,p,f=[],d=[],h=a.length,g=o||Nt(t||"*",s.nodeType?[s]:s,[]),m=!e||!o&&t?g:xt(g,f,e,s,l),y=n?i||(o?e:h||r)?[]:a:m;if(n&&n(m,y,s,l),r){u=xt(y,d),r(u,[],s,l),c=u.length;while(c--)(p=u[c])&&(y[d[c]]=!(m[d[c]]=p))}if(o){if(i||e){if(i){u=[],c=y.length;while(c--)(p=y[c])&&u.push(m[c]=p);i(null,y=[],u,l)}c=y.length;while(c--)(p=y[c])&&(u=i?F.call(o,p):f[c])>-1&&(o[u]=!(a[u]=p))}}else y=xt(y===a?y.splice(h,y.length):y),i?i(null,a,y,l):M.apply(a,y)})}function Tt(e){var t,n,r,i=e.length,a=o.relative[e[0].type],s=a||o.relative[" "],l=a?1:0,c=vt(function(e){return e===t},s,!0),p=vt(function(e){return F.call(t,e)>-1},s,!0),f=[function(e,n,r){return!a&&(r||n!==u)||((t=n).nodeType?c(e,n,r):p(e,n,r))}];for(;i>l;l++)if(n=o.relative[e[l].type])f=[vt(bt(f),n)];else{if(n=o.filter[e[l].type].apply(null,e[l].matches),n[b]){for(r=++l;i>r;r++)if(o.relative[e[r].type])break;return wt(l>1&&bt(f),l>1&&yt(e.slice(0,l-1).concat({value:" "===e[l-2].type?"*":""})).replace(z,"$1"),n,r>l&&Tt(e.slice(l,r)),i>r&&Tt(e=e.slice(r)),i>r&&yt(e))}f.push(n)}return bt(f)}function Ct(e,t){var n=0,r=t.length>0,a=e.length>0,s=function(s,l,c,p,d){var h,g,m,y=[],v=0,b="0",x=s&&[],w=null!=d,C=u,N=s||a&&o.find.TAG("*",d&&l.parentNode||l),k=T+=null==C?1:Math.random()||.1;for(w&&(u=l!==f&&l,i=n);null!=(h=N[b]);b++){if(a&&h){g=0;while(m=e[g++])if(m(h,l,c)){p.push(h);break}w&&(T=k,i=++n)}r&&((h=!m&&h)&&v--,s&&x.push(h))}if(v+=b,r&&b!==v){g=0;while(m=t[g++])m(x,y,l,c);if(s){if(v>0)while(b--)x[b]||y[b]||(y[b]=q.call(p));y=xt(y)}M.apply(p,y),w&&!s&&y.length>0&&v+t.length>1&&at.uniqueSort(p)}return w&&(T=k,u=C),x};return r?lt(s):s}l=at.compile=function(e,t){var n,r=[],i=[],o=E[e+" "];if(!o){t||(t=mt(e)),n=t.length;while(n--)o=Tt(t[n]),o[b]?r.push(o):i.push(o);o=E(e,Ct(i,r))}return o};function Nt(e,t,n){var r=0,i=t.length;for(;i>r;r++)at(e,t[r],n);return n}function kt(e,t,n,i){var a,s,u,c,p,f=mt(e);if(!i&&1===f.length){if(s=f[0]=f[0].slice(0),s.length>2&&"ID"===(u=s[0]).type&&r.getById&&9===t.nodeType&&h&&o.relative[s[1].type]){if(t=(o.find.ID(u.matches[0].replace(rt,it),t)||[])[0],!t)return n;e=e.slice(s.shift().value.length)}a=Q.needsContext.test(e)?0:s.length;while(a--){if(u=s[a],o.relative[c=u.type])break;if((p=o.find[c])&&(i=p(u.matches[0].replace(rt,it),V.test(s[0].type)&&t.parentNode||t))){if(s.splice(a,1),e=i.length&&yt(s),!e)return M.apply(n,i),n;break}}}return l(e,f)(i,t,!h,n,V.test(e)),n}r.sortStable=b.split("").sort(A).join("")===b,r.detectDuplicates=S,p(),r.sortDetached=ut(function(e){return 1&e.compareDocumentPosition(f.createElement("div"))}),ut(function(e){return e.innerHTML="<a href='#'></a>","#"===e.firstChild.getAttribute("href")})||ct("type|href|height|width",function(e,n,r){return r?t:e.getAttribute(n,"type"===n.toLowerCase()?1:2)}),r.attributes&&ut(function(e){return e.innerHTML="<input/>",e.firstChild.setAttribute("value",""),""===e.firstChild.getAttribute("value")})||ct("value",function(e,n,r){return r||"input"!==e.nodeName.toLowerCase()?t:e.defaultValue}),ut(function(e){return null==e.getAttribute("disabled")})||ct(B,function(e,n,r){var i;return r?t:(i=e.getAttributeNode(n))&&i.specified?i.value:e[n]===!0?n.toLowerCase():null}),x.find=at,x.expr=at.selectors,x.expr[":"]=x.expr.pseudos,x.unique=at.uniqueSort,x.text=at.getText,x.isXMLDoc=at.isXML,x.contains=at.contains}(e);var O={};function F(e){var t=O[e]={};return x.each(e.match(T)||[],function(e,n){t[n]=!0}),t}x.Callbacks=function(e){e="string"==typeof e?O[e]||F(e):x.extend({},e);var n,r,i,o,a,s,l=[],u=!e.once&&[],c=function(t){for(r=e.memory&&t,i=!0,a=s||0,s=0,o=l.length,n=!0;l&&o>a;a++)if(l[a].apply(t[0],t[1])===!1&&e.stopOnFalse){r=!1;break}n=!1,l&&(u?u.length&&c(u.shift()):r?l=[]:p.disable())},p={add:function(){if(l){var t=l.length;(function i(t){x.each(t,function(t,n){var r=x.type(n);"function"===r?e.unique&&p.has(n)||l.push(n):n&&n.length&&"string"!==r&&i(n)})})(arguments),n?o=l.length:r&&(s=t,c(r))}return this},remove:function(){return l&&x.each(arguments,function(e,t){var r;while((r=x.inArray(t,l,r))>-1)l.splice(r,1),n&&(o>=r&&o--,a>=r&&a--)}),this},has:function(e){return e?x.inArray(e,l)>-1:!(!l||!l.length)},empty:function(){return l=[],o=0,this},disable:function(){return l=u=r=t,this},disabled:function(){return!l},lock:function(){return u=t,r||p.disable(),this},locked:function(){return!u},fireWith:function(e,t){return!l||i&&!u||(t=t||[],t=[e,t.slice?t.slice():t],n?u.push(t):c(t)),this},fire:function(){return p.fireWith(this,arguments),this},fired:function(){return!!i}};return p},x.extend({Deferred:function(e){var t=[["resolve","done",x.Callbacks("once memory"),"resolved"],["reject","fail",x.Callbacks("once memory"),"rejected"],["notify","progress",x.Callbacks("memory")]],n="pending",r={state:function(){return n},always:function(){return i.done(arguments).fail(arguments),this},then:function(){var e=arguments;return x.Deferred(function(n){x.each(t,function(t,o){var a=o[0],s=x.isFunction(e[t])&&e[t];i[o[1]](function(){var e=s&&s.apply(this,arguments);e&&x.isFunction(e.promise)?e.promise().done(n.resolve).fail(n.reject).progress(n.notify):n[a+"With"](this===r?n.promise():this,s?[e]:arguments)})}),e=null}).promise()},promise:function(e){return null!=e?x.extend(e,r):r}},i={};return r.pipe=r.then,x.each(t,function(e,o){var a=o[2],s=o[3];r[o[1]]=a.add,s&&a.add(function(){n=s},t[1^e][2].disable,t[2][2].lock),i[o[0]]=function(){return i[o[0]+"With"](this===i?r:this,arguments),this},i[o[0]+"With"]=a.fireWith}),r.promise(i),e&&e.call(i,i),i},when:function(e){var t=0,n=g.call(arguments),r=n.length,i=1!==r||e&&x.isFunction(e.promise)?r:0,o=1===i?e:x.Deferred(),a=function(e,t,n){return function(r){t[e]=this,n[e]=arguments.length>1?g.call(arguments):r,n===s?o.notifyWith(t,n):--i||o.resolveWith(t,n)}},s,l,u;if(r>1)for(s=Array(r),l=Array(r),u=Array(r);r>t;t++)n[t]&&x.isFunction(n[t].promise)?n[t].promise().done(a(t,u,n)).fail(o.reject).progress(a(t,l,s)):--i;return i||o.resolveWith(u,n),o.promise()}}),x.support=function(t){var n,r,o,s,l,u,c,p,f,d=a.createElement("div");if(d.setAttribute("className","t"),d.innerHTML="  <link/><table></table><a href='/a'>a</a><input type='checkbox'/>",n=d.getElementsByTagName("*")||[],r=d.getElementsByTagName("a")[0],!r||!r.style||!n.length)return t;s=a.createElement("select"),u=s.appendChild(a.createElement("option")),o=d.getElementsByTagName("input")[0],r.style.cssText="top:1px;float:left;opacity:.5",t.getSetAttribute="t"!==d.className,t.leadingWhitespace=3===d.firstChild.nodeType,t.tbody=!d.getElementsByTagName("tbody").length,t.htmlSerialize=!!d.getElementsByTagName("link").length,t.style=/top/.test(r.getAttribute("style")),t.hrefNormalized="/a"===r.getAttribute("href"),t.opacity=/^0.5/.test(r.style.opacity),t.cssFloat=!!r.style.cssFloat,t.checkOn=!!o.value,t.optSelected=u.selected,t.enctype=!!a.createElement("form").enctype,t.html5Clone="<:nav></:nav>"!==a.createElement("nav").cloneNode(!0).outerHTML,t.inlineBlockNeedsLayout=!1,t.shrinkWrapBlocks=!1,t.pixelPosition=!1,t.deleteExpando=!0,t.noCloneEvent=!0,t.reliableMarginRight=!0,t.boxSizingReliable=!0,o.checked=!0,t.noCloneChecked=o.cloneNode(!0).checked,s.disabled=!0,t.optDisabled=!u.disabled;try{delete d.test}catch(h){t.deleteExpando=!1}o=a.createElement("input"),o.setAttribute("value",""),t.input=""===o.getAttribute("value"),o.value="t",o.setAttribute("type","radio"),t.radioValue="t"===o.value,o.setAttribute("checked","t"),o.setAttribute("name","t"),l=a.createDocumentFragment(),l.appendChild(o),t.appendChecked=o.checked,t.checkClone=l.cloneNode(!0).cloneNode(!0).lastChild.checked,d.attachEvent&&(d.attachEvent("onclick",function(){t.noCloneEvent=!1}),d.cloneNode(!0).click());for(f in{submit:!0,change:!0,focusin:!0})d.setAttribute(c="on"+f,"t"),t[f+"Bubbles"]=c in e||d.attributes[c].expando===!1;d.style.backgroundClip="content-box",d.cloneNode(!0).style.backgroundClip="",t.clearCloneStyle="content-box"===d.style.backgroundClip;for(f in x(t))break;return t.ownLast="0"!==f,x(function(){var n,r,o,s="padding:0;margin:0;border:0;display:block;box-sizing:content-box;-moz-box-sizing:content-box;-webkit-box-sizing:content-box;",l=a.getElementsByTagName("body")[0];l&&(n=a.createElement("div"),n.style.cssText="border:0;width:0;height:0;position:absolute;top:0;left:-9999px;margin-top:1px",l.appendChild(n).appendChild(d),d.innerHTML="<table><tr><td></td><td>t</td></tr></table>",o=d.getElementsByTagName("td"),o[0].style.cssText="padding:0;margin:0;border:0;display:none",p=0===o[0].offsetHeight,o[0].style.display="",o[1].style.display="none",t.reliableHiddenOffsets=p&&0===o[0].offsetHeight,d.innerHTML="",d.style.cssText="box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;padding:1px;border:1px;display:block;width:4px;margin-top:1%;position:absolute;top:1%;",x.swap(l,null!=l.style.zoom?{zoom:1}:{},function(){t.boxSizing=4===d.offsetWidth}),e.getComputedStyle&&(t.pixelPosition="1%"!==(e.getComputedStyle(d,null)||{}).top,t.boxSizingReliable="4px"===(e.getComputedStyle(d,null)||{width:"4px"}).width,r=d.appendChild(a.createElement("div")),r.style.cssText=d.style.cssText=s,r.style.marginRight=r.style.width="0",d.style.width="1px",t.reliableMarginRight=!parseFloat((e.getComputedStyle(r,null)||{}).marginRight)),typeof d.style.zoom!==i&&(d.innerHTML="",d.style.cssText=s+"width:1px;padding:1px;display:inline;zoom:1",t.inlineBlockNeedsLayout=3===d.offsetWidth,d.style.display="block",d.innerHTML="<div></div>",d.firstChild.style.width="5px",t.shrinkWrapBlocks=3!==d.offsetWidth,t.inlineBlockNeedsLayout&&(l.style.zoom=1)),l.removeChild(n),n=d=o=r=null)}),n=s=l=u=r=o=null,t
}({});var B=/(?:\{[\s\S]*\}|\[[\s\S]*\])$/,P=/([A-Z])/g;function R(e,n,r,i){if(x.acceptData(e)){var o,a,s=x.expando,l=e.nodeType,u=l?x.cache:e,c=l?e[s]:e[s]&&s;if(c&&u[c]&&(i||u[c].data)||r!==t||"string"!=typeof n)return c||(c=l?e[s]=p.pop()||x.guid++:s),u[c]||(u[c]=l?{}:{toJSON:x.noop}),("object"==typeof n||"function"==typeof n)&&(i?u[c]=x.extend(u[c],n):u[c].data=x.extend(u[c].data,n)),a=u[c],i||(a.data||(a.data={}),a=a.data),r!==t&&(a[x.camelCase(n)]=r),"string"==typeof n?(o=a[n],null==o&&(o=a[x.camelCase(n)])):o=a,o}}function W(e,t,n){if(x.acceptData(e)){var r,i,o=e.nodeType,a=o?x.cache:e,s=o?e[x.expando]:x.expando;if(a[s]){if(t&&(r=n?a[s]:a[s].data)){x.isArray(t)?t=t.concat(x.map(t,x.camelCase)):t in r?t=[t]:(t=x.camelCase(t),t=t in r?[t]:t.split(" ")),i=t.length;while(i--)delete r[t[i]];if(n?!I(r):!x.isEmptyObject(r))return}(n||(delete a[s].data,I(a[s])))&&(o?x.cleanData([e],!0):x.support.deleteExpando||a!=a.window?delete a[s]:a[s]=null)}}}x.extend({cache:{},noData:{applet:!0,embed:!0,object:"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"},hasData:function(e){return e=e.nodeType?x.cache[e[x.expando]]:e[x.expando],!!e&&!I(e)},data:function(e,t,n){return R(e,t,n)},removeData:function(e,t){return W(e,t)},_data:function(e,t,n){return R(e,t,n,!0)},_removeData:function(e,t){return W(e,t,!0)},acceptData:function(e){if(e.nodeType&&1!==e.nodeType&&9!==e.nodeType)return!1;var t=e.nodeName&&x.noData[e.nodeName.toLowerCase()];return!t||t!==!0&&e.getAttribute("classid")===t}}),x.fn.extend({data:function(e,n){var r,i,o=null,a=0,s=this[0];if(e===t){if(this.length&&(o=x.data(s),1===s.nodeType&&!x._data(s,"parsedAttrs"))){for(r=s.attributes;r.length>a;a++)i=r[a].name,0===i.indexOf("data-")&&(i=x.camelCase(i.slice(5)),$(s,i,o[i]));x._data(s,"parsedAttrs",!0)}return o}return"object"==typeof e?this.each(function(){x.data(this,e)}):arguments.length>1?this.each(function(){x.data(this,e,n)}):s?$(s,e,x.data(s,e)):null},removeData:function(e){return this.each(function(){x.removeData(this,e)})}});function $(e,n,r){if(r===t&&1===e.nodeType){var i="data-"+n.replace(P,"-$1").toLowerCase();if(r=e.getAttribute(i),"string"==typeof r){try{r="true"===r?!0:"false"===r?!1:"null"===r?null:+r+""===r?+r:B.test(r)?x.parseJSON(r):r}catch(o){}x.data(e,n,r)}else r=t}return r}function I(e){var t;for(t in e)if(("data"!==t||!x.isEmptyObject(e[t]))&&"toJSON"!==t)return!1;return!0}x.extend({queue:function(e,n,r){var i;return e?(n=(n||"fx")+"queue",i=x._data(e,n),r&&(!i||x.isArray(r)?i=x._data(e,n,x.makeArray(r)):i.push(r)),i||[]):t},dequeue:function(e,t){t=t||"fx";var n=x.queue(e,t),r=n.length,i=n.shift(),o=x._queueHooks(e,t),a=function(){x.dequeue(e,t)};"inprogress"===i&&(i=n.shift(),r--),i&&("fx"===t&&n.unshift("inprogress"),delete o.stop,i.call(e,a,o)),!r&&o&&o.empty.fire()},_queueHooks:function(e,t){var n=t+"queueHooks";return x._data(e,n)||x._data(e,n,{empty:x.Callbacks("once memory").add(function(){x._removeData(e,t+"queue"),x._removeData(e,n)})})}}),x.fn.extend({queue:function(e,n){var r=2;return"string"!=typeof e&&(n=e,e="fx",r--),r>arguments.length?x.queue(this[0],e):n===t?this:this.each(function(){var t=x.queue(this,e,n);x._queueHooks(this,e),"fx"===e&&"inprogress"!==t[0]&&x.dequeue(this,e)})},dequeue:function(e){return this.each(function(){x.dequeue(this,e)})},delay:function(e,t){return e=x.fx?x.fx.speeds[e]||e:e,t=t||"fx",this.queue(t,function(t,n){var r=setTimeout(t,e);n.stop=function(){clearTimeout(r)}})},clearQueue:function(e){return this.queue(e||"fx",[])},promise:function(e,n){var r,i=1,o=x.Deferred(),a=this,s=this.length,l=function(){--i||o.resolveWith(a,[a])};"string"!=typeof e&&(n=e,e=t),e=e||"fx";while(s--)r=x._data(a[s],e+"queueHooks"),r&&r.empty&&(i++,r.empty.add(l));return l(),o.promise(n)}});var z,X,U=/[\t\r\n\f]/g,V=/\r/g,Y=/^(?:input|select|textarea|button|object)$/i,J=/^(?:a|area)$/i,G=/^(?:checked|selected)$/i,Q=x.support.getSetAttribute,K=x.support.input;x.fn.extend({attr:function(e,t){return x.access(this,x.attr,e,t,arguments.length>1)},removeAttr:function(e){return this.each(function(){x.removeAttr(this,e)})},prop:function(e,t){return x.access(this,x.prop,e,t,arguments.length>1)},removeProp:function(e){return e=x.propFix[e]||e,this.each(function(){try{this[e]=t,delete this[e]}catch(n){}})},addClass:function(e){var t,n,r,i,o,a=0,s=this.length,l="string"==typeof e&&e;if(x.isFunction(e))return this.each(function(t){x(this).addClass(e.call(this,t,this.className))});if(l)for(t=(e||"").match(T)||[];s>a;a++)if(n=this[a],r=1===n.nodeType&&(n.className?(" "+n.className+" ").replace(U," "):" ")){o=0;while(i=t[o++])0>r.indexOf(" "+i+" ")&&(r+=i+" ");n.className=x.trim(r)}return this},removeClass:function(e){var t,n,r,i,o,a=0,s=this.length,l=0===arguments.length||"string"==typeof e&&e;if(x.isFunction(e))return this.each(function(t){x(this).removeClass(e.call(this,t,this.className))});if(l)for(t=(e||"").match(T)||[];s>a;a++)if(n=this[a],r=1===n.nodeType&&(n.className?(" "+n.className+" ").replace(U," "):"")){o=0;while(i=t[o++])while(r.indexOf(" "+i+" ")>=0)r=r.replace(" "+i+" "," ");n.className=e?x.trim(r):""}return this},toggleClass:function(e,t){var n=typeof e;return"boolean"==typeof t&&"string"===n?t?this.addClass(e):this.removeClass(e):x.isFunction(e)?this.each(function(n){x(this).toggleClass(e.call(this,n,this.className,t),t)}):this.each(function(){if("string"===n){var t,r=0,o=x(this),a=e.match(T)||[];while(t=a[r++])o.hasClass(t)?o.removeClass(t):o.addClass(t)}else(n===i||"boolean"===n)&&(this.className&&x._data(this,"__className__",this.className),this.className=this.className||e===!1?"":x._data(this,"__className__")||"")})},hasClass:function(e){var t=" "+e+" ",n=0,r=this.length;for(;r>n;n++)if(1===this[n].nodeType&&(" "+this[n].className+" ").replace(U," ").indexOf(t)>=0)return!0;return!1},val:function(e){var n,r,i,o=this[0];{if(arguments.length)return i=x.isFunction(e),this.each(function(n){var o;1===this.nodeType&&(o=i?e.call(this,n,x(this).val()):e,null==o?o="":"number"==typeof o?o+="":x.isArray(o)&&(o=x.map(o,function(e){return null==e?"":e+""})),r=x.valHooks[this.type]||x.valHooks[this.nodeName.toLowerCase()],r&&"set"in r&&r.set(this,o,"value")!==t||(this.value=o))});if(o)return r=x.valHooks[o.type]||x.valHooks[o.nodeName.toLowerCase()],r&&"get"in r&&(n=r.get(o,"value"))!==t?n:(n=o.value,"string"==typeof n?n.replace(V,""):null==n?"":n)}}}),x.extend({valHooks:{option:{get:function(e){var t=x.find.attr(e,"value");return null!=t?t:e.text}},select:{get:function(e){var t,n,r=e.options,i=e.selectedIndex,o="select-one"===e.type||0>i,a=o?null:[],s=o?i+1:r.length,l=0>i?s:o?i:0;for(;s>l;l++)if(n=r[l],!(!n.selected&&l!==i||(x.support.optDisabled?n.disabled:null!==n.getAttribute("disabled"))||n.parentNode.disabled&&x.nodeName(n.parentNode,"optgroup"))){if(t=x(n).val(),o)return t;a.push(t)}return a},set:function(e,t){var n,r,i=e.options,o=x.makeArray(t),a=i.length;while(a--)r=i[a],(r.selected=x.inArray(x(r).val(),o)>=0)&&(n=!0);return n||(e.selectedIndex=-1),o}}},attr:function(e,n,r){var o,a,s=e.nodeType;if(e&&3!==s&&8!==s&&2!==s)return typeof e.getAttribute===i?x.prop(e,n,r):(1===s&&x.isXMLDoc(e)||(n=n.toLowerCase(),o=x.attrHooks[n]||(x.expr.match.bool.test(n)?X:z)),r===t?o&&"get"in o&&null!==(a=o.get(e,n))?a:(a=x.find.attr(e,n),null==a?t:a):null!==r?o&&"set"in o&&(a=o.set(e,r,n))!==t?a:(e.setAttribute(n,r+""),r):(x.removeAttr(e,n),t))},removeAttr:function(e,t){var n,r,i=0,o=t&&t.match(T);if(o&&1===e.nodeType)while(n=o[i++])r=x.propFix[n]||n,x.expr.match.bool.test(n)?K&&Q||!G.test(n)?e[r]=!1:e[x.camelCase("default-"+n)]=e[r]=!1:x.attr(e,n,""),e.removeAttribute(Q?n:r)},attrHooks:{type:{set:function(e,t){if(!x.support.radioValue&&"radio"===t&&x.nodeName(e,"input")){var n=e.value;return e.setAttribute("type",t),n&&(e.value=n),t}}}},propFix:{"for":"htmlFor","class":"className"},prop:function(e,n,r){var i,o,a,s=e.nodeType;if(e&&3!==s&&8!==s&&2!==s)return a=1!==s||!x.isXMLDoc(e),a&&(n=x.propFix[n]||n,o=x.propHooks[n]),r!==t?o&&"set"in o&&(i=o.set(e,r,n))!==t?i:e[n]=r:o&&"get"in o&&null!==(i=o.get(e,n))?i:e[n]},propHooks:{tabIndex:{get:function(e){var t=x.find.attr(e,"tabindex");return t?parseInt(t,10):Y.test(e.nodeName)||J.test(e.nodeName)&&e.href?0:-1}}}}),X={set:function(e,t,n){return t===!1?x.removeAttr(e,n):K&&Q||!G.test(n)?e.setAttribute(!Q&&x.propFix[n]||n,n):e[x.camelCase("default-"+n)]=e[n]=!0,n}},x.each(x.expr.match.bool.source.match(/\w+/g),function(e,n){var r=x.expr.attrHandle[n]||x.find.attr;x.expr.attrHandle[n]=K&&Q||!G.test(n)?function(e,n,i){var o=x.expr.attrHandle[n],a=i?t:(x.expr.attrHandle[n]=t)!=r(e,n,i)?n.toLowerCase():null;return x.expr.attrHandle[n]=o,a}:function(e,n,r){return r?t:e[x.camelCase("default-"+n)]?n.toLowerCase():null}}),K&&Q||(x.attrHooks.value={set:function(e,n,r){return x.nodeName(e,"input")?(e.defaultValue=n,t):z&&z.set(e,n,r)}}),Q||(z={set:function(e,n,r){var i=e.getAttributeNode(r);return i||e.setAttributeNode(i=e.ownerDocument.createAttribute(r)),i.value=n+="","value"===r||n===e.getAttribute(r)?n:t}},x.expr.attrHandle.id=x.expr.attrHandle.name=x.expr.attrHandle.coords=function(e,n,r){var i;return r?t:(i=e.getAttributeNode(n))&&""!==i.value?i.value:null},x.valHooks.button={get:function(e,n){var r=e.getAttributeNode(n);return r&&r.specified?r.value:t},set:z.set},x.attrHooks.contenteditable={set:function(e,t,n){z.set(e,""===t?!1:t,n)}},x.each(["width","height"],function(e,n){x.attrHooks[n]={set:function(e,r){return""===r?(e.setAttribute(n,"auto"),r):t}}})),x.support.hrefNormalized||x.each(["href","src"],function(e,t){x.propHooks[t]={get:function(e){return e.getAttribute(t,4)}}}),x.support.style||(x.attrHooks.style={get:function(e){return e.style.cssText||t},set:function(e,t){return e.style.cssText=t+""}}),x.support.optSelected||(x.propHooks.selected={get:function(e){var t=e.parentNode;return t&&(t.selectedIndex,t.parentNode&&t.parentNode.selectedIndex),null}}),x.each(["tabIndex","readOnly","maxLength","cellSpacing","cellPadding","rowSpan","colSpan","useMap","frameBorder","contentEditable"],function(){x.propFix[this.toLowerCase()]=this}),x.support.enctype||(x.propFix.enctype="encoding"),x.each(["radio","checkbox"],function(){x.valHooks[this]={set:function(e,n){return x.isArray(n)?e.checked=x.inArray(x(e).val(),n)>=0:t}},x.support.checkOn||(x.valHooks[this].get=function(e){return null===e.getAttribute("value")?"on":e.value})});var Z=/^(?:input|select|textarea)$/i,et=/^key/,tt=/^(?:mouse|contextmenu)|click/,nt=/^(?:focusinfocus|focusoutblur)$/,rt=/^([^.]*)(?:\.(.+)|)$/;function it(){return!0}function ot(){return!1}function at(){try{return a.activeElement}catch(e){}}x.event={global:{},add:function(e,n,r,o,a){var s,l,u,c,p,f,d,h,g,m,y,v=x._data(e);if(v){r.handler&&(c=r,r=c.handler,a=c.selector),r.guid||(r.guid=x.guid++),(l=v.events)||(l=v.events={}),(f=v.handle)||(f=v.handle=function(e){return typeof x===i||e&&x.event.triggered===e.type?t:x.event.dispatch.apply(f.elem,arguments)},f.elem=e),n=(n||"").match(T)||[""],u=n.length;while(u--)s=rt.exec(n[u])||[],g=y=s[1],m=(s[2]||"").split(".").sort(),g&&(p=x.event.special[g]||{},g=(a?p.delegateType:p.bindType)||g,p=x.event.special[g]||{},d=x.extend({type:g,origType:y,data:o,handler:r,guid:r.guid,selector:a,needsContext:a&&x.expr.match.needsContext.test(a),namespace:m.join(".")},c),(h=l[g])||(h=l[g]=[],h.delegateCount=0,p.setup&&p.setup.call(e,o,m,f)!==!1||(e.addEventListener?e.addEventListener(g,f,!1):e.attachEvent&&e.attachEvent("on"+g,f))),p.add&&(p.add.call(e,d),d.handler.guid||(d.handler.guid=r.guid)),a?h.splice(h.delegateCount++,0,d):h.push(d),x.event.global[g]=!0);e=null}},remove:function(e,t,n,r,i){var o,a,s,l,u,c,p,f,d,h,g,m=x.hasData(e)&&x._data(e);if(m&&(c=m.events)){t=(t||"").match(T)||[""],u=t.length;while(u--)if(s=rt.exec(t[u])||[],d=g=s[1],h=(s[2]||"").split(".").sort(),d){p=x.event.special[d]||{},d=(r?p.delegateType:p.bindType)||d,f=c[d]||[],s=s[2]&&RegExp("(^|\\.)"+h.join("\\.(?:.*\\.|)")+"(\\.|$)"),l=o=f.length;while(o--)a=f[o],!i&&g!==a.origType||n&&n.guid!==a.guid||s&&!s.test(a.namespace)||r&&r!==a.selector&&("**"!==r||!a.selector)||(f.splice(o,1),a.selector&&f.delegateCount--,p.remove&&p.remove.call(e,a));l&&!f.length&&(p.teardown&&p.teardown.call(e,h,m.handle)!==!1||x.removeEvent(e,d,m.handle),delete c[d])}else for(d in c)x.event.remove(e,d+t[u],n,r,!0);x.isEmptyObject(c)&&(delete m.handle,x._removeData(e,"events"))}},trigger:function(n,r,i,o){var s,l,u,c,p,f,d,h=[i||a],g=v.call(n,"type")?n.type:n,m=v.call(n,"namespace")?n.namespace.split("."):[];if(u=f=i=i||a,3!==i.nodeType&&8!==i.nodeType&&!nt.test(g+x.event.triggered)&&(g.indexOf(".")>=0&&(m=g.split("."),g=m.shift(),m.sort()),l=0>g.indexOf(":")&&"on"+g,n=n[x.expando]?n:new x.Event(g,"object"==typeof n&&n),n.isTrigger=o?2:3,n.namespace=m.join("."),n.namespace_re=n.namespace?RegExp("(^|\\.)"+m.join("\\.(?:.*\\.|)")+"(\\.|$)"):null,n.result=t,n.target||(n.target=i),r=null==r?[n]:x.makeArray(r,[n]),p=x.event.special[g]||{},o||!p.trigger||p.trigger.apply(i,r)!==!1)){if(!o&&!p.noBubble&&!x.isWindow(i)){for(c=p.delegateType||g,nt.test(c+g)||(u=u.parentNode);u;u=u.parentNode)h.push(u),f=u;f===(i.ownerDocument||a)&&h.push(f.defaultView||f.parentWindow||e)}d=0;while((u=h[d++])&&!n.isPropagationStopped())n.type=d>1?c:p.bindType||g,s=(x._data(u,"events")||{})[n.type]&&x._data(u,"handle"),s&&s.apply(u,r),s=l&&u[l],s&&x.acceptData(u)&&s.apply&&s.apply(u,r)===!1&&n.preventDefault();if(n.type=g,!o&&!n.isDefaultPrevented()&&(!p._default||p._default.apply(h.pop(),r)===!1)&&x.acceptData(i)&&l&&i[g]&&!x.isWindow(i)){f=i[l],f&&(i[l]=null),x.event.triggered=g;try{i[g]()}catch(y){}x.event.triggered=t,f&&(i[l]=f)}return n.result}},dispatch:function(e){e=x.event.fix(e);var n,r,i,o,a,s=[],l=g.call(arguments),u=(x._data(this,"events")||{})[e.type]||[],c=x.event.special[e.type]||{};if(l[0]=e,e.delegateTarget=this,!c.preDispatch||c.preDispatch.call(this,e)!==!1){s=x.event.handlers.call(this,e,u),n=0;while((o=s[n++])&&!e.isPropagationStopped()){e.currentTarget=o.elem,a=0;while((i=o.handlers[a++])&&!e.isImmediatePropagationStopped())(!e.namespace_re||e.namespace_re.test(i.namespace))&&(e.handleObj=i,e.data=i.data,r=((x.event.special[i.origType]||{}).handle||i.handler).apply(o.elem,l),r!==t&&(e.result=r)===!1&&(e.preventDefault(),e.stopPropagation()))}return c.postDispatch&&c.postDispatch.call(this,e),e.result}},handlers:function(e,n){var r,i,o,a,s=[],l=n.delegateCount,u=e.target;if(l&&u.nodeType&&(!e.button||"click"!==e.type))for(;u!=this;u=u.parentNode||this)if(1===u.nodeType&&(u.disabled!==!0||"click"!==e.type)){for(o=[],a=0;l>a;a++)i=n[a],r=i.selector+" ",o[r]===t&&(o[r]=i.needsContext?x(r,this).index(u)>=0:x.find(r,this,null,[u]).length),o[r]&&o.push(i);o.length&&s.push({elem:u,handlers:o})}return n.length>l&&s.push({elem:this,handlers:n.slice(l)}),s},fix:function(e){if(e[x.expando])return e;var t,n,r,i=e.type,o=e,s=this.fixHooks[i];s||(this.fixHooks[i]=s=tt.test(i)?this.mouseHooks:et.test(i)?this.keyHooks:{}),r=s.props?this.props.concat(s.props):this.props,e=new x.Event(o),t=r.length;while(t--)n=r[t],e[n]=o[n];return e.target||(e.target=o.srcElement||a),3===e.target.nodeType&&(e.target=e.target.parentNode),e.metaKey=!!e.metaKey,s.filter?s.filter(e,o):e},props:"altKey bubbles cancelable ctrlKey currentTarget eventPhase metaKey relatedTarget shiftKey target timeStamp view which".split(" "),fixHooks:{},keyHooks:{props:"char charCode key keyCode".split(" "),filter:function(e,t){return null==e.which&&(e.which=null!=t.charCode?t.charCode:t.keyCode),e}},mouseHooks:{props:"button buttons clientX clientY fromElement offsetX offsetY pageX pageY screenX screenY toElement".split(" "),filter:function(e,n){var r,i,o,s=n.button,l=n.fromElement;return null==e.pageX&&null!=n.clientX&&(i=e.target.ownerDocument||a,o=i.documentElement,r=i.body,e.pageX=n.clientX+(o&&o.scrollLeft||r&&r.scrollLeft||0)-(o&&o.clientLeft||r&&r.clientLeft||0),e.pageY=n.clientY+(o&&o.scrollTop||r&&r.scrollTop||0)-(o&&o.clientTop||r&&r.clientTop||0)),!e.relatedTarget&&l&&(e.relatedTarget=l===e.target?n.toElement:l),e.which||s===t||(e.which=1&s?1:2&s?3:4&s?2:0),e}},special:{load:{noBubble:!0},focus:{trigger:function(){if(this!==at()&&this.focus)try{return this.focus(),!1}catch(e){}},delegateType:"focusin"},blur:{trigger:function(){return this===at()&&this.blur?(this.blur(),!1):t},delegateType:"focusout"},click:{trigger:function(){return x.nodeName(this,"input")&&"checkbox"===this.type&&this.click?(this.click(),!1):t},_default:function(e){return x.nodeName(e.target,"a")}},beforeunload:{postDispatch:function(e){e.result!==t&&(e.originalEvent.returnValue=e.result)}}},simulate:function(e,t,n,r){var i=x.extend(new x.Event,n,{type:e,isSimulated:!0,originalEvent:{}});r?x.event.trigger(i,null,t):x.event.dispatch.call(t,i),i.isDefaultPrevented()&&n.preventDefault()}},x.removeEvent=a.removeEventListener?function(e,t,n){e.removeEventListener&&e.removeEventListener(t,n,!1)}:function(e,t,n){var r="on"+t;e.detachEvent&&(typeof e[r]===i&&(e[r]=null),e.detachEvent(r,n))},x.Event=function(e,n){return this instanceof x.Event?(e&&e.type?(this.originalEvent=e,this.type=e.type,this.isDefaultPrevented=e.defaultPrevented||e.returnValue===!1||e.getPreventDefault&&e.getPreventDefault()?it:ot):this.type=e,n&&x.extend(this,n),this.timeStamp=e&&e.timeStamp||x.now(),this[x.expando]=!0,t):new x.Event(e,n)},x.Event.prototype={isDefaultPrevented:ot,isPropagationStopped:ot,isImmediatePropagationStopped:ot,preventDefault:function(){var e=this.originalEvent;this.isDefaultPrevented=it,e&&(e.preventDefault?e.preventDefault():e.returnValue=!1)},stopPropagation:function(){var e=this.originalEvent;this.isPropagationStopped=it,e&&(e.stopPropagation&&e.stopPropagation(),e.cancelBubble=!0)},stopImmediatePropagation:function(){this.isImmediatePropagationStopped=it,this.stopPropagation()}},x.each({mouseenter:"mouseover",mouseleave:"mouseout"},function(e,t){x.event.special[e]={delegateType:t,bindType:t,handle:function(e){var n,r=this,i=e.relatedTarget,o=e.handleObj;return(!i||i!==r&&!x.contains(r,i))&&(e.type=o.origType,n=o.handler.apply(this,arguments),e.type=t),n}}}),x.support.submitBubbles||(x.event.special.submit={setup:function(){return x.nodeName(this,"form")?!1:(x.event.add(this,"click._submit keypress._submit",function(e){var n=e.target,r=x.nodeName(n,"input")||x.nodeName(n,"button")?n.form:t;r&&!x._data(r,"submitBubbles")&&(x.event.add(r,"submit._submit",function(e){e._submit_bubble=!0}),x._data(r,"submitBubbles",!0))}),t)},postDispatch:function(e){e._submit_bubble&&(delete e._submit_bubble,this.parentNode&&!e.isTrigger&&x.event.simulate("submit",this.parentNode,e,!0))},teardown:function(){return x.nodeName(this,"form")?!1:(x.event.remove(this,"._submit"),t)}}),x.support.changeBubbles||(x.event.special.change={setup:function(){return Z.test(this.nodeName)?(("checkbox"===this.type||"radio"===this.type)&&(x.event.add(this,"propertychange._change",function(e){"checked"===e.originalEvent.propertyName&&(this._just_changed=!0)}),x.event.add(this,"click._change",function(e){this._just_changed&&!e.isTrigger&&(this._just_changed=!1),x.event.simulate("change",this,e,!0)})),!1):(x.event.add(this,"beforeactivate._change",function(e){var t=e.target;Z.test(t.nodeName)&&!x._data(t,"changeBubbles")&&(x.event.add(t,"change._change",function(e){!this.parentNode||e.isSimulated||e.isTrigger||x.event.simulate("change",this.parentNode,e,!0)}),x._data(t,"changeBubbles",!0))}),t)},handle:function(e){var n=e.target;return this!==n||e.isSimulated||e.isTrigger||"radio"!==n.type&&"checkbox"!==n.type?e.handleObj.handler.apply(this,arguments):t},teardown:function(){return x.event.remove(this,"._change"),!Z.test(this.nodeName)}}),x.support.focusinBubbles||x.each({focus:"focusin",blur:"focusout"},function(e,t){var n=0,r=function(e){x.event.simulate(t,e.target,x.event.fix(e),!0)};x.event.special[t]={setup:function(){0===n++&&a.addEventListener(e,r,!0)},teardown:function(){0===--n&&a.removeEventListener(e,r,!0)}}}),x.fn.extend({on:function(e,n,r,i,o){var a,s;if("object"==typeof e){"string"!=typeof n&&(r=r||n,n=t);for(a in e)this.on(a,n,r,e[a],o);return this}if(null==r&&null==i?(i=n,r=n=t):null==i&&("string"==typeof n?(i=r,r=t):(i=r,r=n,n=t)),i===!1)i=ot;else if(!i)return this;return 1===o&&(s=i,i=function(e){return x().off(e),s.apply(this,arguments)},i.guid=s.guid||(s.guid=x.guid++)),this.each(function(){x.event.add(this,e,i,r,n)})},one:function(e,t,n,r){return this.on(e,t,n,r,1)},off:function(e,n,r){var i,o;if(e&&e.preventDefault&&e.handleObj)return i=e.handleObj,x(e.delegateTarget).off(i.namespace?i.origType+"."+i.namespace:i.origType,i.selector,i.handler),this;if("object"==typeof e){for(o in e)this.off(o,n,e[o]);return this}return(n===!1||"function"==typeof n)&&(r=n,n=t),r===!1&&(r=ot),this.each(function(){x.event.remove(this,e,r,n)})},trigger:function(e,t){return this.each(function(){x.event.trigger(e,t,this)})},triggerHandler:function(e,n){var r=this[0];return r?x.event.trigger(e,n,r,!0):t}});var st=/^.[^:#\[\.,]*$/,lt=/^(?:parents|prev(?:Until|All))/,ut=x.expr.match.needsContext,ct={children:!0,contents:!0,next:!0,prev:!0};x.fn.extend({find:function(e){var t,n=[],r=this,i=r.length;if("string"!=typeof e)return this.pushStack(x(e).filter(function(){for(t=0;i>t;t++)if(x.contains(r[t],this))return!0}));for(t=0;i>t;t++)x.find(e,r[t],n);return n=this.pushStack(i>1?x.unique(n):n),n.selector=this.selector?this.selector+" "+e:e,n},has:function(e){var t,n=x(e,this),r=n.length;return this.filter(function(){for(t=0;r>t;t++)if(x.contains(this,n[t]))return!0})},not:function(e){return this.pushStack(ft(this,e||[],!0))},filter:function(e){return this.pushStack(ft(this,e||[],!1))},is:function(e){return!!ft(this,"string"==typeof e&&ut.test(e)?x(e):e||[],!1).length},closest:function(e,t){var n,r=0,i=this.length,o=[],a=ut.test(e)||"string"!=typeof e?x(e,t||this.context):0;for(;i>r;r++)for(n=this[r];n&&n!==t;n=n.parentNode)if(11>n.nodeType&&(a?a.index(n)>-1:1===n.nodeType&&x.find.matchesSelector(n,e))){n=o.push(n);break}return this.pushStack(o.length>1?x.unique(o):o)},index:function(e){return e?"string"==typeof e?x.inArray(this[0],x(e)):x.inArray(e.jquery?e[0]:e,this):this[0]&&this[0].parentNode?this.first().prevAll().length:-1},add:function(e,t){var n="string"==typeof e?x(e,t):x.makeArray(e&&e.nodeType?[e]:e),r=x.merge(this.get(),n);return this.pushStack(x.unique(r))},addBack:function(e){return this.add(null==e?this.prevObject:this.prevObject.filter(e))}});function pt(e,t){do e=e[t];while(e&&1!==e.nodeType);return e}x.each({parent:function(e){var t=e.parentNode;return t&&11!==t.nodeType?t:null},parents:function(e){return x.dir(e,"parentNode")},parentsUntil:function(e,t,n){return x.dir(e,"parentNode",n)},next:function(e){return pt(e,"nextSibling")},prev:function(e){return pt(e,"previousSibling")},nextAll:function(e){return x.dir(e,"nextSibling")},prevAll:function(e){return x.dir(e,"previousSibling")},nextUntil:function(e,t,n){return x.dir(e,"nextSibling",n)},prevUntil:function(e,t,n){return x.dir(e,"previousSibling",n)},siblings:function(e){return x.sibling((e.parentNode||{}).firstChild,e)},children:function(e){return x.sibling(e.firstChild)},contents:function(e){return x.nodeName(e,"iframe")?e.contentDocument||e.contentWindow.document:x.merge([],e.childNodes)}},function(e,t){x.fn[e]=function(n,r){var i=x.map(this,t,n);return"Until"!==e.slice(-5)&&(r=n),r&&"string"==typeof r&&(i=x.filter(r,i)),this.length>1&&(ct[e]||(i=x.unique(i)),lt.test(e)&&(i=i.reverse())),this.pushStack(i)}}),x.extend({filter:function(e,t,n){var r=t[0];return n&&(e=":not("+e+")"),1===t.length&&1===r.nodeType?x.find.matchesSelector(r,e)?[r]:[]:x.find.matches(e,x.grep(t,function(e){return 1===e.nodeType}))},dir:function(e,n,r){var i=[],o=e[n];while(o&&9!==o.nodeType&&(r===t||1!==o.nodeType||!x(o).is(r)))1===o.nodeType&&i.push(o),o=o[n];return i},sibling:function(e,t){var n=[];for(;e;e=e.nextSibling)1===e.nodeType&&e!==t&&n.push(e);return n}});function ft(e,t,n){if(x.isFunction(t))return x.grep(e,function(e,r){return!!t.call(e,r,e)!==n});if(t.nodeType)return x.grep(e,function(e){return e===t!==n});if("string"==typeof t){if(st.test(t))return x.filter(t,e,n);t=x.filter(t,e)}return x.grep(e,function(e){return x.inArray(e,t)>=0!==n})}function dt(e){var t=ht.split("|"),n=e.createDocumentFragment();if(n.createElement)while(t.length)n.createElement(t.pop());return n}var ht="abbr|article|aside|audio|bdi|canvas|data|datalist|details|figcaption|figure|footer|header|hgroup|mark|meter|nav|output|progress|section|summary|time|video",gt=/ jQuery\d+="(?:null|\d+)"/g,mt=RegExp("<(?:"+ht+")[\\s/>]","i"),yt=/^\s+/,vt=/<(?!area|br|col|embed|hr|img|input|link|meta|param)(([\w:]+)[^>]*)\/>/gi,bt=/<([\w:]+)/,xt=/<tbody/i,wt=/<|&#?\w+;/,Tt=/<(?:script|style|link)/i,Ct=/^(?:checkbox|radio)$/i,Nt=/checked\s*(?:[^=]|=\s*.checked.)/i,kt=/^$|\/(?:java|ecma)script/i,Et=/^true\/(.*)/,St=/^\s*<!(?:\[CDATA\[|--)|(?:\]\]|--)>\s*$/g,At={option:[1,"<select multiple='multiple'>","</select>"],legend:[1,"<fieldset>","</fieldset>"],area:[1,"<map>","</map>"],param:[1,"<object>","</object>"],thead:[1,"<table>","</table>"],tr:[2,"<table><tbody>","</tbody></table>"],col:[2,"<table><tbody></tbody><colgroup>","</colgroup></table>"],td:[3,"<table><tbody><tr>","</tr></tbody></table>"],_default:x.support.htmlSerialize?[0,"",""]:[1,"X<div>","</div>"]},jt=dt(a),Dt=jt.appendChild(a.createElement("div"));At.optgroup=At.option,At.tbody=At.tfoot=At.colgroup=At.caption=At.thead,At.th=At.td,x.fn.extend({text:function(e){return x.access(this,function(e){return e===t?x.text(this):this.empty().append((this[0]&&this[0].ownerDocument||a).createTextNode(e))},null,e,arguments.length)},append:function(){return this.domManip(arguments,function(e){if(1===this.nodeType||11===this.nodeType||9===this.nodeType){var t=Lt(this,e);t.appendChild(e)}})},prepend:function(){return this.domManip(arguments,function(e){if(1===this.nodeType||11===this.nodeType||9===this.nodeType){var t=Lt(this,e);t.insertBefore(e,t.firstChild)}})},before:function(){return this.domManip(arguments,function(e){this.parentNode&&this.parentNode.insertBefore(e,this)})},after:function(){return this.domManip(arguments,function(e){this.parentNode&&this.parentNode.insertBefore(e,this.nextSibling)})},remove:function(e,t){var n,r=e?x.filter(e,this):this,i=0;for(;null!=(n=r[i]);i++)t||1!==n.nodeType||x.cleanData(Ft(n)),n.parentNode&&(t&&x.contains(n.ownerDocument,n)&&_t(Ft(n,"script")),n.parentNode.removeChild(n));return this},empty:function(){var e,t=0;for(;null!=(e=this[t]);t++){1===e.nodeType&&x.cleanData(Ft(e,!1));while(e.firstChild)e.removeChild(e.firstChild);e.options&&x.nodeName(e,"select")&&(e.options.length=0)}return this},clone:function(e,t){return e=null==e?!1:e,t=null==t?e:t,this.map(function(){return x.clone(this,e,t)})},html:function(e){return x.access(this,function(e){var n=this[0]||{},r=0,i=this.length;if(e===t)return 1===n.nodeType?n.innerHTML.replace(gt,""):t;if(!("string"!=typeof e||Tt.test(e)||!x.support.htmlSerialize&&mt.test(e)||!x.support.leadingWhitespace&&yt.test(e)||At[(bt.exec(e)||["",""])[1].toLowerCase()])){e=e.replace(vt,"<$1></$2>");try{for(;i>r;r++)n=this[r]||{},1===n.nodeType&&(x.cleanData(Ft(n,!1)),n.innerHTML=e);n=0}catch(o){}}n&&this.empty().append(e)},null,e,arguments.length)},replaceWith:function(){var e=x.map(this,function(e){return[e.nextSibling,e.parentNode]}),t=0;return this.domManip(arguments,function(n){var r=e[t++],i=e[t++];i&&(r&&r.parentNode!==i&&(r=this.nextSibling),x(this).remove(),i.insertBefore(n,r))},!0),t?this:this.remove()},detach:function(e){return this.remove(e,!0)},domManip:function(e,t,n){e=d.apply([],e);var r,i,o,a,s,l,u=0,c=this.length,p=this,f=c-1,h=e[0],g=x.isFunction(h);if(g||!(1>=c||"string"!=typeof h||x.support.checkClone)&&Nt.test(h))return this.each(function(r){var i=p.eq(r);g&&(e[0]=h.call(this,r,i.html())),i.domManip(e,t,n)});if(c&&(l=x.buildFragment(e,this[0].ownerDocument,!1,!n&&this),r=l.firstChild,1===l.childNodes.length&&(l=r),r)){for(a=x.map(Ft(l,"script"),Ht),o=a.length;c>u;u++)i=l,u!==f&&(i=x.clone(i,!0,!0),o&&x.merge(a,Ft(i,"script"))),t.call(this[u],i,u);if(o)for(s=a[a.length-1].ownerDocument,x.map(a,qt),u=0;o>u;u++)i=a[u],kt.test(i.type||"")&&!x._data(i,"globalEval")&&x.contains(s,i)&&(i.src?x._evalUrl(i.src):x.globalEval((i.text||i.textContent||i.innerHTML||"").replace(St,"")));l=r=null}return this}});function Lt(e,t){return x.nodeName(e,"table")&&x.nodeName(1===t.nodeType?t:t.firstChild,"tr")?e.getElementsByTagName("tbody")[0]||e.appendChild(e.ownerDocument.createElement("tbody")):e}function Ht(e){return e.type=(null!==x.find.attr(e,"type"))+"/"+e.type,e}function qt(e){var t=Et.exec(e.type);return t?e.type=t[1]:e.removeAttribute("type"),e}function _t(e,t){var n,r=0;for(;null!=(n=e[r]);r++)x._data(n,"globalEval",!t||x._data(t[r],"globalEval"))}function Mt(e,t){if(1===t.nodeType&&x.hasData(e)){var n,r,i,o=x._data(e),a=x._data(t,o),s=o.events;if(s){delete a.handle,a.events={};for(n in s)for(r=0,i=s[n].length;i>r;r++)x.event.add(t,n,s[n][r])}a.data&&(a.data=x.extend({},a.data))}}function Ot(e,t){var n,r,i;if(1===t.nodeType){if(n=t.nodeName.toLowerCase(),!x.support.noCloneEvent&&t[x.expando]){i=x._data(t);for(r in i.events)x.removeEvent(t,r,i.handle);t.removeAttribute(x.expando)}"script"===n&&t.text!==e.text?(Ht(t).text=e.text,qt(t)):"object"===n?(t.parentNode&&(t.outerHTML=e.outerHTML),x.support.html5Clone&&e.innerHTML&&!x.trim(t.innerHTML)&&(t.innerHTML=e.innerHTML)):"input"===n&&Ct.test(e.type)?(t.defaultChecked=t.checked=e.checked,t.value!==e.value&&(t.value=e.value)):"option"===n?t.defaultSelected=t.selected=e.defaultSelected:("input"===n||"textarea"===n)&&(t.defaultValue=e.defaultValue)}}x.each({appendTo:"append",prependTo:"prepend",insertBefore:"before",insertAfter:"after",replaceAll:"replaceWith"},function(e,t){x.fn[e]=function(e){var n,r=0,i=[],o=x(e),a=o.length-1;for(;a>=r;r++)n=r===a?this:this.clone(!0),x(o[r])[t](n),h.apply(i,n.get());return this.pushStack(i)}});function Ft(e,n){var r,o,a=0,s=typeof e.getElementsByTagName!==i?e.getElementsByTagName(n||"*"):typeof e.querySelectorAll!==i?e.querySelectorAll(n||"*"):t;if(!s)for(s=[],r=e.childNodes||e;null!=(o=r[a]);a++)!n||x.nodeName(o,n)?s.push(o):x.merge(s,Ft(o,n));return n===t||n&&x.nodeName(e,n)?x.merge([e],s):s}function Bt(e){Ct.test(e.type)&&(e.defaultChecked=e.checked)}x.extend({clone:function(e,t,n){var r,i,o,a,s,l=x.contains(e.ownerDocument,e);if(x.support.html5Clone||x.isXMLDoc(e)||!mt.test("<"+e.nodeName+">")?o=e.cloneNode(!0):(Dt.innerHTML=e.outerHTML,Dt.removeChild(o=Dt.firstChild)),!(x.support.noCloneEvent&&x.support.noCloneChecked||1!==e.nodeType&&11!==e.nodeType||x.isXMLDoc(e)))for(r=Ft(o),s=Ft(e),a=0;null!=(i=s[a]);++a)r[a]&&Ot(i,r[a]);if(t)if(n)for(s=s||Ft(e),r=r||Ft(o),a=0;null!=(i=s[a]);a++)Mt(i,r[a]);else Mt(e,o);return r=Ft(o,"script"),r.length>0&&_t(r,!l&&Ft(e,"script")),r=s=i=null,o},buildFragment:function(e,t,n,r){var i,o,a,s,l,u,c,p=e.length,f=dt(t),d=[],h=0;for(;p>h;h++)if(o=e[h],o||0===o)if("object"===x.type(o))x.merge(d,o.nodeType?[o]:o);else if(wt.test(o)){s=s||f.appendChild(t.createElement("div")),l=(bt.exec(o)||["",""])[1].toLowerCase(),c=At[l]||At._default,s.innerHTML=c[1]+o.replace(vt,"<$1></$2>")+c[2],i=c[0];while(i--)s=s.lastChild;if(!x.support.leadingWhitespace&&yt.test(o)&&d.push(t.createTextNode(yt.exec(o)[0])),!x.support.tbody){o="table"!==l||xt.test(o)?"<table>"!==c[1]||xt.test(o)?0:s:s.firstChild,i=o&&o.childNodes.length;while(i--)x.nodeName(u=o.childNodes[i],"tbody")&&!u.childNodes.length&&o.removeChild(u)}x.merge(d,s.childNodes),s.textContent="";while(s.firstChild)s.removeChild(s.firstChild);s=f.lastChild}else d.push(t.createTextNode(o));s&&f.removeChild(s),x.support.appendChecked||x.grep(Ft(d,"input"),Bt),h=0;while(o=d[h++])if((!r||-1===x.inArray(o,r))&&(a=x.contains(o.ownerDocument,o),s=Ft(f.appendChild(o),"script"),a&&_t(s),n)){i=0;while(o=s[i++])kt.test(o.type||"")&&n.push(o)}return s=null,f},cleanData:function(e,t){var n,r,o,a,s=0,l=x.expando,u=x.cache,c=x.support.deleteExpando,f=x.event.special;for(;null!=(n=e[s]);s++)if((t||x.acceptData(n))&&(o=n[l],a=o&&u[o])){if(a.events)for(r in a.events)f[r]?x.event.remove(n,r):x.removeEvent(n,r,a.handle);
u[o]&&(delete u[o],c?delete n[l]:typeof n.removeAttribute!==i?n.removeAttribute(l):n[l]=null,p.push(o))}},_evalUrl:function(e){return x.ajax({url:e,type:"GET",dataType:"script",async:!1,global:!1,"throws":!0})}}),x.fn.extend({wrapAll:function(e){if(x.isFunction(e))return this.each(function(t){x(this).wrapAll(e.call(this,t))});if(this[0]){var t=x(e,this[0].ownerDocument).eq(0).clone(!0);this[0].parentNode&&t.insertBefore(this[0]),t.map(function(){var e=this;while(e.firstChild&&1===e.firstChild.nodeType)e=e.firstChild;return e}).append(this)}return this},wrapInner:function(e){return x.isFunction(e)?this.each(function(t){x(this).wrapInner(e.call(this,t))}):this.each(function(){var t=x(this),n=t.contents();n.length?n.wrapAll(e):t.append(e)})},wrap:function(e){var t=x.isFunction(e);return this.each(function(n){x(this).wrapAll(t?e.call(this,n):e)})},unwrap:function(){return this.parent().each(function(){x.nodeName(this,"body")||x(this).replaceWith(this.childNodes)}).end()}});var Pt,Rt,Wt,$t=/alpha\([^)]*\)/i,It=/opacity\s*=\s*([^)]*)/,zt=/^(top|right|bottom|left)$/,Xt=/^(none|table(?!-c[ea]).+)/,Ut=/^margin/,Vt=RegExp("^("+w+")(.*)$","i"),Yt=RegExp("^("+w+")(?!px)[a-z%]+$","i"),Jt=RegExp("^([+-])=("+w+")","i"),Gt={BODY:"block"},Qt={position:"absolute",visibility:"hidden",display:"block"},Kt={letterSpacing:0,fontWeight:400},Zt=["Top","Right","Bottom","Left"],en=["Webkit","O","Moz","ms"];function tn(e,t){if(t in e)return t;var n=t.charAt(0).toUpperCase()+t.slice(1),r=t,i=en.length;while(i--)if(t=en[i]+n,t in e)return t;return r}function nn(e,t){return e=t||e,"none"===x.css(e,"display")||!x.contains(e.ownerDocument,e)}function rn(e,t){var n,r,i,o=[],a=0,s=e.length;for(;s>a;a++)r=e[a],r.style&&(o[a]=x._data(r,"olddisplay"),n=r.style.display,t?(o[a]||"none"!==n||(r.style.display=""),""===r.style.display&&nn(r)&&(o[a]=x._data(r,"olddisplay",ln(r.nodeName)))):o[a]||(i=nn(r),(n&&"none"!==n||!i)&&x._data(r,"olddisplay",i?n:x.css(r,"display"))));for(a=0;s>a;a++)r=e[a],r.style&&(t&&"none"!==r.style.display&&""!==r.style.display||(r.style.display=t?o[a]||"":"none"));return e}x.fn.extend({css:function(e,n){return x.access(this,function(e,n,r){var i,o,a={},s=0;if(x.isArray(n)){for(o=Rt(e),i=n.length;i>s;s++)a[n[s]]=x.css(e,n[s],!1,o);return a}return r!==t?x.style(e,n,r):x.css(e,n)},e,n,arguments.length>1)},show:function(){return rn(this,!0)},hide:function(){return rn(this)},toggle:function(e){return"boolean"==typeof e?e?this.show():this.hide():this.each(function(){nn(this)?x(this).show():x(this).hide()})}}),x.extend({cssHooks:{opacity:{get:function(e,t){if(t){var n=Wt(e,"opacity");return""===n?"1":n}}}},cssNumber:{columnCount:!0,fillOpacity:!0,fontWeight:!0,lineHeight:!0,opacity:!0,order:!0,orphans:!0,widows:!0,zIndex:!0,zoom:!0},cssProps:{"float":x.support.cssFloat?"cssFloat":"styleFloat"},style:function(e,n,r,i){if(e&&3!==e.nodeType&&8!==e.nodeType&&e.style){var o,a,s,l=x.camelCase(n),u=e.style;if(n=x.cssProps[l]||(x.cssProps[l]=tn(u,l)),s=x.cssHooks[n]||x.cssHooks[l],r===t)return s&&"get"in s&&(o=s.get(e,!1,i))!==t?o:u[n];if(a=typeof r,"string"===a&&(o=Jt.exec(r))&&(r=(o[1]+1)*o[2]+parseFloat(x.css(e,n)),a="number"),!(null==r||"number"===a&&isNaN(r)||("number"!==a||x.cssNumber[l]||(r+="px"),x.support.clearCloneStyle||""!==r||0!==n.indexOf("background")||(u[n]="inherit"),s&&"set"in s&&(r=s.set(e,r,i))===t)))try{u[n]=r}catch(c){}}},css:function(e,n,r,i){var o,a,s,l=x.camelCase(n);return n=x.cssProps[l]||(x.cssProps[l]=tn(e.style,l)),s=x.cssHooks[n]||x.cssHooks[l],s&&"get"in s&&(a=s.get(e,!0,r)),a===t&&(a=Wt(e,n,i)),"normal"===a&&n in Kt&&(a=Kt[n]),""===r||r?(o=parseFloat(a),r===!0||x.isNumeric(o)?o||0:a):a}}),e.getComputedStyle?(Rt=function(t){return e.getComputedStyle(t,null)},Wt=function(e,n,r){var i,o,a,s=r||Rt(e),l=s?s.getPropertyValue(n)||s[n]:t,u=e.style;return s&&(""!==l||x.contains(e.ownerDocument,e)||(l=x.style(e,n)),Yt.test(l)&&Ut.test(n)&&(i=u.width,o=u.minWidth,a=u.maxWidth,u.minWidth=u.maxWidth=u.width=l,l=s.width,u.width=i,u.minWidth=o,u.maxWidth=a)),l}):a.documentElement.currentStyle&&(Rt=function(e){return e.currentStyle},Wt=function(e,n,r){var i,o,a,s=r||Rt(e),l=s?s[n]:t,u=e.style;return null==l&&u&&u[n]&&(l=u[n]),Yt.test(l)&&!zt.test(n)&&(i=u.left,o=e.runtimeStyle,a=o&&o.left,a&&(o.left=e.currentStyle.left),u.left="fontSize"===n?"1em":l,l=u.pixelLeft+"px",u.left=i,a&&(o.left=a)),""===l?"auto":l});function on(e,t,n){var r=Vt.exec(t);return r?Math.max(0,r[1]-(n||0))+(r[2]||"px"):t}function an(e,t,n,r,i){var o=n===(r?"border":"content")?4:"width"===t?1:0,a=0;for(;4>o;o+=2)"margin"===n&&(a+=x.css(e,n+Zt[o],!0,i)),r?("content"===n&&(a-=x.css(e,"padding"+Zt[o],!0,i)),"margin"!==n&&(a-=x.css(e,"border"+Zt[o]+"Width",!0,i))):(a+=x.css(e,"padding"+Zt[o],!0,i),"padding"!==n&&(a+=x.css(e,"border"+Zt[o]+"Width",!0,i)));return a}function sn(e,t,n){var r=!0,i="width"===t?e.offsetWidth:e.offsetHeight,o=Rt(e),a=x.support.boxSizing&&"border-box"===x.css(e,"boxSizing",!1,o);if(0>=i||null==i){if(i=Wt(e,t,o),(0>i||null==i)&&(i=e.style[t]),Yt.test(i))return i;r=a&&(x.support.boxSizingReliable||i===e.style[t]),i=parseFloat(i)||0}return i+an(e,t,n||(a?"border":"content"),r,o)+"px"}function ln(e){var t=a,n=Gt[e];return n||(n=un(e,t),"none"!==n&&n||(Pt=(Pt||x("<iframe frameborder='0' width='0' height='0'/>").css("cssText","display:block !important")).appendTo(t.documentElement),t=(Pt[0].contentWindow||Pt[0].contentDocument).document,t.write("<!doctype html><html><body>"),t.close(),n=un(e,t),Pt.detach()),Gt[e]=n),n}function un(e,t){var n=x(t.createElement(e)).appendTo(t.body),r=x.css(n[0],"display");return n.remove(),r}x.each(["height","width"],function(e,n){x.cssHooks[n]={get:function(e,r,i){return r?0===e.offsetWidth&&Xt.test(x.css(e,"display"))?x.swap(e,Qt,function(){return sn(e,n,i)}):sn(e,n,i):t},set:function(e,t,r){var i=r&&Rt(e);return on(e,t,r?an(e,n,r,x.support.boxSizing&&"border-box"===x.css(e,"boxSizing",!1,i),i):0)}}}),x.support.opacity||(x.cssHooks.opacity={get:function(e,t){return It.test((t&&e.currentStyle?e.currentStyle.filter:e.style.filter)||"")?.01*parseFloat(RegExp.$1)+"":t?"1":""},set:function(e,t){var n=e.style,r=e.currentStyle,i=x.isNumeric(t)?"alpha(opacity="+100*t+")":"",o=r&&r.filter||n.filter||"";n.zoom=1,(t>=1||""===t)&&""===x.trim(o.replace($t,""))&&n.removeAttribute&&(n.removeAttribute("filter"),""===t||r&&!r.filter)||(n.filter=$t.test(o)?o.replace($t,i):o+" "+i)}}),x(function(){x.support.reliableMarginRight||(x.cssHooks.marginRight={get:function(e,n){return n?x.swap(e,{display:"inline-block"},Wt,[e,"marginRight"]):t}}),!x.support.pixelPosition&&x.fn.position&&x.each(["top","left"],function(e,n){x.cssHooks[n]={get:function(e,r){return r?(r=Wt(e,n),Yt.test(r)?x(e).position()[n]+"px":r):t}}})}),x.expr&&x.expr.filters&&(x.expr.filters.hidden=function(e){return 0>=e.offsetWidth&&0>=e.offsetHeight||!x.support.reliableHiddenOffsets&&"none"===(e.style&&e.style.display||x.css(e,"display"))},x.expr.filters.visible=function(e){return!x.expr.filters.hidden(e)}),x.each({margin:"",padding:"",border:"Width"},function(e,t){x.cssHooks[e+t]={expand:function(n){var r=0,i={},o="string"==typeof n?n.split(" "):[n];for(;4>r;r++)i[e+Zt[r]+t]=o[r]||o[r-2]||o[0];return i}},Ut.test(e)||(x.cssHooks[e+t].set=on)});var cn=/%20/g,pn=/\[\]$/,fn=/\r?\n/g,dn=/^(?:submit|button|image|reset|file)$/i,hn=/^(?:input|select|textarea|keygen)/i;x.fn.extend({serialize:function(){return x.param(this.serializeArray())},serializeArray:function(){return this.map(function(){var e=x.prop(this,"elements");return e?x.makeArray(e):this}).filter(function(){var e=this.type;return this.name&&!x(this).is(":disabled")&&hn.test(this.nodeName)&&!dn.test(e)&&(this.checked||!Ct.test(e))}).map(function(e,t){var n=x(this).val();return null==n?null:x.isArray(n)?x.map(n,function(e){return{name:t.name,value:e.replace(fn,"\r\n")}}):{name:t.name,value:n.replace(fn,"\r\n")}}).get()}}),x.param=function(e,n){var r,i=[],o=function(e,t){t=x.isFunction(t)?t():null==t?"":t,i[i.length]=encodeURIComponent(e)+"="+encodeURIComponent(t)};if(n===t&&(n=x.ajaxSettings&&x.ajaxSettings.traditional),x.isArray(e)||e.jquery&&!x.isPlainObject(e))x.each(e,function(){o(this.name,this.value)});else for(r in e)gn(r,e[r],n,o);return i.join("&").replace(cn,"+")};function gn(e,t,n,r){var i;if(x.isArray(t))x.each(t,function(t,i){n||pn.test(e)?r(e,i):gn(e+"["+("object"==typeof i?t:"")+"]",i,n,r)});else if(n||"object"!==x.type(t))r(e,t);else for(i in t)gn(e+"["+i+"]",t[i],n,r)}x.each("blur focus focusin focusout load resize scroll unload click dblclick mousedown mouseup mousemove mouseover mouseout mouseenter mouseleave change select submit keydown keypress keyup error contextmenu".split(" "),function(e,t){x.fn[t]=function(e,n){return arguments.length>0?this.on(t,null,e,n):this.trigger(t)}}),x.fn.extend({hover:function(e,t){return this.mouseenter(e).mouseleave(t||e)},bind:function(e,t,n){return this.on(e,null,t,n)},unbind:function(e,t){return this.off(e,null,t)},delegate:function(e,t,n,r){return this.on(t,e,n,r)},undelegate:function(e,t,n){return 1===arguments.length?this.off(e,"**"):this.off(t,e||"**",n)}});var mn,yn,vn=x.now(),bn=/\?/,xn=/#.*$/,wn=/([?&])_=[^&]*/,Tn=/^(.*?):[ \t]*([^\r\n]*)\r?$/gm,Cn=/^(?:about|app|app-storage|.+-extension|file|res|widget):$/,Nn=/^(?:GET|HEAD)$/,kn=/^\/\//,En=/^([\w.+-]+:)(?:\/\/([^\/?#:]*)(?::(\d+)|)|)/,Sn=x.fn.load,An={},jn={},Dn="*/".concat("*");try{yn=o.href}catch(Ln){yn=a.createElement("a"),yn.href="",yn=yn.href}mn=En.exec(yn.toLowerCase())||[];function Hn(e){return function(t,n){"string"!=typeof t&&(n=t,t="*");var r,i=0,o=t.toLowerCase().match(T)||[];if(x.isFunction(n))while(r=o[i++])"+"===r[0]?(r=r.slice(1)||"*",(e[r]=e[r]||[]).unshift(n)):(e[r]=e[r]||[]).push(n)}}function qn(e,n,r,i){var o={},a=e===jn;function s(l){var u;return o[l]=!0,x.each(e[l]||[],function(e,l){var c=l(n,r,i);return"string"!=typeof c||a||o[c]?a?!(u=c):t:(n.dataTypes.unshift(c),s(c),!1)}),u}return s(n.dataTypes[0])||!o["*"]&&s("*")}function _n(e,n){var r,i,o=x.ajaxSettings.flatOptions||{};for(i in n)n[i]!==t&&((o[i]?e:r||(r={}))[i]=n[i]);return r&&x.extend(!0,e,r),e}x.fn.load=function(e,n,r){if("string"!=typeof e&&Sn)return Sn.apply(this,arguments);var i,o,a,s=this,l=e.indexOf(" ");return l>=0&&(i=e.slice(l,e.length),e=e.slice(0,l)),x.isFunction(n)?(r=n,n=t):n&&"object"==typeof n&&(a="POST"),s.length>0&&x.ajax({url:e,type:a,dataType:"html",data:n}).done(function(e){o=arguments,s.html(i?x("<div>").append(x.parseHTML(e)).find(i):e)}).complete(r&&function(e,t){s.each(r,o||[e.responseText,t,e])}),this},x.each(["ajaxStart","ajaxStop","ajaxComplete","ajaxError","ajaxSuccess","ajaxSend"],function(e,t){x.fn[t]=function(e){return this.on(t,e)}}),x.extend({active:0,lastModified:{},etag:{},ajaxSettings:{url:yn,type:"GET",isLocal:Cn.test(mn[1]),global:!0,processData:!0,async:!0,contentType:"application/x-www-form-urlencoded; charset=UTF-8",accepts:{"*":Dn,text:"text/plain",html:"text/html",xml:"application/xml, text/xml",json:"application/json, text/javascript"},contents:{xml:/xml/,html:/html/,json:/json/},responseFields:{xml:"responseXML",text:"responseText",json:"responseJSON"},converters:{"* text":String,"text html":!0,"text json":x.parseJSON,"text xml":x.parseXML},flatOptions:{url:!0,context:!0}},ajaxSetup:function(e,t){return t?_n(_n(e,x.ajaxSettings),t):_n(x.ajaxSettings,e)},ajaxPrefilter:Hn(An),ajaxTransport:Hn(jn),ajax:function(e,n){"object"==typeof e&&(n=e,e=t),n=n||{};var r,i,o,a,s,l,u,c,p=x.ajaxSetup({},n),f=p.context||p,d=p.context&&(f.nodeType||f.jquery)?x(f):x.event,h=x.Deferred(),g=x.Callbacks("once memory"),m=p.statusCode||{},y={},v={},b=0,w="canceled",C={readyState:0,getResponseHeader:function(e){var t;if(2===b){if(!c){c={};while(t=Tn.exec(a))c[t[1].toLowerCase()]=t[2]}t=c[e.toLowerCase()]}return null==t?null:t},getAllResponseHeaders:function(){return 2===b?a:null},setRequestHeader:function(e,t){var n=e.toLowerCase();return b||(e=v[n]=v[n]||e,y[e]=t),this},overrideMimeType:function(e){return b||(p.mimeType=e),this},statusCode:function(e){var t;if(e)if(2>b)for(t in e)m[t]=[m[t],e[t]];else C.always(e[C.status]);return this},abort:function(e){var t=e||w;return u&&u.abort(t),k(0,t),this}};if(h.promise(C).complete=g.add,C.success=C.done,C.error=C.fail,p.url=((e||p.url||yn)+"").replace(xn,"").replace(kn,mn[1]+"//"),p.type=n.method||n.type||p.method||p.type,p.dataTypes=x.trim(p.dataType||"*").toLowerCase().match(T)||[""],null==p.crossDomain&&(r=En.exec(p.url.toLowerCase()),p.crossDomain=!(!r||r[1]===mn[1]&&r[2]===mn[2]&&(r[3]||("http:"===r[1]?"80":"443"))===(mn[3]||("http:"===mn[1]?"80":"443")))),p.data&&p.processData&&"string"!=typeof p.data&&(p.data=x.param(p.data,p.traditional)),qn(An,p,n,C),2===b)return C;l=p.global,l&&0===x.active++&&x.event.trigger("ajaxStart"),p.type=p.type.toUpperCase(),p.hasContent=!Nn.test(p.type),o=p.url,p.hasContent||(p.data&&(o=p.url+=(bn.test(o)?"&":"?")+p.data,delete p.data),p.cache===!1&&(p.url=wn.test(o)?o.replace(wn,"$1_="+vn++):o+(bn.test(o)?"&":"?")+"_="+vn++)),p.ifModified&&(x.lastModified[o]&&C.setRequestHeader("If-Modified-Since",x.lastModified[o]),x.etag[o]&&C.setRequestHeader("If-None-Match",x.etag[o])),(p.data&&p.hasContent&&p.contentType!==!1||n.contentType)&&C.setRequestHeader("Content-Type",p.contentType),C.setRequestHeader("Accept",p.dataTypes[0]&&p.accepts[p.dataTypes[0]]?p.accepts[p.dataTypes[0]]+("*"!==p.dataTypes[0]?", "+Dn+"; q=0.01":""):p.accepts["*"]);for(i in p.headers)C.setRequestHeader(i,p.headers[i]);if(p.beforeSend&&(p.beforeSend.call(f,C,p)===!1||2===b))return C.abort();w="abort";for(i in{success:1,error:1,complete:1})C[i](p[i]);if(u=qn(jn,p,n,C)){C.readyState=1,l&&d.trigger("ajaxSend",[C,p]),p.async&&p.timeout>0&&(s=setTimeout(function(){C.abort("timeout")},p.timeout));try{b=1,u.send(y,k)}catch(N){if(!(2>b))throw N;k(-1,N)}}else k(-1,"No Transport");function k(e,n,r,i){var c,y,v,w,T,N=n;2!==b&&(b=2,s&&clearTimeout(s),u=t,a=i||"",C.readyState=e>0?4:0,c=e>=200&&300>e||304===e,r&&(w=Mn(p,C,r)),w=On(p,w,C,c),c?(p.ifModified&&(T=C.getResponseHeader("Last-Modified"),T&&(x.lastModified[o]=T),T=C.getResponseHeader("etag"),T&&(x.etag[o]=T)),204===e||"HEAD"===p.type?N="nocontent":304===e?N="notmodified":(N=w.state,y=w.data,v=w.error,c=!v)):(v=N,(e||!N)&&(N="error",0>e&&(e=0))),C.status=e,C.statusText=(n||N)+"",c?h.resolveWith(f,[y,N,C]):h.rejectWith(f,[C,N,v]),C.statusCode(m),m=t,l&&d.trigger(c?"ajaxSuccess":"ajaxError",[C,p,c?y:v]),g.fireWith(f,[C,N]),l&&(d.trigger("ajaxComplete",[C,p]),--x.active||x.event.trigger("ajaxStop")))}return C},getJSON:function(e,t,n){return x.get(e,t,n,"json")},getScript:function(e,n){return x.get(e,t,n,"script")}}),x.each(["get","post"],function(e,n){x[n]=function(e,r,i,o){return x.isFunction(r)&&(o=o||i,i=r,r=t),x.ajax({url:e,type:n,dataType:o,data:r,success:i})}});function Mn(e,n,r){var i,o,a,s,l=e.contents,u=e.dataTypes;while("*"===u[0])u.shift(),o===t&&(o=e.mimeType||n.getResponseHeader("Content-Type"));if(o)for(s in l)if(l[s]&&l[s].test(o)){u.unshift(s);break}if(u[0]in r)a=u[0];else{for(s in r){if(!u[0]||e.converters[s+" "+u[0]]){a=s;break}i||(i=s)}a=a||i}return a?(a!==u[0]&&u.unshift(a),r[a]):t}function On(e,t,n,r){var i,o,a,s,l,u={},c=e.dataTypes.slice();if(c[1])for(a in e.converters)u[a.toLowerCase()]=e.converters[a];o=c.shift();while(o)if(e.responseFields[o]&&(n[e.responseFields[o]]=t),!l&&r&&e.dataFilter&&(t=e.dataFilter(t,e.dataType)),l=o,o=c.shift())if("*"===o)o=l;else if("*"!==l&&l!==o){if(a=u[l+" "+o]||u["* "+o],!a)for(i in u)if(s=i.split(" "),s[1]===o&&(a=u[l+" "+s[0]]||u["* "+s[0]])){a===!0?a=u[i]:u[i]!==!0&&(o=s[0],c.unshift(s[1]));break}if(a!==!0)if(a&&e["throws"])t=a(t);else try{t=a(t)}catch(p){return{state:"parsererror",error:a?p:"No conversion from "+l+" to "+o}}}return{state:"success",data:t}}x.ajaxSetup({accepts:{script:"text/javascript, application/javascript, application/ecmascript, application/x-ecmascript"},contents:{script:/(?:java|ecma)script/},converters:{"text script":function(e){return x.globalEval(e),e}}}),x.ajaxPrefilter("script",function(e){e.cache===t&&(e.cache=!1),e.crossDomain&&(e.type="GET",e.global=!1)}),x.ajaxTransport("script",function(e){if(e.crossDomain){var n,r=a.head||x("head")[0]||a.documentElement;return{send:function(t,i){n=a.createElement("script"),n.async=!0,e.scriptCharset&&(n.charset=e.scriptCharset),n.src=e.url,n.onload=n.onreadystatechange=function(e,t){(t||!n.readyState||/loaded|complete/.test(n.readyState))&&(n.onload=n.onreadystatechange=null,n.parentNode&&n.parentNode.removeChild(n),n=null,t||i(200,"success"))},r.insertBefore(n,r.firstChild)},abort:function(){n&&n.onload(t,!0)}}}});var Fn=[],Bn=/(=)\?(?=&|$)|\?\?/;x.ajaxSetup({jsonp:"callback",jsonpCallback:function(){var e=Fn.pop()||x.expando+"_"+vn++;return this[e]=!0,e}}),x.ajaxPrefilter("json jsonp",function(n,r,i){var o,a,s,l=n.jsonp!==!1&&(Bn.test(n.url)?"url":"string"==typeof n.data&&!(n.contentType||"").indexOf("application/x-www-form-urlencoded")&&Bn.test(n.data)&&"data");return l||"jsonp"===n.dataTypes[0]?(o=n.jsonpCallback=x.isFunction(n.jsonpCallback)?n.jsonpCallback():n.jsonpCallback,l?n[l]=n[l].replace(Bn,"$1"+o):n.jsonp!==!1&&(n.url+=(bn.test(n.url)?"&":"?")+n.jsonp+"="+o),n.converters["script json"]=function(){return s||x.error(o+" was not called"),s[0]},n.dataTypes[0]="json",a=e[o],e[o]=function(){s=arguments},i.always(function(){e[o]=a,n[o]&&(n.jsonpCallback=r.jsonpCallback,Fn.push(o)),s&&x.isFunction(a)&&a(s[0]),s=a=t}),"script"):t});var Pn,Rn,Wn=0,$n=e.ActiveXObject&&function(){var e;for(e in Pn)Pn[e](t,!0)};function In(){try{return new e.XMLHttpRequest}catch(t){}}function zn(){try{return new e.ActiveXObject("Microsoft.XMLHTTP")}catch(t){}}x.ajaxSettings.xhr=e.ActiveXObject?function(){return!this.isLocal&&In()||zn()}:In,Rn=x.ajaxSettings.xhr(),x.support.cors=!!Rn&&"withCredentials"in Rn,Rn=x.support.ajax=!!Rn,Rn&&x.ajaxTransport(function(n){if(!n.crossDomain||x.support.cors){var r;return{send:function(i,o){var a,s,l=n.xhr();if(n.username?l.open(n.type,n.url,n.async,n.username,n.password):l.open(n.type,n.url,n.async),n.xhrFields)for(s in n.xhrFields)l[s]=n.xhrFields[s];n.mimeType&&l.overrideMimeType&&l.overrideMimeType(n.mimeType),n.crossDomain||i["X-Requested-With"]||(i["X-Requested-With"]="XMLHttpRequest");try{for(s in i)l.setRequestHeader(s,i[s])}catch(u){}l.send(n.hasContent&&n.data||null),r=function(e,i){var s,u,c,p;try{if(r&&(i||4===l.readyState))if(r=t,a&&(l.onreadystatechange=x.noop,$n&&delete Pn[a]),i)4!==l.readyState&&l.abort();else{p={},s=l.status,u=l.getAllResponseHeaders(),"string"==typeof l.responseText&&(p.text=l.responseText);try{c=l.statusText}catch(f){c=""}s||!n.isLocal||n.crossDomain?1223===s&&(s=204):s=p.text?200:404}}catch(d){i||o(-1,d)}p&&o(s,c,p,u)},n.async?4===l.readyState?setTimeout(r):(a=++Wn,$n&&(Pn||(Pn={},x(e).unload($n)),Pn[a]=r),l.onreadystatechange=r):r()},abort:function(){r&&r(t,!0)}}}});var Xn,Un,Vn=/^(?:toggle|show|hide)$/,Yn=RegExp("^(?:([+-])=|)("+w+")([a-z%]*)$","i"),Jn=/queueHooks$/,Gn=[nr],Qn={"*":[function(e,t){var n=this.createTween(e,t),r=n.cur(),i=Yn.exec(t),o=i&&i[3]||(x.cssNumber[e]?"":"px"),a=(x.cssNumber[e]||"px"!==o&&+r)&&Yn.exec(x.css(n.elem,e)),s=1,l=20;if(a&&a[3]!==o){o=o||a[3],i=i||[],a=+r||1;do s=s||".5",a/=s,x.style(n.elem,e,a+o);while(s!==(s=n.cur()/r)&&1!==s&&--l)}return i&&(a=n.start=+a||+r||0,n.unit=o,n.end=i[1]?a+(i[1]+1)*i[2]:+i[2]),n}]};function Kn(){return setTimeout(function(){Xn=t}),Xn=x.now()}function Zn(e,t,n){var r,i=(Qn[t]||[]).concat(Qn["*"]),o=0,a=i.length;for(;a>o;o++)if(r=i[o].call(n,t,e))return r}function er(e,t,n){var r,i,o=0,a=Gn.length,s=x.Deferred().always(function(){delete l.elem}),l=function(){if(i)return!1;var t=Xn||Kn(),n=Math.max(0,u.startTime+u.duration-t),r=n/u.duration||0,o=1-r,a=0,l=u.tweens.length;for(;l>a;a++)u.tweens[a].run(o);return s.notifyWith(e,[u,o,n]),1>o&&l?n:(s.resolveWith(e,[u]),!1)},u=s.promise({elem:e,props:x.extend({},t),opts:x.extend(!0,{specialEasing:{}},n),originalProperties:t,originalOptions:n,startTime:Xn||Kn(),duration:n.duration,tweens:[],createTween:function(t,n){var r=x.Tween(e,u.opts,t,n,u.opts.specialEasing[t]||u.opts.easing);return u.tweens.push(r),r},stop:function(t){var n=0,r=t?u.tweens.length:0;if(i)return this;for(i=!0;r>n;n++)u.tweens[n].run(1);return t?s.resolveWith(e,[u,t]):s.rejectWith(e,[u,t]),this}}),c=u.props;for(tr(c,u.opts.specialEasing);a>o;o++)if(r=Gn[o].call(u,e,c,u.opts))return r;return x.map(c,Zn,u),x.isFunction(u.opts.start)&&u.opts.start.call(e,u),x.fx.timer(x.extend(l,{elem:e,anim:u,queue:u.opts.queue})),u.progress(u.opts.progress).done(u.opts.done,u.opts.complete).fail(u.opts.fail).always(u.opts.always)}function tr(e,t){var n,r,i,o,a;for(n in e)if(r=x.camelCase(n),i=t[r],o=e[n],x.isArray(o)&&(i=o[1],o=e[n]=o[0]),n!==r&&(e[r]=o,delete e[n]),a=x.cssHooks[r],a&&"expand"in a){o=a.expand(o),delete e[r];for(n in o)n in e||(e[n]=o[n],t[n]=i)}else t[r]=i}x.Animation=x.extend(er,{tweener:function(e,t){x.isFunction(e)?(t=e,e=["*"]):e=e.split(" ");var n,r=0,i=e.length;for(;i>r;r++)n=e[r],Qn[n]=Qn[n]||[],Qn[n].unshift(t)},prefilter:function(e,t){t?Gn.unshift(e):Gn.push(e)}});function nr(e,t,n){var r,i,o,a,s,l,u=this,c={},p=e.style,f=e.nodeType&&nn(e),d=x._data(e,"fxshow");n.queue||(s=x._queueHooks(e,"fx"),null==s.unqueued&&(s.unqueued=0,l=s.empty.fire,s.empty.fire=function(){s.unqueued||l()}),s.unqueued++,u.always(function(){u.always(function(){s.unqueued--,x.queue(e,"fx").length||s.empty.fire()})})),1===e.nodeType&&("height"in t||"width"in t)&&(n.overflow=[p.overflow,p.overflowX,p.overflowY],"inline"===x.css(e,"display")&&"none"===x.css(e,"float")&&(x.support.inlineBlockNeedsLayout&&"inline"!==ln(e.nodeName)?p.zoom=1:p.display="inline-block")),n.overflow&&(p.overflow="hidden",x.support.shrinkWrapBlocks||u.always(function(){p.overflow=n.overflow[0],p.overflowX=n.overflow[1],p.overflowY=n.overflow[2]}));for(r in t)if(i=t[r],Vn.exec(i)){if(delete t[r],o=o||"toggle"===i,i===(f?"hide":"show"))continue;c[r]=d&&d[r]||x.style(e,r)}if(!x.isEmptyObject(c)){d?"hidden"in d&&(f=d.hidden):d=x._data(e,"fxshow",{}),o&&(d.hidden=!f),f?x(e).show():u.done(function(){x(e).hide()}),u.done(function(){var t;x._removeData(e,"fxshow");for(t in c)x.style(e,t,c[t])});for(r in c)a=Zn(f?d[r]:0,r,u),r in d||(d[r]=a.start,f&&(a.end=a.start,a.start="width"===r||"height"===r?1:0))}}function rr(e,t,n,r,i){return new rr.prototype.init(e,t,n,r,i)}x.Tween=rr,rr.prototype={constructor:rr,init:function(e,t,n,r,i,o){this.elem=e,this.prop=n,this.easing=i||"swing",this.options=t,this.start=this.now=this.cur(),this.end=r,this.unit=o||(x.cssNumber[n]?"":"px")},cur:function(){var e=rr.propHooks[this.prop];return e&&e.get?e.get(this):rr.propHooks._default.get(this)},run:function(e){var t,n=rr.propHooks[this.prop];return this.pos=t=this.options.duration?x.easing[this.easing](e,this.options.duration*e,0,1,this.options.duration):e,this.now=(this.end-this.start)*t+this.start,this.options.step&&this.options.step.call(this.elem,this.now,this),n&&n.set?n.set(this):rr.propHooks._default.set(this),this}},rr.prototype.init.prototype=rr.prototype,rr.propHooks={_default:{get:function(e){var t;return null==e.elem[e.prop]||e.elem.style&&null!=e.elem.style[e.prop]?(t=x.css(e.elem,e.prop,""),t&&"auto"!==t?t:0):e.elem[e.prop]},set:function(e){x.fx.step[e.prop]?x.fx.step[e.prop](e):e.elem.style&&(null!=e.elem.style[x.cssProps[e.prop]]||x.cssHooks[e.prop])?x.style(e.elem,e.prop,e.now+e.unit):e.elem[e.prop]=e.now}}},rr.propHooks.scrollTop=rr.propHooks.scrollLeft={set:function(e){e.elem.nodeType&&e.elem.parentNode&&(e.elem[e.prop]=e.now)}},x.each(["toggle","show","hide"],function(e,t){var n=x.fn[t];x.fn[t]=function(e,r,i){return null==e||"boolean"==typeof e?n.apply(this,arguments):this.animate(ir(t,!0),e,r,i)}}),x.fn.extend({fadeTo:function(e,t,n,r){return this.filter(nn).css("opacity",0).show().end().animate({opacity:t},e,n,r)},animate:function(e,t,n,r){var i=x.isEmptyObject(e),o=x.speed(t,n,r),a=function(){var t=er(this,x.extend({},e),o);(i||x._data(this,"finish"))&&t.stop(!0)};return a.finish=a,i||o.queue===!1?this.each(a):this.queue(o.queue,a)},stop:function(e,n,r){var i=function(e){var t=e.stop;delete e.stop,t(r)};return"string"!=typeof e&&(r=n,n=e,e=t),n&&e!==!1&&this.queue(e||"fx",[]),this.each(function(){var t=!0,n=null!=e&&e+"queueHooks",o=x.timers,a=x._data(this);if(n)a[n]&&a[n].stop&&i(a[n]);else for(n in a)a[n]&&a[n].stop&&Jn.test(n)&&i(a[n]);for(n=o.length;n--;)o[n].elem!==this||null!=e&&o[n].queue!==e||(o[n].anim.stop(r),t=!1,o.splice(n,1));(t||!r)&&x.dequeue(this,e)})},finish:function(e){return e!==!1&&(e=e||"fx"),this.each(function(){var t,n=x._data(this),r=n[e+"queue"],i=n[e+"queueHooks"],o=x.timers,a=r?r.length:0;for(n.finish=!0,x.queue(this,e,[]),i&&i.stop&&i.stop.call(this,!0),t=o.length;t--;)o[t].elem===this&&o[t].queue===e&&(o[t].anim.stop(!0),o.splice(t,1));for(t=0;a>t;t++)r[t]&&r[t].finish&&r[t].finish.call(this);delete n.finish})}});function ir(e,t){var n,r={height:e},i=0;for(t=t?1:0;4>i;i+=2-t)n=Zt[i],r["margin"+n]=r["padding"+n]=e;return t&&(r.opacity=r.width=e),r}x.each({slideDown:ir("show"),slideUp:ir("hide"),slideToggle:ir("toggle"),fadeIn:{opacity:"show"},fadeOut:{opacity:"hide"},fadeToggle:{opacity:"toggle"}},function(e,t){x.fn[e]=function(e,n,r){return this.animate(t,e,n,r)}}),x.speed=function(e,t,n){var r=e&&"object"==typeof e?x.extend({},e):{complete:n||!n&&t||x.isFunction(e)&&e,duration:e,easing:n&&t||t&&!x.isFunction(t)&&t};return r.duration=x.fx.off?0:"number"==typeof r.duration?r.duration:r.duration in x.fx.speeds?x.fx.speeds[r.duration]:x.fx.speeds._default,(null==r.queue||r.queue===!0)&&(r.queue="fx"),r.old=r.complete,r.complete=function(){x.isFunction(r.old)&&r.old.call(this),r.queue&&x.dequeue(this,r.queue)},r},x.easing={linear:function(e){return e},swing:function(e){return.5-Math.cos(e*Math.PI)/2}},x.timers=[],x.fx=rr.prototype.init,x.fx.tick=function(){var e,n=x.timers,r=0;for(Xn=x.now();n.length>r;r++)e=n[r],e()||n[r]!==e||n.splice(r--,1);n.length||x.fx.stop(),Xn=t},x.fx.timer=function(e){e()&&x.timers.push(e)&&x.fx.start()},x.fx.interval=13,x.fx.start=function(){Un||(Un=setInterval(x.fx.tick,x.fx.interval))},x.fx.stop=function(){clearInterval(Un),Un=null},x.fx.speeds={slow:600,fast:200,_default:400},x.fx.step={},x.expr&&x.expr.filters&&(x.expr.filters.animated=function(e){return x.grep(x.timers,function(t){return e===t.elem}).length}),x.fn.offset=function(e){if(arguments.length)return e===t?this:this.each(function(t){x.offset.setOffset(this,e,t)});var n,r,o={top:0,left:0},a=this[0],s=a&&a.ownerDocument;if(s)return n=s.documentElement,x.contains(n,a)?(typeof a.getBoundingClientRect!==i&&(o=a.getBoundingClientRect()),r=or(s),{top:o.top+(r.pageYOffset||n.scrollTop)-(n.clientTop||0),left:o.left+(r.pageXOffset||n.scrollLeft)-(n.clientLeft||0)}):o},x.offset={setOffset:function(e,t,n){var r=x.css(e,"position");"static"===r&&(e.style.position="relative");var i=x(e),o=i.offset(),a=x.css(e,"top"),s=x.css(e,"left"),l=("absolute"===r||"fixed"===r)&&x.inArray("auto",[a,s])>-1,u={},c={},p,f;l?(c=i.position(),p=c.top,f=c.left):(p=parseFloat(a)||0,f=parseFloat(s)||0),x.isFunction(t)&&(t=t.call(e,n,o)),null!=t.top&&(u.top=t.top-o.top+p),null!=t.left&&(u.left=t.left-o.left+f),"using"in t?t.using.call(e,u):i.css(u)}},x.fn.extend({position:function(){if(this[0]){var e,t,n={top:0,left:0},r=this[0];return"fixed"===x.css(r,"position")?t=r.getBoundingClientRect():(e=this.offsetParent(),t=this.offset(),x.nodeName(e[0],"html")||(n=e.offset()),n.top+=x.css(e[0],"borderTopWidth",!0),n.left+=x.css(e[0],"borderLeftWidth",!0)),{top:t.top-n.top-x.css(r,"marginTop",!0),left:t.left-n.left-x.css(r,"marginLeft",!0)}}},offsetParent:function(){return this.map(function(){var e=this.offsetParent||s;while(e&&!x.nodeName(e,"html")&&"static"===x.css(e,"position"))e=e.offsetParent;return e||s})}}),x.each({scrollLeft:"pageXOffset",scrollTop:"pageYOffset"},function(e,n){var r=/Y/.test(n);x.fn[e]=function(i){return x.access(this,function(e,i,o){var a=or(e);return o===t?a?n in a?a[n]:a.document.documentElement[i]:e[i]:(a?a.scrollTo(r?x(a).scrollLeft():o,r?o:x(a).scrollTop()):e[i]=o,t)},e,i,arguments.length,null)}});function or(e){return x.isWindow(e)?e:9===e.nodeType?e.defaultView||e.parentWindow:!1}x.each({Height:"height",Width:"width"},function(e,n){x.each({padding:"inner"+e,content:n,"":"outer"+e},function(r,i){x.fn[i]=function(i,o){var a=arguments.length&&(r||"boolean"!=typeof i),s=r||(i===!0||o===!0?"margin":"border");return x.access(this,function(n,r,i){var o;return x.isWindow(n)?n.document.documentElement["client"+e]:9===n.nodeType?(o=n.documentElement,Math.max(n.body["scroll"+e],o["scroll"+e],n.body["offset"+e],o["offset"+e],o["client"+e])):i===t?x.css(n,r,s):x.style(n,r,i,s)},n,a?i:t,a,null)}})}),x.fn.size=function(){return this.length},x.fn.andSelf=x.fn.addBack,"object"==typeof module&&module&&"object"==typeof module.exports?module.exports=x:(e.jQuery=e.$=x,"function"==typeof define&&define.amd&&define("jquery",[],function(){return x}))})(window);


/*! jQuery UI - v1.10.2 - 2013-04-16
* http://jqueryui.com
* Includes: jquery.ui.core.js, jquery.ui.widget.js, jquery.ui.mouse.js, jquery.ui.position.js, jquery.ui.draggable.js, jquery.ui.droppable.js, jquery.ui.resizable.js, jquery.ui.selectable.js, jquery.ui.sortable.js, jquery.ui.accordion.js, jquery.ui.autocomplete.js, jquery.ui.button.js, jquery.ui.datepicker.js, jquery.ui.dialog.js, jquery.ui.menu.js, jquery.ui.progressbar.js, jquery.ui.slider.js, jquery.ui.spinner.js, jquery.ui.tabs.js, jquery.ui.tooltip.js, jquery.ui.effect.js, jquery.ui.effect-blind.js, jquery.ui.effect-bounce.js, jquery.ui.effect-clip.js, jquery.ui.effect-drop.js, jquery.ui.effect-explode.js, jquery.ui.effect-fade.js, jquery.ui.effect-fold.js, jquery.ui.effect-highlight.js, jquery.ui.effect-pulsate.js, jquery.ui.effect-scale.js, jquery.ui.effect-shake.js, jquery.ui.effect-slide.js, jquery.ui.effect-transfer.js
* Copyright 2013 jQuery Foundation and other contributors Licensed MIT */

(function(e,t){function i(t,i){var a,n,r,o=t.nodeName.toLowerCase();return"area"===o?(a=t.parentNode,n=a.name,t.href&&n&&"map"===a.nodeName.toLowerCase()?(r=e("img[usemap=#"+n+"]")[0],!!r&&s(r)):!1):(/input|select|textarea|button|object/.test(o)?!t.disabled:"a"===o?t.href||i:i)&&s(t)}function s(t){return e.expr.filters.visible(t)&&!e(t).parents().addBack().filter(function(){return"hidden"===e.css(this,"visibility")}).length}var a=0,n=/^ui-id-\d+$/;e.ui=e.ui||{},e.extend(e.ui,{version:"1.10.2",keyCode:{BACKSPACE:8,COMMA:188,DELETE:46,DOWN:40,END:35,ENTER:13,ESCAPE:27,HOME:36,LEFT:37,NUMPAD_ADD:107,NUMPAD_DECIMAL:110,NUMPAD_DIVIDE:111,NUMPAD_ENTER:108,NUMPAD_MULTIPLY:106,NUMPAD_SUBTRACT:109,PAGE_DOWN:34,PAGE_UP:33,PERIOD:190,RIGHT:39,SPACE:32,TAB:9,UP:38}}),e.fn.extend({focus:function(t){return function(i,s){return"number"==typeof i?this.each(function(){var t=this;setTimeout(function(){e(t).focus(),s&&s.call(t)},i)}):t.apply(this,arguments)}}(e.fn.focus),scrollParent:function(){var t;return t=e.ui.ie&&/(static|relative)/.test(this.css("position"))||/absolute/.test(this.css("position"))?this.parents().filter(function(){return/(relative|absolute|fixed)/.test(e.css(this,"position"))&&/(auto|scroll)/.test(e.css(this,"overflow")+e.css(this,"overflow-y")+e.css(this,"overflow-x"))}).eq(0):this.parents().filter(function(){return/(auto|scroll)/.test(e.css(this,"overflow")+e.css(this,"overflow-y")+e.css(this,"overflow-x"))}).eq(0),/fixed/.test(this.css("position"))||!t.length?e(document):t},zIndex:function(i){if(i!==t)return this.css("zIndex",i);if(this.length)for(var s,a,n=e(this[0]);n.length&&n[0]!==document;){if(s=n.css("position"),("absolute"===s||"relative"===s||"fixed"===s)&&(a=parseInt(n.css("zIndex"),10),!isNaN(a)&&0!==a))return a;n=n.parent()}return 0},uniqueId:function(){return this.each(function(){this.id||(this.id="ui-id-"+ ++a)})},removeUniqueId:function(){return this.each(function(){n.test(this.id)&&e(this).removeAttr("id")})}}),e.extend(e.expr[":"],{data:e.expr.createPseudo?e.expr.createPseudo(function(t){return function(i){return!!e.data(i,t)}}):function(t,i,s){return!!e.data(t,s[3])},focusable:function(t){return i(t,!isNaN(e.attr(t,"tabindex")))},tabbable:function(t){var s=e.attr(t,"tabindex"),a=isNaN(s);return(a||s>=0)&&i(t,!a)}}),e("<a>").outerWidth(1).jquery||e.each(["Width","Height"],function(i,s){function a(t,i,s,a){return e.each(n,function(){i-=parseFloat(e.css(t,"padding"+this))||0,s&&(i-=parseFloat(e.css(t,"border"+this+"Width"))||0),a&&(i-=parseFloat(e.css(t,"margin"+this))||0)}),i}var n="Width"===s?["Left","Right"]:["Top","Bottom"],r=s.toLowerCase(),o={innerWidth:e.fn.innerWidth,innerHeight:e.fn.innerHeight,outerWidth:e.fn.outerWidth,outerHeight:e.fn.outerHeight};e.fn["inner"+s]=function(i){return i===t?o["inner"+s].call(this):this.each(function(){e(this).css(r,a(this,i)+"px")})},e.fn["outer"+s]=function(t,i){return"number"!=typeof t?o["outer"+s].call(this,t):this.each(function(){e(this).css(r,a(this,t,!0,i)+"px")})}}),e.fn.addBack||(e.fn.addBack=function(e){return this.add(null==e?this.prevObject:this.prevObject.filter(e))}),e("<a>").data("a-b","a").removeData("a-b").data("a-b")&&(e.fn.removeData=function(t){return function(i){return arguments.length?t.call(this,e.camelCase(i)):t.call(this)}}(e.fn.removeData)),e.ui.ie=!!/msie [\w.]+/.exec(navigator.userAgent.toLowerCase()),e.support.selectstart="onselectstart"in document.createElement("div"),e.fn.extend({disableSelection:function(){return this.bind((e.support.selectstart?"selectstart":"mousedown")+".ui-disableSelection",function(e){e.preventDefault()})},enableSelection:function(){return this.unbind(".ui-disableSelection")}}),e.extend(e.ui,{plugin:{add:function(t,i,s){var a,n=e.ui[t].prototype;for(a in s)n.plugins[a]=n.plugins[a]||[],n.plugins[a].push([i,s[a]])},call:function(e,t,i){var s,a=e.plugins[t];if(a&&e.element[0].parentNode&&11!==e.element[0].parentNode.nodeType)for(s=0;a.length>s;s++)e.options[a[s][0]]&&a[s][1].apply(e.element,i)}},hasScroll:function(t,i){if("hidden"===e(t).css("overflow"))return!1;var s=i&&"left"===i?"scrollLeft":"scrollTop",a=!1;return t[s]>0?!0:(t[s]=1,a=t[s]>0,t[s]=0,a)}})})(jQuery);(function(e,t){var i=0,s=Array.prototype.slice,n=e.cleanData;e.cleanData=function(t){for(var i,s=0;null!=(i=t[s]);s++)try{e(i).triggerHandler("remove")}catch(a){}n(t)},e.widget=function(i,s,n){var a,r,o,h,l={},u=i.split(".")[0];i=i.split(".")[1],a=u+"-"+i,n||(n=s,s=e.Widget),e.expr[":"][a.toLowerCase()]=function(t){return!!e.data(t,a)},e[u]=e[u]||{},r=e[u][i],o=e[u][i]=function(e,i){return this._createWidget?(arguments.length&&this._createWidget(e,i),t):new o(e,i)},e.extend(o,r,{version:n.version,_proto:e.extend({},n),_childConstructors:[]}),h=new s,h.options=e.widget.extend({},h.options),e.each(n,function(i,n){return e.isFunction(n)?(l[i]=function(){var e=function(){return s.prototype[i].apply(this,arguments)},t=function(e){return s.prototype[i].apply(this,e)};return function(){var i,s=this._super,a=this._superApply;return this._super=e,this._superApply=t,i=n.apply(this,arguments),this._super=s,this._superApply=a,i}}(),t):(l[i]=n,t)}),o.prototype=e.widget.extend(h,{widgetEventPrefix:r?h.widgetEventPrefix:i},l,{constructor:o,namespace:u,widgetName:i,widgetFullName:a}),r?(e.each(r._childConstructors,function(t,i){var s=i.prototype;e.widget(s.namespace+"."+s.widgetName,o,i._proto)}),delete r._childConstructors):s._childConstructors.push(o),e.widget.bridge(i,o)},e.widget.extend=function(i){for(var n,a,r=s.call(arguments,1),o=0,h=r.length;h>o;o++)for(n in r[o])a=r[o][n],r[o].hasOwnProperty(n)&&a!==t&&(i[n]=e.isPlainObject(a)?e.isPlainObject(i[n])?e.widget.extend({},i[n],a):e.widget.extend({},a):a);return i},e.widget.bridge=function(i,n){var a=n.prototype.widgetFullName||i;e.fn[i]=function(r){var o="string"==typeof r,h=s.call(arguments,1),l=this;return r=!o&&h.length?e.widget.extend.apply(null,[r].concat(h)):r,o?this.each(function(){var s,n=e.data(this,a);return n?e.isFunction(n[r])&&"_"!==r.charAt(0)?(s=n[r].apply(n,h),s!==n&&s!==t?(l=s&&s.jquery?l.pushStack(s.get()):s,!1):t):e.error("no such method '"+r+"' for "+i+" widget instance"):e.error("cannot call methods on "+i+" prior to initialization; "+"attempted to call method '"+r+"'")}):this.each(function(){var t=e.data(this,a);t?t.option(r||{})._init():e.data(this,a,new n(r,this))}),l}},e.Widget=function(){},e.Widget._childConstructors=[],e.Widget.prototype={widgetName:"widget",widgetEventPrefix:"",defaultElement:"<div>",options:{disabled:!1,create:null},_createWidget:function(t,s){s=e(s||this.defaultElement||this)[0],this.element=e(s),this.uuid=i++,this.eventNamespace="."+this.widgetName+this.uuid,this.options=e.widget.extend({},this.options,this._getCreateOptions(),t),this.bindings=e(),this.hoverable=e(),this.focusable=e(),s!==this&&(e.data(s,this.widgetFullName,this),this._on(!0,this.element,{remove:function(e){e.target===s&&this.destroy()}}),this.document=e(s.style?s.ownerDocument:s.document||s),this.window=e(this.document[0].defaultView||this.document[0].parentWindow)),this._create(),this._trigger("create",null,this._getCreateEventData()),this._init()},_getCreateOptions:e.noop,_getCreateEventData:e.noop,_create:e.noop,_init:e.noop,destroy:function(){this._destroy(),this.element.unbind(this.eventNamespace).removeData(this.widgetName).removeData(this.widgetFullName).removeData(e.camelCase(this.widgetFullName)),this.widget().unbind(this.eventNamespace).removeAttr("aria-disabled").removeClass(this.widgetFullName+"-disabled "+"ui-state-disabled"),this.bindings.unbind(this.eventNamespace),this.hoverable.removeClass("ui-state-hover"),this.focusable.removeClass("ui-state-focus")},_destroy:e.noop,widget:function(){return this.element},option:function(i,s){var n,a,r,o=i;if(0===arguments.length)return e.widget.extend({},this.options);if("string"==typeof i)if(o={},n=i.split("."),i=n.shift(),n.length){for(a=o[i]=e.widget.extend({},this.options[i]),r=0;n.length-1>r;r++)a[n[r]]=a[n[r]]||{},a=a[n[r]];if(i=n.pop(),s===t)return a[i]===t?null:a[i];a[i]=s}else{if(s===t)return this.options[i]===t?null:this.options[i];o[i]=s}return this._setOptions(o),this},_setOptions:function(e){var t;for(t in e)this._setOption(t,e[t]);return this},_setOption:function(e,t){return this.options[e]=t,"disabled"===e&&(this.widget().toggleClass(this.widgetFullName+"-disabled ui-state-disabled",!!t).attr("aria-disabled",t),this.hoverable.removeClass("ui-state-hover"),this.focusable.removeClass("ui-state-focus")),this},enable:function(){return this._setOption("disabled",!1)},disable:function(){return this._setOption("disabled",!0)},_on:function(i,s,n){var a,r=this;"boolean"!=typeof i&&(n=s,s=i,i=!1),n?(s=a=e(s),this.bindings=this.bindings.add(s)):(n=s,s=this.element,a=this.widget()),e.each(n,function(n,o){function h(){return i||r.options.disabled!==!0&&!e(this).hasClass("ui-state-disabled")?("string"==typeof o?r[o]:o).apply(r,arguments):t}"string"!=typeof o&&(h.guid=o.guid=o.guid||h.guid||e.guid++);var l=n.match(/^(\w+)\s*(.*)$/),u=l[1]+r.eventNamespace,c=l[2];c?a.delegate(c,u,h):s.bind(u,h)})},_off:function(e,t){t=(t||"").split(" ").join(this.eventNamespace+" ")+this.eventNamespace,e.unbind(t).undelegate(t)},_delay:function(e,t){function i(){return("string"==typeof e?s[e]:e).apply(s,arguments)}var s=this;return setTimeout(i,t||0)},_hoverable:function(t){this.hoverable=this.hoverable.add(t),this._on(t,{mouseenter:function(t){e(t.currentTarget).addClass("ui-state-hover")},mouseleave:function(t){e(t.currentTarget).removeClass("ui-state-hover")}})},_focusable:function(t){this.focusable=this.focusable.add(t),this._on(t,{focusin:function(t){e(t.currentTarget).addClass("ui-state-focus")},focusout:function(t){e(t.currentTarget).removeClass("ui-state-focus")}})},_trigger:function(t,i,s){var n,a,r=this.options[t];if(s=s||{},i=e.Event(i),i.type=(t===this.widgetEventPrefix?t:this.widgetEventPrefix+t).toLowerCase(),i.target=this.element[0],a=i.originalEvent)for(n in a)n in i||(i[n]=a[n]);return this.element.trigger(i,s),!(e.isFunction(r)&&r.apply(this.element[0],[i].concat(s))===!1||i.isDefaultPrevented())}},e.each({show:"fadeIn",hide:"fadeOut"},function(t,i){e.Widget.prototype["_"+t]=function(s,n,a){"string"==typeof n&&(n={effect:n});var r,o=n?n===!0||"number"==typeof n?i:n.effect||i:t;n=n||{},"number"==typeof n&&(n={duration:n}),r=!e.isEmptyObject(n),n.complete=a,n.delay&&s.delay(n.delay),r&&e.effects&&e.effects.effect[o]?s[t](n):o!==t&&s[o]?s[o](n.duration,n.easing,a):s.queue(function(i){e(this)[t](),a&&a.call(s[0]),i()})}})})(jQuery);(function(e){var t=!1;e(document).mouseup(function(){t=!1}),e.widget("ui.mouse",{version:"1.10.2",options:{cancel:"input,textarea,button,select,option",distance:1,delay:0},_mouseInit:function(){var t=this;this.element.bind("mousedown."+this.widgetName,function(e){return t._mouseDown(e)}).bind("click."+this.widgetName,function(i){return!0===e.data(i.target,t.widgetName+".preventClickEvent")?(e.removeData(i.target,t.widgetName+".preventClickEvent"),i.stopImmediatePropagation(),!1):undefined}),this.started=!1},_mouseDestroy:function(){this.element.unbind("."+this.widgetName),this._mouseMoveDelegate&&e(document).unbind("mousemove."+this.widgetName,this._mouseMoveDelegate).unbind("mouseup."+this.widgetName,this._mouseUpDelegate)},_mouseDown:function(i){if(!t){this._mouseStarted&&this._mouseUp(i),this._mouseDownEvent=i;var s=this,n=1===i.which,a="string"==typeof this.options.cancel&&i.target.nodeName?e(i.target).closest(this.options.cancel).length:!1;return n&&!a&&this._mouseCapture(i)?(this.mouseDelayMet=!this.options.delay,this.mouseDelayMet||(this._mouseDelayTimer=setTimeout(function(){s.mouseDelayMet=!0},this.options.delay)),this._mouseDistanceMet(i)&&this._mouseDelayMet(i)&&(this._mouseStarted=this._mouseStart(i)!==!1,!this._mouseStarted)?(i.preventDefault(),!0):(!0===e.data(i.target,this.widgetName+".preventClickEvent")&&e.removeData(i.target,this.widgetName+".preventClickEvent"),this._mouseMoveDelegate=function(e){return s._mouseMove(e)},this._mouseUpDelegate=function(e){return s._mouseUp(e)},e(document).bind("mousemove."+this.widgetName,this._mouseMoveDelegate).bind("mouseup."+this.widgetName,this._mouseUpDelegate),i.preventDefault(),t=!0,!0)):!0}},_mouseMove:function(t){return e.ui.ie&&(!document.documentMode||9>document.documentMode)&&!t.button?this._mouseUp(t):this._mouseStarted?(this._mouseDrag(t),t.preventDefault()):(this._mouseDistanceMet(t)&&this._mouseDelayMet(t)&&(this._mouseStarted=this._mouseStart(this._mouseDownEvent,t)!==!1,this._mouseStarted?this._mouseDrag(t):this._mouseUp(t)),!this._mouseStarted)},_mouseUp:function(t){return e(document).unbind("mousemove."+this.widgetName,this._mouseMoveDelegate).unbind("mouseup."+this.widgetName,this._mouseUpDelegate),this._mouseStarted&&(this._mouseStarted=!1,t.target===this._mouseDownEvent.target&&e.data(t.target,this.widgetName+".preventClickEvent",!0),this._mouseStop(t)),!1},_mouseDistanceMet:function(e){return Math.max(Math.abs(this._mouseDownEvent.pageX-e.pageX),Math.abs(this._mouseDownEvent.pageY-e.pageY))>=this.options.distance},_mouseDelayMet:function(){return this.mouseDelayMet},_mouseStart:function(){},_mouseDrag:function(){},_mouseStop:function(){},_mouseCapture:function(){return!0}})})(jQuery);(function(t,e){function i(t,e,i){return[parseFloat(t[0])*(p.test(t[0])?e/100:1),parseFloat(t[1])*(p.test(t[1])?i/100:1)]}function s(e,i){return parseInt(t.css(e,i),10)||0}function n(e){var i=e[0];return 9===i.nodeType?{width:e.width(),height:e.height(),offset:{top:0,left:0}}:t.isWindow(i)?{width:e.width(),height:e.height(),offset:{top:e.scrollTop(),left:e.scrollLeft()}}:i.preventDefault?{width:0,height:0,offset:{top:i.pageY,left:i.pageX}}:{width:e.outerWidth(),height:e.outerHeight(),offset:e.offset()}}t.ui=t.ui||{};var a,o=Math.max,r=Math.abs,h=Math.round,l=/left|center|right/,c=/top|center|bottom/,u=/[\+\-]\d+(\.[\d]+)?%?/,d=/^\w+/,p=/%$/,f=t.fn.position;t.position={scrollbarWidth:function(){if(a!==e)return a;var i,s,n=t("<div style='display:block;width:50px;height:50px;overflow:hidden;'><div style='height:100px;width:auto;'></div></div>"),o=n.children()[0];return t("body").append(n),i=o.offsetWidth,n.css("overflow","scroll"),s=o.offsetWidth,i===s&&(s=n[0].clientWidth),n.remove(),a=i-s},getScrollInfo:function(e){var i=e.isWindow?"":e.element.css("overflow-x"),s=e.isWindow?"":e.element.css("overflow-y"),n="scroll"===i||"auto"===i&&e.width<e.element[0].scrollWidth,a="scroll"===s||"auto"===s&&e.height<e.element[0].scrollHeight;return{width:a?t.position.scrollbarWidth():0,height:n?t.position.scrollbarWidth():0}},getWithinInfo:function(e){var i=t(e||window),s=t.isWindow(i[0]);return{element:i,isWindow:s,offset:i.offset()||{left:0,top:0},scrollLeft:i.scrollLeft(),scrollTop:i.scrollTop(),width:s?i.width():i.outerWidth(),height:s?i.height():i.outerHeight()}}},t.fn.position=function(e){if(!e||!e.of)return f.apply(this,arguments);e=t.extend({},e);var a,p,m,g,v,_,b=t(e.of),y=t.position.getWithinInfo(e.within),w=t.position.getScrollInfo(y),x=(e.collision||"flip").split(" "),k={};return _=n(b),b[0].preventDefault&&(e.at="left top"),p=_.width,m=_.height,g=_.offset,v=t.extend({},g),t.each(["my","at"],function(){var t,i,s=(e[this]||"").split(" ");1===s.length&&(s=l.test(s[0])?s.concat(["center"]):c.test(s[0])?["center"].concat(s):["center","center"]),s[0]=l.test(s[0])?s[0]:"center",s[1]=c.test(s[1])?s[1]:"center",t=u.exec(s[0]),i=u.exec(s[1]),k[this]=[t?t[0]:0,i?i[0]:0],e[this]=[d.exec(s[0])[0],d.exec(s[1])[0]]}),1===x.length&&(x[1]=x[0]),"right"===e.at[0]?v.left+=p:"center"===e.at[0]&&(v.left+=p/2),"bottom"===e.at[1]?v.top+=m:"center"===e.at[1]&&(v.top+=m/2),a=i(k.at,p,m),v.left+=a[0],v.top+=a[1],this.each(function(){var n,l,c=t(this),u=c.outerWidth(),d=c.outerHeight(),f=s(this,"marginLeft"),_=s(this,"marginTop"),D=u+f+s(this,"marginRight")+w.width,T=d+_+s(this,"marginBottom")+w.height,C=t.extend({},v),M=i(k.my,c.outerWidth(),c.outerHeight());"right"===e.my[0]?C.left-=u:"center"===e.my[0]&&(C.left-=u/2),"bottom"===e.my[1]?C.top-=d:"center"===e.my[1]&&(C.top-=d/2),C.left+=M[0],C.top+=M[1],t.support.offsetFractions||(C.left=h(C.left),C.top=h(C.top)),n={marginLeft:f,marginTop:_},t.each(["left","top"],function(i,s){t.ui.position[x[i]]&&t.ui.position[x[i]][s](C,{targetWidth:p,targetHeight:m,elemWidth:u,elemHeight:d,collisionPosition:n,collisionWidth:D,collisionHeight:T,offset:[a[0]+M[0],a[1]+M[1]],my:e.my,at:e.at,within:y,elem:c})}),e.using&&(l=function(t){var i=g.left-C.left,s=i+p-u,n=g.top-C.top,a=n+m-d,h={target:{element:b,left:g.left,top:g.top,width:p,height:m},element:{element:c,left:C.left,top:C.top,width:u,height:d},horizontal:0>s?"left":i>0?"right":"center",vertical:0>a?"top":n>0?"bottom":"middle"};u>p&&p>r(i+s)&&(h.horizontal="center"),d>m&&m>r(n+a)&&(h.vertical="middle"),h.important=o(r(i),r(s))>o(r(n),r(a))?"horizontal":"vertical",e.using.call(this,t,h)}),c.offset(t.extend(C,{using:l}))})},t.ui.position={fit:{left:function(t,e){var i,s=e.within,n=s.isWindow?s.scrollLeft:s.offset.left,a=s.width,r=t.left-e.collisionPosition.marginLeft,h=n-r,l=r+e.collisionWidth-a-n;e.collisionWidth>a?h>0&&0>=l?(i=t.left+h+e.collisionWidth-a-n,t.left+=h-i):t.left=l>0&&0>=h?n:h>l?n+a-e.collisionWidth:n:h>0?t.left+=h:l>0?t.left-=l:t.left=o(t.left-r,t.left)},top:function(t,e){var i,s=e.within,n=s.isWindow?s.scrollTop:s.offset.top,a=e.within.height,r=t.top-e.collisionPosition.marginTop,h=n-r,l=r+e.collisionHeight-a-n;e.collisionHeight>a?h>0&&0>=l?(i=t.top+h+e.collisionHeight-a-n,t.top+=h-i):t.top=l>0&&0>=h?n:h>l?n+a-e.collisionHeight:n:h>0?t.top+=h:l>0?t.top-=l:t.top=o(t.top-r,t.top)}},flip:{left:function(t,e){var i,s,n=e.within,a=n.offset.left+n.scrollLeft,o=n.width,h=n.isWindow?n.scrollLeft:n.offset.left,l=t.left-e.collisionPosition.marginLeft,c=l-h,u=l+e.collisionWidth-o-h,d="left"===e.my[0]?-e.elemWidth:"right"===e.my[0]?e.elemWidth:0,p="left"===e.at[0]?e.targetWidth:"right"===e.at[0]?-e.targetWidth:0,f=-2*e.offset[0];0>c?(i=t.left+d+p+f+e.collisionWidth-o-a,(0>i||r(c)>i)&&(t.left+=d+p+f)):u>0&&(s=t.left-e.collisionPosition.marginLeft+d+p+f-h,(s>0||u>r(s))&&(t.left+=d+p+f))},top:function(t,e){var i,s,n=e.within,a=n.offset.top+n.scrollTop,o=n.height,h=n.isWindow?n.scrollTop:n.offset.top,l=t.top-e.collisionPosition.marginTop,c=l-h,u=l+e.collisionHeight-o-h,d="top"===e.my[1],p=d?-e.elemHeight:"bottom"===e.my[1]?e.elemHeight:0,f="top"===e.at[1]?e.targetHeight:"bottom"===e.at[1]?-e.targetHeight:0,m=-2*e.offset[1];0>c?(s=t.top+p+f+m+e.collisionHeight-o-a,t.top+p+f+m>c&&(0>s||r(c)>s)&&(t.top+=p+f+m)):u>0&&(i=t.top-e.collisionPosition.marginTop+p+f+m-h,t.top+p+f+m>u&&(i>0||u>r(i))&&(t.top+=p+f+m))}},flipfit:{left:function(){t.ui.position.flip.left.apply(this,arguments),t.ui.position.fit.left.apply(this,arguments)},top:function(){t.ui.position.flip.top.apply(this,arguments),t.ui.position.fit.top.apply(this,arguments)}}},function(){var e,i,s,n,a,o=document.getElementsByTagName("body")[0],r=document.createElement("div");e=document.createElement(o?"div":"body"),s={visibility:"hidden",width:0,height:0,border:0,margin:0,background:"none"},o&&t.extend(s,{position:"absolute",left:"-1000px",top:"-1000px"});for(a in s)e.style[a]=s[a];e.appendChild(r),i=o||document.documentElement,i.insertBefore(e,i.firstChild),r.style.cssText="position: absolute; left: 10.7432222px;",n=t(r).offset().left,t.support.offsetFractions=n>10&&11>n,e.innerHTML="",i.removeChild(e)}()})(jQuery);(function(e){e.widget("ui.draggable",e.ui.mouse,{version:"1.10.2",widgetEventPrefix:"drag",options:{addClasses:!0,appendTo:"parent",axis:!1,connectToSortable:!1,containment:!1,cursor:"auto",cursorAt:!1,grid:!1,handle:!1,helper:"original",iframeFix:!1,opacity:!1,refreshPositions:!1,revert:!1,revertDuration:500,scope:"default",scroll:!0,scrollSensitivity:20,scrollSpeed:20,snap:!1,snapMode:"both",snapTolerance:20,stack:!1,zIndex:!1,drag:null,start:null,stop:null},_create:function(){"original"!==this.options.helper||/^(?:r|a|f)/.test(this.element.css("position"))||(this.element[0].style.position="relative"),this.options.addClasses&&this.element.addClass("ui-draggable"),this.options.disabled&&this.element.addClass("ui-draggable-disabled"),this._mouseInit()},_destroy:function(){this.element.removeClass("ui-draggable ui-draggable-dragging ui-draggable-disabled"),this._mouseDestroy()},_mouseCapture:function(t){var i=this.options;return this.helper||i.disabled||e(t.target).closest(".ui-resizable-handle").length>0?!1:(this.handle=this._getHandle(t),this.handle?(e(i.iframeFix===!0?"iframe":i.iframeFix).each(function(){e("<div class='ui-draggable-iframeFix' style='background: #fff;'></div>").css({width:this.offsetWidth+"px",height:this.offsetHeight+"px",position:"absolute",opacity:"0.001",zIndex:1e3}).css(e(this).offset()).appendTo("body")}),!0):!1)},_mouseStart:function(t){var i=this.options;return this.helper=this._createHelper(t),this.helper.addClass("ui-draggable-dragging"),this._cacheHelperProportions(),e.ui.ddmanager&&(e.ui.ddmanager.current=this),this._cacheMargins(),this.cssPosition=this.helper.css("position"),this.scrollParent=this.helper.scrollParent(),this.offset=this.positionAbs=this.element.offset(),this.offset={top:this.offset.top-this.margins.top,left:this.offset.left-this.margins.left},e.extend(this.offset,{click:{left:t.pageX-this.offset.left,top:t.pageY-this.offset.top},parent:this._getParentOffset(),relative:this._getRelativeOffset()}),this.originalPosition=this.position=this._generatePosition(t),this.originalPageX=t.pageX,this.originalPageY=t.pageY,i.cursorAt&&this._adjustOffsetFromHelper(i.cursorAt),i.containment&&this._setContainment(),this._trigger("start",t)===!1?(this._clear(),!1):(this._cacheHelperProportions(),e.ui.ddmanager&&!i.dropBehaviour&&e.ui.ddmanager.prepareOffsets(this,t),this._mouseDrag(t,!0),e.ui.ddmanager&&e.ui.ddmanager.dragStart(this,t),!0)},_mouseDrag:function(t,i){if(this.position=this._generatePosition(t),this.positionAbs=this._convertPositionTo("absolute"),!i){var s=this._uiHash();if(this._trigger("drag",t,s)===!1)return this._mouseUp({}),!1;this.position=s.position}return this.options.axis&&"y"===this.options.axis||(this.helper[0].style.left=this.position.left+"px"),this.options.axis&&"x"===this.options.axis||(this.helper[0].style.top=this.position.top+"px"),e.ui.ddmanager&&e.ui.ddmanager.drag(this,t),!1},_mouseStop:function(t){var i,s=this,n=!1,a=!1;for(e.ui.ddmanager&&!this.options.dropBehaviour&&(a=e.ui.ddmanager.drop(this,t)),this.dropped&&(a=this.dropped,this.dropped=!1),i=this.element[0];i&&(i=i.parentNode);)i===document&&(n=!0);return n||"original"!==this.options.helper?("invalid"===this.options.revert&&!a||"valid"===this.options.revert&&a||this.options.revert===!0||e.isFunction(this.options.revert)&&this.options.revert.call(this.element,a)?e(this.helper).animate(this.originalPosition,parseInt(this.options.revertDuration,10),function(){s._trigger("stop",t)!==!1&&s._clear()}):this._trigger("stop",t)!==!1&&this._clear(),!1):!1},_mouseUp:function(t){return e("div.ui-draggable-iframeFix").each(function(){this.parentNode.removeChild(this)}),e.ui.ddmanager&&e.ui.ddmanager.dragStop(this,t),e.ui.mouse.prototype._mouseUp.call(this,t)},cancel:function(){return this.helper.is(".ui-draggable-dragging")?this._mouseUp({}):this._clear(),this},_getHandle:function(t){return this.options.handle?!!e(t.target).closest(this.element.find(this.options.handle)).length:!0},_createHelper:function(t){var i=this.options,s=e.isFunction(i.helper)?e(i.helper.apply(this.element[0],[t])):"clone"===i.helper?this.element.clone().removeAttr("id"):this.element;return s.parents("body").length||s.appendTo("parent"===i.appendTo?this.element[0].parentNode:i.appendTo),s[0]===this.element[0]||/(fixed|absolute)/.test(s.css("position"))||s.css("position","absolute"),s},_adjustOffsetFromHelper:function(t){"string"==typeof t&&(t=t.split(" ")),e.isArray(t)&&(t={left:+t[0],top:+t[1]||0}),"left"in t&&(this.offset.click.left=t.left+this.margins.left),"right"in t&&(this.offset.click.left=this.helperProportions.width-t.right+this.margins.left),"top"in t&&(this.offset.click.top=t.top+this.margins.top),"bottom"in t&&(this.offset.click.top=this.helperProportions.height-t.bottom+this.margins.top)},_getParentOffset:function(){this.offsetParent=this.helper.offsetParent();var t=this.offsetParent.offset();return"absolute"===this.cssPosition&&this.scrollParent[0]!==document&&e.contains(this.scrollParent[0],this.offsetParent[0])&&(t.left+=this.scrollParent.scrollLeft(),t.top+=this.scrollParent.scrollTop()),(this.offsetParent[0]===document.body||this.offsetParent[0].tagName&&"html"===this.offsetParent[0].tagName.toLowerCase()&&e.ui.ie)&&(t={top:0,left:0}),{top:t.top+(parseInt(this.offsetParent.css("borderTopWidth"),10)||0),left:t.left+(parseInt(this.offsetParent.css("borderLeftWidth"),10)||0)}},_getRelativeOffset:function(){if("relative"===this.cssPosition){var e=this.element.position();return{top:e.top-(parseInt(this.helper.css("top"),10)||0)+this.scrollParent.scrollTop(),left:e.left-(parseInt(this.helper.css("left"),10)||0)+this.scrollParent.scrollLeft()}}return{top:0,left:0}},_cacheMargins:function(){this.margins={left:parseInt(this.element.css("marginLeft"),10)||0,top:parseInt(this.element.css("marginTop"),10)||0,right:parseInt(this.element.css("marginRight"),10)||0,bottom:parseInt(this.element.css("marginBottom"),10)||0}},_cacheHelperProportions:function(){this.helperProportions={width:this.helper.outerWidth(),height:this.helper.outerHeight()}},_setContainment:function(){var t,i,s,n=this.options;if("parent"===n.containment&&(n.containment=this.helper[0].parentNode),("document"===n.containment||"window"===n.containment)&&(this.containment=["document"===n.containment?0:e(window).scrollLeft()-this.offset.relative.left-this.offset.parent.left,"document"===n.containment?0:e(window).scrollTop()-this.offset.relative.top-this.offset.parent.top,("document"===n.containment?0:e(window).scrollLeft())+e("document"===n.containment?document:window).width()-this.helperProportions.width-this.margins.left,("document"===n.containment?0:e(window).scrollTop())+(e("document"===n.containment?document:window).height()||document.body.parentNode.scrollHeight)-this.helperProportions.height-this.margins.top]),/^(document|window|parent)$/.test(n.containment)||n.containment.constructor===Array)n.containment.constructor===Array&&(this.containment=n.containment);else{if(i=e(n.containment),s=i[0],!s)return;t="hidden"!==e(s).css("overflow"),this.containment=[(parseInt(e(s).css("borderLeftWidth"),10)||0)+(parseInt(e(s).css("paddingLeft"),10)||0),(parseInt(e(s).css("borderTopWidth"),10)||0)+(parseInt(e(s).css("paddingTop"),10)||0),(t?Math.max(s.scrollWidth,s.offsetWidth):s.offsetWidth)-(parseInt(e(s).css("borderRightWidth"),10)||0)-(parseInt(e(s).css("paddingRight"),10)||0)-this.helperProportions.width-this.margins.left-this.margins.right,(t?Math.max(s.scrollHeight,s.offsetHeight):s.offsetHeight)-(parseInt(e(s).css("borderBottomWidth"),10)||0)-(parseInt(e(s).css("paddingBottom"),10)||0)-this.helperProportions.height-this.margins.top-this.margins.bottom],this.relative_container=i}},_convertPositionTo:function(t,i){i||(i=this.position);var s="absolute"===t?1:-1,n="absolute"!==this.cssPosition||this.scrollParent[0]!==document&&e.contains(this.scrollParent[0],this.offsetParent[0])?this.scrollParent:this.offsetParent,a=/(html|body)/i.test(n[0].tagName);return{top:i.top+this.offset.relative.top*s+this.offset.parent.top*s-("fixed"===this.cssPosition?-this.scrollParent.scrollTop():a?0:n.scrollTop())*s,left:i.left+this.offset.relative.left*s+this.offset.parent.left*s-("fixed"===this.cssPosition?-this.scrollParent.scrollLeft():a?0:n.scrollLeft())*s}},_generatePosition:function(t){var i,s,n,a,o=this.options,r="absolute"!==this.cssPosition||this.scrollParent[0]!==document&&e.contains(this.scrollParent[0],this.offsetParent[0])?this.scrollParent:this.offsetParent,h=/(html|body)/i.test(r[0].tagName),l=t.pageX,u=t.pageY;return this.originalPosition&&(this.containment&&(this.relative_container?(s=this.relative_container.offset(),i=[this.containment[0]+s.left,this.containment[1]+s.top,this.containment[2]+s.left,this.containment[3]+s.top]):i=this.containment,t.pageX-this.offset.click.left<i[0]&&(l=i[0]+this.offset.click.left),t.pageY-this.offset.click.top<i[1]&&(u=i[1]+this.offset.click.top),t.pageX-this.offset.click.left>i[2]&&(l=i[2]+this.offset.click.left),t.pageY-this.offset.click.top>i[3]&&(u=i[3]+this.offset.click.top)),o.grid&&(n=o.grid[1]?this.originalPageY+Math.round((u-this.originalPageY)/o.grid[1])*o.grid[1]:this.originalPageY,u=i?n-this.offset.click.top>=i[1]||n-this.offset.click.top>i[3]?n:n-this.offset.click.top>=i[1]?n-o.grid[1]:n+o.grid[1]:n,a=o.grid[0]?this.originalPageX+Math.round((l-this.originalPageX)/o.grid[0])*o.grid[0]:this.originalPageX,l=i?a-this.offset.click.left>=i[0]||a-this.offset.click.left>i[2]?a:a-this.offset.click.left>=i[0]?a-o.grid[0]:a+o.grid[0]:a)),{top:u-this.offset.click.top-this.offset.relative.top-this.offset.parent.top+("fixed"===this.cssPosition?-this.scrollParent.scrollTop():h?0:r.scrollTop()),left:l-this.offset.click.left-this.offset.relative.left-this.offset.parent.left+("fixed"===this.cssPosition?-this.scrollParent.scrollLeft():h?0:r.scrollLeft())}},_clear:function(){this.helper.removeClass("ui-draggable-dragging"),this.helper[0]===this.element[0]||this.cancelHelperRemoval||this.helper.remove(),this.helper=null,this.cancelHelperRemoval=!1},_trigger:function(t,i,s){return s=s||this._uiHash(),e.ui.plugin.call(this,t,[i,s]),"drag"===t&&(this.positionAbs=this._convertPositionTo("absolute")),e.Widget.prototype._trigger.call(this,t,i,s)},plugins:{},_uiHash:function(){return{helper:this.helper,position:this.position,originalPosition:this.originalPosition,offset:this.positionAbs}}}),e.ui.plugin.add("draggable","connectToSortable",{start:function(t,i){var s=e(this).data("ui-draggable"),n=s.options,a=e.extend({},i,{item:s.element});s.sortables=[],e(n.connectToSortable).each(function(){var i=e.data(this,"ui-sortable");i&&!i.options.disabled&&(s.sortables.push({instance:i,shouldRevert:i.options.revert}),i.refreshPositions(),i._trigger("activate",t,a))})},stop:function(t,i){var s=e(this).data("ui-draggable"),n=e.extend({},i,{item:s.element});e.each(s.sortables,function(){this.instance.isOver?(this.instance.isOver=0,s.cancelHelperRemoval=!0,this.instance.cancelHelperRemoval=!1,this.shouldRevert&&(this.instance.options.revert=this.shouldRevert),this.instance._mouseStop(t),this.instance.options.helper=this.instance.options._helper,"original"===s.options.helper&&this.instance.currentItem.css({top:"auto",left:"auto"})):(this.instance.cancelHelperRemoval=!1,this.instance._trigger("deactivate",t,n))})},drag:function(t,i){var s=e(this).data("ui-draggable"),n=this;e.each(s.sortables,function(){var a=!1,o=this;this.instance.positionAbs=s.positionAbs,this.instance.helperProportions=s.helperProportions,this.instance.offset.click=s.offset.click,this.instance._intersectsWith(this.instance.containerCache)&&(a=!0,e.each(s.sortables,function(){return this.instance.positionAbs=s.positionAbs,this.instance.helperProportions=s.helperProportions,this.instance.offset.click=s.offset.click,this!==o&&this.instance._intersectsWith(this.instance.containerCache)&&e.contains(o.instance.element[0],this.instance.element[0])&&(a=!1),a})),a?(this.instance.isOver||(this.instance.isOver=1,this.instance.currentItem=e(n).clone().removeAttr("id").appendTo(this.instance.element).data("ui-sortable-item",!0),this.instance.options._helper=this.instance.options.helper,this.instance.options.helper=function(){return i.helper[0]},t.target=this.instance.currentItem[0],this.instance._mouseCapture(t,!0),this.instance._mouseStart(t,!0,!0),this.instance.offset.click.top=s.offset.click.top,this.instance.offset.click.left=s.offset.click.left,this.instance.offset.parent.left-=s.offset.parent.left-this.instance.offset.parent.left,this.instance.offset.parent.top-=s.offset.parent.top-this.instance.offset.parent.top,s._trigger("toSortable",t),s.dropped=this.instance.element,s.currentItem=s.element,this.instance.fromOutside=s),this.instance.currentItem&&this.instance._mouseDrag(t)):this.instance.isOver&&(this.instance.isOver=0,this.instance.cancelHelperRemoval=!0,this.instance.options.revert=!1,this.instance._trigger("out",t,this.instance._uiHash(this.instance)),this.instance._mouseStop(t,!0),this.instance.options.helper=this.instance.options._helper,this.instance.currentItem.remove(),this.instance.placeholder&&this.instance.placeholder.remove(),s._trigger("fromSortable",t),s.dropped=!1)})}}),e.ui.plugin.add("draggable","cursor",{start:function(){var t=e("body"),i=e(this).data("ui-draggable").options;t.css("cursor")&&(i._cursor=t.css("cursor")),t.css("cursor",i.cursor)},stop:function(){var t=e(this).data("ui-draggable").options;t._cursor&&e("body").css("cursor",t._cursor)}}),e.ui.plugin.add("draggable","opacity",{start:function(t,i){var s=e(i.helper),n=e(this).data("ui-draggable").options;s.css("opacity")&&(n._opacity=s.css("opacity")),s.css("opacity",n.opacity)},stop:function(t,i){var s=e(this).data("ui-draggable").options;s._opacity&&e(i.helper).css("opacity",s._opacity)}}),e.ui.plugin.add("draggable","scroll",{start:function(){var t=e(this).data("ui-draggable");t.scrollParent[0]!==document&&"HTML"!==t.scrollParent[0].tagName&&(t.overflowOffset=t.scrollParent.offset())},drag:function(t){var i=e(this).data("ui-draggable"),s=i.options,n=!1;i.scrollParent[0]!==document&&"HTML"!==i.scrollParent[0].tagName?(s.axis&&"x"===s.axis||(i.overflowOffset.top+i.scrollParent[0].offsetHeight-t.pageY<s.scrollSensitivity?i.scrollParent[0].scrollTop=n=i.scrollParent[0].scrollTop+s.scrollSpeed:t.pageY-i.overflowOffset.top<s.scrollSensitivity&&(i.scrollParent[0].scrollTop=n=i.scrollParent[0].scrollTop-s.scrollSpeed)),s.axis&&"y"===s.axis||(i.overflowOffset.left+i.scrollParent[0].offsetWidth-t.pageX<s.scrollSensitivity?i.scrollParent[0].scrollLeft=n=i.scrollParent[0].scrollLeft+s.scrollSpeed:t.pageX-i.overflowOffset.left<s.scrollSensitivity&&(i.scrollParent[0].scrollLeft=n=i.scrollParent[0].scrollLeft-s.scrollSpeed))):(s.axis&&"x"===s.axis||(t.pageY-e(document).scrollTop()<s.scrollSensitivity?n=e(document).scrollTop(e(document).scrollTop()-s.scrollSpeed):e(window).height()-(t.pageY-e(document).scrollTop())<s.scrollSensitivity&&(n=e(document).scrollTop(e(document).scrollTop()+s.scrollSpeed))),s.axis&&"y"===s.axis||(t.pageX-e(document).scrollLeft()<s.scrollSensitivity?n=e(document).scrollLeft(e(document).scrollLeft()-s.scrollSpeed):e(window).width()-(t.pageX-e(document).scrollLeft())<s.scrollSensitivity&&(n=e(document).scrollLeft(e(document).scrollLeft()+s.scrollSpeed)))),n!==!1&&e.ui.ddmanager&&!s.dropBehaviour&&e.ui.ddmanager.prepareOffsets(i,t)}}),e.ui.plugin.add("draggable","snap",{start:function(){var t=e(this).data("ui-draggable"),i=t.options;t.snapElements=[],e(i.snap.constructor!==String?i.snap.items||":data(ui-draggable)":i.snap).each(function(){var i=e(this),s=i.offset();this!==t.element[0]&&t.snapElements.push({item:this,width:i.outerWidth(),height:i.outerHeight(),top:s.top,left:s.left})})},drag:function(t,i){var s,n,a,o,r,h,l,u,c,d,p=e(this).data("ui-draggable"),f=p.options,m=f.snapTolerance,g=i.offset.left,v=g+p.helperProportions.width,y=i.offset.top,b=y+p.helperProportions.height;for(c=p.snapElements.length-1;c>=0;c--)r=p.snapElements[c].left,h=r+p.snapElements[c].width,l=p.snapElements[c].top,u=l+p.snapElements[c].height,g>r-m&&h+m>g&&y>l-m&&u+m>y||g>r-m&&h+m>g&&b>l-m&&u+m>b||v>r-m&&h+m>v&&y>l-m&&u+m>y||v>r-m&&h+m>v&&b>l-m&&u+m>b?("inner"!==f.snapMode&&(s=m>=Math.abs(l-b),n=m>=Math.abs(u-y),a=m>=Math.abs(r-v),o=m>=Math.abs(h-g),s&&(i.position.top=p._convertPositionTo("relative",{top:l-p.helperProportions.height,left:0}).top-p.margins.top),n&&(i.position.top=p._convertPositionTo("relative",{top:u,left:0}).top-p.margins.top),a&&(i.position.left=p._convertPositionTo("relative",{top:0,left:r-p.helperProportions.width}).left-p.margins.left),o&&(i.position.left=p._convertPositionTo("relative",{top:0,left:h}).left-p.margins.left)),d=s||n||a||o,"outer"!==f.snapMode&&(s=m>=Math.abs(l-y),n=m>=Math.abs(u-b),a=m>=Math.abs(r-g),o=m>=Math.abs(h-v),s&&(i.position.top=p._convertPositionTo("relative",{top:l,left:0}).top-p.margins.top),n&&(i.position.top=p._convertPositionTo("relative",{top:u-p.helperProportions.height,left:0}).top-p.margins.top),a&&(i.position.left=p._convertPositionTo("relative",{top:0,left:r}).left-p.margins.left),o&&(i.position.left=p._convertPositionTo("relative",{top:0,left:h-p.helperProportions.width}).left-p.margins.left)),!p.snapElements[c].snapping&&(s||n||a||o||d)&&p.options.snap.snap&&p.options.snap.snap.call(p.element,t,e.extend(p._uiHash(),{snapItem:p.snapElements[c].item})),p.snapElements[c].snapping=s||n||a||o||d):(p.snapElements[c].snapping&&p.options.snap.release&&p.options.snap.release.call(p.element,t,e.extend(p._uiHash(),{snapItem:p.snapElements[c].item})),p.snapElements[c].snapping=!1)}}),e.ui.plugin.add("draggable","stack",{start:function(){var t,i=this.data("ui-draggable").options,s=e.makeArray(e(i.stack)).sort(function(t,i){return(parseInt(e(t).css("zIndex"),10)||0)-(parseInt(e(i).css("zIndex"),10)||0)});s.length&&(t=parseInt(e(s[0]).css("zIndex"),10)||0,e(s).each(function(i){e(this).css("zIndex",t+i)}),this.css("zIndex",t+s.length))}}),e.ui.plugin.add("draggable","zIndex",{start:function(t,i){var s=e(i.helper),n=e(this).data("ui-draggable").options;s.css("zIndex")&&(n._zIndex=s.css("zIndex")),s.css("zIndex",n.zIndex)},stop:function(t,i){var s=e(this).data("ui-draggable").options;s._zIndex&&e(i.helper).css("zIndex",s._zIndex)}})})(jQuery);(function(e){function t(e,t,i){return e>t&&t+i>e}e.widget("ui.droppable",{version:"1.10.2",widgetEventPrefix:"drop",options:{accept:"*",activeClass:!1,addClasses:!0,greedy:!1,hoverClass:!1,scope:"default",tolerance:"intersect",activate:null,deactivate:null,drop:null,out:null,over:null},_create:function(){var t=this.options,i=t.accept;this.isover=!1,this.isout=!0,this.accept=e.isFunction(i)?i:function(e){return e.is(i)},this.proportions={width:this.element[0].offsetWidth,height:this.element[0].offsetHeight},e.ui.ddmanager.droppables[t.scope]=e.ui.ddmanager.droppables[t.scope]||[],e.ui.ddmanager.droppables[t.scope].push(this),t.addClasses&&this.element.addClass("ui-droppable")},_destroy:function(){for(var t=0,i=e.ui.ddmanager.droppables[this.options.scope];i.length>t;t++)i[t]===this&&i.splice(t,1);this.element.removeClass("ui-droppable ui-droppable-disabled")},_setOption:function(t,i){"accept"===t&&(this.accept=e.isFunction(i)?i:function(e){return e.is(i)}),e.Widget.prototype._setOption.apply(this,arguments)},_activate:function(t){var i=e.ui.ddmanager.current;this.options.activeClass&&this.element.addClass(this.options.activeClass),i&&this._trigger("activate",t,this.ui(i))},_deactivate:function(t){var i=e.ui.ddmanager.current;this.options.activeClass&&this.element.removeClass(this.options.activeClass),i&&this._trigger("deactivate",t,this.ui(i))},_over:function(t){var i=e.ui.ddmanager.current;i&&(i.currentItem||i.element)[0]!==this.element[0]&&this.accept.call(this.element[0],i.currentItem||i.element)&&(this.options.hoverClass&&this.element.addClass(this.options.hoverClass),this._trigger("over",t,this.ui(i)))},_out:function(t){var i=e.ui.ddmanager.current;i&&(i.currentItem||i.element)[0]!==this.element[0]&&this.accept.call(this.element[0],i.currentItem||i.element)&&(this.options.hoverClass&&this.element.removeClass(this.options.hoverClass),this._trigger("out",t,this.ui(i)))},_drop:function(t,i){var s=i||e.ui.ddmanager.current,n=!1;return s&&(s.currentItem||s.element)[0]!==this.element[0]?(this.element.find(":data(ui-droppable)").not(".ui-draggable-dragging").each(function(){var t=e.data(this,"ui-droppable");return t.options.greedy&&!t.options.disabled&&t.options.scope===s.options.scope&&t.accept.call(t.element[0],s.currentItem||s.element)&&e.ui.intersect(s,e.extend(t,{offset:t.element.offset()}),t.options.tolerance)?(n=!0,!1):undefined}),n?!1:this.accept.call(this.element[0],s.currentItem||s.element)?(this.options.activeClass&&this.element.removeClass(this.options.activeClass),this.options.hoverClass&&this.element.removeClass(this.options.hoverClass),this._trigger("drop",t,this.ui(s)),this.element):!1):!1},ui:function(e){return{draggable:e.currentItem||e.element,helper:e.helper,position:e.position,offset:e.positionAbs}}}),e.ui.intersect=function(e,i,s){if(!i.offset)return!1;var n,a,o=(e.positionAbs||e.position.absolute).left,r=o+e.helperProportions.width,h=(e.positionAbs||e.position.absolute).top,l=h+e.helperProportions.height,u=i.offset.left,c=u+i.proportions.width,d=i.offset.top,p=d+i.proportions.height;switch(s){case"fit":return o>=u&&c>=r&&h>=d&&p>=l;case"intersect":return o+e.helperProportions.width/2>u&&c>r-e.helperProportions.width/2&&h+e.helperProportions.height/2>d&&p>l-e.helperProportions.height/2;case"pointer":return n=(e.positionAbs||e.position.absolute).left+(e.clickOffset||e.offset.click).left,a=(e.positionAbs||e.position.absolute).top+(e.clickOffset||e.offset.click).top,t(a,d,i.proportions.height)&&t(n,u,i.proportions.width);case"touch":return(h>=d&&p>=h||l>=d&&p>=l||d>h&&l>p)&&(o>=u&&c>=o||r>=u&&c>=r||u>o&&r>c);default:return!1}},e.ui.ddmanager={current:null,droppables:{"default":[]},prepareOffsets:function(t,i){var s,n,a=e.ui.ddmanager.droppables[t.options.scope]||[],o=i?i.type:null,r=(t.currentItem||t.element).find(":data(ui-droppable)").addBack();e:for(s=0;a.length>s;s++)if(!(a[s].options.disabled||t&&!a[s].accept.call(a[s].element[0],t.currentItem||t.element))){for(n=0;r.length>n;n++)if(r[n]===a[s].element[0]){a[s].proportions.height=0;continue e}a[s].visible="none"!==a[s].element.css("display"),a[s].visible&&("mousedown"===o&&a[s]._activate.call(a[s],i),a[s].offset=a[s].element.offset(),a[s].proportions={width:a[s].element[0].offsetWidth,height:a[s].element[0].offsetHeight})}},drop:function(t,i){var s=!1;return e.each((e.ui.ddmanager.droppables[t.options.scope]||[]).slice(),function(){this.options&&(!this.options.disabled&&this.visible&&e.ui.intersect(t,this,this.options.tolerance)&&(s=this._drop.call(this,i)||s),!this.options.disabled&&this.visible&&this.accept.call(this.element[0],t.currentItem||t.element)&&(this.isout=!0,this.isover=!1,this._deactivate.call(this,i)))}),s},dragStart:function(t,i){t.element.parentsUntil("body").bind("scroll.droppable",function(){t.options.refreshPositions||e.ui.ddmanager.prepareOffsets(t,i)})},drag:function(t,i){t.options.refreshPositions&&e.ui.ddmanager.prepareOffsets(t,i),e.each(e.ui.ddmanager.droppables[t.options.scope]||[],function(){if(!this.options.disabled&&!this.greedyChild&&this.visible){var s,n,a,o=e.ui.intersect(t,this,this.options.tolerance),r=!o&&this.isover?"isout":o&&!this.isover?"isover":null;r&&(this.options.greedy&&(n=this.options.scope,a=this.element.parents(":data(ui-droppable)").filter(function(){return e.data(this,"ui-droppable").options.scope===n}),a.length&&(s=e.data(a[0],"ui-droppable"),s.greedyChild="isover"===r)),s&&"isover"===r&&(s.isover=!1,s.isout=!0,s._out.call(s,i)),this[r]=!0,this["isout"===r?"isover":"isout"]=!1,this["isover"===r?"_over":"_out"].call(this,i),s&&"isout"===r&&(s.isout=!1,s.isover=!0,s._over.call(s,i)))}})},dragStop:function(t,i){t.element.parentsUntil("body").unbind("scroll.droppable"),t.options.refreshPositions||e.ui.ddmanager.prepareOffsets(t,i)}}})(jQuery);(function(e){function t(e){return parseInt(e,10)||0}function i(e){return!isNaN(parseInt(e,10))}e.widget("ui.resizable",e.ui.mouse,{version:"1.10.2",widgetEventPrefix:"resize",options:{alsoResize:!1,animate:!1,animateDuration:"slow",animateEasing:"swing",aspectRatio:!1,autoHide:!1,containment:!1,ghost:!1,grid:!1,handles:"e,s,se",helper:!1,maxHeight:null,maxWidth:null,minHeight:10,minWidth:10,zIndex:90,resize:null,start:null,stop:null},_create:function(){var t,i,s,n,a,o=this,r=this.options;if(this.element.addClass("ui-resizable"),e.extend(this,{_aspectRatio:!!r.aspectRatio,aspectRatio:r.aspectRatio,originalElement:this.element,_proportionallyResizeElements:[],_helper:r.helper||r.ghost||r.animate?r.helper||"ui-resizable-helper":null}),this.element[0].nodeName.match(/canvas|textarea|input|select|button|img/i)&&(this.element.wrap(e("<div class='ui-wrapper' style='overflow: hidden;'></div>").css({position:this.element.css("position"),width:this.element.outerWidth(),height:this.element.outerHeight(),top:this.element.css("top"),left:this.element.css("left")})),this.element=this.element.parent().data("ui-resizable",this.element.data("ui-resizable")),this.elementIsWrapper=!0,this.element.css({marginLeft:this.originalElement.css("marginLeft"),marginTop:this.originalElement.css("marginTop"),marginRight:this.originalElement.css("marginRight"),marginBottom:this.originalElement.css("marginBottom")}),this.originalElement.css({marginLeft:0,marginTop:0,marginRight:0,marginBottom:0}),this.originalResizeStyle=this.originalElement.css("resize"),this.originalElement.css("resize","none"),this._proportionallyResizeElements.push(this.originalElement.css({position:"static",zoom:1,display:"block"})),this.originalElement.css({margin:this.originalElement.css("margin")}),this._proportionallyResize()),this.handles=r.handles||(e(".ui-resizable-handle",this.element).length?{n:".ui-resizable-n",e:".ui-resizable-e",s:".ui-resizable-s",w:".ui-resizable-w",se:".ui-resizable-se",sw:".ui-resizable-sw",ne:".ui-resizable-ne",nw:".ui-resizable-nw"}:"e,s,se"),this.handles.constructor===String)for("all"===this.handles&&(this.handles="n,e,s,w,se,sw,ne,nw"),t=this.handles.split(","),this.handles={},i=0;t.length>i;i++)s=e.trim(t[i]),a="ui-resizable-"+s,n=e("<div class='ui-resizable-handle "+a+"'></div>"),n.css({zIndex:r.zIndex}),"se"===s&&n.addClass("ui-icon ui-icon-gripsmall-diagonal-se"),this.handles[s]=".ui-resizable-"+s,this.element.append(n);this._renderAxis=function(t){var i,s,n,a;t=t||this.element;for(i in this.handles)this.handles[i].constructor===String&&(this.handles[i]=e(this.handles[i],this.element).show()),this.elementIsWrapper&&this.originalElement[0].nodeName.match(/textarea|input|select|button/i)&&(s=e(this.handles[i],this.element),a=/sw|ne|nw|se|n|s/.test(i)?s.outerHeight():s.outerWidth(),n=["padding",/ne|nw|n/.test(i)?"Top":/se|sw|s/.test(i)?"Bottom":/^e$/.test(i)?"Right":"Left"].join(""),t.css(n,a),this._proportionallyResize()),e(this.handles[i]).length},this._renderAxis(this.element),this._handles=e(".ui-resizable-handle",this.element).disableSelection(),this._handles.mouseover(function(){o.resizing||(this.className&&(n=this.className.match(/ui-resizable-(se|sw|ne|nw|n|e|s|w)/i)),o.axis=n&&n[1]?n[1]:"se")}),r.autoHide&&(this._handles.hide(),e(this.element).addClass("ui-resizable-autohide").mouseenter(function(){r.disabled||(e(this).removeClass("ui-resizable-autohide"),o._handles.show())}).mouseleave(function(){r.disabled||o.resizing||(e(this).addClass("ui-resizable-autohide"),o._handles.hide())})),this._mouseInit()},_destroy:function(){this._mouseDestroy();var t,i=function(t){e(t).removeClass("ui-resizable ui-resizable-disabled ui-resizable-resizing").removeData("resizable").removeData("ui-resizable").unbind(".resizable").find(".ui-resizable-handle").remove()};return this.elementIsWrapper&&(i(this.element),t=this.element,this.originalElement.css({position:t.css("position"),width:t.outerWidth(),height:t.outerHeight(),top:t.css("top"),left:t.css("left")}).insertAfter(t),t.remove()),this.originalElement.css("resize",this.originalResizeStyle),i(this.originalElement),this},_mouseCapture:function(t){var i,s,n=!1;for(i in this.handles)s=e(this.handles[i])[0],(s===t.target||e.contains(s,t.target))&&(n=!0);return!this.options.disabled&&n},_mouseStart:function(i){var s,n,a,o=this.options,r=this.element.position(),h=this.element;return this.resizing=!0,/absolute/.test(h.css("position"))?h.css({position:"absolute",top:h.css("top"),left:h.css("left")}):h.is(".ui-draggable")&&h.css({position:"absolute",top:r.top,left:r.left}),this._renderProxy(),s=t(this.helper.css("left")),n=t(this.helper.css("top")),o.containment&&(s+=e(o.containment).scrollLeft()||0,n+=e(o.containment).scrollTop()||0),this.offset=this.helper.offset(),this.position={left:s,top:n},this.size=this._helper?{width:h.outerWidth(),height:h.outerHeight()}:{width:h.width(),height:h.height()},this.originalSize=this._helper?{width:h.outerWidth(),height:h.outerHeight()}:{width:h.width(),height:h.height()},this.originalPosition={left:s,top:n},this.sizeDiff={width:h.outerWidth()-h.width(),height:h.outerHeight()-h.height()},this.originalMousePosition={left:i.pageX,top:i.pageY},this.aspectRatio="number"==typeof o.aspectRatio?o.aspectRatio:this.originalSize.width/this.originalSize.height||1,a=e(".ui-resizable-"+this.axis).css("cursor"),e("body").css("cursor","auto"===a?this.axis+"-resize":a),h.addClass("ui-resizable-resizing"),this._propagate("start",i),!0},_mouseDrag:function(t){var i,s=this.helper,n={},a=this.originalMousePosition,o=this.axis,r=this.position.top,h=this.position.left,l=this.size.width,u=this.size.height,c=t.pageX-a.left||0,d=t.pageY-a.top||0,p=this._change[o];return p?(i=p.apply(this,[t,c,d]),this._updateVirtualBoundaries(t.shiftKey),(this._aspectRatio||t.shiftKey)&&(i=this._updateRatio(i,t)),i=this._respectSize(i,t),this._updateCache(i),this._propagate("resize",t),this.position.top!==r&&(n.top=this.position.top+"px"),this.position.left!==h&&(n.left=this.position.left+"px"),this.size.width!==l&&(n.width=this.size.width+"px"),this.size.height!==u&&(n.height=this.size.height+"px"),s.css(n),!this._helper&&this._proportionallyResizeElements.length&&this._proportionallyResize(),e.isEmptyObject(n)||this._trigger("resize",t,this.ui()),!1):!1},_mouseStop:function(t){this.resizing=!1;var i,s,n,a,o,r,h,l=this.options,u=this;return this._helper&&(i=this._proportionallyResizeElements,s=i.length&&/textarea/i.test(i[0].nodeName),n=s&&e.ui.hasScroll(i[0],"left")?0:u.sizeDiff.height,a=s?0:u.sizeDiff.width,o={width:u.helper.width()-a,height:u.helper.height()-n},r=parseInt(u.element.css("left"),10)+(u.position.left-u.originalPosition.left)||null,h=parseInt(u.element.css("top"),10)+(u.position.top-u.originalPosition.top)||null,l.animate||this.element.css(e.extend(o,{top:h,left:r})),u.helper.height(u.size.height),u.helper.width(u.size.width),this._helper&&!l.animate&&this._proportionallyResize()),e("body").css("cursor","auto"),this.element.removeClass("ui-resizable-resizing"),this._propagate("stop",t),this._helper&&this.helper.remove(),!1},_updateVirtualBoundaries:function(e){var t,s,n,a,o,r=this.options;o={minWidth:i(r.minWidth)?r.minWidth:0,maxWidth:i(r.maxWidth)?r.maxWidth:1/0,minHeight:i(r.minHeight)?r.minHeight:0,maxHeight:i(r.maxHeight)?r.maxHeight:1/0},(this._aspectRatio||e)&&(t=o.minHeight*this.aspectRatio,n=o.minWidth/this.aspectRatio,s=o.maxHeight*this.aspectRatio,a=o.maxWidth/this.aspectRatio,t>o.minWidth&&(o.minWidth=t),n>o.minHeight&&(o.minHeight=n),o.maxWidth>s&&(o.maxWidth=s),o.maxHeight>a&&(o.maxHeight=a)),this._vBoundaries=o},_updateCache:function(e){this.offset=this.helper.offset(),i(e.left)&&(this.position.left=e.left),i(e.top)&&(this.position.top=e.top),i(e.height)&&(this.size.height=e.height),i(e.width)&&(this.size.width=e.width)},_updateRatio:function(e){var t=this.position,s=this.size,n=this.axis;return i(e.height)?e.width=e.height*this.aspectRatio:i(e.width)&&(e.height=e.width/this.aspectRatio),"sw"===n&&(e.left=t.left+(s.width-e.width),e.top=null),"nw"===n&&(e.top=t.top+(s.height-e.height),e.left=t.left+(s.width-e.width)),e},_respectSize:function(e){var t=this._vBoundaries,s=this.axis,n=i(e.width)&&t.maxWidth&&t.maxWidth<e.width,a=i(e.height)&&t.maxHeight&&t.maxHeight<e.height,o=i(e.width)&&t.minWidth&&t.minWidth>e.width,r=i(e.height)&&t.minHeight&&t.minHeight>e.height,h=this.originalPosition.left+this.originalSize.width,l=this.position.top+this.size.height,u=/sw|nw|w/.test(s),c=/nw|ne|n/.test(s);return o&&(e.width=t.minWidth),r&&(e.height=t.minHeight),n&&(e.width=t.maxWidth),a&&(e.height=t.maxHeight),o&&u&&(e.left=h-t.minWidth),n&&u&&(e.left=h-t.maxWidth),r&&c&&(e.top=l-t.minHeight),a&&c&&(e.top=l-t.maxHeight),e.width||e.height||e.left||!e.top?e.width||e.height||e.top||!e.left||(e.left=null):e.top=null,e},_proportionallyResize:function(){if(this._proportionallyResizeElements.length){var e,t,i,s,n,a=this.helper||this.element;for(e=0;this._proportionallyResizeElements.length>e;e++){if(n=this._proportionallyResizeElements[e],!this.borderDif)for(this.borderDif=[],i=[n.css("borderTopWidth"),n.css("borderRightWidth"),n.css("borderBottomWidth"),n.css("borderLeftWidth")],s=[n.css("paddingTop"),n.css("paddingRight"),n.css("paddingBottom"),n.css("paddingLeft")],t=0;i.length>t;t++)this.borderDif[t]=(parseInt(i[t],10)||0)+(parseInt(s[t],10)||0);n.css({height:a.height()-this.borderDif[0]-this.borderDif[2]||0,width:a.width()-this.borderDif[1]-this.borderDif[3]||0})}}},_renderProxy:function(){var t=this.element,i=this.options;this.elementOffset=t.offset(),this._helper?(this.helper=this.helper||e("<div style='overflow:hidden;'></div>"),this.helper.addClass(this._helper).css({width:this.element.outerWidth()-1,height:this.element.outerHeight()-1,position:"absolute",left:this.elementOffset.left+"px",top:this.elementOffset.top+"px",zIndex:++i.zIndex}),this.helper.appendTo("body").disableSelection()):this.helper=this.element},_change:{e:function(e,t){return{width:this.originalSize.width+t}},w:function(e,t){var i=this.originalSize,s=this.originalPosition;return{left:s.left+t,width:i.width-t}},n:function(e,t,i){var s=this.originalSize,n=this.originalPosition;return{top:n.top+i,height:s.height-i}},s:function(e,t,i){return{height:this.originalSize.height+i}},se:function(t,i,s){return e.extend(this._change.s.apply(this,arguments),this._change.e.apply(this,[t,i,s]))},sw:function(t,i,s){return e.extend(this._change.s.apply(this,arguments),this._change.w.apply(this,[t,i,s]))},ne:function(t,i,s){return e.extend(this._change.n.apply(this,arguments),this._change.e.apply(this,[t,i,s]))},nw:function(t,i,s){return e.extend(this._change.n.apply(this,arguments),this._change.w.apply(this,[t,i,s]))}},_propagate:function(t,i){e.ui.plugin.call(this,t,[i,this.ui()]),"resize"!==t&&this._trigger(t,i,this.ui())},plugins:{},ui:function(){return{originalElement:this.originalElement,element:this.element,helper:this.helper,position:this.position,size:this.size,originalSize:this.originalSize,originalPosition:this.originalPosition}}}),e.ui.plugin.add("resizable","animate",{stop:function(t){var i=e(this).data("ui-resizable"),s=i.options,n=i._proportionallyResizeElements,a=n.length&&/textarea/i.test(n[0].nodeName),o=a&&e.ui.hasScroll(n[0],"left")?0:i.sizeDiff.height,r=a?0:i.sizeDiff.width,h={width:i.size.width-r,height:i.size.height-o},l=parseInt(i.element.css("left"),10)+(i.position.left-i.originalPosition.left)||null,u=parseInt(i.element.css("top"),10)+(i.position.top-i.originalPosition.top)||null;i.element.animate(e.extend(h,u&&l?{top:u,left:l}:{}),{duration:s.animateDuration,easing:s.animateEasing,step:function(){var s={width:parseInt(i.element.css("width"),10),height:parseInt(i.element.css("height"),10),top:parseInt(i.element.css("top"),10),left:parseInt(i.element.css("left"),10)};n&&n.length&&e(n[0]).css({width:s.width,height:s.height}),i._updateCache(s),i._propagate("resize",t)}})}}),e.ui.plugin.add("resizable","containment",{start:function(){var i,s,n,a,o,r,h,l=e(this).data("ui-resizable"),u=l.options,c=l.element,d=u.containment,p=d instanceof e?d.get(0):/parent/.test(d)?c.parent().get(0):d;p&&(l.containerElement=e(p),/document/.test(d)||d===document?(l.containerOffset={left:0,top:0},l.containerPosition={left:0,top:0},l.parentData={element:e(document),left:0,top:0,width:e(document).width(),height:e(document).height()||document.body.parentNode.scrollHeight}):(i=e(p),s=[],e(["Top","Right","Left","Bottom"]).each(function(e,n){s[e]=t(i.css("padding"+n))}),l.containerOffset=i.offset(),l.containerPosition=i.position(),l.containerSize={height:i.innerHeight()-s[3],width:i.innerWidth()-s[1]},n=l.containerOffset,a=l.containerSize.height,o=l.containerSize.width,r=e.ui.hasScroll(p,"left")?p.scrollWidth:o,h=e.ui.hasScroll(p)?p.scrollHeight:a,l.parentData={element:p,left:n.left,top:n.top,width:r,height:h}))},resize:function(t){var i,s,n,a,o=e(this).data("ui-resizable"),r=o.options,h=o.containerOffset,l=o.position,u=o._aspectRatio||t.shiftKey,c={top:0,left:0},d=o.containerElement;d[0]!==document&&/static/.test(d.css("position"))&&(c=h),l.left<(o._helper?h.left:0)&&(o.size.width=o.size.width+(o._helper?o.position.left-h.left:o.position.left-c.left),u&&(o.size.height=o.size.width/o.aspectRatio),o.position.left=r.helper?h.left:0),l.top<(o._helper?h.top:0)&&(o.size.height=o.size.height+(o._helper?o.position.top-h.top:o.position.top),u&&(o.size.width=o.size.height*o.aspectRatio),o.position.top=o._helper?h.top:0),o.offset.left=o.parentData.left+o.position.left,o.offset.top=o.parentData.top+o.position.top,i=Math.abs((o._helper?o.offset.left-c.left:o.offset.left-c.left)+o.sizeDiff.width),s=Math.abs((o._helper?o.offset.top-c.top:o.offset.top-h.top)+o.sizeDiff.height),n=o.containerElement.get(0)===o.element.parent().get(0),a=/relative|absolute/.test(o.containerElement.css("position")),n&&a&&(i-=o.parentData.left),i+o.size.width>=o.parentData.width&&(o.size.width=o.parentData.width-i,u&&(o.size.height=o.size.width/o.aspectRatio)),s+o.size.height>=o.parentData.height&&(o.size.height=o.parentData.height-s,u&&(o.size.width=o.size.height*o.aspectRatio))},stop:function(){var t=e(this).data("ui-resizable"),i=t.options,s=t.containerOffset,n=t.containerPosition,a=t.containerElement,o=e(t.helper),r=o.offset(),h=o.outerWidth()-t.sizeDiff.width,l=o.outerHeight()-t.sizeDiff.height;t._helper&&!i.animate&&/relative/.test(a.css("position"))&&e(this).css({left:r.left-n.left-s.left,width:h,height:l}),t._helper&&!i.animate&&/static/.test(a.css("position"))&&e(this).css({left:r.left-n.left-s.left,width:h,height:l})}}),e.ui.plugin.add("resizable","alsoResize",{start:function(){var t=e(this).data("ui-resizable"),i=t.options,s=function(t){e(t).each(function(){var t=e(this);t.data("ui-resizable-alsoresize",{width:parseInt(t.width(),10),height:parseInt(t.height(),10),left:parseInt(t.css("left"),10),top:parseInt(t.css("top"),10)})})};"object"!=typeof i.alsoResize||i.alsoResize.parentNode?s(i.alsoResize):i.alsoResize.length?(i.alsoResize=i.alsoResize[0],s(i.alsoResize)):e.each(i.alsoResize,function(e){s(e)})},resize:function(t,i){var s=e(this).data("ui-resizable"),n=s.options,a=s.originalSize,o=s.originalPosition,r={height:s.size.height-a.height||0,width:s.size.width-a.width||0,top:s.position.top-o.top||0,left:s.position.left-o.left||0},h=function(t,s){e(t).each(function(){var t=e(this),n=e(this).data("ui-resizable-alsoresize"),a={},o=s&&s.length?s:t.parents(i.originalElement[0]).length?["width","height"]:["width","height","top","left"];e.each(o,function(e,t){var i=(n[t]||0)+(r[t]||0);i&&i>=0&&(a[t]=i||null)}),t.css(a)})};"object"!=typeof n.alsoResize||n.alsoResize.nodeType?h(n.alsoResize):e.each(n.alsoResize,function(e,t){h(e,t)})},stop:function(){e(this).removeData("resizable-alsoresize")}}),e.ui.plugin.add("resizable","ghost",{start:function(){var t=e(this).data("ui-resizable"),i=t.options,s=t.size;t.ghost=t.originalElement.clone(),t.ghost.css({opacity:.25,display:"block",position:"relative",height:s.height,width:s.width,margin:0,left:0,top:0}).addClass("ui-resizable-ghost").addClass("string"==typeof i.ghost?i.ghost:""),t.ghost.appendTo(t.helper)},resize:function(){var t=e(this).data("ui-resizable");t.ghost&&t.ghost.css({position:"relative",height:t.size.height,width:t.size.width})},stop:function(){var t=e(this).data("ui-resizable");t.ghost&&t.helper&&t.helper.get(0).removeChild(t.ghost.get(0))}}),e.ui.plugin.add("resizable","grid",{resize:function(){var t=e(this).data("ui-resizable"),i=t.options,s=t.size,n=t.originalSize,a=t.originalPosition,o=t.axis,r="number"==typeof i.grid?[i.grid,i.grid]:i.grid,h=r[0]||1,l=r[1]||1,u=Math.round((s.width-n.width)/h)*h,c=Math.round((s.height-n.height)/l)*l,d=n.width+u,p=n.height+c,f=i.maxWidth&&d>i.maxWidth,m=i.maxHeight&&p>i.maxHeight,g=i.minWidth&&i.minWidth>d,v=i.minHeight&&i.minHeight>p;i.grid=r,g&&(d+=h),v&&(p+=l),f&&(d-=h),m&&(p-=l),/^(se|s|e)$/.test(o)?(t.size.width=d,t.size.height=p):/^(ne)$/.test(o)?(t.size.width=d,t.size.height=p,t.position.top=a.top-c):/^(sw)$/.test(o)?(t.size.width=d,t.size.height=p,t.position.left=a.left-u):(t.size.width=d,t.size.height=p,t.position.top=a.top-c,t.position.left=a.left-u)}})})(jQuery);(function(e){e.widget("ui.selectable",e.ui.mouse,{version:"1.10.2",options:{appendTo:"body",autoRefresh:!0,distance:0,filter:"*",tolerance:"touch",selected:null,selecting:null,start:null,stop:null,unselected:null,unselecting:null},_create:function(){var t,i=this;this.element.addClass("ui-selectable"),this.dragged=!1,this.refresh=function(){t=e(i.options.filter,i.element[0]),t.addClass("ui-selectee"),t.each(function(){var t=e(this),i=t.offset();e.data(this,"selectable-item",{element:this,$element:t,left:i.left,top:i.top,right:i.left+t.outerWidth(),bottom:i.top+t.outerHeight(),startselected:!1,selected:t.hasClass("ui-selected"),selecting:t.hasClass("ui-selecting"),unselecting:t.hasClass("ui-unselecting")})})},this.refresh(),this.selectees=t.addClass("ui-selectee"),this._mouseInit(),this.helper=e("<div class='ui-selectable-helper'></div>")},_destroy:function(){this.selectees.removeClass("ui-selectee").removeData("selectable-item"),this.element.removeClass("ui-selectable ui-selectable-disabled"),this._mouseDestroy()},_mouseStart:function(t){var i=this,s=this.options;this.opos=[t.pageX,t.pageY],this.options.disabled||(this.selectees=e(s.filter,this.element[0]),this._trigger("start",t),e(s.appendTo).append(this.helper),this.helper.css({left:t.pageX,top:t.pageY,width:0,height:0}),s.autoRefresh&&this.refresh(),this.selectees.filter(".ui-selected").each(function(){var s=e.data(this,"selectable-item");s.startselected=!0,t.metaKey||t.ctrlKey||(s.$element.removeClass("ui-selected"),s.selected=!1,s.$element.addClass("ui-unselecting"),s.unselecting=!0,i._trigger("unselecting",t,{unselecting:s.element}))}),e(t.target).parents().addBack().each(function(){var s,n=e.data(this,"selectable-item");return n?(s=!t.metaKey&&!t.ctrlKey||!n.$element.hasClass("ui-selected"),n.$element.removeClass(s?"ui-unselecting":"ui-selected").addClass(s?"ui-selecting":"ui-unselecting"),n.unselecting=!s,n.selecting=s,n.selected=s,s?i._trigger("selecting",t,{selecting:n.element}):i._trigger("unselecting",t,{unselecting:n.element}),!1):undefined}))},_mouseDrag:function(t){if(this.dragged=!0,!this.options.disabled){var i,s=this,n=this.options,a=this.opos[0],o=this.opos[1],r=t.pageX,h=t.pageY;return a>r&&(i=r,r=a,a=i),o>h&&(i=h,h=o,o=i),this.helper.css({left:a,top:o,width:r-a,height:h-o}),this.selectees.each(function(){var i=e.data(this,"selectable-item"),l=!1;i&&i.element!==s.element[0]&&("touch"===n.tolerance?l=!(i.left>r||a>i.right||i.top>h||o>i.bottom):"fit"===n.tolerance&&(l=i.left>a&&r>i.right&&i.top>o&&h>i.bottom),l?(i.selected&&(i.$element.removeClass("ui-selected"),i.selected=!1),i.unselecting&&(i.$element.removeClass("ui-unselecting"),i.unselecting=!1),i.selecting||(i.$element.addClass("ui-selecting"),i.selecting=!0,s._trigger("selecting",t,{selecting:i.element}))):(i.selecting&&((t.metaKey||t.ctrlKey)&&i.startselected?(i.$element.removeClass("ui-selecting"),i.selecting=!1,i.$element.addClass("ui-selected"),i.selected=!0):(i.$element.removeClass("ui-selecting"),i.selecting=!1,i.startselected&&(i.$element.addClass("ui-unselecting"),i.unselecting=!0),s._trigger("unselecting",t,{unselecting:i.element}))),i.selected&&(t.metaKey||t.ctrlKey||i.startselected||(i.$element.removeClass("ui-selected"),i.selected=!1,i.$element.addClass("ui-unselecting"),i.unselecting=!0,s._trigger("unselecting",t,{unselecting:i.element})))))}),!1}},_mouseStop:function(t){var i=this;return this.dragged=!1,e(".ui-unselecting",this.element[0]).each(function(){var s=e.data(this,"selectable-item");s.$element.removeClass("ui-unselecting"),s.unselecting=!1,s.startselected=!1,i._trigger("unselected",t,{unselected:s.element})}),e(".ui-selecting",this.element[0]).each(function(){var s=e.data(this,"selectable-item");s.$element.removeClass("ui-selecting").addClass("ui-selected"),s.selecting=!1,s.selected=!0,s.startselected=!0,i._trigger("selected",t,{selected:s.element})}),this._trigger("stop",t),this.helper.remove(),!1}})})(jQuery);(function(t){function e(t,e,i){return t>e&&e+i>t}function i(t){return/left|right/.test(t.css("float"))||/inline|table-cell/.test(t.css("display"))}t.widget("ui.sortable",t.ui.mouse,{version:"1.10.2",widgetEventPrefix:"sort",ready:!1,options:{appendTo:"parent",axis:!1,connectWith:!1,containment:!1,cursor:"auto",cursorAt:!1,dropOnEmpty:!0,forcePlaceholderSize:!1,forceHelperSize:!1,grid:!1,handle:!1,helper:"original",items:"> *",opacity:!1,placeholder:!1,revert:!1,scroll:!0,scrollSensitivity:20,scrollSpeed:20,scope:"default",tolerance:"intersect",zIndex:1e3,activate:null,beforeStop:null,change:null,deactivate:null,out:null,over:null,receive:null,remove:null,sort:null,start:null,stop:null,update:null},_create:function(){var t=this.options;this.containerCache={},this.element.addClass("ui-sortable"),this.refresh(),this.floating=this.items.length?"x"===t.axis||i(this.items[0].item):!1,this.offset=this.element.offset(),this._mouseInit(),this.ready=!0},_destroy:function(){this.element.removeClass("ui-sortable ui-sortable-disabled"),this._mouseDestroy();for(var t=this.items.length-1;t>=0;t--)this.items[t].item.removeData(this.widgetName+"-item");return this},_setOption:function(e,i){"disabled"===e?(this.options[e]=i,this.widget().toggleClass("ui-sortable-disabled",!!i)):t.Widget.prototype._setOption.apply(this,arguments)},_mouseCapture:function(e,i){var s=null,n=!1,a=this;return this.reverting?!1:this.options.disabled||"static"===this.options.type?!1:(this._refreshItems(e),t(e.target).parents().each(function(){return t.data(this,a.widgetName+"-item")===a?(s=t(this),!1):undefined}),t.data(e.target,a.widgetName+"-item")===a&&(s=t(e.target)),s?!this.options.handle||i||(t(this.options.handle,s).find("*").addBack().each(function(){this===e.target&&(n=!0)}),n)?(this.currentItem=s,this._removeCurrentsFromItems(),!0):!1:!1)},_mouseStart:function(e,i,s){var n,a,o=this.options;if(this.currentContainer=this,this.refreshPositions(),this.helper=this._createHelper(e),this._cacheHelperProportions(),this._cacheMargins(),this.scrollParent=this.helper.scrollParent(),this.offset=this.currentItem.offset(),this.offset={top:this.offset.top-this.margins.top,left:this.offset.left-this.margins.left},t.extend(this.offset,{click:{left:e.pageX-this.offset.left,top:e.pageY-this.offset.top},parent:this._getParentOffset(),relative:this._getRelativeOffset()}),this.helper.css("position","absolute"),this.cssPosition=this.helper.css("position"),this.originalPosition=this._generatePosition(e),this.originalPageX=e.pageX,this.originalPageY=e.pageY,o.cursorAt&&this._adjustOffsetFromHelper(o.cursorAt),this.domPosition={prev:this.currentItem.prev()[0],parent:this.currentItem.parent()[0]},this.helper[0]!==this.currentItem[0]&&this.currentItem.hide(),this._createPlaceholder(),o.containment&&this._setContainment(),o.cursor&&"auto"!==o.cursor&&(a=this.document.find("body"),this.storedCursor=a.css("cursor"),a.css("cursor",o.cursor),this.storedStylesheet=t("<style>*{ cursor: "+o.cursor+" !important; }</style>").appendTo(a)),o.opacity&&(this.helper.css("opacity")&&(this._storedOpacity=this.helper.css("opacity")),this.helper.css("opacity",o.opacity)),o.zIndex&&(this.helper.css("zIndex")&&(this._storedZIndex=this.helper.css("zIndex")),this.helper.css("zIndex",o.zIndex)),this.scrollParent[0]!==document&&"HTML"!==this.scrollParent[0].tagName&&(this.overflowOffset=this.scrollParent.offset()),this._trigger("start",e,this._uiHash()),this._preserveHelperProportions||this._cacheHelperProportions(),!s)for(n=this.containers.length-1;n>=0;n--)this.containers[n]._trigger("activate",e,this._uiHash(this));return t.ui.ddmanager&&(t.ui.ddmanager.current=this),t.ui.ddmanager&&!o.dropBehaviour&&t.ui.ddmanager.prepareOffsets(this,e),this.dragging=!0,this.helper.addClass("ui-sortable-helper"),this._mouseDrag(e),!0},_mouseDrag:function(e){var i,s,n,a,o=this.options,r=!1;for(this.position=this._generatePosition(e),this.positionAbs=this._convertPositionTo("absolute"),this.lastPositionAbs||(this.lastPositionAbs=this.positionAbs),this.options.scroll&&(this.scrollParent[0]!==document&&"HTML"!==this.scrollParent[0].tagName?(this.overflowOffset.top+this.scrollParent[0].offsetHeight-e.pageY<o.scrollSensitivity?this.scrollParent[0].scrollTop=r=this.scrollParent[0].scrollTop+o.scrollSpeed:e.pageY-this.overflowOffset.top<o.scrollSensitivity&&(this.scrollParent[0].scrollTop=r=this.scrollParent[0].scrollTop-o.scrollSpeed),this.overflowOffset.left+this.scrollParent[0].offsetWidth-e.pageX<o.scrollSensitivity?this.scrollParent[0].scrollLeft=r=this.scrollParent[0].scrollLeft+o.scrollSpeed:e.pageX-this.overflowOffset.left<o.scrollSensitivity&&(this.scrollParent[0].scrollLeft=r=this.scrollParent[0].scrollLeft-o.scrollSpeed)):(e.pageY-t(document).scrollTop()<o.scrollSensitivity?r=t(document).scrollTop(t(document).scrollTop()-o.scrollSpeed):t(window).height()-(e.pageY-t(document).scrollTop())<o.scrollSensitivity&&(r=t(document).scrollTop(t(document).scrollTop()+o.scrollSpeed)),e.pageX-t(document).scrollLeft()<o.scrollSensitivity?r=t(document).scrollLeft(t(document).scrollLeft()-o.scrollSpeed):t(window).width()-(e.pageX-t(document).scrollLeft())<o.scrollSensitivity&&(r=t(document).scrollLeft(t(document).scrollLeft()+o.scrollSpeed))),r!==!1&&t.ui.ddmanager&&!o.dropBehaviour&&t.ui.ddmanager.prepareOffsets(this,e)),this.positionAbs=this._convertPositionTo("absolute"),this.options.axis&&"y"===this.options.axis||(this.helper[0].style.left=this.position.left+"px"),this.options.axis&&"x"===this.options.axis||(this.helper[0].style.top=this.position.top+"px"),i=this.items.length-1;i>=0;i--)if(s=this.items[i],n=s.item[0],a=this._intersectsWithPointer(s),a&&s.instance===this.currentContainer&&n!==this.currentItem[0]&&this.placeholder[1===a?"next":"prev"]()[0]!==n&&!t.contains(this.placeholder[0],n)&&("semi-dynamic"===this.options.type?!t.contains(this.element[0],n):!0)){if(this.direction=1===a?"down":"up","pointer"!==this.options.tolerance&&!this._intersectsWithSides(s))break;this._rearrange(e,s),this._trigger("change",e,this._uiHash());break}return this._contactContainers(e),t.ui.ddmanager&&t.ui.ddmanager.drag(this,e),this._trigger("sort",e,this._uiHash()),this.lastPositionAbs=this.positionAbs,!1},_mouseStop:function(e,i){if(e){if(t.ui.ddmanager&&!this.options.dropBehaviour&&t.ui.ddmanager.drop(this,e),this.options.revert){var s=this,n=this.placeholder.offset(),a=this.options.axis,o={};a&&"x"!==a||(o.left=n.left-this.offset.parent.left-this.margins.left+(this.offsetParent[0]===document.body?0:this.offsetParent[0].scrollLeft)),a&&"y"!==a||(o.top=n.top-this.offset.parent.top-this.margins.top+(this.offsetParent[0]===document.body?0:this.offsetParent[0].scrollTop)),this.reverting=!0,t(this.helper).animate(o,parseInt(this.options.revert,10)||500,function(){s._clear(e)})}else this._clear(e,i);return!1}},cancel:function(){if(this.dragging){this._mouseUp({target:null}),"original"===this.options.helper?this.currentItem.css(this._storedCSS).removeClass("ui-sortable-helper"):this.currentItem.show();for(var e=this.containers.length-1;e>=0;e--)this.containers[e]._trigger("deactivate",null,this._uiHash(this)),this.containers[e].containerCache.over&&(this.containers[e]._trigger("out",null,this._uiHash(this)),this.containers[e].containerCache.over=0)}return this.placeholder&&(this.placeholder[0].parentNode&&this.placeholder[0].parentNode.removeChild(this.placeholder[0]),"original"!==this.options.helper&&this.helper&&this.helper[0].parentNode&&this.helper.remove(),t.extend(this,{helper:null,dragging:!1,reverting:!1,_noFinalSort:null}),this.domPosition.prev?t(this.domPosition.prev).after(this.currentItem):t(this.domPosition.parent).prepend(this.currentItem)),this},serialize:function(e){var i=this._getItemsAsjQuery(e&&e.connected),s=[];return e=e||{},t(i).each(function(){var i=(t(e.item||this).attr(e.attribute||"id")||"").match(e.expression||/(.+)[\-=_](.+)/);i&&s.push((e.key||i[1]+"[]")+"="+(e.key&&e.expression?i[1]:i[2]))}),!s.length&&e.key&&s.push(e.key+"="),s.join("&")},toArray:function(e){var i=this._getItemsAsjQuery(e&&e.connected),s=[];return e=e||{},i.each(function(){s.push(t(e.item||this).attr(e.attribute||"id")||"")}),s},_intersectsWith:function(t){var e=this.positionAbs.left,i=e+this.helperProportions.width,s=this.positionAbs.top,n=s+this.helperProportions.height,a=t.left,o=a+t.width,r=t.top,h=r+t.height,l=this.offset.click.top,c=this.offset.click.left,u=s+l>r&&h>s+l&&e+c>a&&o>e+c;return"pointer"===this.options.tolerance||this.options.forcePointerForContainers||"pointer"!==this.options.tolerance&&this.helperProportions[this.floating?"width":"height"]>t[this.floating?"width":"height"]?u:e+this.helperProportions.width/2>a&&o>i-this.helperProportions.width/2&&s+this.helperProportions.height/2>r&&h>n-this.helperProportions.height/2},_intersectsWithPointer:function(t){var i="x"===this.options.axis||e(this.positionAbs.top+this.offset.click.top,t.top,t.height),s="y"===this.options.axis||e(this.positionAbs.left+this.offset.click.left,t.left,t.width),n=i&&s,a=this._getDragVerticalDirection(),o=this._getDragHorizontalDirection();return n?this.floating?o&&"right"===o||"down"===a?2:1:a&&("down"===a?2:1):!1},_intersectsWithSides:function(t){var i=e(this.positionAbs.top+this.offset.click.top,t.top+t.height/2,t.height),s=e(this.positionAbs.left+this.offset.click.left,t.left+t.width/2,t.width),n=this._getDragVerticalDirection(),a=this._getDragHorizontalDirection();return this.floating&&a?"right"===a&&s||"left"===a&&!s:n&&("down"===n&&i||"up"===n&&!i)},_getDragVerticalDirection:function(){var t=this.positionAbs.top-this.lastPositionAbs.top;return 0!==t&&(t>0?"down":"up")},_getDragHorizontalDirection:function(){var t=this.positionAbs.left-this.lastPositionAbs.left;return 0!==t&&(t>0?"right":"left")},refresh:function(t){return this._refreshItems(t),this.refreshPositions(),this},_connectWith:function(){var t=this.options;return t.connectWith.constructor===String?[t.connectWith]:t.connectWith},_getItemsAsjQuery:function(e){var i,s,n,a,o=[],r=[],h=this._connectWith();if(h&&e)for(i=h.length-1;i>=0;i--)for(n=t(h[i]),s=n.length-1;s>=0;s--)a=t.data(n[s],this.widgetFullName),a&&a!==this&&!a.options.disabled&&r.push([t.isFunction(a.options.items)?a.options.items.call(a.element):t(a.options.items,a.element).not(".ui-sortable-helper").not(".ui-sortable-placeholder"),a]);for(r.push([t.isFunction(this.options.items)?this.options.items.call(this.element,null,{options:this.options,item:this.currentItem}):t(this.options.items,this.element).not(".ui-sortable-helper").not(".ui-sortable-placeholder"),this]),i=r.length-1;i>=0;i--)r[i][0].each(function(){o.push(this)});return t(o)},_removeCurrentsFromItems:function(){var e=this.currentItem.find(":data("+this.widgetName+"-item)");this.items=t.grep(this.items,function(t){for(var i=0;e.length>i;i++)if(e[i]===t.item[0])return!1;return!0})},_refreshItems:function(e){this.items=[],this.containers=[this];var i,s,n,a,o,r,h,l,c=this.items,u=[[t.isFunction(this.options.items)?this.options.items.call(this.element[0],e,{item:this.currentItem}):t(this.options.items,this.element),this]],d=this._connectWith();if(d&&this.ready)for(i=d.length-1;i>=0;i--)for(n=t(d[i]),s=n.length-1;s>=0;s--)a=t.data(n[s],this.widgetFullName),a&&a!==this&&!a.options.disabled&&(u.push([t.isFunction(a.options.items)?a.options.items.call(a.element[0],e,{item:this.currentItem}):t(a.options.items,a.element),a]),this.containers.push(a));for(i=u.length-1;i>=0;i--)for(o=u[i][1],r=u[i][0],s=0,l=r.length;l>s;s++)h=t(r[s]),h.data(this.widgetName+"-item",o),c.push({item:h,instance:o,width:0,height:0,left:0,top:0})},refreshPositions:function(e){this.offsetParent&&this.helper&&(this.offset.parent=this._getParentOffset());var i,s,n,a;for(i=this.items.length-1;i>=0;i--)s=this.items[i],s.instance!==this.currentContainer&&this.currentContainer&&s.item[0]!==this.currentItem[0]||(n=this.options.toleranceElement?t(this.options.toleranceElement,s.item):s.item,e||(s.width=n.outerWidth(),s.height=n.outerHeight()),a=n.offset(),s.left=a.left,s.top=a.top);if(this.options.custom&&this.options.custom.refreshContainers)this.options.custom.refreshContainers.call(this);else for(i=this.containers.length-1;i>=0;i--)a=this.containers[i].element.offset(),this.containers[i].containerCache.left=a.left,this.containers[i].containerCache.top=a.top,this.containers[i].containerCache.width=this.containers[i].element.outerWidth(),this.containers[i].containerCache.height=this.containers[i].element.outerHeight();return this},_createPlaceholder:function(e){e=e||this;var i,s=e.options;s.placeholder&&s.placeholder.constructor!==String||(i=s.placeholder,s.placeholder={element:function(){var s=e.currentItem[0].nodeName.toLowerCase(),n=t(e.document[0].createElement(s)).addClass(i||e.currentItem[0].className+" ui-sortable-placeholder").removeClass("ui-sortable-helper");return"tr"===s?n.append("<td colspan='99'>&#160;</td>"):"img"===s&&n.attr("src",e.currentItem.attr("src")),i||n.css("visibility","hidden"),n},update:function(t,n){(!i||s.forcePlaceholderSize)&&(n.height()||n.height(e.currentItem.innerHeight()-parseInt(e.currentItem.css("paddingTop")||0,10)-parseInt(e.currentItem.css("paddingBottom")||0,10)),n.width()||n.width(e.currentItem.innerWidth()-parseInt(e.currentItem.css("paddingLeft")||0,10)-parseInt(e.currentItem.css("paddingRight")||0,10)))}}),e.placeholder=t(s.placeholder.element.call(e.element,e.currentItem)),e.currentItem.after(e.placeholder),s.placeholder.update(e,e.placeholder)},_contactContainers:function(s){var n,a,o,r,h,l,c,u,d,p,f=null,m=null;for(n=this.containers.length-1;n>=0;n--)if(!t.contains(this.currentItem[0],this.containers[n].element[0]))if(this._intersectsWith(this.containers[n].containerCache)){if(f&&t.contains(this.containers[n].element[0],f.element[0]))continue;f=this.containers[n],m=n}else this.containers[n].containerCache.over&&(this.containers[n]._trigger("out",s,this._uiHash(this)),this.containers[n].containerCache.over=0);if(f)if(1===this.containers.length)this.containers[m].containerCache.over||(this.containers[m]._trigger("over",s,this._uiHash(this)),this.containers[m].containerCache.over=1);else{for(o=1e4,r=null,p=f.floating||i(this.currentItem),h=p?"left":"top",l=p?"width":"height",c=this.positionAbs[h]+this.offset.click[h],a=this.items.length-1;a>=0;a--)t.contains(this.containers[m].element[0],this.items[a].item[0])&&this.items[a].item[0]!==this.currentItem[0]&&(!p||e(this.positionAbs.top+this.offset.click.top,this.items[a].top,this.items[a].height))&&(u=this.items[a].item.offset()[h],d=!1,Math.abs(u-c)>Math.abs(u+this.items[a][l]-c)&&(d=!0,u+=this.items[a][l]),o>Math.abs(u-c)&&(o=Math.abs(u-c),r=this.items[a],this.direction=d?"up":"down"));if(!r&&!this.options.dropOnEmpty)return;if(this.currentContainer===this.containers[m])return;r?this._rearrange(s,r,null,!0):this._rearrange(s,null,this.containers[m].element,!0),this._trigger("change",s,this._uiHash()),this.containers[m]._trigger("change",s,this._uiHash(this)),this.currentContainer=this.containers[m],this.options.placeholder.update(this.currentContainer,this.placeholder),this.containers[m]._trigger("over",s,this._uiHash(this)),this.containers[m].containerCache.over=1}},_createHelper:function(e){var i=this.options,s=t.isFunction(i.helper)?t(i.helper.apply(this.element[0],[e,this.currentItem])):"clone"===i.helper?this.currentItem.clone():this.currentItem;return s.parents("body").length||t("parent"!==i.appendTo?i.appendTo:this.currentItem[0].parentNode)[0].appendChild(s[0]),s[0]===this.currentItem[0]&&(this._storedCSS={width:this.currentItem[0].style.width,height:this.currentItem[0].style.height,position:this.currentItem.css("position"),top:this.currentItem.css("top"),left:this.currentItem.css("left")}),(!s[0].style.width||i.forceHelperSize)&&s.width(this.currentItem.width()),(!s[0].style.height||i.forceHelperSize)&&s.height(this.currentItem.height()),s},_adjustOffsetFromHelper:function(e){"string"==typeof e&&(e=e.split(" ")),t.isArray(e)&&(e={left:+e[0],top:+e[1]||0}),"left"in e&&(this.offset.click.left=e.left+this.margins.left),"right"in e&&(this.offset.click.left=this.helperProportions.width-e.right+this.margins.left),"top"in e&&(this.offset.click.top=e.top+this.margins.top),"bottom"in e&&(this.offset.click.top=this.helperProportions.height-e.bottom+this.margins.top)},_getParentOffset:function(){this.offsetParent=this.helper.offsetParent();var e=this.offsetParent.offset();return"absolute"===this.cssPosition&&this.scrollParent[0]!==document&&t.contains(this.scrollParent[0],this.offsetParent[0])&&(e.left+=this.scrollParent.scrollLeft(),e.top+=this.scrollParent.scrollTop()),(this.offsetParent[0]===document.body||this.offsetParent[0].tagName&&"html"===this.offsetParent[0].tagName.toLowerCase()&&t.ui.ie)&&(e={top:0,left:0}),{top:e.top+(parseInt(this.offsetParent.css("borderTopWidth"),10)||0),left:e.left+(parseInt(this.offsetParent.css("borderLeftWidth"),10)||0)}},_getRelativeOffset:function(){if("relative"===this.cssPosition){var t=this.currentItem.position();return{top:t.top-(parseInt(this.helper.css("top"),10)||0)+this.scrollParent.scrollTop(),left:t.left-(parseInt(this.helper.css("left"),10)||0)+this.scrollParent.scrollLeft()}}return{top:0,left:0}},_cacheMargins:function(){this.margins={left:parseInt(this.currentItem.css("marginLeft"),10)||0,top:parseInt(this.currentItem.css("marginTop"),10)||0}},_cacheHelperProportions:function(){this.helperProportions={width:this.helper.outerWidth(),height:this.helper.outerHeight()}},_setContainment:function(){var e,i,s,n=this.options;"parent"===n.containment&&(n.containment=this.helper[0].parentNode),("document"===n.containment||"window"===n.containment)&&(this.containment=[0-this.offset.relative.left-this.offset.parent.left,0-this.offset.relative.top-this.offset.parent.top,t("document"===n.containment?document:window).width()-this.helperProportions.width-this.margins.left,(t("document"===n.containment?document:window).height()||document.body.parentNode.scrollHeight)-this.helperProportions.height-this.margins.top]),/^(document|window|parent)$/.test(n.containment)||(e=t(n.containment)[0],i=t(n.containment).offset(),s="hidden"!==t(e).css("overflow"),this.containment=[i.left+(parseInt(t(e).css("borderLeftWidth"),10)||0)+(parseInt(t(e).css("paddingLeft"),10)||0)-this.margins.left,i.top+(parseInt(t(e).css("borderTopWidth"),10)||0)+(parseInt(t(e).css("paddingTop"),10)||0)-this.margins.top,i.left+(s?Math.max(e.scrollWidth,e.offsetWidth):e.offsetWidth)-(parseInt(t(e).css("borderLeftWidth"),10)||0)-(parseInt(t(e).css("paddingRight"),10)||0)-this.helperProportions.width-this.margins.left,i.top+(s?Math.max(e.scrollHeight,e.offsetHeight):e.offsetHeight)-(parseInt(t(e).css("borderTopWidth"),10)||0)-(parseInt(t(e).css("paddingBottom"),10)||0)-this.helperProportions.height-this.margins.top])},_convertPositionTo:function(e,i){i||(i=this.position);var s="absolute"===e?1:-1,n="absolute"!==this.cssPosition||this.scrollParent[0]!==document&&t.contains(this.scrollParent[0],this.offsetParent[0])?this.scrollParent:this.offsetParent,a=/(html|body)/i.test(n[0].tagName);return{top:i.top+this.offset.relative.top*s+this.offset.parent.top*s-("fixed"===this.cssPosition?-this.scrollParent.scrollTop():a?0:n.scrollTop())*s,left:i.left+this.offset.relative.left*s+this.offset.parent.left*s-("fixed"===this.cssPosition?-this.scrollParent.scrollLeft():a?0:n.scrollLeft())*s}},_generatePosition:function(e){var i,s,n=this.options,a=e.pageX,o=e.pageY,r="absolute"!==this.cssPosition||this.scrollParent[0]!==document&&t.contains(this.scrollParent[0],this.offsetParent[0])?this.scrollParent:this.offsetParent,h=/(html|body)/i.test(r[0].tagName);return"relative"!==this.cssPosition||this.scrollParent[0]!==document&&this.scrollParent[0]!==this.offsetParent[0]||(this.offset.relative=this._getRelativeOffset()),this.originalPosition&&(this.containment&&(e.pageX-this.offset.click.left<this.containment[0]&&(a=this.containment[0]+this.offset.click.left),e.pageY-this.offset.click.top<this.containment[1]&&(o=this.containment[1]+this.offset.click.top),e.pageX-this.offset.click.left>this.containment[2]&&(a=this.containment[2]+this.offset.click.left),e.pageY-this.offset.click.top>this.containment[3]&&(o=this.containment[3]+this.offset.click.top)),n.grid&&(i=this.originalPageY+Math.round((o-this.originalPageY)/n.grid[1])*n.grid[1],o=this.containment?i-this.offset.click.top>=this.containment[1]&&i-this.offset.click.top<=this.containment[3]?i:i-this.offset.click.top>=this.containment[1]?i-n.grid[1]:i+n.grid[1]:i,s=this.originalPageX+Math.round((a-this.originalPageX)/n.grid[0])*n.grid[0],a=this.containment?s-this.offset.click.left>=this.containment[0]&&s-this.offset.click.left<=this.containment[2]?s:s-this.offset.click.left>=this.containment[0]?s-n.grid[0]:s+n.grid[0]:s)),{top:o-this.offset.click.top-this.offset.relative.top-this.offset.parent.top+("fixed"===this.cssPosition?-this.scrollParent.scrollTop():h?0:r.scrollTop()),left:a-this.offset.click.left-this.offset.relative.left-this.offset.parent.left+("fixed"===this.cssPosition?-this.scrollParent.scrollLeft():h?0:r.scrollLeft())}},_rearrange:function(t,e,i,s){i?i[0].appendChild(this.placeholder[0]):e.item[0].parentNode.insertBefore(this.placeholder[0],"down"===this.direction?e.item[0]:e.item[0].nextSibling),this.counter=this.counter?++this.counter:1;var n=this.counter;this._delay(function(){n===this.counter&&this.refreshPositions(!s)})},_clear:function(t,e){this.reverting=!1;var i,s=[];if(!this._noFinalSort&&this.currentItem.parent().length&&this.placeholder.before(this.currentItem),this._noFinalSort=null,this.helper[0]===this.currentItem[0]){for(i in this._storedCSS)("auto"===this._storedCSS[i]||"static"===this._storedCSS[i])&&(this._storedCSS[i]="");this.currentItem.css(this._storedCSS).removeClass("ui-sortable-helper")}else this.currentItem.show();for(this.fromOutside&&!e&&s.push(function(t){this._trigger("receive",t,this._uiHash(this.fromOutside))}),!this.fromOutside&&this.domPosition.prev===this.currentItem.prev().not(".ui-sortable-helper")[0]&&this.domPosition.parent===this.currentItem.parent()[0]||e||s.push(function(t){this._trigger("update",t,this._uiHash())}),this!==this.currentContainer&&(e||(s.push(function(t){this._trigger("remove",t,this._uiHash())}),s.push(function(t){return function(e){t._trigger("receive",e,this._uiHash(this))}}.call(this,this.currentContainer)),s.push(function(t){return function(e){t._trigger("update",e,this._uiHash(this))}}.call(this,this.currentContainer)))),i=this.containers.length-1;i>=0;i--)e||s.push(function(t){return function(e){t._trigger("deactivate",e,this._uiHash(this))}}.call(this,this.containers[i])),this.containers[i].containerCache.over&&(s.push(function(t){return function(e){t._trigger("out",e,this._uiHash(this))}}.call(this,this.containers[i])),this.containers[i].containerCache.over=0);if(this.storedCursor&&(this.document.find("body").css("cursor",this.storedCursor),this.storedStylesheet.remove()),this._storedOpacity&&this.helper.css("opacity",this._storedOpacity),this._storedZIndex&&this.helper.css("zIndex","auto"===this._storedZIndex?"":this._storedZIndex),this.dragging=!1,this.cancelHelperRemoval){if(!e){for(this._trigger("beforeStop",t,this._uiHash()),i=0;s.length>i;i++)s[i].call(this,t);this._trigger("stop",t,this._uiHash())}return this.fromOutside=!1,!1}if(e||this._trigger("beforeStop",t,this._uiHash()),this.placeholder[0].parentNode.removeChild(this.placeholder[0]),this.helper[0]!==this.currentItem[0]&&this.helper.remove(),this.helper=null,!e){for(i=0;s.length>i;i++)s[i].call(this,t);this._trigger("stop",t,this._uiHash())}return this.fromOutside=!1,!0},_trigger:function(){t.Widget.prototype._trigger.apply(this,arguments)===!1&&this.cancel()},_uiHash:function(e){var i=e||this;return{helper:i.helper,placeholder:i.placeholder||t([]),position:i.position,originalPosition:i.originalPosition,offset:i.positionAbs,item:i.currentItem,sender:e?e.element:null}}})})(jQuery);(function(t){var e=0,i={},s={};i.height=i.paddingTop=i.paddingBottom=i.borderTopWidth=i.borderBottomWidth="hide",s.height=s.paddingTop=s.paddingBottom=s.borderTopWidth=s.borderBottomWidth="show",t.widget("ui.accordion",{version:"1.10.2",options:{active:0,animate:{},collapsible:!1,event:"click",header:"> li > :first-child,> :not(li):even",heightStyle:"auto",icons:{activeHeader:"ui-icon-triangle-1-s",header:"ui-icon-triangle-1-e"},activate:null,beforeActivate:null},_create:function(){var e=this.options;this.prevShow=this.prevHide=t(),this.element.addClass("ui-accordion ui-widget ui-helper-reset").attr("role","tablist"),e.collapsible||e.active!==!1&&null!=e.active||(e.active=0),this._processPanels(),0>e.active&&(e.active+=this.headers.length),this._refresh()},_getCreateEventData:function(){return{header:this.active,panel:this.active.length?this.active.next():t(),content:this.active.length?this.active.next():t()}},_createIcons:function(){var e=this.options.icons;e&&(t("<span>").addClass("ui-accordion-header-icon ui-icon "+e.header).prependTo(this.headers),this.active.children(".ui-accordion-header-icon").removeClass(e.header).addClass(e.activeHeader),this.headers.addClass("ui-accordion-icons"))},_destroyIcons:function(){this.headers.removeClass("ui-accordion-icons").children(".ui-accordion-header-icon").remove()},_destroy:function(){var t;this.element.removeClass("ui-accordion ui-widget ui-helper-reset").removeAttr("role"),this.headers.removeClass("ui-accordion-header ui-accordion-header-active ui-helper-reset ui-state-default ui-corner-all ui-state-active ui-state-disabled ui-corner-top").removeAttr("role").removeAttr("aria-selected").removeAttr("aria-controls").removeAttr("tabIndex").each(function(){/^ui-accordion/.test(this.id)&&this.removeAttribute("id")}),this._destroyIcons(),t=this.headers.next().css("display","").removeAttr("role").removeAttr("aria-expanded").removeAttr("aria-hidden").removeAttr("aria-labelledby").removeClass("ui-helper-reset ui-widget-content ui-corner-bottom ui-accordion-content ui-accordion-content-active ui-state-disabled").each(function(){/^ui-accordion/.test(this.id)&&this.removeAttribute("id")}),"content"!==this.options.heightStyle&&t.css("height","")},_setOption:function(t,e){return"active"===t?(this._activate(e),undefined):("event"===t&&(this.options.event&&this._off(this.headers,this.options.event),this._setupEvents(e)),this._super(t,e),"collapsible"!==t||e||this.options.active!==!1||this._activate(0),"icons"===t&&(this._destroyIcons(),e&&this._createIcons()),"disabled"===t&&this.headers.add(this.headers.next()).toggleClass("ui-state-disabled",!!e),undefined)},_keydown:function(e){if(!e.altKey&&!e.ctrlKey){var i=t.ui.keyCode,s=this.headers.length,n=this.headers.index(e.target),a=!1;switch(e.keyCode){case i.RIGHT:case i.DOWN:a=this.headers[(n+1)%s];break;case i.LEFT:case i.UP:a=this.headers[(n-1+s)%s];break;case i.SPACE:case i.ENTER:this._eventHandler(e);break;case i.HOME:a=this.headers[0];break;case i.END:a=this.headers[s-1]}a&&(t(e.target).attr("tabIndex",-1),t(a).attr("tabIndex",0),a.focus(),e.preventDefault())}},_panelKeyDown:function(e){e.keyCode===t.ui.keyCode.UP&&e.ctrlKey&&t(e.currentTarget).prev().focus()},refresh:function(){var e=this.options;this._processPanels(),(e.active===!1&&e.collapsible===!0||!this.headers.length)&&(e.active=!1,this.active=t()),e.active===!1?this._activate(0):this.active.length&&!t.contains(this.element[0],this.active[0])?this.headers.length===this.headers.find(".ui-state-disabled").length?(e.active=!1,this.active=t()):this._activate(Math.max(0,e.active-1)):e.active=this.headers.index(this.active),this._destroyIcons(),this._refresh()},_processPanels:function(){this.headers=this.element.find(this.options.header).addClass("ui-accordion-header ui-helper-reset ui-state-default ui-corner-all"),this.headers.next().addClass("ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom").filter(":not(.ui-accordion-content-active)").hide()},_refresh:function(){var i,s=this.options,n=s.heightStyle,a=this.element.parent(),o=this.accordionId="ui-accordion-"+(this.element.attr("id")||++e);this.active=this._findActive(s.active).addClass("ui-accordion-header-active ui-state-active ui-corner-top").removeClass("ui-corner-all"),this.active.next().addClass("ui-accordion-content-active").show(),this.headers.attr("role","tab").each(function(e){var i=t(this),s=i.attr("id"),n=i.next(),a=n.attr("id");s||(s=o+"-header-"+e,i.attr("id",s)),a||(a=o+"-panel-"+e,n.attr("id",a)),i.attr("aria-controls",a),n.attr("aria-labelledby",s)}).next().attr("role","tabpanel"),this.headers.not(this.active).attr({"aria-selected":"false",tabIndex:-1}).next().attr({"aria-expanded":"false","aria-hidden":"true"}).hide(),this.active.length?this.active.attr({"aria-selected":"true",tabIndex:0}).next().attr({"aria-expanded":"true","aria-hidden":"false"}):this.headers.eq(0).attr("tabIndex",0),this._createIcons(),this._setupEvents(s.event),"fill"===n?(i=a.height(),this.element.siblings(":visible").each(function(){var e=t(this),s=e.css("position");"absolute"!==s&&"fixed"!==s&&(i-=e.outerHeight(!0))}),this.headers.each(function(){i-=t(this).outerHeight(!0)}),this.headers.next().each(function(){t(this).height(Math.max(0,i-t(this).innerHeight()+t(this).height()))}).css("overflow","auto")):"auto"===n&&(i=0,this.headers.next().each(function(){i=Math.max(i,t(this).css("height","").height())}).height(i))},_activate:function(e){var i=this._findActive(e)[0];i!==this.active[0]&&(i=i||this.active[0],this._eventHandler({target:i,currentTarget:i,preventDefault:t.noop}))},_findActive:function(e){return"number"==typeof e?this.headers.eq(e):t()},_setupEvents:function(e){var i={keydown:"_keydown"};e&&t.each(e.split(" "),function(t,e){i[e]="_eventHandler"}),this._off(this.headers.add(this.headers.next())),this._on(this.headers,i),this._on(this.headers.next(),{keydown:"_panelKeyDown"}),this._hoverable(this.headers),this._focusable(this.headers)},_eventHandler:function(e){var i=this.options,s=this.active,n=t(e.currentTarget),a=n[0]===s[0],o=a&&i.collapsible,r=o?t():n.next(),h=s.next(),l={oldHeader:s,oldPanel:h,newHeader:o?t():n,newPanel:r};e.preventDefault(),a&&!i.collapsible||this._trigger("beforeActivate",e,l)===!1||(i.active=o?!1:this.headers.index(n),this.active=a?t():n,this._toggle(l),s.removeClass("ui-accordion-header-active ui-state-active"),i.icons&&s.children(".ui-accordion-header-icon").removeClass(i.icons.activeHeader).addClass(i.icons.header),a||(n.removeClass("ui-corner-all").addClass("ui-accordion-header-active ui-state-active ui-corner-top"),i.icons&&n.children(".ui-accordion-header-icon").removeClass(i.icons.header).addClass(i.icons.activeHeader),n.next().addClass("ui-accordion-content-active")))},_toggle:function(e){var i=e.newPanel,s=this.prevShow.length?this.prevShow:e.oldPanel;this.prevShow.add(this.prevHide).stop(!0,!0),this.prevShow=i,this.prevHide=s,this.options.animate?this._animate(i,s,e):(s.hide(),i.show(),this._toggleComplete(e)),s.attr({"aria-expanded":"false","aria-hidden":"true"}),s.prev().attr("aria-selected","false"),i.length&&s.length?s.prev().attr("tabIndex",-1):i.length&&this.headers.filter(function(){return 0===t(this).attr("tabIndex")}).attr("tabIndex",-1),i.attr({"aria-expanded":"true","aria-hidden":"false"}).prev().attr({"aria-selected":"true",tabIndex:0})},_animate:function(t,e,n){var a,o,r,h=this,l=0,c=t.length&&(!e.length||t.index()<e.index()),u=this.options.animate||{},d=c&&u.down||u,p=function(){h._toggleComplete(n)};return"number"==typeof d&&(r=d),"string"==typeof d&&(o=d),o=o||d.easing||u.easing,r=r||d.duration||u.duration,e.length?t.length?(a=t.show().outerHeight(),e.animate(i,{duration:r,easing:o,step:function(t,e){e.now=Math.round(t)}}),t.hide().animate(s,{duration:r,easing:o,complete:p,step:function(t,i){i.now=Math.round(t),"height"!==i.prop?l+=i.now:"content"!==h.options.heightStyle&&(i.now=Math.round(a-e.outerHeight()-l),l=0)}}),undefined):e.animate(i,r,o,p):t.animate(s,r,o,p)},_toggleComplete:function(t){var e=t.oldPanel;e.removeClass("ui-accordion-content-active").prev().removeClass("ui-corner-top").addClass("ui-corner-all"),e.length&&(e.parent()[0].className=e.parent()[0].className),this._trigger("activate",null,t)}})})(jQuery);(function(e){var t=0;e.widget("ui.autocomplete",{version:"1.10.2",defaultElement:"<input>",options:{appendTo:null,autoFocus:!1,delay:300,minLength:1,position:{my:"left top",at:"left bottom",collision:"none"},source:null,change:null,close:null,focus:null,open:null,response:null,search:null,select:null},pending:0,_create:function(){var t,i,s,n=this.element[0].nodeName.toLowerCase(),a="textarea"===n,o="input"===n;this.isMultiLine=a?!0:o?!1:this.element.prop("isContentEditable"),this.valueMethod=this.element[a||o?"val":"text"],this.isNewMenu=!0,this.element.addClass("ui-autocomplete-input").attr("autocomplete","off"),this._on(this.element,{keydown:function(n){if(this.element.prop("readOnly"))return t=!0,s=!0,i=!0,undefined;t=!1,s=!1,i=!1;var a=e.ui.keyCode;switch(n.keyCode){case a.PAGE_UP:t=!0,this._move("previousPage",n);break;case a.PAGE_DOWN:t=!0,this._move("nextPage",n);break;case a.UP:t=!0,this._keyEvent("previous",n);break;case a.DOWN:t=!0,this._keyEvent("next",n);break;case a.ENTER:case a.NUMPAD_ENTER:this.menu.active&&(t=!0,n.preventDefault(),this.menu.select(n));break;case a.TAB:this.menu.active&&this.menu.select(n);break;case a.ESCAPE:this.menu.element.is(":visible")&&(this._value(this.term),this.close(n),n.preventDefault());break;default:i=!0,this._searchTimeout(n)}},keypress:function(s){if(t)return t=!1,s.preventDefault(),undefined;if(!i){var n=e.ui.keyCode;switch(s.keyCode){case n.PAGE_UP:this._move("previousPage",s);break;case n.PAGE_DOWN:this._move("nextPage",s);break;case n.UP:this._keyEvent("previous",s);break;case n.DOWN:this._keyEvent("next",s)}}},input:function(e){return s?(s=!1,e.preventDefault(),undefined):(this._searchTimeout(e),undefined)},focus:function(){this.selectedItem=null,this.previous=this._value()},blur:function(e){return this.cancelBlur?(delete this.cancelBlur,undefined):(clearTimeout(this.searching),this.close(e),this._change(e),undefined)}}),this._initSource(),this.menu=e("<ul>").addClass("ui-autocomplete ui-front").appendTo(this._appendTo()).menu({input:e(),role:null}).hide().data("ui-menu"),this._on(this.menu.element,{mousedown:function(t){t.preventDefault(),this.cancelBlur=!0,this._delay(function(){delete this.cancelBlur});var i=this.menu.element[0];e(t.target).closest(".ui-menu-item").length||this._delay(function(){var t=this;this.document.one("mousedown",function(s){s.target===t.element[0]||s.target===i||e.contains(i,s.target)||t.close()})})},menufocus:function(t,i){if(this.isNewMenu&&(this.isNewMenu=!1,t.originalEvent&&/^mouse/.test(t.originalEvent.type)))return this.menu.blur(),this.document.one("mousemove",function(){e(t.target).trigger(t.originalEvent)}),undefined;var s=i.item.data("ui-autocomplete-item");!1!==this._trigger("focus",t,{item:s})?t.originalEvent&&/^key/.test(t.originalEvent.type)&&this._value(s.value):this.liveRegion.text(s.value)},menuselect:function(e,t){var i=t.item.data("ui-autocomplete-item"),s=this.previous;this.element[0]!==this.document[0].activeElement&&(this.element.focus(),this.previous=s,this._delay(function(){this.previous=s,this.selectedItem=i})),!1!==this._trigger("select",e,{item:i})&&this._value(i.value),this.term=this._value(),this.close(e),this.selectedItem=i}}),this.liveRegion=e("<span>",{role:"status","aria-live":"polite"}).addClass("ui-helper-hidden-accessible").insertAfter(this.element),this._on(this.window,{beforeunload:function(){this.element.removeAttr("autocomplete")}})},_destroy:function(){clearTimeout(this.searching),this.element.removeClass("ui-autocomplete-input").removeAttr("autocomplete"),this.menu.element.remove(),this.liveRegion.remove()},_setOption:function(e,t){this._super(e,t),"source"===e&&this._initSource(),"appendTo"===e&&this.menu.element.appendTo(this._appendTo()),"disabled"===e&&t&&this.xhr&&this.xhr.abort()},_appendTo:function(){var t=this.options.appendTo;return t&&(t=t.jquery||t.nodeType?e(t):this.document.find(t).eq(0)),t||(t=this.element.closest(".ui-front")),t.length||(t=this.document[0].body),t},_initSource:function(){var t,i,s=this;e.isArray(this.options.source)?(t=this.options.source,this.source=function(i,s){s(e.ui.autocomplete.filter(t,i.term))}):"string"==typeof this.options.source?(i=this.options.source,this.source=function(t,n){s.xhr&&s.xhr.abort(),s.xhr=e.ajax({url:i,data:t,dataType:"json",success:function(e){n(e)},error:function(){n([])}})}):this.source=this.options.source},_searchTimeout:function(e){clearTimeout(this.searching),this.searching=this._delay(function(){this.term!==this._value()&&(this.selectedItem=null,this.search(null,e))},this.options.delay)},search:function(e,t){return e=null!=e?e:this._value(),this.term=this._value(),e.length<this.options.minLength?this.close(t):this._trigger("search",t)!==!1?this._search(e):undefined},_search:function(e){this.pending++,this.element.addClass("ui-autocomplete-loading"),this.cancelSearch=!1,this.source({term:e},this._response())},_response:function(){var e=this,i=++t;return function(s){i===t&&e.__response(s),e.pending--,e.pending||e.element.removeClass("ui-autocomplete-loading")}},__response:function(e){e&&(e=this._normalize(e)),this._trigger("response",null,{content:e}),!this.options.disabled&&e&&e.length&&!this.cancelSearch?(this._suggest(e),this._trigger("open")):this._close()},close:function(e){this.cancelSearch=!0,this._close(e)},_close:function(e){this.menu.element.is(":visible")&&(this.menu.element.hide(),this.menu.blur(),this.isNewMenu=!0,this._trigger("close",e))},_change:function(e){this.previous!==this._value()&&this._trigger("change",e,{item:this.selectedItem})},_normalize:function(t){return t.length&&t[0].label&&t[0].value?t:e.map(t,function(t){return"string"==typeof t?{label:t,value:t}:e.extend({label:t.label||t.value,value:t.value||t.label},t)})},_suggest:function(t){var i=this.menu.element.empty();this._renderMenu(i,t),this.isNewMenu=!0,this.menu.refresh(),i.show(),this._resizeMenu(),i.position(e.extend({of:this.element},this.options.position)),this.options.autoFocus&&this.menu.next()},_resizeMenu:function(){var e=this.menu.element;e.outerWidth(Math.max(e.width("").outerWidth()+1,this.element.outerWidth()))},_renderMenu:function(t,i){var s=this;e.each(i,function(e,i){s._renderItemData(t,i)})},_renderItemData:function(e,t){return this._renderItem(e,t).data("ui-autocomplete-item",t)},_renderItem:function(t,i){return e("<li>").append(e("<a>").text(i.label)).appendTo(t)},_move:function(e,t){return this.menu.element.is(":visible")?this.menu.isFirstItem()&&/^previous/.test(e)||this.menu.isLastItem()&&/^next/.test(e)?(this._value(this.term),this.menu.blur(),undefined):(this.menu[e](t),undefined):(this.search(null,t),undefined)},widget:function(){return this.menu.element},_value:function(){return this.valueMethod.apply(this.element,arguments)},_keyEvent:function(e,t){(!this.isMultiLine||this.menu.element.is(":visible"))&&(this._move(e,t),t.preventDefault())}}),e.extend(e.ui.autocomplete,{escapeRegex:function(e){return e.replace(/[\-\[\]{}()*+?.,\\\^$|#\s]/g,"\\$&")},filter:function(t,i){var s=RegExp(e.ui.autocomplete.escapeRegex(i),"i");return e.grep(t,function(e){return s.test(e.label||e.value||e)})}}),e.widget("ui.autocomplete",e.ui.autocomplete,{options:{messages:{noResults:"No search results.",results:function(e){return e+(e>1?" results are":" result is")+" available, use up and down arrow keys to navigate."}}},__response:function(e){var t;this._superApply(arguments),this.options.disabled||this.cancelSearch||(t=e&&e.length?this.options.messages.results(e.length):this.options.messages.noResults,this.liveRegion.text(t))}})})(jQuery);(function(t){var e,i,s,n,a="ui-button ui-widget ui-state-default ui-corner-all",o="ui-state-hover ui-state-active ",r="ui-button-icons-only ui-button-icon-only ui-button-text-icons ui-button-text-icon-primary ui-button-text-icon-secondary ui-button-text-only",h=function(){var e=t(this).find(":ui-button");setTimeout(function(){e.button("refresh")},1)},l=function(e){var i=e.name,s=e.form,n=t([]);return i&&(i=i.replace(/'/g,"\\'"),n=s?t(s).find("[name='"+i+"']"):t("[name='"+i+"']",e.ownerDocument).filter(function(){return!this.form})),n};t.widget("ui.button",{version:"1.10.2",defaultElement:"<button>",options:{disabled:null,text:!0,label:null,icons:{primary:null,secondary:null}},_create:function(){this.element.closest("form").unbind("reset"+this.eventNamespace).bind("reset"+this.eventNamespace,h),"boolean"!=typeof this.options.disabled?this.options.disabled=!!this.element.prop("disabled"):this.element.prop("disabled",this.options.disabled),this._determineButtonType(),this.hasTitle=!!this.buttonElement.attr("title");var o=this,r=this.options,c="checkbox"===this.type||"radio"===this.type,u=c?"":"ui-state-active",d="ui-state-focus";null===r.label&&(r.label="input"===this.type?this.buttonElement.val():this.buttonElement.html()),this._hoverable(this.buttonElement),this.buttonElement.addClass(a).attr("role","button").bind("mouseenter"+this.eventNamespace,function(){r.disabled||this===e&&t(this).addClass("ui-state-active")}).bind("mouseleave"+this.eventNamespace,function(){r.disabled||t(this).removeClass(u)}).bind("click"+this.eventNamespace,function(t){r.disabled&&(t.preventDefault(),t.stopImmediatePropagation())}),this.element.bind("focus"+this.eventNamespace,function(){o.buttonElement.addClass(d)}).bind("blur"+this.eventNamespace,function(){o.buttonElement.removeClass(d)}),c&&(this.element.bind("change"+this.eventNamespace,function(){n||o.refresh()}),this.buttonElement.bind("mousedown"+this.eventNamespace,function(t){r.disabled||(n=!1,i=t.pageX,s=t.pageY)}).bind("mouseup"+this.eventNamespace,function(t){r.disabled||(i!==t.pageX||s!==t.pageY)&&(n=!0)})),"checkbox"===this.type?this.buttonElement.bind("click"+this.eventNamespace,function(){return r.disabled||n?!1:undefined}):"radio"===this.type?this.buttonElement.bind("click"+this.eventNamespace,function(){if(r.disabled||n)return!1;t(this).addClass("ui-state-active"),o.buttonElement.attr("aria-pressed","true");var e=o.element[0];l(e).not(e).map(function(){return t(this).button("widget")[0]}).removeClass("ui-state-active").attr("aria-pressed","false")}):(this.buttonElement.bind("mousedown"+this.eventNamespace,function(){return r.disabled?!1:(t(this).addClass("ui-state-active"),e=this,o.document.one("mouseup",function(){e=null}),undefined)}).bind("mouseup"+this.eventNamespace,function(){return r.disabled?!1:(t(this).removeClass("ui-state-active"),undefined)}).bind("keydown"+this.eventNamespace,function(e){return r.disabled?!1:((e.keyCode===t.ui.keyCode.SPACE||e.keyCode===t.ui.keyCode.ENTER)&&t(this).addClass("ui-state-active"),undefined)}).bind("keyup"+this.eventNamespace+" blur"+this.eventNamespace,function(){t(this).removeClass("ui-state-active")}),this.buttonElement.is("a")&&this.buttonElement.keyup(function(e){e.keyCode===t.ui.keyCode.SPACE&&t(this).click()})),this._setOption("disabled",r.disabled),this._resetButton()},_determineButtonType:function(){var t,e,i;this.type=this.element.is("[type=checkbox]")?"checkbox":this.element.is("[type=radio]")?"radio":this.element.is("input")?"input":"button","checkbox"===this.type||"radio"===this.type?(t=this.element.parents().last(),e="label[for='"+this.element.attr("id")+"']",this.buttonElement=t.find(e),this.buttonElement.length||(t=t.length?t.siblings():this.element.siblings(),this.buttonElement=t.filter(e),this.buttonElement.length||(this.buttonElement=t.find(e))),this.element.addClass("ui-helper-hidden-accessible"),i=this.element.is(":checked"),i&&this.buttonElement.addClass("ui-state-active"),this.buttonElement.prop("aria-pressed",i)):this.buttonElement=this.element},widget:function(){return this.buttonElement},_destroy:function(){this.element.removeClass("ui-helper-hidden-accessible"),this.buttonElement.removeClass(a+" "+o+" "+r).removeAttr("role").removeAttr("aria-pressed").html(this.buttonElement.find(".ui-button-text").html()),this.hasTitle||this.buttonElement.removeAttr("title")},_setOption:function(t,e){return this._super(t,e),"disabled"===t?(e?this.element.prop("disabled",!0):this.element.prop("disabled",!1),undefined):(this._resetButton(),undefined)},refresh:function(){var e=this.element.is("input, button")?this.element.is(":disabled"):this.element.hasClass("ui-button-disabled");e!==this.options.disabled&&this._setOption("disabled",e),"radio"===this.type?l(this.element[0]).each(function(){t(this).is(":checked")?t(this).button("widget").addClass("ui-state-active").attr("aria-pressed","true"):t(this).button("widget").removeClass("ui-state-active").attr("aria-pressed","false")}):"checkbox"===this.type&&(this.element.is(":checked")?this.buttonElement.addClass("ui-state-active").attr("aria-pressed","true"):this.buttonElement.removeClass("ui-state-active").attr("aria-pressed","false"))},_resetButton:function(){if("input"===this.type)return this.options.label&&this.element.val(this.options.label),undefined;var e=this.buttonElement.removeClass(r),i=t("<span></span>",this.document[0]).addClass("ui-button-text").html(this.options.label).appendTo(e.empty()).text(),s=this.options.icons,n=s.primary&&s.secondary,a=[];s.primary||s.secondary?(this.options.text&&a.push("ui-button-text-icon"+(n?"s":s.primary?"-primary":"-secondary")),s.primary&&e.prepend("<span class='ui-button-icon-primary ui-icon "+s.primary+"'></span>"),s.secondary&&e.append("<span class='ui-button-icon-secondary ui-icon "+s.secondary+"'></span>"),this.options.text||(a.push(n?"ui-button-icons-only":"ui-button-icon-only"),this.hasTitle||e.attr("title",t.trim(i)))):a.push("ui-button-text-only"),e.addClass(a.join(" "))}}),t.widget("ui.buttonset",{version:"1.10.2",options:{items:"button, input[type=button], input[type=submit], input[type=reset], input[type=checkbox], input[type=radio], a, :data(ui-button)"},_create:function(){this.element.addClass("ui-buttonset")},_init:function(){this.refresh()},_setOption:function(t,e){"disabled"===t&&this.buttons.button("option",t,e),this._super(t,e)},refresh:function(){var e="rtl"===this.element.css("direction");this.buttons=this.element.find(this.options.items).filter(":ui-button").button("refresh").end().not(":ui-button").button().end().map(function(){return t(this).button("widget")[0]}).removeClass("ui-corner-all ui-corner-left ui-corner-right").filter(":first").addClass(e?"ui-corner-right":"ui-corner-left").end().filter(":last").addClass(e?"ui-corner-left":"ui-corner-right").end().end()},_destroy:function(){this.element.removeClass("ui-buttonset"),this.buttons.map(function(){return t(this).button("widget")[0]}).removeClass("ui-corner-left ui-corner-right").end().button("destroy")}})})(jQuery);(function(t,e){function i(){this._curInst=null,this._keyEvent=!1,this._disabledInputs=[],this._datepickerShowing=!1,this._inDialog=!1,this._mainDivId="ui-datepicker-div",this._inlineClass="ui-datepicker-inline",this._appendClass="ui-datepicker-append",this._triggerClass="ui-datepicker-trigger",this._dialogClass="ui-datepicker-dialog",this._disableClass="ui-datepicker-disabled",this._unselectableClass="ui-datepicker-unselectable",this._currentClass="ui-datepicker-current-day",this._dayOverClass="ui-datepicker-days-cell-over",this.regional=[],this.regional[""]={closeText:"Done",prevText:"Prev",nextText:"Next",currentText:"Today",monthNames:["January","February","March","April","May","June","July","August","September","October","November","December"],monthNamesShort:["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"],dayNames:["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"],dayNamesShort:["Sun","Mon","Tue","Wed","Thu","Fri","Sat"],dayNamesMin:["Su","Mo","Tu","We","Th","Fr","Sa"],weekHeader:"Wk",dateFormat:"mm/dd/yy",firstDay:0,isRTL:!1,showMonthAfterYear:!1,yearSuffix:""},this._defaults={showOn:"focus",showAnim:"fadeIn",showOptions:{},defaultDate:null,appendText:"",buttonText:"...",buttonImage:"",buttonImageOnly:!1,hideIfNoPrevNext:!1,navigationAsDateFormat:!1,gotoCurrent:!1,changeMonth:!1,changeYear:!1,yearRange:"c-10:c+10",showOtherMonths:!1,selectOtherMonths:!1,showWeek:!1,calculateWeek:this.iso8601Week,shortYearCutoff:"+10",minDate:null,maxDate:null,duration:"fast",beforeShowDay:null,beforeShow:null,onSelect:null,onChangeMonthYear:null,onClose:null,numberOfMonths:1,showCurrentAtPos:0,stepMonths:1,stepBigMonths:12,altField:"",altFormat:"",constrainInput:!0,showButtonPanel:!1,autoSize:!1,disabled:!1},t.extend(this._defaults,this.regional[""]),this.dpDiv=s(t("<div id='"+this._mainDivId+"' class='ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all'></div>"))}function s(e){var i="button, .ui-datepicker-prev, .ui-datepicker-next, .ui-datepicker-calendar td a";return e.delegate(i,"mouseout",function(){t(this).removeClass("ui-state-hover"),-1!==this.className.indexOf("ui-datepicker-prev")&&t(this).removeClass("ui-datepicker-prev-hover"),-1!==this.className.indexOf("ui-datepicker-next")&&t(this).removeClass("ui-datepicker-next-hover")}).delegate(i,"mouseover",function(){t.datepicker._isDisabledDatepicker(a.inline?e.parent()[0]:a.input[0])||(t(this).parents(".ui-datepicker-calendar").find("a").removeClass("ui-state-hover"),t(this).addClass("ui-state-hover"),-1!==this.className.indexOf("ui-datepicker-prev")&&t(this).addClass("ui-datepicker-prev-hover"),-1!==this.className.indexOf("ui-datepicker-next")&&t(this).addClass("ui-datepicker-next-hover"))})}function n(e,i){t.extend(e,i);for(var s in i)null==i[s]&&(e[s]=i[s]);return e}t.extend(t.ui,{datepicker:{version:"1.10.2"}});var a,r="datepicker",o=(new Date).getTime();t.extend(i.prototype,{markerClassName:"hasDatepicker",maxRows:4,_widgetDatepicker:function(){return this.dpDiv},setDefaults:function(t){return n(this._defaults,t||{}),this},_attachDatepicker:function(e,i){var s,n,a;s=e.nodeName.toLowerCase(),n="div"===s||"span"===s,e.id||(this.uuid+=1,e.id="dp"+this.uuid),a=this._newInst(t(e),n),a.settings=t.extend({},i||{}),"input"===s?this._connectDatepicker(e,a):n&&this._inlineDatepicker(e,a)},_newInst:function(e,i){var n=e[0].id.replace(/([^A-Za-z0-9_\-])/g,"\\\\$1");return{id:n,input:e,selectedDay:0,selectedMonth:0,selectedYear:0,drawMonth:0,drawYear:0,inline:i,dpDiv:i?s(t("<div class='"+this._inlineClass+" ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all'></div>")):this.dpDiv}},_connectDatepicker:function(e,i){var s=t(e);i.append=t([]),i.trigger=t([]),s.hasClass(this.markerClassName)||(this._attachments(s,i),s.addClass(this.markerClassName).keydown(this._doKeyDown).keypress(this._doKeyPress).keyup(this._doKeyUp),this._autoSize(i),t.data(e,r,i),i.settings.disabled&&this._disableDatepicker(e))},_attachments:function(e,i){var s,n,a,r=this._get(i,"appendText"),o=this._get(i,"isRTL");i.append&&i.append.remove(),r&&(i.append=t("<span class='"+this._appendClass+"'>"+r+"</span>"),e[o?"before":"after"](i.append)),e.unbind("focus",this._showDatepicker),i.trigger&&i.trigger.remove(),s=this._get(i,"showOn"),("focus"===s||"both"===s)&&e.focus(this._showDatepicker),("button"===s||"both"===s)&&(n=this._get(i,"buttonText"),a=this._get(i,"buttonImage"),i.trigger=t(this._get(i,"buttonImageOnly")?t("<img/>").addClass(this._triggerClass).attr({src:a,alt:n,title:n}):t("<button type='button'></button>").addClass(this._triggerClass).html(a?t("<img/>").attr({src:a,alt:n,title:n}):n)),e[o?"before":"after"](i.trigger),i.trigger.click(function(){return t.datepicker._datepickerShowing&&t.datepicker._lastInput===e[0]?t.datepicker._hideDatepicker():t.datepicker._datepickerShowing&&t.datepicker._lastInput!==e[0]?(t.datepicker._hideDatepicker(),t.datepicker._showDatepicker(e[0])):t.datepicker._showDatepicker(e[0]),!1}))},_autoSize:function(t){if(this._get(t,"autoSize")&&!t.inline){var e,i,s,n,a=new Date(2009,11,20),r=this._get(t,"dateFormat");r.match(/[DM]/)&&(e=function(t){for(i=0,s=0,n=0;t.length>n;n++)t[n].length>i&&(i=t[n].length,s=n);return s},a.setMonth(e(this._get(t,r.match(/MM/)?"monthNames":"monthNamesShort"))),a.setDate(e(this._get(t,r.match(/DD/)?"dayNames":"dayNamesShort"))+20-a.getDay())),t.input.attr("size",this._formatDate(t,a).length)}},_inlineDatepicker:function(e,i){var s=t(e);s.hasClass(this.markerClassName)||(s.addClass(this.markerClassName).append(i.dpDiv),t.data(e,r,i),this._setDate(i,this._getDefaultDate(i),!0),this._updateDatepicker(i),this._updateAlternate(i),i.settings.disabled&&this._disableDatepicker(e),i.dpDiv.css("display","block"))},_dialogDatepicker:function(e,i,s,a,o){var h,l,c,u,d,p=this._dialogInst;return p||(this.uuid+=1,h="dp"+this.uuid,this._dialogInput=t("<input type='text' id='"+h+"' style='position: absolute; top: -100px; width: 0px;'/>"),this._dialogInput.keydown(this._doKeyDown),t("body").append(this._dialogInput),p=this._dialogInst=this._newInst(this._dialogInput,!1),p.settings={},t.data(this._dialogInput[0],r,p)),n(p.settings,a||{}),i=i&&i.constructor===Date?this._formatDate(p,i):i,this._dialogInput.val(i),this._pos=o?o.length?o:[o.pageX,o.pageY]:null,this._pos||(l=document.documentElement.clientWidth,c=document.documentElement.clientHeight,u=document.documentElement.scrollLeft||document.body.scrollLeft,d=document.documentElement.scrollTop||document.body.scrollTop,this._pos=[l/2-100+u,c/2-150+d]),this._dialogInput.css("left",this._pos[0]+20+"px").css("top",this._pos[1]+"px"),p.settings.onSelect=s,this._inDialog=!0,this.dpDiv.addClass(this._dialogClass),this._showDatepicker(this._dialogInput[0]),t.blockUI&&t.blockUI(this.dpDiv),t.data(this._dialogInput[0],r,p),this},_destroyDatepicker:function(e){var i,s=t(e),n=t.data(e,r);s.hasClass(this.markerClassName)&&(i=e.nodeName.toLowerCase(),t.removeData(e,r),"input"===i?(n.append.remove(),n.trigger.remove(),s.removeClass(this.markerClassName).unbind("focus",this._showDatepicker).unbind("keydown",this._doKeyDown).unbind("keypress",this._doKeyPress).unbind("keyup",this._doKeyUp)):("div"===i||"span"===i)&&s.removeClass(this.markerClassName).empty())},_enableDatepicker:function(e){var i,s,n=t(e),a=t.data(e,r);n.hasClass(this.markerClassName)&&(i=e.nodeName.toLowerCase(),"input"===i?(e.disabled=!1,a.trigger.filter("button").each(function(){this.disabled=!1}).end().filter("img").css({opacity:"1.0",cursor:""})):("div"===i||"span"===i)&&(s=n.children("."+this._inlineClass),s.children().removeClass("ui-state-disabled"),s.find("select.ui-datepicker-month, select.ui-datepicker-year").prop("disabled",!1)),this._disabledInputs=t.map(this._disabledInputs,function(t){return t===e?null:t}))},_disableDatepicker:function(e){var i,s,n=t(e),a=t.data(e,r);n.hasClass(this.markerClassName)&&(i=e.nodeName.toLowerCase(),"input"===i?(e.disabled=!0,a.trigger.filter("button").each(function(){this.disabled=!0}).end().filter("img").css({opacity:"0.5",cursor:"default"})):("div"===i||"span"===i)&&(s=n.children("."+this._inlineClass),s.children().addClass("ui-state-disabled"),s.find("select.ui-datepicker-month, select.ui-datepicker-year").prop("disabled",!0)),this._disabledInputs=t.map(this._disabledInputs,function(t){return t===e?null:t}),this._disabledInputs[this._disabledInputs.length]=e)},_isDisabledDatepicker:function(t){if(!t)return!1;for(var e=0;this._disabledInputs.length>e;e++)if(this._disabledInputs[e]===t)return!0;return!1},_getInst:function(e){try{return t.data(e,r)}catch(i){throw"Missing instance data for this datepicker"}},_optionDatepicker:function(i,s,a){var r,o,h,l,c=this._getInst(i);return 2===arguments.length&&"string"==typeof s?"defaults"===s?t.extend({},t.datepicker._defaults):c?"all"===s?t.extend({},c.settings):this._get(c,s):null:(r=s||{},"string"==typeof s&&(r={},r[s]=a),c&&(this._curInst===c&&this._hideDatepicker(),o=this._getDateDatepicker(i,!0),h=this._getMinMaxDate(c,"min"),l=this._getMinMaxDate(c,"max"),n(c.settings,r),null!==h&&r.dateFormat!==e&&r.minDate===e&&(c.settings.minDate=this._formatDate(c,h)),null!==l&&r.dateFormat!==e&&r.maxDate===e&&(c.settings.maxDate=this._formatDate(c,l)),"disabled"in r&&(r.disabled?this._disableDatepicker(i):this._enableDatepicker(i)),this._attachments(t(i),c),this._autoSize(c),this._setDate(c,o),this._updateAlternate(c),this._updateDatepicker(c)),e)},_changeDatepicker:function(t,e,i){this._optionDatepicker(t,e,i)},_refreshDatepicker:function(t){var e=this._getInst(t);e&&this._updateDatepicker(e)},_setDateDatepicker:function(t,e){var i=this._getInst(t);i&&(this._setDate(i,e),this._updateDatepicker(i),this._updateAlternate(i))},_getDateDatepicker:function(t,e){var i=this._getInst(t);return i&&!i.inline&&this._setDateFromField(i,e),i?this._getDate(i):null},_doKeyDown:function(e){var i,s,n,a=t.datepicker._getInst(e.target),r=!0,o=a.dpDiv.is(".ui-datepicker-rtl");if(a._keyEvent=!0,t.datepicker._datepickerShowing)switch(e.keyCode){case 9:t.datepicker._hideDatepicker(),r=!1;break;case 13:return n=t("td."+t.datepicker._dayOverClass+":not(."+t.datepicker._currentClass+")",a.dpDiv),n[0]&&t.datepicker._selectDay(e.target,a.selectedMonth,a.selectedYear,n[0]),i=t.datepicker._get(a,"onSelect"),i?(s=t.datepicker._formatDate(a),i.apply(a.input?a.input[0]:null,[s,a])):t.datepicker._hideDatepicker(),!1;case 27:t.datepicker._hideDatepicker();break;case 33:t.datepicker._adjustDate(e.target,e.ctrlKey?-t.datepicker._get(a,"stepBigMonths"):-t.datepicker._get(a,"stepMonths"),"M");break;case 34:t.datepicker._adjustDate(e.target,e.ctrlKey?+t.datepicker._get(a,"stepBigMonths"):+t.datepicker._get(a,"stepMonths"),"M");break;case 35:(e.ctrlKey||e.metaKey)&&t.datepicker._clearDate(e.target),r=e.ctrlKey||e.metaKey;break;case 36:(e.ctrlKey||e.metaKey)&&t.datepicker._gotoToday(e.target),r=e.ctrlKey||e.metaKey;break;case 37:(e.ctrlKey||e.metaKey)&&t.datepicker._adjustDate(e.target,o?1:-1,"D"),r=e.ctrlKey||e.metaKey,e.originalEvent.altKey&&t.datepicker._adjustDate(e.target,e.ctrlKey?-t.datepicker._get(a,"stepBigMonths"):-t.datepicker._get(a,"stepMonths"),"M");break;case 38:(e.ctrlKey||e.metaKey)&&t.datepicker._adjustDate(e.target,-7,"D"),r=e.ctrlKey||e.metaKey;break;case 39:(e.ctrlKey||e.metaKey)&&t.datepicker._adjustDate(e.target,o?-1:1,"D"),r=e.ctrlKey||e.metaKey,e.originalEvent.altKey&&t.datepicker._adjustDate(e.target,e.ctrlKey?+t.datepicker._get(a,"stepBigMonths"):+t.datepicker._get(a,"stepMonths"),"M");break;case 40:(e.ctrlKey||e.metaKey)&&t.datepicker._adjustDate(e.target,7,"D"),r=e.ctrlKey||e.metaKey;break;default:r=!1}else 36===e.keyCode&&e.ctrlKey?t.datepicker._showDatepicker(this):r=!1;r&&(e.preventDefault(),e.stopPropagation())},_doKeyPress:function(i){var s,n,a=t.datepicker._getInst(i.target);return t.datepicker._get(a,"constrainInput")?(s=t.datepicker._possibleChars(t.datepicker._get(a,"dateFormat")),n=String.fromCharCode(null==i.charCode?i.keyCode:i.charCode),i.ctrlKey||i.metaKey||" ">n||!s||s.indexOf(n)>-1):e},_doKeyUp:function(e){var i,s=t.datepicker._getInst(e.target);if(s.input.val()!==s.lastVal)try{i=t.datepicker.parseDate(t.datepicker._get(s,"dateFormat"),s.input?s.input.val():null,t.datepicker._getFormatConfig(s)),i&&(t.datepicker._setDateFromField(s),t.datepicker._updateAlternate(s),t.datepicker._updateDatepicker(s))}catch(n){}return!0},_showDatepicker:function(e){if(e=e.target||e,"input"!==e.nodeName.toLowerCase()&&(e=t("input",e.parentNode)[0]),!t.datepicker._isDisabledDatepicker(e)&&t.datepicker._lastInput!==e){var i,s,a,r,o,h,l;i=t.datepicker._getInst(e),t.datepicker._curInst&&t.datepicker._curInst!==i&&(t.datepicker._curInst.dpDiv.stop(!0,!0),i&&t.datepicker._datepickerShowing&&t.datepicker._hideDatepicker(t.datepicker._curInst.input[0])),s=t.datepicker._get(i,"beforeShow"),a=s?s.apply(e,[e,i]):{},a!==!1&&(n(i.settings,a),i.lastVal=null,t.datepicker._lastInput=e,t.datepicker._setDateFromField(i),t.datepicker._inDialog&&(e.value=""),t.datepicker._pos||(t.datepicker._pos=t.datepicker._findPos(e),t.datepicker._pos[1]+=e.offsetHeight),r=!1,t(e).parents().each(function(){return r|="fixed"===t(this).css("position"),!r}),o={left:t.datepicker._pos[0],top:t.datepicker._pos[1]},t.datepicker._pos=null,i.dpDiv.empty(),i.dpDiv.css({position:"absolute",display:"block",top:"-1000px"}),t.datepicker._updateDatepicker(i),o=t.datepicker._checkOffset(i,o,r),i.dpDiv.css({position:t.datepicker._inDialog&&t.blockUI?"static":r?"fixed":"absolute",display:"none",left:o.left+"px",top:o.top+"px"}),i.inline||(h=t.datepicker._get(i,"showAnim"),l=t.datepicker._get(i,"duration"),i.dpDiv.zIndex(t(e).zIndex()+1),t.datepicker._datepickerShowing=!0,t.effects&&t.effects.effect[h]?i.dpDiv.show(h,t.datepicker._get(i,"showOptions"),l):i.dpDiv[h||"show"](h?l:null),i.input.is(":visible")&&!i.input.is(":disabled")&&i.input.focus(),t.datepicker._curInst=i))}},_updateDatepicker:function(e){this.maxRows=4,a=e,e.dpDiv.empty().append(this._generateHTML(e)),this._attachHandlers(e),e.dpDiv.find("."+this._dayOverClass+" a").mouseover();var i,s=this._getNumberOfMonths(e),n=s[1],r=17;e.dpDiv.removeClass("ui-datepicker-multi-2 ui-datepicker-multi-3 ui-datepicker-multi-4").width(""),n>1&&e.dpDiv.addClass("ui-datepicker-multi-"+n).css("width",r*n+"em"),e.dpDiv[(1!==s[0]||1!==s[1]?"add":"remove")+"Class"]("ui-datepicker-multi"),e.dpDiv[(this._get(e,"isRTL")?"add":"remove")+"Class"]("ui-datepicker-rtl"),e===t.datepicker._curInst&&t.datepicker._datepickerShowing&&e.input&&e.input.is(":visible")&&!e.input.is(":disabled")&&e.input[0]!==document.activeElement&&e.input.focus(),e.yearshtml&&(i=e.yearshtml,setTimeout(function(){i===e.yearshtml&&e.yearshtml&&e.dpDiv.find("select.ui-datepicker-year:first").replaceWith(e.yearshtml),i=e.yearshtml=null},0))},_getBorders:function(t){var e=function(t){return{thin:1,medium:2,thick:3}[t]||t};return[parseFloat(e(t.css("border-left-width"))),parseFloat(e(t.css("border-top-width")))]},_checkOffset:function(e,i,s){var n=e.dpDiv.outerWidth(),a=e.dpDiv.outerHeight(),r=e.input?e.input.outerWidth():0,o=e.input?e.input.outerHeight():0,h=document.documentElement.clientWidth+(s?0:t(document).scrollLeft()),l=document.documentElement.clientHeight+(s?0:t(document).scrollTop());return i.left-=this._get(e,"isRTL")?n-r:0,i.left-=s&&i.left===e.input.offset().left?t(document).scrollLeft():0,i.top-=s&&i.top===e.input.offset().top+o?t(document).scrollTop():0,i.left-=Math.min(i.left,i.left+n>h&&h>n?Math.abs(i.left+n-h):0),i.top-=Math.min(i.top,i.top+a>l&&l>a?Math.abs(a+o):0),i},_findPos:function(e){for(var i,s=this._getInst(e),n=this._get(s,"isRTL");e&&("hidden"===e.type||1!==e.nodeType||t.expr.filters.hidden(e));)e=e[n?"previousSibling":"nextSibling"];return i=t(e).offset(),[i.left,i.top]},_hideDatepicker:function(e){var i,s,n,a,o=this._curInst;!o||e&&o!==t.data(e,r)||this._datepickerShowing&&(i=this._get(o,"showAnim"),s=this._get(o,"duration"),n=function(){t.datepicker._tidyDialog(o)},t.effects&&(t.effects.effect[i]||t.effects[i])?o.dpDiv.hide(i,t.datepicker._get(o,"showOptions"),s,n):o.dpDiv["slideDown"===i?"slideUp":"fadeIn"===i?"fadeOut":"hide"](i?s:null,n),i||n(),this._datepickerShowing=!1,a=this._get(o,"onClose"),a&&a.apply(o.input?o.input[0]:null,[o.input?o.input.val():"",o]),this._lastInput=null,this._inDialog&&(this._dialogInput.css({position:"absolute",left:"0",top:"-100px"}),t.blockUI&&(t.unblockUI(),t("body").append(this.dpDiv))),this._inDialog=!1)},_tidyDialog:function(t){t.dpDiv.removeClass(this._dialogClass).unbind(".ui-datepicker-calendar")},_checkExternalClick:function(e){if(t.datepicker._curInst){var i=t(e.target),s=t.datepicker._getInst(i[0]);(i[0].id!==t.datepicker._mainDivId&&0===i.parents("#"+t.datepicker._mainDivId).length&&!i.hasClass(t.datepicker.markerClassName)&&!i.closest("."+t.datepicker._triggerClass).length&&t.datepicker._datepickerShowing&&(!t.datepicker._inDialog||!t.blockUI)||i.hasClass(t.datepicker.markerClassName)&&t.datepicker._curInst!==s)&&t.datepicker._hideDatepicker()}},_adjustDate:function(e,i,s){var n=t(e),a=this._getInst(n[0]);this._isDisabledDatepicker(n[0])||(this._adjustInstDate(a,i+("M"===s?this._get(a,"showCurrentAtPos"):0),s),this._updateDatepicker(a))},_gotoToday:function(e){var i,s=t(e),n=this._getInst(s[0]);this._get(n,"gotoCurrent")&&n.currentDay?(n.selectedDay=n.currentDay,n.drawMonth=n.selectedMonth=n.currentMonth,n.drawYear=n.selectedYear=n.currentYear):(i=new Date,n.selectedDay=i.getDate(),n.drawMonth=n.selectedMonth=i.getMonth(),n.drawYear=n.selectedYear=i.getFullYear()),this._notifyChange(n),this._adjustDate(s)},_selectMonthYear:function(e,i,s){var n=t(e),a=this._getInst(n[0]);a["selected"+("M"===s?"Month":"Year")]=a["draw"+("M"===s?"Month":"Year")]=parseInt(i.options[i.selectedIndex].value,10),this._notifyChange(a),this._adjustDate(n)},_selectDay:function(e,i,s,n){var a,r=t(e);t(n).hasClass(this._unselectableClass)||this._isDisabledDatepicker(r[0])||(a=this._getInst(r[0]),a.selectedDay=a.currentDay=t("a",n).html(),a.selectedMonth=a.currentMonth=i,a.selectedYear=a.currentYear=s,this._selectDate(e,this._formatDate(a,a.currentDay,a.currentMonth,a.currentYear)))},_clearDate:function(e){var i=t(e);this._selectDate(i,"")},_selectDate:function(e,i){var s,n=t(e),a=this._getInst(n[0]);i=null!=i?i:this._formatDate(a),a.input&&a.input.val(i),this._updateAlternate(a),s=this._get(a,"onSelect"),s?s.apply(a.input?a.input[0]:null,[i,a]):a.input&&a.input.trigger("change"),a.inline?this._updateDatepicker(a):(this._hideDatepicker(),this._lastInput=a.input[0],"object"!=typeof a.input[0]&&a.input.focus(),this._lastInput=null)},_updateAlternate:function(e){var i,s,n,a=this._get(e,"altField");a&&(i=this._get(e,"altFormat")||this._get(e,"dateFormat"),s=this._getDate(e),n=this.formatDate(i,s,this._getFormatConfig(e)),t(a).each(function(){t(this).val(n)}))},noWeekends:function(t){var e=t.getDay();return[e>0&&6>e,""]},iso8601Week:function(t){var e,i=new Date(t.getTime());return i.setDate(i.getDate()+4-(i.getDay()||7)),e=i.getTime(),i.setMonth(0),i.setDate(1),Math.floor(Math.round((e-i)/864e5)/7)+1},parseDate:function(i,s,n){if(null==i||null==s)throw"Invalid arguments";if(s="object"==typeof s?""+s:s+"",""===s)return null;var a,r,o,h,l=0,c=(n?n.shortYearCutoff:null)||this._defaults.shortYearCutoff,u="string"!=typeof c?c:(new Date).getFullYear()%100+parseInt(c,10),d=(n?n.dayNamesShort:null)||this._defaults.dayNamesShort,p=(n?n.dayNames:null)||this._defaults.dayNames,f=(n?n.monthNamesShort:null)||this._defaults.monthNamesShort,m=(n?n.monthNames:null)||this._defaults.monthNames,g=-1,v=-1,_=-1,b=-1,y=!1,w=function(t){var e=i.length>a+1&&i.charAt(a+1)===t;return e&&a++,e},k=function(t){var e=w(t),i="@"===t?14:"!"===t?20:"y"===t&&e?4:"o"===t?3:2,n=RegExp("^\\d{1,"+i+"}"),a=s.substring(l).match(n);if(!a)throw"Missing number at position "+l;return l+=a[0].length,parseInt(a[0],10)},x=function(i,n,a){var r=-1,o=t.map(w(i)?a:n,function(t,e){return[[e,t]]}).sort(function(t,e){return-(t[1].length-e[1].length)});if(t.each(o,function(t,i){var n=i[1];return s.substr(l,n.length).toLowerCase()===n.toLowerCase()?(r=i[0],l+=n.length,!1):e}),-1!==r)return r+1;throw"Unknown name at position "+l},D=function(){if(s.charAt(l)!==i.charAt(a))throw"Unexpected literal at position "+l;l++};for(a=0;i.length>a;a++)if(y)"'"!==i.charAt(a)||w("'")?D():y=!1;else switch(i.charAt(a)){case"d":_=k("d");break;case"D":x("D",d,p);break;case"o":b=k("o");break;case"m":v=k("m");break;case"M":v=x("M",f,m);break;case"y":g=k("y");break;case"@":h=new Date(k("@")),g=h.getFullYear(),v=h.getMonth()+1,_=h.getDate();break;case"!":h=new Date((k("!")-this._ticksTo1970)/1e4),g=h.getFullYear(),v=h.getMonth()+1,_=h.getDate();break;case"'":w("'")?D():y=!0;break;default:D()}if(s.length>l&&(o=s.substr(l),!/^\s+/.test(o)))throw"Extra/unparsed characters found in date: "+o;if(-1===g?g=(new Date).getFullYear():100>g&&(g+=(new Date).getFullYear()-(new Date).getFullYear()%100+(u>=g?0:-100)),b>-1)for(v=1,_=b;;){if(r=this._getDaysInMonth(g,v-1),r>=_)break;v++,_-=r}if(h=this._daylightSavingAdjust(new Date(g,v-1,_)),h.getFullYear()!==g||h.getMonth()+1!==v||h.getDate()!==_)throw"Invalid date";return h},ATOM:"yy-mm-dd",COOKIE:"D, dd M yy",ISO_8601:"yy-mm-dd",RFC_822:"D, d M y",RFC_850:"DD, dd-M-y",RFC_1036:"D, d M y",RFC_1123:"D, d M yy",RFC_2822:"D, d M yy",RSS:"D, d M y",TICKS:"!",TIMESTAMP:"@",W3C:"yy-mm-dd",_ticksTo1970:1e7*60*60*24*(718685+Math.floor(492.5)-Math.floor(19.7)+Math.floor(4.925)),formatDate:function(t,e,i){if(!e)return"";var s,n=(i?i.dayNamesShort:null)||this._defaults.dayNamesShort,a=(i?i.dayNames:null)||this._defaults.dayNames,r=(i?i.monthNamesShort:null)||this._defaults.monthNamesShort,o=(i?i.monthNames:null)||this._defaults.monthNames,h=function(e){var i=t.length>s+1&&t.charAt(s+1)===e;return i&&s++,i},l=function(t,e,i){var s=""+e;if(h(t))for(;i>s.length;)s="0"+s;return s},c=function(t,e,i,s){return h(t)?s[e]:i[e]},u="",d=!1;if(e)for(s=0;t.length>s;s++)if(d)"'"!==t.charAt(s)||h("'")?u+=t.charAt(s):d=!1;else switch(t.charAt(s)){case"d":u+=l("d",e.getDate(),2);break;case"D":u+=c("D",e.getDay(),n,a);break;case"o":u+=l("o",Math.round((new Date(e.getFullYear(),e.getMonth(),e.getDate()).getTime()-new Date(e.getFullYear(),0,0).getTime())/864e5),3);break;case"m":u+=l("m",e.getMonth()+1,2);break;case"M":u+=c("M",e.getMonth(),r,o);break;case"y":u+=h("y")?e.getFullYear():(10>e.getYear()%100?"0":"")+e.getYear()%100;break;case"@":u+=e.getTime();break;case"!":u+=1e4*e.getTime()+this._ticksTo1970;break;case"'":h("'")?u+="'":d=!0;break;default:u+=t.charAt(s)}return u},_possibleChars:function(t){var e,i="",s=!1,n=function(i){var s=t.length>e+1&&t.charAt(e+1)===i;return s&&e++,s};for(e=0;t.length>e;e++)if(s)"'"!==t.charAt(e)||n("'")?i+=t.charAt(e):s=!1;else switch(t.charAt(e)){case"d":case"m":case"y":case"@":i+="0123456789";break;case"D":case"M":return null;case"'":n("'")?i+="'":s=!0;break;default:i+=t.charAt(e)}return i},_get:function(t,i){return t.settings[i]!==e?t.settings[i]:this._defaults[i]},_setDateFromField:function(t,e){if(t.input.val()!==t.lastVal){var i=this._get(t,"dateFormat"),s=t.lastVal=t.input?t.input.val():null,n=this._getDefaultDate(t),a=n,r=this._getFormatConfig(t);try{a=this.parseDate(i,s,r)||n}catch(o){s=e?"":s}t.selectedDay=a.getDate(),t.drawMonth=t.selectedMonth=a.getMonth(),t.drawYear=t.selectedYear=a.getFullYear(),t.currentDay=s?a.getDate():0,t.currentMonth=s?a.getMonth():0,t.currentYear=s?a.getFullYear():0,this._adjustInstDate(t)}},_getDefaultDate:function(t){return this._restrictMinMax(t,this._determineDate(t,this._get(t,"defaultDate"),new Date))},_determineDate:function(e,i,s){var n=function(t){var e=new Date;return e.setDate(e.getDate()+t),e},a=function(i){try{return t.datepicker.parseDate(t.datepicker._get(e,"dateFormat"),i,t.datepicker._getFormatConfig(e))}catch(s){}for(var n=(i.toLowerCase().match(/^c/)?t.datepicker._getDate(e):null)||new Date,a=n.getFullYear(),r=n.getMonth(),o=n.getDate(),h=/([+\-]?[0-9]+)\s*(d|D|w|W|m|M|y|Y)?/g,l=h.exec(i);l;){switch(l[2]||"d"){case"d":case"D":o+=parseInt(l[1],10);break;case"w":case"W":o+=7*parseInt(l[1],10);break;case"m":case"M":r+=parseInt(l[1],10),o=Math.min(o,t.datepicker._getDaysInMonth(a,r));break;case"y":case"Y":a+=parseInt(l[1],10),o=Math.min(o,t.datepicker._getDaysInMonth(a,r))}l=h.exec(i)}return new Date(a,r,o)},r=null==i||""===i?s:"string"==typeof i?a(i):"number"==typeof i?isNaN(i)?s:n(i):new Date(i.getTime());return r=r&&"Invalid Date"==""+r?s:r,r&&(r.setHours(0),r.setMinutes(0),r.setSeconds(0),r.setMilliseconds(0)),this._daylightSavingAdjust(r)},_daylightSavingAdjust:function(t){return t?(t.setHours(t.getHours()>12?t.getHours()+2:0),t):null},_setDate:function(t,e,i){var s=!e,n=t.selectedMonth,a=t.selectedYear,r=this._restrictMinMax(t,this._determineDate(t,e,new Date));t.selectedDay=t.currentDay=r.getDate(),t.drawMonth=t.selectedMonth=t.currentMonth=r.getMonth(),t.drawYear=t.selectedYear=t.currentYear=r.getFullYear(),n===t.selectedMonth&&a===t.selectedYear||i||this._notifyChange(t),this._adjustInstDate(t),t.input&&t.input.val(s?"":this._formatDate(t))},_getDate:function(t){var e=!t.currentYear||t.input&&""===t.input.val()?null:this._daylightSavingAdjust(new Date(t.currentYear,t.currentMonth,t.currentDay));return e},_attachHandlers:function(e){var i=this._get(e,"stepMonths"),s="#"+e.id.replace(/\\\\/g,"\\");e.dpDiv.find("[data-handler]").map(function(){var e={prev:function(){window["DP_jQuery_"+o].datepicker._adjustDate(s,-i,"M")},next:function(){window["DP_jQuery_"+o].datepicker._adjustDate(s,+i,"M")},hide:function(){window["DP_jQuery_"+o].datepicker._hideDatepicker()},today:function(){window["DP_jQuery_"+o].datepicker._gotoToday(s)},selectDay:function(){return window["DP_jQuery_"+o].datepicker._selectDay(s,+this.getAttribute("data-month"),+this.getAttribute("data-year"),this),!1},selectMonth:function(){return window["DP_jQuery_"+o].datepicker._selectMonthYear(s,this,"M"),!1},selectYear:function(){return window["DP_jQuery_"+o].datepicker._selectMonthYear(s,this,"Y"),!1}};t(this).bind(this.getAttribute("data-event"),e[this.getAttribute("data-handler")])})},_generateHTML:function(t){var e,i,s,n,a,r,o,h,l,c,u,d,p,f,m,g,v,_,b,y,w,k,x,D,T,C,S,M,N,I,P,A,z,H,E,F,O,W,j,R=new Date,L=this._daylightSavingAdjust(new Date(R.getFullYear(),R.getMonth(),R.getDate())),Y=this._get(t,"isRTL"),B=this._get(t,"showButtonPanel"),J=this._get(t,"hideIfNoPrevNext"),Q=this._get(t,"navigationAsDateFormat"),K=this._getNumberOfMonths(t),V=this._get(t,"showCurrentAtPos"),U=this._get(t,"stepMonths"),q=1!==K[0]||1!==K[1],X=this._daylightSavingAdjust(t.currentDay?new Date(t.currentYear,t.currentMonth,t.currentDay):new Date(9999,9,9)),G=this._getMinMaxDate(t,"min"),$=this._getMinMaxDate(t,"max"),Z=t.drawMonth-V,te=t.drawYear;if(0>Z&&(Z+=12,te--),$)for(e=this._daylightSavingAdjust(new Date($.getFullYear(),$.getMonth()-K[0]*K[1]+1,$.getDate())),e=G&&G>e?G:e;this._daylightSavingAdjust(new Date(te,Z,1))>e;)Z--,0>Z&&(Z=11,te--);for(t.drawMonth=Z,t.drawYear=te,i=this._get(t,"prevText"),i=Q?this.formatDate(i,this._daylightSavingAdjust(new Date(te,Z-U,1)),this._getFormatConfig(t)):i,s=this._canAdjustMonth(t,-1,te,Z)?"<a class='ui-datepicker-prev ui-corner-all' data-handler='prev' data-event='click' title='"+i+"'><span class='ui-icon ui-icon-circle-triangle-"+(Y?"e":"w")+"'>"+i+"</span></a>":J?"":"<a class='ui-datepicker-prev ui-corner-all ui-state-disabled' title='"+i+"'><span class='ui-icon ui-icon-circle-triangle-"+(Y?"e":"w")+"'>"+i+"</span></a>",n=this._get(t,"nextText"),n=Q?this.formatDate(n,this._daylightSavingAdjust(new Date(te,Z+U,1)),this._getFormatConfig(t)):n,a=this._canAdjustMonth(t,1,te,Z)?"<a class='ui-datepicker-next ui-corner-all' data-handler='next' data-event='click' title='"+n+"'><span class='ui-icon ui-icon-circle-triangle-"+(Y?"w":"e")+"'>"+n+"</span></a>":J?"":"<a class='ui-datepicker-next ui-corner-all ui-state-disabled' title='"+n+"'><span class='ui-icon ui-icon-circle-triangle-"+(Y?"w":"e")+"'>"+n+"</span></a>",r=this._get(t,"currentText"),o=this._get(t,"gotoCurrent")&&t.currentDay?X:L,r=Q?this.formatDate(r,o,this._getFormatConfig(t)):r,h=t.inline?"":"<button type='button' class='ui-datepicker-close ui-state-default ui-priority-primary ui-corner-all' data-handler='hide' data-event='click'>"+this._get(t,"closeText")+"</button>",l=B?"<div class='ui-datepicker-buttonpane ui-widget-content'>"+(Y?h:"")+(this._isInRange(t,o)?"<button type='button' class='ui-datepicker-current ui-state-default ui-priority-secondary ui-corner-all' data-handler='today' data-event='click'>"+r+"</button>":"")+(Y?"":h)+"</div>":"",c=parseInt(this._get(t,"firstDay"),10),c=isNaN(c)?0:c,u=this._get(t,"showWeek"),d=this._get(t,"dayNames"),p=this._get(t,"dayNamesMin"),f=this._get(t,"monthNames"),m=this._get(t,"monthNamesShort"),g=this._get(t,"beforeShowDay"),v=this._get(t,"showOtherMonths"),_=this._get(t,"selectOtherMonths"),b=this._getDefaultDate(t),y="",k=0;K[0]>k;k++){for(x="",this.maxRows=4,D=0;K[1]>D;D++){if(T=this._daylightSavingAdjust(new Date(te,Z,t.selectedDay)),C=" ui-corner-all",S="",q){if(S+="<div class='ui-datepicker-group",K[1]>1)switch(D){case 0:S+=" ui-datepicker-group-first",C=" ui-corner-"+(Y?"right":"left");break;case K[1]-1:S+=" ui-datepicker-group-last",C=" ui-corner-"+(Y?"left":"right");break;default:S+=" ui-datepicker-group-middle",C=""}S+="'>"}for(S+="<div class='ui-datepicker-header ui-widget-header ui-helper-clearfix"+C+"'>"+(/all|left/.test(C)&&0===k?Y?a:s:"")+(/all|right/.test(C)&&0===k?Y?s:a:"")+this._generateMonthYearHeader(t,Z,te,G,$,k>0||D>0,f,m)+"</div><table class='ui-datepicker-calendar'><thead>"+"<tr>",M=u?"<th class='ui-datepicker-week-col'>"+this._get(t,"weekHeader")+"</th>":"",w=0;7>w;w++)N=(w+c)%7,M+="<th"+((w+c+6)%7>=5?" class='ui-datepicker-week-end'":"")+">"+"<span title='"+d[N]+"'>"+p[N]+"</span></th>";for(S+=M+"</tr></thead><tbody>",I=this._getDaysInMonth(te,Z),te===t.selectedYear&&Z===t.selectedMonth&&(t.selectedDay=Math.min(t.selectedDay,I)),P=(this._getFirstDayOfMonth(te,Z)-c+7)%7,A=Math.ceil((P+I)/7),z=q?this.maxRows>A?this.maxRows:A:A,this.maxRows=z,H=this._daylightSavingAdjust(new Date(te,Z,1-P)),E=0;z>E;E++){for(S+="<tr>",F=u?"<td class='ui-datepicker-week-col'>"+this._get(t,"calculateWeek")(H)+"</td>":"",w=0;7>w;w++)O=g?g.apply(t.input?t.input[0]:null,[H]):[!0,""],W=H.getMonth()!==Z,j=W&&!_||!O[0]||G&&G>H||$&&H>$,F+="<td class='"+((w+c+6)%7>=5?" ui-datepicker-week-end":"")+(W?" ui-datepicker-other-month":"")+(H.getTime()===T.getTime()&&Z===t.selectedMonth&&t._keyEvent||b.getTime()===H.getTime()&&b.getTime()===T.getTime()?" "+this._dayOverClass:"")+(j?" "+this._unselectableClass+" ui-state-disabled":"")+(W&&!v?"":" "+O[1]+(H.getTime()===X.getTime()?" "+this._currentClass:"")+(H.getTime()===L.getTime()?" ui-datepicker-today":""))+"'"+(W&&!v||!O[2]?"":" title='"+O[2].replace(/'/g,"&#39;")+"'")+(j?"":" data-handler='selectDay' data-event='click' data-month='"+H.getMonth()+"' data-year='"+H.getFullYear()+"'")+">"+(W&&!v?"&#xa0;":j?"<span class='ui-state-default'>"+H.getDate()+"</span>":"<a class='ui-state-default"+(H.getTime()===L.getTime()?" ui-state-highlight":"")+(H.getTime()===X.getTime()?" ui-state-active":"")+(W?" ui-priority-secondary":"")+"' href='#'>"+H.getDate()+"</a>")+"</td>",H.setDate(H.getDate()+1),H=this._daylightSavingAdjust(H);S+=F+"</tr>"}Z++,Z>11&&(Z=0,te++),S+="</tbody></table>"+(q?"</div>"+(K[0]>0&&D===K[1]-1?"<div class='ui-datepicker-row-break'></div>":""):""),x+=S}y+=x}return y+=l,t._keyEvent=!1,y},_generateMonthYearHeader:function(t,e,i,s,n,a,r,o){var h,l,c,u,d,p,f,m,g=this._get(t,"changeMonth"),v=this._get(t,"changeYear"),_=this._get(t,"showMonthAfterYear"),b="<div class='ui-datepicker-title'>",y="";if(a||!g)y+="<span class='ui-datepicker-month'>"+r[e]+"</span>";else{for(h=s&&s.getFullYear()===i,l=n&&n.getFullYear()===i,y+="<select class='ui-datepicker-month' data-handler='selectMonth' data-event='change'>",c=0;12>c;c++)(!h||c>=s.getMonth())&&(!l||n.getMonth()>=c)&&(y+="<option value='"+c+"'"+(c===e?" selected='selected'":"")+">"+o[c]+"</option>");
y+="</select>"}if(_||(b+=y+(!a&&g&&v?"":"&#xa0;")),!t.yearshtml)if(t.yearshtml="",a||!v)b+="<span class='ui-datepicker-year'>"+i+"</span>";else{for(u=this._get(t,"yearRange").split(":"),d=(new Date).getFullYear(),p=function(t){var e=t.match(/c[+\-].*/)?i+parseInt(t.substring(1),10):t.match(/[+\-].*/)?d+parseInt(t,10):parseInt(t,10);return isNaN(e)?d:e},f=p(u[0]),m=Math.max(f,p(u[1]||"")),f=s?Math.max(f,s.getFullYear()):f,m=n?Math.min(m,n.getFullYear()):m,t.yearshtml+="<select class='ui-datepicker-year' data-handler='selectYear' data-event='change'>";m>=f;f++)t.yearshtml+="<option value='"+f+"'"+(f===i?" selected='selected'":"")+">"+f+"</option>";t.yearshtml+="</select>",b+=t.yearshtml,t.yearshtml=null}return b+=this._get(t,"yearSuffix"),_&&(b+=(!a&&g&&v?"":"&#xa0;")+y),b+="</div>"},_adjustInstDate:function(t,e,i){var s=t.drawYear+("Y"===i?e:0),n=t.drawMonth+("M"===i?e:0),a=Math.min(t.selectedDay,this._getDaysInMonth(s,n))+("D"===i?e:0),r=this._restrictMinMax(t,this._daylightSavingAdjust(new Date(s,n,a)));t.selectedDay=r.getDate(),t.drawMonth=t.selectedMonth=r.getMonth(),t.drawYear=t.selectedYear=r.getFullYear(),("M"===i||"Y"===i)&&this._notifyChange(t)},_restrictMinMax:function(t,e){var i=this._getMinMaxDate(t,"min"),s=this._getMinMaxDate(t,"max"),n=i&&i>e?i:e;return s&&n>s?s:n},_notifyChange:function(t){var e=this._get(t,"onChangeMonthYear");e&&e.apply(t.input?t.input[0]:null,[t.selectedYear,t.selectedMonth+1,t])},_getNumberOfMonths:function(t){var e=this._get(t,"numberOfMonths");return null==e?[1,1]:"number"==typeof e?[1,e]:e},_getMinMaxDate:function(t,e){return this._determineDate(t,this._get(t,e+"Date"),null)},_getDaysInMonth:function(t,e){return 32-this._daylightSavingAdjust(new Date(t,e,32)).getDate()},_getFirstDayOfMonth:function(t,e){return new Date(t,e,1).getDay()},_canAdjustMonth:function(t,e,i,s){var n=this._getNumberOfMonths(t),a=this._daylightSavingAdjust(new Date(i,s+(0>e?e:n[0]*n[1]),1));return 0>e&&a.setDate(this._getDaysInMonth(a.getFullYear(),a.getMonth())),this._isInRange(t,a)},_isInRange:function(t,e){var i,s,n=this._getMinMaxDate(t,"min"),a=this._getMinMaxDate(t,"max"),r=null,o=null,h=this._get(t,"yearRange");return h&&(i=h.split(":"),s=(new Date).getFullYear(),r=parseInt(i[0],10),o=parseInt(i[1],10),i[0].match(/[+\-].*/)&&(r+=s),i[1].match(/[+\-].*/)&&(o+=s)),(!n||e.getTime()>=n.getTime())&&(!a||e.getTime()<=a.getTime())&&(!r||e.getFullYear()>=r)&&(!o||o>=e.getFullYear())},_getFormatConfig:function(t){var e=this._get(t,"shortYearCutoff");return e="string"!=typeof e?e:(new Date).getFullYear()%100+parseInt(e,10),{shortYearCutoff:e,dayNamesShort:this._get(t,"dayNamesShort"),dayNames:this._get(t,"dayNames"),monthNamesShort:this._get(t,"monthNamesShort"),monthNames:this._get(t,"monthNames")}},_formatDate:function(t,e,i,s){e||(t.currentDay=t.selectedDay,t.currentMonth=t.selectedMonth,t.currentYear=t.selectedYear);var n=e?"object"==typeof e?e:this._daylightSavingAdjust(new Date(s,i,e)):this._daylightSavingAdjust(new Date(t.currentYear,t.currentMonth,t.currentDay));return this.formatDate(this._get(t,"dateFormat"),n,this._getFormatConfig(t))}}),t.fn.datepicker=function(e){if(!this.length)return this;t.datepicker.initialized||(t(document).mousedown(t.datepicker._checkExternalClick),t.datepicker.initialized=!0),0===t("#"+t.datepicker._mainDivId).length&&t("body").append(t.datepicker.dpDiv);var i=Array.prototype.slice.call(arguments,1);return"string"!=typeof e||"isDisabled"!==e&&"getDate"!==e&&"widget"!==e?"option"===e&&2===arguments.length&&"string"==typeof arguments[1]?t.datepicker["_"+e+"Datepicker"].apply(t.datepicker,[this[0]].concat(i)):this.each(function(){"string"==typeof e?t.datepicker["_"+e+"Datepicker"].apply(t.datepicker,[this].concat(i)):t.datepicker._attachDatepicker(this,e)}):t.datepicker["_"+e+"Datepicker"].apply(t.datepicker,[this[0]].concat(i))},t.datepicker=new i,t.datepicker.initialized=!1,t.datepicker.uuid=(new Date).getTime(),t.datepicker.version="1.10.2",window["DP_jQuery_"+o]=t})(jQuery);(function(t){var e={buttons:!0,height:!0,maxHeight:!0,maxWidth:!0,minHeight:!0,minWidth:!0,width:!0},i={maxHeight:!0,maxWidth:!0,minHeight:!0,minWidth:!0};t.widget("ui.dialog",{version:"1.10.2",options:{appendTo:"body",autoOpen:!0,buttons:[],closeOnEscape:!0,closeText:"close",dialogClass:"",draggable:!0,hide:null,height:"auto",maxHeight:null,maxWidth:null,minHeight:150,minWidth:150,modal:!1,position:{my:"center",at:"center",of:window,collision:"fit",using:function(e){var i=t(this).css(e).offset().top;0>i&&t(this).css("top",e.top-i)}},resizable:!0,show:null,title:null,width:300,beforeClose:null,close:null,drag:null,dragStart:null,dragStop:null,focus:null,open:null,resize:null,resizeStart:null,resizeStop:null},_create:function(){this.originalCss={display:this.element[0].style.display,width:this.element[0].style.width,minHeight:this.element[0].style.minHeight,maxHeight:this.element[0].style.maxHeight,height:this.element[0].style.height},this.originalPosition={parent:this.element.parent(),index:this.element.parent().children().index(this.element)},this.originalTitle=this.element.attr("title"),this.options.title=this.options.title||this.originalTitle,this._createWrapper(),this.element.show().removeAttr("title").addClass("ui-dialog-content ui-widget-content").appendTo(this.uiDialog),this._createTitlebar(),this._createButtonPane(),this.options.draggable&&t.fn.draggable&&this._makeDraggable(),this.options.resizable&&t.fn.resizable&&this._makeResizable(),this._isOpen=!1},_init:function(){this.options.autoOpen&&this.open()},_appendTo:function(){var e=this.options.appendTo;return e&&(e.jquery||e.nodeType)?t(e):this.document.find(e||"body").eq(0)},_destroy:function(){var t,e=this.originalPosition;this._destroyOverlay(),this.element.removeUniqueId().removeClass("ui-dialog-content ui-widget-content").css(this.originalCss).detach(),this.uiDialog.stop(!0,!0).remove(),this.originalTitle&&this.element.attr("title",this.originalTitle),t=e.parent.children().eq(e.index),t.length&&t[0]!==this.element[0]?t.before(this.element):e.parent.append(this.element)},widget:function(){return this.uiDialog},disable:t.noop,enable:t.noop,close:function(e){var i=this;this._isOpen&&this._trigger("beforeClose",e)!==!1&&(this._isOpen=!1,this._destroyOverlay(),this.opener.filter(":focusable").focus().length||t(this.document[0].activeElement).blur(),this._hide(this.uiDialog,this.options.hide,function(){i._trigger("close",e)}))},isOpen:function(){return this._isOpen},moveToTop:function(){this._moveToTop()},_moveToTop:function(t,e){var i=!!this.uiDialog.nextAll(":visible").insertBefore(this.uiDialog).length;return i&&!e&&this._trigger("focus",t),i},open:function(){var e=this;return this._isOpen?(this._moveToTop()&&this._focusTabbable(),undefined):(this._isOpen=!0,this.opener=t(this.document[0].activeElement),this._size(),this._position(),this._createOverlay(),this._moveToTop(null,!0),this._show(this.uiDialog,this.options.show,function(){e._focusTabbable(),e._trigger("focus")}),this._trigger("open"),undefined)},_focusTabbable:function(){var t=this.element.find("[autofocus]");t.length||(t=this.element.find(":tabbable")),t.length||(t=this.uiDialogButtonPane.find(":tabbable")),t.length||(t=this.uiDialogTitlebarClose.filter(":tabbable")),t.length||(t=this.uiDialog),t.eq(0).focus()},_keepFocus:function(e){function i(){var e=this.document[0].activeElement,i=this.uiDialog[0]===e||t.contains(this.uiDialog[0],e);i||this._focusTabbable()}e.preventDefault(),i.call(this),this._delay(i)},_createWrapper:function(){this.uiDialog=t("<div>").addClass("ui-dialog ui-widget ui-widget-content ui-corner-all ui-front "+this.options.dialogClass).hide().attr({tabIndex:-1,role:"dialog"}).appendTo(this._appendTo()),this._on(this.uiDialog,{keydown:function(e){if(this.options.closeOnEscape&&!e.isDefaultPrevented()&&e.keyCode&&e.keyCode===t.ui.keyCode.ESCAPE)return e.preventDefault(),this.close(e),undefined;if(e.keyCode===t.ui.keyCode.TAB){var i=this.uiDialog.find(":tabbable"),s=i.filter(":first"),n=i.filter(":last");e.target!==n[0]&&e.target!==this.uiDialog[0]||e.shiftKey?e.target!==s[0]&&e.target!==this.uiDialog[0]||!e.shiftKey||(n.focus(1),e.preventDefault()):(s.focus(1),e.preventDefault())}},mousedown:function(t){this._moveToTop(t)&&this._focusTabbable()}}),this.element.find("[aria-describedby]").length||this.uiDialog.attr({"aria-describedby":this.element.uniqueId().attr("id")})},_createTitlebar:function(){var e;this.uiDialogTitlebar=t("<div>").addClass("ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix").prependTo(this.uiDialog),this._on(this.uiDialogTitlebar,{mousedown:function(e){t(e.target).closest(".ui-dialog-titlebar-close")||this.uiDialog.focus()}}),this.uiDialogTitlebarClose=t("<button></button>").button({label:this.options.closeText,icons:{primary:"ui-icon-closethick"},text:!1}).addClass("ui-dialog-titlebar-close").appendTo(this.uiDialogTitlebar),this._on(this.uiDialogTitlebarClose,{click:function(t){t.preventDefault(),this.close(t)}}),e=t("<span>").uniqueId().addClass("ui-dialog-title").prependTo(this.uiDialogTitlebar),this._title(e),this.uiDialog.attr({"aria-labelledby":e.attr("id")})},_title:function(t){this.options.title||t.html("&#160;"),t.text(this.options.title)},_createButtonPane:function(){this.uiDialogButtonPane=t("<div>").addClass("ui-dialog-buttonpane ui-widget-content ui-helper-clearfix"),this.uiButtonSet=t("<div>").addClass("ui-dialog-buttonset").appendTo(this.uiDialogButtonPane),this._createButtons()},_createButtons:function(){var e=this,i=this.options.buttons;return this.uiDialogButtonPane.remove(),this.uiButtonSet.empty(),t.isEmptyObject(i)||t.isArray(i)&&!i.length?(this.uiDialog.removeClass("ui-dialog-buttons"),undefined):(t.each(i,function(i,s){var n,a;s=t.isFunction(s)?{click:s,text:i}:s,s=t.extend({type:"button"},s),n=s.click,s.click=function(){n.apply(e.element[0],arguments)},a={icons:s.icons,text:s.showText},delete s.icons,delete s.showText,t("<button></button>",s).button(a).appendTo(e.uiButtonSet)}),this.uiDialog.addClass("ui-dialog-buttons"),this.uiDialogButtonPane.appendTo(this.uiDialog),undefined)},_makeDraggable:function(){function e(t){return{position:t.position,offset:t.offset}}var i=this,s=this.options;this.uiDialog.draggable({cancel:".ui-dialog-content, .ui-dialog-titlebar-close",handle:".ui-dialog-titlebar",containment:"document",start:function(s,n){t(this).addClass("ui-dialog-dragging"),i._blockFrames(),i._trigger("dragStart",s,e(n))},drag:function(t,s){i._trigger("drag",t,e(s))},stop:function(n,a){s.position=[a.position.left-i.document.scrollLeft(),a.position.top-i.document.scrollTop()],t(this).removeClass("ui-dialog-dragging"),i._unblockFrames(),i._trigger("dragStop",n,e(a))}})},_makeResizable:function(){function e(t){return{originalPosition:t.originalPosition,originalSize:t.originalSize,position:t.position,size:t.size}}var i=this,s=this.options,n=s.resizable,a=this.uiDialog.css("position"),o="string"==typeof n?n:"n,e,s,w,se,sw,ne,nw";this.uiDialog.resizable({cancel:".ui-dialog-content",containment:"document",alsoResize:this.element,maxWidth:s.maxWidth,maxHeight:s.maxHeight,minWidth:s.minWidth,minHeight:this._minHeight(),handles:o,start:function(s,n){t(this).addClass("ui-dialog-resizing"),i._blockFrames(),i._trigger("resizeStart",s,e(n))},resize:function(t,s){i._trigger("resize",t,e(s))},stop:function(n,a){s.height=t(this).height(),s.width=t(this).width(),t(this).removeClass("ui-dialog-resizing"),i._unblockFrames(),i._trigger("resizeStop",n,e(a))}}).css("position",a)},_minHeight:function(){var t=this.options;return"auto"===t.height?t.minHeight:Math.min(t.minHeight,t.height)},_position:function(){var t=this.uiDialog.is(":visible");t||this.uiDialog.show(),this.uiDialog.position(this.options.position),t||this.uiDialog.hide()},_setOptions:function(s){var n=this,a=!1,o={};t.each(s,function(t,s){n._setOption(t,s),t in e&&(a=!0),t in i&&(o[t]=s)}),a&&(this._size(),this._position()),this.uiDialog.is(":data(ui-resizable)")&&this.uiDialog.resizable("option",o)},_setOption:function(t,e){var i,s,n=this.uiDialog;"dialogClass"===t&&n.removeClass(this.options.dialogClass).addClass(e),"disabled"!==t&&(this._super(t,e),"appendTo"===t&&this.uiDialog.appendTo(this._appendTo()),"buttons"===t&&this._createButtons(),"closeText"===t&&this.uiDialogTitlebarClose.button({label:""+e}),"draggable"===t&&(i=n.is(":data(ui-draggable)"),i&&!e&&n.draggable("destroy"),!i&&e&&this._makeDraggable()),"position"===t&&this._position(),"resizable"===t&&(s=n.is(":data(ui-resizable)"),s&&!e&&n.resizable("destroy"),s&&"string"==typeof e&&n.resizable("option","handles",e),s||e===!1||this._makeResizable()),"title"===t&&this._title(this.uiDialogTitlebar.find(".ui-dialog-title")))},_size:function(){var t,e,i,s=this.options;this.element.show().css({width:"auto",minHeight:0,maxHeight:"none",height:0}),s.minWidth>s.width&&(s.width=s.minWidth),t=this.uiDialog.css({height:"auto",width:s.width}).outerHeight(),e=Math.max(0,s.minHeight-t),i="number"==typeof s.maxHeight?Math.max(0,s.maxHeight-t):"none","auto"===s.height?this.element.css({minHeight:e,maxHeight:i,height:"auto"}):this.element.height(Math.max(0,s.height-t)),this.uiDialog.is(":data(ui-resizable)")&&this.uiDialog.resizable("option","minHeight",this._minHeight())},_blockFrames:function(){this.iframeBlocks=this.document.find("iframe").map(function(){var e=t(this);return t("<div>").css({position:"absolute",width:e.outerWidth(),height:e.outerHeight()}).appendTo(e.parent()).offset(e.offset())[0]})},_unblockFrames:function(){this.iframeBlocks&&(this.iframeBlocks.remove(),delete this.iframeBlocks)},_allowInteraction:function(e){return t(e.target).closest(".ui-dialog").length?!0:!!t(e.target).closest(".ui-datepicker").length},_createOverlay:function(){if(this.options.modal){var e=this,i=this.widgetFullName;t.ui.dialog.overlayInstances||this._delay(function(){t.ui.dialog.overlayInstances&&this.document.bind("focusin.dialog",function(s){e._allowInteraction(s)||(s.preventDefault(),t(".ui-dialog:visible:last .ui-dialog-content").data(i)._focusTabbable())})}),this.overlay=t("<div>").addClass("ui-widget-overlay ui-front").appendTo(this._appendTo()),this._on(this.overlay,{mousedown:"_keepFocus"}),t.ui.dialog.overlayInstances++}},_destroyOverlay:function(){this.options.modal&&this.overlay&&(t.ui.dialog.overlayInstances--,t.ui.dialog.overlayInstances||this.document.unbind("focusin.dialog"),this.overlay.remove(),this.overlay=null)}}),t.ui.dialog.overlayInstances=0,t.uiBackCompat!==!1&&t.widget("ui.dialog",t.ui.dialog,{_position:function(){var e,i=this.options.position,s=[],n=[0,0];i?(("string"==typeof i||"object"==typeof i&&"0"in i)&&(s=i.split?i.split(" "):[i[0],i[1]],1===s.length&&(s[1]=s[0]),t.each(["left","top"],function(t,e){+s[t]===s[t]&&(n[t]=s[t],s[t]=e)}),i={my:s[0]+(0>n[0]?n[0]:"+"+n[0])+" "+s[1]+(0>n[1]?n[1]:"+"+n[1]),at:s.join(" ")}),i=t.extend({},t.ui.dialog.prototype.options.position,i)):i=t.ui.dialog.prototype.options.position,e=this.uiDialog.is(":visible"),e||this.uiDialog.show(),this.uiDialog.position(i),e||this.uiDialog.hide()}})})(jQuery);(function(t){t.widget("ui.menu",{version:"1.10.2",defaultElement:"<ul>",delay:300,options:{icons:{submenu:"ui-icon-carat-1-e"},menus:"ul",position:{my:"left top",at:"right top"},role:"menu",blur:null,focus:null,select:null},_create:function(){this.activeMenu=this.element,this.mouseHandled=!1,this.element.uniqueId().addClass("ui-menu ui-widget ui-widget-content ui-corner-all").toggleClass("ui-menu-icons",!!this.element.find(".ui-icon").length).attr({role:this.options.role,tabIndex:0}).bind("click"+this.eventNamespace,t.proxy(function(t){this.options.disabled&&t.preventDefault()},this)),this.options.disabled&&this.element.addClass("ui-state-disabled").attr("aria-disabled","true"),this._on({"mousedown .ui-menu-item > a":function(t){t.preventDefault()},"click .ui-state-disabled > a":function(t){t.preventDefault()},"click .ui-menu-item:has(a)":function(e){var i=t(e.target).closest(".ui-menu-item");!this.mouseHandled&&i.not(".ui-state-disabled").length&&(this.mouseHandled=!0,this.select(e),i.has(".ui-menu").length?this.expand(e):this.element.is(":focus")||(this.element.trigger("focus",[!0]),this.active&&1===this.active.parents(".ui-menu").length&&clearTimeout(this.timer)))},"mouseenter .ui-menu-item":function(e){var i=t(e.currentTarget);i.siblings().children(".ui-state-active").removeClass("ui-state-active"),this.focus(e,i)},mouseleave:"collapseAll","mouseleave .ui-menu":"collapseAll",focus:function(t,e){var i=this.active||this.element.children(".ui-menu-item").eq(0);e||this.focus(t,i)},blur:function(e){this._delay(function(){t.contains(this.element[0],this.document[0].activeElement)||this.collapseAll(e)})},keydown:"_keydown"}),this.refresh(),this._on(this.document,{click:function(e){t(e.target).closest(".ui-menu").length||this.collapseAll(e),this.mouseHandled=!1}})},_destroy:function(){this.element.removeAttr("aria-activedescendant").find(".ui-menu").addBack().removeClass("ui-menu ui-widget ui-widget-content ui-corner-all ui-menu-icons").removeAttr("role").removeAttr("tabIndex").removeAttr("aria-labelledby").removeAttr("aria-expanded").removeAttr("aria-hidden").removeAttr("aria-disabled").removeUniqueId().show(),this.element.find(".ui-menu-item").removeClass("ui-menu-item").removeAttr("role").removeAttr("aria-disabled").children("a").removeUniqueId().removeClass("ui-corner-all ui-state-hover").removeAttr("tabIndex").removeAttr("role").removeAttr("aria-haspopup").children().each(function(){var e=t(this);e.data("ui-menu-submenu-carat")&&e.remove()}),this.element.find(".ui-menu-divider").removeClass("ui-menu-divider ui-widget-content")},_keydown:function(e){function i(t){return t.replace(/[\-\[\]{}()*+?.,\\\^$|#\s]/g,"\\$&")}var s,n,a,o,r,h=!0;switch(e.keyCode){case t.ui.keyCode.PAGE_UP:this.previousPage(e);break;case t.ui.keyCode.PAGE_DOWN:this.nextPage(e);break;case t.ui.keyCode.HOME:this._move("first","first",e);break;case t.ui.keyCode.END:this._move("last","last",e);break;case t.ui.keyCode.UP:this.previous(e);break;case t.ui.keyCode.DOWN:this.next(e);break;case t.ui.keyCode.LEFT:this.collapse(e);break;case t.ui.keyCode.RIGHT:this.active&&!this.active.is(".ui-state-disabled")&&this.expand(e);break;case t.ui.keyCode.ENTER:case t.ui.keyCode.SPACE:this._activate(e);break;case t.ui.keyCode.ESCAPE:this.collapse(e);break;default:h=!1,n=this.previousFilter||"",a=String.fromCharCode(e.keyCode),o=!1,clearTimeout(this.filterTimer),a===n?o=!0:a=n+a,r=RegExp("^"+i(a),"i"),s=this.activeMenu.children(".ui-menu-item").filter(function(){return r.test(t(this).children("a").text())}),s=o&&-1!==s.index(this.active.next())?this.active.nextAll(".ui-menu-item"):s,s.length||(a=String.fromCharCode(e.keyCode),r=RegExp("^"+i(a),"i"),s=this.activeMenu.children(".ui-menu-item").filter(function(){return r.test(t(this).children("a").text())})),s.length?(this.focus(e,s),s.length>1?(this.previousFilter=a,this.filterTimer=this._delay(function(){delete this.previousFilter},1e3)):delete this.previousFilter):delete this.previousFilter}h&&e.preventDefault()},_activate:function(t){this.active.is(".ui-state-disabled")||(this.active.children("a[aria-haspopup='true']").length?this.expand(t):this.select(t))},refresh:function(){var e,i=this.options.icons.submenu,s=this.element.find(this.options.menus);s.filter(":not(.ui-menu)").addClass("ui-menu ui-widget ui-widget-content ui-corner-all").hide().attr({role:this.options.role,"aria-hidden":"true","aria-expanded":"false"}).each(function(){var e=t(this),s=e.prev("a"),n=t("<span>").addClass("ui-menu-icon ui-icon "+i).data("ui-menu-submenu-carat",!0);s.attr("aria-haspopup","true").prepend(n),e.attr("aria-labelledby",s.attr("id"))}),e=s.add(this.element),e.children(":not(.ui-menu-item):has(a)").addClass("ui-menu-item").attr("role","presentation").children("a").uniqueId().addClass("ui-corner-all").attr({tabIndex:-1,role:this._itemRole()}),e.children(":not(.ui-menu-item)").each(function(){var e=t(this);/[^\-\u2014\u2013\s]/.test(e.text())||e.addClass("ui-widget-content ui-menu-divider")}),e.children(".ui-state-disabled").attr("aria-disabled","true"),this.active&&!t.contains(this.element[0],this.active[0])&&this.blur()},_itemRole:function(){return{menu:"menuitem",listbox:"option"}[this.options.role]},_setOption:function(t,e){"icons"===t&&this.element.find(".ui-menu-icon").removeClass(this.options.icons.submenu).addClass(e.submenu),this._super(t,e)},focus:function(t,e){var i,s;this.blur(t,t&&"focus"===t.type),this._scrollIntoView(e),this.active=e.first(),s=this.active.children("a").addClass("ui-state-focus"),this.options.role&&this.element.attr("aria-activedescendant",s.attr("id")),this.active.parent().closest(".ui-menu-item").children("a:first").addClass("ui-state-active"),t&&"keydown"===t.type?this._close():this.timer=this._delay(function(){this._close()},this.delay),i=e.children(".ui-menu"),i.length&&/^mouse/.test(t.type)&&this._startOpening(i),this.activeMenu=e.parent(),this._trigger("focus",t,{item:e})},_scrollIntoView:function(e){var i,s,n,a,o,r;this._hasScroll()&&(i=parseFloat(t.css(this.activeMenu[0],"borderTopWidth"))||0,s=parseFloat(t.css(this.activeMenu[0],"paddingTop"))||0,n=e.offset().top-this.activeMenu.offset().top-i-s,a=this.activeMenu.scrollTop(),o=this.activeMenu.height(),r=e.height(),0>n?this.activeMenu.scrollTop(a+n):n+r>o&&this.activeMenu.scrollTop(a+n-o+r))},blur:function(t,e){e||clearTimeout(this.timer),this.active&&(this.active.children("a").removeClass("ui-state-focus"),this.active=null,this._trigger("blur",t,{item:this.active}))},_startOpening:function(t){clearTimeout(this.timer),"true"===t.attr("aria-hidden")&&(this.timer=this._delay(function(){this._close(),this._open(t)},this.delay))},_open:function(e){var i=t.extend({of:this.active},this.options.position);clearTimeout(this.timer),this.element.find(".ui-menu").not(e.parents(".ui-menu")).hide().attr("aria-hidden","true"),e.show().removeAttr("aria-hidden").attr("aria-expanded","true").position(i)},collapseAll:function(e,i){clearTimeout(this.timer),this.timer=this._delay(function(){var s=i?this.element:t(e&&e.target).closest(this.element.find(".ui-menu"));s.length||(s=this.element),this._close(s),this.blur(e),this.activeMenu=s},this.delay)},_close:function(t){t||(t=this.active?this.active.parent():this.element),t.find(".ui-menu").hide().attr("aria-hidden","true").attr("aria-expanded","false").end().find("a.ui-state-active").removeClass("ui-state-active")},collapse:function(t){var e=this.active&&this.active.parent().closest(".ui-menu-item",this.element);e&&e.length&&(this._close(),this.focus(t,e))},expand:function(t){var e=this.active&&this.active.children(".ui-menu ").children(".ui-menu-item").first();e&&e.length&&(this._open(e.parent()),this._delay(function(){this.focus(t,e)}))},next:function(t){this._move("next","first",t)},previous:function(t){this._move("prev","last",t)},isFirstItem:function(){return this.active&&!this.active.prevAll(".ui-menu-item").length},isLastItem:function(){return this.active&&!this.active.nextAll(".ui-menu-item").length},_move:function(t,e,i){var s;this.active&&(s="first"===t||"last"===t?this.active["first"===t?"prevAll":"nextAll"](".ui-menu-item").eq(-1):this.active[t+"All"](".ui-menu-item").eq(0)),s&&s.length&&this.active||(s=this.activeMenu.children(".ui-menu-item")[e]()),this.focus(i,s)},nextPage:function(e){var i,s,n;return this.active?(this.isLastItem()||(this._hasScroll()?(s=this.active.offset().top,n=this.element.height(),this.active.nextAll(".ui-menu-item").each(function(){return i=t(this),0>i.offset().top-s-n}),this.focus(e,i)):this.focus(e,this.activeMenu.children(".ui-menu-item")[this.active?"last":"first"]())),undefined):(this.next(e),undefined)},previousPage:function(e){var i,s,n;return this.active?(this.isFirstItem()||(this._hasScroll()?(s=this.active.offset().top,n=this.element.height(),this.active.prevAll(".ui-menu-item").each(function(){return i=t(this),i.offset().top-s+n>0}),this.focus(e,i)):this.focus(e,this.activeMenu.children(".ui-menu-item").first())),undefined):(this.next(e),undefined)},_hasScroll:function(){return this.element.outerHeight()<this.element.prop("scrollHeight")},select:function(e){this.active=this.active||t(e.target).closest(".ui-menu-item");var i={item:this.active};this.active.has(".ui-menu").length||this.collapseAll(e,!0),this._trigger("select",e,i)}})})(jQuery);(function(t,e){t.widget("ui.progressbar",{version:"1.10.2",options:{max:100,value:0,change:null,complete:null},min:0,_create:function(){this.oldValue=this.options.value=this._constrainedValue(),this.element.addClass("ui-progressbar ui-widget ui-widget-content ui-corner-all").attr({role:"progressbar","aria-valuemin":this.min}),this.valueDiv=t("<div class='ui-progressbar-value ui-widget-header ui-corner-left'></div>").appendTo(this.element),this._refreshValue()},_destroy:function(){this.element.removeClass("ui-progressbar ui-widget ui-widget-content ui-corner-all").removeAttr("role").removeAttr("aria-valuemin").removeAttr("aria-valuemax").removeAttr("aria-valuenow"),this.valueDiv.remove()},value:function(t){return t===e?this.options.value:(this.options.value=this._constrainedValue(t),this._refreshValue(),e)},_constrainedValue:function(t){return t===e&&(t=this.options.value),this.indeterminate=t===!1,"number"!=typeof t&&(t=0),this.indeterminate?!1:Math.min(this.options.max,Math.max(this.min,t))},_setOptions:function(t){var e=t.value;delete t.value,this._super(t),this.options.value=this._constrainedValue(e),this._refreshValue()},_setOption:function(t,e){"max"===t&&(e=Math.max(this.min,e)),this._super(t,e)},_percentage:function(){return this.indeterminate?100:100*(this.options.value-this.min)/(this.options.max-this.min)},_refreshValue:function(){var e=this.options.value,i=this._percentage();this.valueDiv.toggle(this.indeterminate||e>this.min).toggleClass("ui-corner-right",e===this.options.max).width(i.toFixed(0)+"%"),this.element.toggleClass("ui-progressbar-indeterminate",this.indeterminate),this.indeterminate?(this.element.removeAttr("aria-valuenow"),this.overlayDiv||(this.overlayDiv=t("<div class='ui-progressbar-overlay'></div>").appendTo(this.valueDiv))):(this.element.attr({"aria-valuemax":this.options.max,"aria-valuenow":e}),this.overlayDiv&&(this.overlayDiv.remove(),this.overlayDiv=null)),this.oldValue!==e&&(this.oldValue=e,this._trigger("change")),e===this.options.max&&this._trigger("complete")}})})(jQuery);(function(t){var e=5;t.widget("ui.slider",t.ui.mouse,{version:"1.10.2",widgetEventPrefix:"slide",options:{animate:!1,distance:0,max:100,min:0,orientation:"horizontal",range:!1,step:1,value:0,values:null,change:null,slide:null,start:null,stop:null},_create:function(){this._keySliding=!1,this._mouseSliding=!1,this._animateOff=!0,this._handleIndex=null,this._detectOrientation(),this._mouseInit(),this.element.addClass("ui-slider ui-slider-"+this.orientation+" ui-widget"+" ui-widget-content"+" ui-corner-all"),this._refresh(),this._setOption("disabled",this.options.disabled),this._animateOff=!1},_refresh:function(){this._createRange(),this._createHandles(),this._setupEvents(),this._refreshValue()},_createHandles:function(){var e,i,s=this.options,n=this.element.find(".ui-slider-handle").addClass("ui-state-default ui-corner-all"),a="<a class='ui-slider-handle ui-state-default ui-corner-all' href='#'></a>",o=[];for(i=s.values&&s.values.length||1,n.length>i&&(n.slice(i).remove(),n=n.slice(0,i)),e=n.length;i>e;e++)o.push(a);this.handles=n.add(t(o.join("")).appendTo(this.element)),this.handle=this.handles.eq(0),this.handles.each(function(e){t(this).data("ui-slider-handle-index",e)})},_createRange:function(){var e=this.options,i="";e.range?(e.range===!0&&(e.values?e.values.length&&2!==e.values.length?e.values=[e.values[0],e.values[0]]:t.isArray(e.values)&&(e.values=e.values.slice(0)):e.values=[this._valueMin(),this._valueMin()]),this.range&&this.range.length?this.range.removeClass("ui-slider-range-min ui-slider-range-max").css({left:"",bottom:""}):(this.range=t("<div></div>").appendTo(this.element),i="ui-slider-range ui-widget-header ui-corner-all"),this.range.addClass(i+("min"===e.range||"max"===e.range?" ui-slider-range-"+e.range:""))):this.range=t([])},_setupEvents:function(){var t=this.handles.add(this.range).filter("a");this._off(t),this._on(t,this._handleEvents),this._hoverable(t),this._focusable(t)},_destroy:function(){this.handles.remove(),this.range.remove(),this.element.removeClass("ui-slider ui-slider-horizontal ui-slider-vertical ui-widget ui-widget-content ui-corner-all"),this._mouseDestroy()},_mouseCapture:function(e){var i,s,n,a,o,r,h,l,u=this,c=this.options;return c.disabled?!1:(this.elementSize={width:this.element.outerWidth(),height:this.element.outerHeight()},this.elementOffset=this.element.offset(),i={x:e.pageX,y:e.pageY},s=this._normValueFromMouse(i),n=this._valueMax()-this._valueMin()+1,this.handles.each(function(e){var i=Math.abs(s-u.values(e));(n>i||n===i&&(e===u._lastChangedValue||u.values(e)===c.min))&&(n=i,a=t(this),o=e)}),r=this._start(e,o),r===!1?!1:(this._mouseSliding=!0,this._handleIndex=o,a.addClass("ui-state-active").focus(),h=a.offset(),l=!t(e.target).parents().addBack().is(".ui-slider-handle"),this._clickOffset=l?{left:0,top:0}:{left:e.pageX-h.left-a.width()/2,top:e.pageY-h.top-a.height()/2-(parseInt(a.css("borderTopWidth"),10)||0)-(parseInt(a.css("borderBottomWidth"),10)||0)+(parseInt(a.css("marginTop"),10)||0)},this.handles.hasClass("ui-state-hover")||this._slide(e,o,s),this._animateOff=!0,!0))},_mouseStart:function(){return!0},_mouseDrag:function(t){var e={x:t.pageX,y:t.pageY},i=this._normValueFromMouse(e);return this._slide(t,this._handleIndex,i),!1},_mouseStop:function(t){return this.handles.removeClass("ui-state-active"),this._mouseSliding=!1,this._stop(t,this._handleIndex),this._change(t,this._handleIndex),this._handleIndex=null,this._clickOffset=null,this._animateOff=!1,!1},_detectOrientation:function(){this.orientation="vertical"===this.options.orientation?"vertical":"horizontal"},_normValueFromMouse:function(t){var e,i,s,n,a;return"horizontal"===this.orientation?(e=this.elementSize.width,i=t.x-this.elementOffset.left-(this._clickOffset?this._clickOffset.left:0)):(e=this.elementSize.height,i=t.y-this.elementOffset.top-(this._clickOffset?this._clickOffset.top:0)),s=i/e,s>1&&(s=1),0>s&&(s=0),"vertical"===this.orientation&&(s=1-s),n=this._valueMax()-this._valueMin(),a=this._valueMin()+s*n,this._trimAlignValue(a)},_start:function(t,e){var i={handle:this.handles[e],value:this.value()};return this.options.values&&this.options.values.length&&(i.value=this.values(e),i.values=this.values()),this._trigger("start",t,i)},_slide:function(t,e,i){var s,n,a;this.options.values&&this.options.values.length?(s=this.values(e?0:1),2===this.options.values.length&&this.options.range===!0&&(0===e&&i>s||1===e&&s>i)&&(i=s),i!==this.values(e)&&(n=this.values(),n[e]=i,a=this._trigger("slide",t,{handle:this.handles[e],value:i,values:n}),s=this.values(e?0:1),a!==!1&&this.values(e,i,!0))):i!==this.value()&&(a=this._trigger("slide",t,{handle:this.handles[e],value:i}),a!==!1&&this.value(i))},_stop:function(t,e){var i={handle:this.handles[e],value:this.value()};this.options.values&&this.options.values.length&&(i.value=this.values(e),i.values=this.values()),this._trigger("stop",t,i)},_change:function(t,e){if(!this._keySliding&&!this._mouseSliding){var i={handle:this.handles[e],value:this.value()};this.options.values&&this.options.values.length&&(i.value=this.values(e),i.values=this.values()),this._lastChangedValue=e,this._trigger("change",t,i)}},value:function(t){return arguments.length?(this.options.value=this._trimAlignValue(t),this._refreshValue(),this._change(null,0),undefined):this._value()},values:function(e,i){var s,n,a;if(arguments.length>1)return this.options.values[e]=this._trimAlignValue(i),this._refreshValue(),this._change(null,e),undefined;if(!arguments.length)return this._values();if(!t.isArray(arguments[0]))return this.options.values&&this.options.values.length?this._values(e):this.value();for(s=this.options.values,n=arguments[0],a=0;s.length>a;a+=1)s[a]=this._trimAlignValue(n[a]),this._change(null,a);this._refreshValue()},_setOption:function(e,i){var s,n=0;switch("range"===e&&this.options.range===!0&&("min"===i?(this.options.value=this._values(0),this.options.values=null):"max"===i&&(this.options.value=this._values(this.options.values.length-1),this.options.values=null)),t.isArray(this.options.values)&&(n=this.options.values.length),t.Widget.prototype._setOption.apply(this,arguments),e){case"orientation":this._detectOrientation(),this.element.removeClass("ui-slider-horizontal ui-slider-vertical").addClass("ui-slider-"+this.orientation),this._refreshValue();break;case"value":this._animateOff=!0,this._refreshValue(),this._change(null,0),this._animateOff=!1;break;case"values":for(this._animateOff=!0,this._refreshValue(),s=0;n>s;s+=1)this._change(null,s);this._animateOff=!1;break;case"min":case"max":this._animateOff=!0,this._refreshValue(),this._animateOff=!1;break;case"range":this._animateOff=!0,this._refresh(),this._animateOff=!1}},_value:function(){var t=this.options.value;return t=this._trimAlignValue(t)},_values:function(t){var e,i,s;if(arguments.length)return e=this.options.values[t],e=this._trimAlignValue(e);if(this.options.values&&this.options.values.length){for(i=this.options.values.slice(),s=0;i.length>s;s+=1)i[s]=this._trimAlignValue(i[s]);return i}return[]},_trimAlignValue:function(t){if(this._valueMin()>=t)return this._valueMin();if(t>=this._valueMax())return this._valueMax();var e=this.options.step>0?this.options.step:1,i=(t-this._valueMin())%e,s=t-i;return 2*Math.abs(i)>=e&&(s+=i>0?e:-e),parseFloat(s.toFixed(5))},_valueMin:function(){return this.options.min},_valueMax:function(){return this.options.max},_refreshValue:function(){var e,i,s,n,a,o=this.options.range,r=this.options,h=this,l=this._animateOff?!1:r.animate,u={};this.options.values&&this.options.values.length?this.handles.each(function(s){i=100*((h.values(s)-h._valueMin())/(h._valueMax()-h._valueMin())),u["horizontal"===h.orientation?"left":"bottom"]=i+"%",t(this).stop(1,1)[l?"animate":"css"](u,r.animate),h.options.range===!0&&("horizontal"===h.orientation?(0===s&&h.range.stop(1,1)[l?"animate":"css"]({left:i+"%"},r.animate),1===s&&h.range[l?"animate":"css"]({width:i-e+"%"},{queue:!1,duration:r.animate})):(0===s&&h.range.stop(1,1)[l?"animate":"css"]({bottom:i+"%"},r.animate),1===s&&h.range[l?"animate":"css"]({height:i-e+"%"},{queue:!1,duration:r.animate}))),e=i}):(s=this.value(),n=this._valueMin(),a=this._valueMax(),i=a!==n?100*((s-n)/(a-n)):0,u["horizontal"===this.orientation?"left":"bottom"]=i+"%",this.handle.stop(1,1)[l?"animate":"css"](u,r.animate),"min"===o&&"horizontal"===this.orientation&&this.range.stop(1,1)[l?"animate":"css"]({width:i+"%"},r.animate),"max"===o&&"horizontal"===this.orientation&&this.range[l?"animate":"css"]({width:100-i+"%"},{queue:!1,duration:r.animate}),"min"===o&&"vertical"===this.orientation&&this.range.stop(1,1)[l?"animate":"css"]({height:i+"%"},r.animate),"max"===o&&"vertical"===this.orientation&&this.range[l?"animate":"css"]({height:100-i+"%"},{queue:!1,duration:r.animate}))},_handleEvents:{keydown:function(i){var s,n,a,o,r=t(i.target).data("ui-slider-handle-index");switch(i.keyCode){case t.ui.keyCode.HOME:case t.ui.keyCode.END:case t.ui.keyCode.PAGE_UP:case t.ui.keyCode.PAGE_DOWN:case t.ui.keyCode.UP:case t.ui.keyCode.RIGHT:case t.ui.keyCode.DOWN:case t.ui.keyCode.LEFT:if(i.preventDefault(),!this._keySliding&&(this._keySliding=!0,t(i.target).addClass("ui-state-active"),s=this._start(i,r),s===!1))return}switch(o=this.options.step,n=a=this.options.values&&this.options.values.length?this.values(r):this.value(),i.keyCode){case t.ui.keyCode.HOME:a=this._valueMin();break;case t.ui.keyCode.END:a=this._valueMax();break;case t.ui.keyCode.PAGE_UP:a=this._trimAlignValue(n+(this._valueMax()-this._valueMin())/e);break;case t.ui.keyCode.PAGE_DOWN:a=this._trimAlignValue(n-(this._valueMax()-this._valueMin())/e);break;case t.ui.keyCode.UP:case t.ui.keyCode.RIGHT:if(n===this._valueMax())return;a=this._trimAlignValue(n+o);break;case t.ui.keyCode.DOWN:case t.ui.keyCode.LEFT:if(n===this._valueMin())return;a=this._trimAlignValue(n-o)}this._slide(i,r,a)},click:function(t){t.preventDefault()},keyup:function(e){var i=t(e.target).data("ui-slider-handle-index");this._keySliding&&(this._keySliding=!1,this._stop(e,i),this._change(e,i),t(e.target).removeClass("ui-state-active"))}}})})(jQuery);(function(t){function e(t){return function(){var e=this.element.val();t.apply(this,arguments),this._refresh(),e!==this.element.val()&&this._trigger("change")}}t.widget("ui.spinner",{version:"1.10.2",defaultElement:"<input>",widgetEventPrefix:"spin",options:{culture:null,icons:{down:"ui-icon-triangle-1-s",up:"ui-icon-triangle-1-n"},incremental:!0,max:null,min:null,numberFormat:null,page:10,step:1,change:null,spin:null,start:null,stop:null},_create:function(){this._setOption("max",this.options.max),this._setOption("min",this.options.min),this._setOption("step",this.options.step),this._value(this.element.val(),!0),this._draw(),this._on(this._events),this._refresh(),this._on(this.window,{beforeunload:function(){this.element.removeAttr("autocomplete")}})},_getCreateOptions:function(){var e={},i=this.element;return t.each(["min","max","step"],function(t,s){var n=i.attr(s);void 0!==n&&n.length&&(e[s]=n)}),e},_events:{keydown:function(t){this._start(t)&&this._keydown(t)&&t.preventDefault()},keyup:"_stop",focus:function(){this.previous=this.element.val()},blur:function(t){return this.cancelBlur?(delete this.cancelBlur,void 0):(this._stop(),this._refresh(),this.previous!==this.element.val()&&this._trigger("change",t),void 0)},mousewheel:function(t,e){if(e){if(!this.spinning&&!this._start(t))return!1;this._spin((e>0?1:-1)*this.options.step,t),clearTimeout(this.mousewheelTimer),this.mousewheelTimer=this._delay(function(){this.spinning&&this._stop(t)},100),t.preventDefault()}},"mousedown .ui-spinner-button":function(e){function i(){var t=this.element[0]===this.document[0].activeElement;t||(this.element.focus(),this.previous=s,this._delay(function(){this.previous=s}))}var s;s=this.element[0]===this.document[0].activeElement?this.previous:this.element.val(),e.preventDefault(),i.call(this),this.cancelBlur=!0,this._delay(function(){delete this.cancelBlur,i.call(this)}),this._start(e)!==!1&&this._repeat(null,t(e.currentTarget).hasClass("ui-spinner-up")?1:-1,e)},"mouseup .ui-spinner-button":"_stop","mouseenter .ui-spinner-button":function(e){return t(e.currentTarget).hasClass("ui-state-active")?this._start(e)===!1?!1:(this._repeat(null,t(e.currentTarget).hasClass("ui-spinner-up")?1:-1,e),void 0):void 0},"mouseleave .ui-spinner-button":"_stop"},_draw:function(){var t=this.uiSpinner=this.element.addClass("ui-spinner-input").attr("autocomplete","off").wrap(this._uiSpinnerHtml()).parent().append(this._buttonHtml());this.element.attr("role","spinbutton"),this.buttons=t.find(".ui-spinner-button").attr("tabIndex",-1).button().removeClass("ui-corner-all"),this.buttons.height()>Math.ceil(.5*t.height())&&t.height()>0&&t.height(t.height()),this.options.disabled&&this.disable()},_keydown:function(e){var i=this.options,s=t.ui.keyCode;switch(e.keyCode){case s.UP:return this._repeat(null,1,e),!0;case s.DOWN:return this._repeat(null,-1,e),!0;case s.PAGE_UP:return this._repeat(null,i.page,e),!0;case s.PAGE_DOWN:return this._repeat(null,-i.page,e),!0}return!1},_uiSpinnerHtml:function(){return"<span class='ui-spinner ui-widget ui-widget-content ui-corner-all'></span>"},_buttonHtml:function(){return"<a class='ui-spinner-button ui-spinner-up ui-corner-tr'><span class='ui-icon "+this.options.icons.up+"'>&#9650;</span>"+"</a>"+"<a class='ui-spinner-button ui-spinner-down ui-corner-br'>"+"<span class='ui-icon "+this.options.icons.down+"'>&#9660;</span>"+"</a>"},_start:function(t){return this.spinning||this._trigger("start",t)!==!1?(this.counter||(this.counter=1),this.spinning=!0,!0):!1},_repeat:function(t,e,i){t=t||500,clearTimeout(this.timer),this.timer=this._delay(function(){this._repeat(40,e,i)},t),this._spin(e*this.options.step,i)},_spin:function(t,e){var i=this.value()||0;this.counter||(this.counter=1),i=this._adjustValue(i+t*this._increment(this.counter)),this.spinning&&this._trigger("spin",e,{value:i})===!1||(this._value(i),this.counter++)},_increment:function(e){var i=this.options.incremental;return i?t.isFunction(i)?i(e):Math.floor(e*e*e/5e4-e*e/500+17*e/200+1):1},_precision:function(){var t=this._precisionOf(this.options.step);return null!==this.options.min&&(t=Math.max(t,this._precisionOf(this.options.min))),t},_precisionOf:function(t){var e=""+t,i=e.indexOf(".");return-1===i?0:e.length-i-1},_adjustValue:function(t){var e,i,s=this.options;return e=null!==s.min?s.min:0,i=t-e,i=Math.round(i/s.step)*s.step,t=e+i,t=parseFloat(t.toFixed(this._precision())),null!==s.max&&t>s.max?s.max:null!==s.min&&s.min>t?s.min:t},_stop:function(t){this.spinning&&(clearTimeout(this.timer),clearTimeout(this.mousewheelTimer),this.counter=0,this.spinning=!1,this._trigger("stop",t))},_setOption:function(t,e){if("culture"===t||"numberFormat"===t){var i=this._parse(this.element.val());return this.options[t]=e,this.element.val(this._format(i)),void 0}("max"===t||"min"===t||"step"===t)&&"string"==typeof e&&(e=this._parse(e)),"icons"===t&&(this.buttons.first().find(".ui-icon").removeClass(this.options.icons.up).addClass(e.up),this.buttons.last().find(".ui-icon").removeClass(this.options.icons.down).addClass(e.down)),this._super(t,e),"disabled"===t&&(e?(this.element.prop("disabled",!0),this.buttons.button("disable")):(this.element.prop("disabled",!1),this.buttons.button("enable")))},_setOptions:e(function(t){this._super(t),this._value(this.element.val())}),_parse:function(t){return"string"==typeof t&&""!==t&&(t=window.Globalize&&this.options.numberFormat?Globalize.parseFloat(t,10,this.options.culture):+t),""===t||isNaN(t)?null:t},_format:function(t){return""===t?"":window.Globalize&&this.options.numberFormat?Globalize.format(t,this.options.numberFormat,this.options.culture):t},_refresh:function(){this.element.attr({"aria-valuemin":this.options.min,"aria-valuemax":this.options.max,"aria-valuenow":this._parse(this.element.val())})},_value:function(t,e){var i;""!==t&&(i=this._parse(t),null!==i&&(e||(i=this._adjustValue(i)),t=this._format(i))),this.element.val(t),this._refresh()},_destroy:function(){this.element.removeClass("ui-spinner-input").prop("disabled",!1).removeAttr("autocomplete").removeAttr("role").removeAttr("aria-valuemin").removeAttr("aria-valuemax").removeAttr("aria-valuenow"),this.uiSpinner.replaceWith(this.element)},stepUp:e(function(t){this._stepUp(t)}),_stepUp:function(t){this._start()&&(this._spin((t||1)*this.options.step),this._stop())},stepDown:e(function(t){this._stepDown(t)}),_stepDown:function(t){this._start()&&(this._spin((t||1)*-this.options.step),this._stop())},pageUp:e(function(t){this._stepUp((t||1)*this.options.page)}),pageDown:e(function(t){this._stepDown((t||1)*this.options.page)}),value:function(t){return arguments.length?(e(this._value).call(this,t),void 0):this._parse(this.element.val())},widget:function(){return this.uiSpinner}})})(jQuery);(function(t,e){function i(){return++n}function s(t){return t.hash.length>1&&decodeURIComponent(t.href.replace(a,""))===decodeURIComponent(location.href.replace(a,""))}var n=0,a=/#.*$/;t.widget("ui.tabs",{version:"1.10.2",delay:300,options:{active:null,collapsible:!1,event:"click",heightStyle:"content",hide:null,show:null,activate:null,beforeActivate:null,beforeLoad:null,load:null},_create:function(){var e=this,i=this.options;this.running=!1,this.element.addClass("ui-tabs ui-widget ui-widget-content ui-corner-all").toggleClass("ui-tabs-collapsible",i.collapsible).delegate(".ui-tabs-nav > li","mousedown"+this.eventNamespace,function(e){t(this).is(".ui-state-disabled")&&e.preventDefault()}).delegate(".ui-tabs-anchor","focus"+this.eventNamespace,function(){t(this).closest("li").is(".ui-state-disabled")&&this.blur()}),this._processTabs(),i.active=this._initialActive(),t.isArray(i.disabled)&&(i.disabled=t.unique(i.disabled.concat(t.map(this.tabs.filter(".ui-state-disabled"),function(t){return e.tabs.index(t)}))).sort()),this.active=this.options.active!==!1&&this.anchors.length?this._findActive(i.active):t(),this._refresh(),this.active.length&&this.load(i.active)},_initialActive:function(){var i=this.options.active,s=this.options.collapsible,n=location.hash.substring(1);return null===i&&(n&&this.tabs.each(function(s,a){return t(a).attr("aria-controls")===n?(i=s,!1):e}),null===i&&(i=this.tabs.index(this.tabs.filter(".ui-tabs-active"))),(null===i||-1===i)&&(i=this.tabs.length?0:!1)),i!==!1&&(i=this.tabs.index(this.tabs.eq(i)),-1===i&&(i=s?!1:0)),!s&&i===!1&&this.anchors.length&&(i=0),i},_getCreateEventData:function(){return{tab:this.active,panel:this.active.length?this._getPanelForTab(this.active):t()}},_tabKeydown:function(i){var s=t(this.document[0].activeElement).closest("li"),n=this.tabs.index(s),a=!0;if(!this._handlePageNav(i)){switch(i.keyCode){case t.ui.keyCode.RIGHT:case t.ui.keyCode.DOWN:n++;break;case t.ui.keyCode.UP:case t.ui.keyCode.LEFT:a=!1,n--;break;case t.ui.keyCode.END:n=this.anchors.length-1;break;case t.ui.keyCode.HOME:n=0;break;case t.ui.keyCode.SPACE:return i.preventDefault(),clearTimeout(this.activating),this._activate(n),e;case t.ui.keyCode.ENTER:return i.preventDefault(),clearTimeout(this.activating),this._activate(n===this.options.active?!1:n),e;default:return}i.preventDefault(),clearTimeout(this.activating),n=this._focusNextTab(n,a),i.ctrlKey||(s.attr("aria-selected","false"),this.tabs.eq(n).attr("aria-selected","true"),this.activating=this._delay(function(){this.option("active",n)},this.delay))}},_panelKeydown:function(e){this._handlePageNav(e)||e.ctrlKey&&e.keyCode===t.ui.keyCode.UP&&(e.preventDefault(),this.active.focus())},_handlePageNav:function(i){return i.altKey&&i.keyCode===t.ui.keyCode.PAGE_UP?(this._activate(this._focusNextTab(this.options.active-1,!1)),!0):i.altKey&&i.keyCode===t.ui.keyCode.PAGE_DOWN?(this._activate(this._focusNextTab(this.options.active+1,!0)),!0):e},_findNextTab:function(e,i){function s(){return e>n&&(e=0),0>e&&(e=n),e}for(var n=this.tabs.length-1;-1!==t.inArray(s(),this.options.disabled);)e=i?e+1:e-1;return e},_focusNextTab:function(t,e){return t=this._findNextTab(t,e),this.tabs.eq(t).focus(),t},_setOption:function(t,i){return"active"===t?(this._activate(i),e):"disabled"===t?(this._setupDisabled(i),e):(this._super(t,i),"collapsible"===t&&(this.element.toggleClass("ui-tabs-collapsible",i),i||this.options.active!==!1||this._activate(0)),"event"===t&&this._setupEvents(i),"heightStyle"===t&&this._setupHeightStyle(i),e)},_tabId:function(t){return t.attr("aria-controls")||"ui-tabs-"+i()},_sanitizeSelector:function(t){return t?t.replace(/[!"$%&'()*+,.\/:;<=>?@\[\]\^`{|}~]/g,"\\$&"):""},refresh:function(){var e=this.options,i=this.tablist.children(":has(a[href])");e.disabled=t.map(i.filter(".ui-state-disabled"),function(t){return i.index(t)}),this._processTabs(),e.active!==!1&&this.anchors.length?this.active.length&&!t.contains(this.tablist[0],this.active[0])?this.tabs.length===e.disabled.length?(e.active=!1,this.active=t()):this._activate(this._findNextTab(Math.max(0,e.active-1),!1)):e.active=this.tabs.index(this.active):(e.active=!1,this.active=t()),this._refresh()},_refresh:function(){this._setupDisabled(this.options.disabled),this._setupEvents(this.options.event),this._setupHeightStyle(this.options.heightStyle),this.tabs.not(this.active).attr({"aria-selected":"false",tabIndex:-1}),this.panels.not(this._getPanelForTab(this.active)).hide().attr({"aria-expanded":"false","aria-hidden":"true"}),this.active.length?(this.active.addClass("ui-tabs-active ui-state-active").attr({"aria-selected":"true",tabIndex:0}),this._getPanelForTab(this.active).show().attr({"aria-expanded":"true","aria-hidden":"false"})):this.tabs.eq(0).attr("tabIndex",0)},_processTabs:function(){var e=this;this.tablist=this._getList().addClass("ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all").attr("role","tablist"),this.tabs=this.tablist.find("> li:has(a[href])").addClass("ui-state-default ui-corner-top").attr({role:"tab",tabIndex:-1}),this.anchors=this.tabs.map(function(){return t("a",this)[0]}).addClass("ui-tabs-anchor").attr({role:"presentation",tabIndex:-1}),this.panels=t(),this.anchors.each(function(i,n){var a,o,r,h=t(n).uniqueId().attr("id"),l=t(n).closest("li"),u=l.attr("aria-controls");s(n)?(a=n.hash,o=e.element.find(e._sanitizeSelector(a))):(r=e._tabId(l),a="#"+r,o=e.element.find(a),o.length||(o=e._createPanel(r),o.insertAfter(e.panels[i-1]||e.tablist)),o.attr("aria-live","polite")),o.length&&(e.panels=e.panels.add(o)),u&&l.data("ui-tabs-aria-controls",u),l.attr({"aria-controls":a.substring(1),"aria-labelledby":h}),o.attr("aria-labelledby",h)}),this.panels.addClass("ui-tabs-panel ui-widget-content ui-corner-bottom").attr("role","tabpanel")},_getList:function(){return this.element.find("ol,ul").eq(0)},_createPanel:function(e){return t("<div>").attr("id",e).addClass("ui-tabs-panel ui-widget-content ui-corner-bottom").data("ui-tabs-destroy",!0)},_setupDisabled:function(e){t.isArray(e)&&(e.length?e.length===this.anchors.length&&(e=!0):e=!1);for(var i,s=0;i=this.tabs[s];s++)e===!0||-1!==t.inArray(s,e)?t(i).addClass("ui-state-disabled").attr("aria-disabled","true"):t(i).removeClass("ui-state-disabled").removeAttr("aria-disabled");this.options.disabled=e},_setupEvents:function(e){var i={click:function(t){t.preventDefault()}};e&&t.each(e.split(" "),function(t,e){i[e]="_eventHandler"}),this._off(this.anchors.add(this.tabs).add(this.panels)),this._on(this.anchors,i),this._on(this.tabs,{keydown:"_tabKeydown"}),this._on(this.panels,{keydown:"_panelKeydown"}),this._focusable(this.tabs),this._hoverable(this.tabs)},_setupHeightStyle:function(e){var i,s=this.element.parent();"fill"===e?(i=s.height(),i-=this.element.outerHeight()-this.element.height(),this.element.siblings(":visible").each(function(){var e=t(this),s=e.css("position");"absolute"!==s&&"fixed"!==s&&(i-=e.outerHeight(!0))}),this.element.children().not(this.panels).each(function(){i-=t(this).outerHeight(!0)}),this.panels.each(function(){t(this).height(Math.max(0,i-t(this).innerHeight()+t(this).height()))}).css("overflow","auto")):"auto"===e&&(i=0,this.panels.each(function(){i=Math.max(i,t(this).height("").height())}).height(i))},_eventHandler:function(e){var i=this.options,s=this.active,n=t(e.currentTarget),a=n.closest("li"),o=a[0]===s[0],r=o&&i.collapsible,h=r?t():this._getPanelForTab(a),l=s.length?this._getPanelForTab(s):t(),u={oldTab:s,oldPanel:l,newTab:r?t():a,newPanel:h};e.preventDefault(),a.hasClass("ui-state-disabled")||a.hasClass("ui-tabs-loading")||this.running||o&&!i.collapsible||this._trigger("beforeActivate",e,u)===!1||(i.active=r?!1:this.tabs.index(a),this.active=o?t():a,this.xhr&&this.xhr.abort(),l.length||h.length||t.error("jQuery UI Tabs: Mismatching fragment identifier."),h.length&&this.load(this.tabs.index(a),e),this._toggle(e,u))},_toggle:function(e,i){function s(){a.running=!1,a._trigger("activate",e,i)}function n(){i.newTab.closest("li").addClass("ui-tabs-active ui-state-active"),o.length&&a.options.show?a._show(o,a.options.show,s):(o.show(),s())}var a=this,o=i.newPanel,r=i.oldPanel;this.running=!0,r.length&&this.options.hide?this._hide(r,this.options.hide,function(){i.oldTab.closest("li").removeClass("ui-tabs-active ui-state-active"),n()}):(i.oldTab.closest("li").removeClass("ui-tabs-active ui-state-active"),r.hide(),n()),r.attr({"aria-expanded":"false","aria-hidden":"true"}),i.oldTab.attr("aria-selected","false"),o.length&&r.length?i.oldTab.attr("tabIndex",-1):o.length&&this.tabs.filter(function(){return 0===t(this).attr("tabIndex")}).attr("tabIndex",-1),o.attr({"aria-expanded":"true","aria-hidden":"false"}),i.newTab.attr({"aria-selected":"true",tabIndex:0})},_activate:function(e){var i,s=this._findActive(e);s[0]!==this.active[0]&&(s.length||(s=this.active),i=s.find(".ui-tabs-anchor")[0],this._eventHandler({target:i,currentTarget:i,preventDefault:t.noop}))},_findActive:function(e){return e===!1?t():this.tabs.eq(e)},_getIndex:function(t){return"string"==typeof t&&(t=this.anchors.index(this.anchors.filter("[href$='"+t+"']"))),t},_destroy:function(){this.xhr&&this.xhr.abort(),this.element.removeClass("ui-tabs ui-widget ui-widget-content ui-corner-all ui-tabs-collapsible"),this.tablist.removeClass("ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all").removeAttr("role"),this.anchors.removeClass("ui-tabs-anchor").removeAttr("role").removeAttr("tabIndex").removeUniqueId(),this.tabs.add(this.panels).each(function(){t.data(this,"ui-tabs-destroy")?t(this).remove():t(this).removeClass("ui-state-default ui-state-active ui-state-disabled ui-corner-top ui-corner-bottom ui-widget-content ui-tabs-active ui-tabs-panel").removeAttr("tabIndex").removeAttr("aria-live").removeAttr("aria-busy").removeAttr("aria-selected").removeAttr("aria-labelledby").removeAttr("aria-hidden").removeAttr("aria-expanded").removeAttr("role")}),this.tabs.each(function(){var e=t(this),i=e.data("ui-tabs-aria-controls");i?e.attr("aria-controls",i).removeData("ui-tabs-aria-controls"):e.removeAttr("aria-controls")}),this.panels.show(),"content"!==this.options.heightStyle&&this.panels.css("height","")},enable:function(i){var s=this.options.disabled;s!==!1&&(i===e?s=!1:(i=this._getIndex(i),s=t.isArray(s)?t.map(s,function(t){return t!==i?t:null}):t.map(this.tabs,function(t,e){return e!==i?e:null})),this._setupDisabled(s))},disable:function(i){var s=this.options.disabled;if(s!==!0){if(i===e)s=!0;else{if(i=this._getIndex(i),-1!==t.inArray(i,s))return;s=t.isArray(s)?t.merge([i],s).sort():[i]}this._setupDisabled(s)}},load:function(e,i){e=this._getIndex(e);var n=this,a=this.tabs.eq(e),o=a.find(".ui-tabs-anchor"),r=this._getPanelForTab(a),h={tab:a,panel:r};s(o[0])||(this.xhr=t.ajax(this._ajaxSettings(o,i,h)),this.xhr&&"canceled"!==this.xhr.statusText&&(a.addClass("ui-tabs-loading"),r.attr("aria-busy","true"),this.xhr.success(function(t){setTimeout(function(){r.html(t),n._trigger("load",i,h)},1)}).complete(function(t,e){setTimeout(function(){"abort"===e&&n.panels.stop(!1,!0),a.removeClass("ui-tabs-loading"),r.removeAttr("aria-busy"),t===n.xhr&&delete n.xhr},1)})))},_ajaxSettings:function(e,i,s){var n=this;return{url:e.attr("href"),beforeSend:function(e,a){return n._trigger("beforeLoad",i,t.extend({jqXHR:e,ajaxSettings:a},s))}}},_getPanelForTab:function(e){var i=t(e).attr("aria-controls");return this.element.find(this._sanitizeSelector("#"+i))}})})(jQuery);(function(t){function e(e,i){var s=(e.attr("aria-describedby")||"").split(/\s+/);s.push(i),e.data("ui-tooltip-id",i).attr("aria-describedby",t.trim(s.join(" ")))}function i(e){var i=e.data("ui-tooltip-id"),s=(e.attr("aria-describedby")||"").split(/\s+/),n=t.inArray(i,s);-1!==n&&s.splice(n,1),e.removeData("ui-tooltip-id"),s=t.trim(s.join(" ")),s?e.attr("aria-describedby",s):e.removeAttr("aria-describedby")}var s=0;t.widget("ui.tooltip",{version:"1.10.2",options:{content:function(){var e=t(this).attr("title")||"";return t("<a>").text(e).html()},hide:!0,items:"[title]:not([disabled])",position:{my:"left top+15",at:"left bottom",collision:"flipfit flip"},show:!0,tooltipClass:null,track:!1,close:null,open:null},_create:function(){this._on({mouseover:"open",focusin:"open"}),this.tooltips={},this.parents={},this.options.disabled&&this._disable()},_setOption:function(e,i){var s=this;return"disabled"===e?(this[i?"_disable":"_enable"](),this.options[e]=i,void 0):(this._super(e,i),"content"===e&&t.each(this.tooltips,function(t,e){s._updateContent(e)}),void 0)},_disable:function(){var e=this;t.each(this.tooltips,function(i,s){var n=t.Event("blur");n.target=n.currentTarget=s[0],e.close(n,!0)}),this.element.find(this.options.items).addBack().each(function(){var e=t(this);e.is("[title]")&&e.data("ui-tooltip-title",e.attr("title")).attr("title","")})},_enable:function(){this.element.find(this.options.items).addBack().each(function(){var e=t(this);e.data("ui-tooltip-title")&&e.attr("title",e.data("ui-tooltip-title"))})},open:function(e){var i=this,s=t(e?e.target:this.element).closest(this.options.items);s.length&&!s.data("ui-tooltip-id")&&(s.attr("title")&&s.data("ui-tooltip-title",s.attr("title")),s.data("ui-tooltip-open",!0),e&&"mouseover"===e.type&&s.parents().each(function(){var e,s=t(this);s.data("ui-tooltip-open")&&(e=t.Event("blur"),e.target=e.currentTarget=this,i.close(e,!0)),s.attr("title")&&(s.uniqueId(),i.parents[this.id]={element:this,title:s.attr("title")},s.attr("title",""))}),this._updateContent(s,e))},_updateContent:function(t,e){var i,s=this.options.content,n=this,a=e?e.type:null;return"string"==typeof s?this._open(e,t,s):(i=s.call(t[0],function(i){t.data("ui-tooltip-open")&&n._delay(function(){e&&(e.type=a),this._open(e,t,i)})}),i&&this._open(e,t,i),void 0)},_open:function(i,s,n){function a(t){l.of=t,o.is(":hidden")||o.position(l)}var o,r,h,l=t.extend({},this.options.position);if(n){if(o=this._find(s),o.length)return o.find(".ui-tooltip-content").html(n),void 0;s.is("[title]")&&(i&&"mouseover"===i.type?s.attr("title",""):s.removeAttr("title")),o=this._tooltip(s),e(s,o.attr("id")),o.find(".ui-tooltip-content").html(n),this.options.track&&i&&/^mouse/.test(i.type)?(this._on(this.document,{mousemove:a}),a(i)):o.position(t.extend({of:s},this.options.position)),o.hide(),this._show(o,this.options.show),this.options.show&&this.options.show.delay&&(h=this.delayedShow=setInterval(function(){o.is(":visible")&&(a(l.of),clearInterval(h))},t.fx.interval)),this._trigger("open",i,{tooltip:o}),r={keyup:function(e){if(e.keyCode===t.ui.keyCode.ESCAPE){var i=t.Event(e);i.currentTarget=s[0],this.close(i,!0)}},remove:function(){this._removeTooltip(o)}},i&&"mouseover"!==i.type||(r.mouseleave="close"),i&&"focusin"!==i.type||(r.focusout="close"),this._on(!0,s,r)}},close:function(e){var s=this,n=t(e?e.currentTarget:this.element),a=this._find(n);this.closing||(clearInterval(this.delayedShow),n.data("ui-tooltip-title")&&n.attr("title",n.data("ui-tooltip-title")),i(n),a.stop(!0),this._hide(a,this.options.hide,function(){s._removeTooltip(t(this))}),n.removeData("ui-tooltip-open"),this._off(n,"mouseleave focusout keyup"),n[0]!==this.element[0]&&this._off(n,"remove"),this._off(this.document,"mousemove"),e&&"mouseleave"===e.type&&t.each(this.parents,function(e,i){t(i.element).attr("title",i.title),delete s.parents[e]}),this.closing=!0,this._trigger("close",e,{tooltip:a}),this.closing=!1)},_tooltip:function(e){var i="ui-tooltip-"+s++,n=t("<div>").attr({id:i,role:"tooltip"}).addClass("ui-tooltip ui-widget ui-corner-all ui-widget-content "+(this.options.tooltipClass||""));return t("<div>").addClass("ui-tooltip-content").appendTo(n),n.appendTo(this.document[0].body),this.tooltips[i]=e,n},_find:function(e){var i=e.data("ui-tooltip-id");return i?t("#"+i):t()},_removeTooltip:function(t){t.remove(),delete this.tooltips[t.attr("id")]},_destroy:function(){var e=this;t.each(this.tooltips,function(i,s){var n=t.Event("blur");n.target=n.currentTarget=s[0],e.close(n,!0),t("#"+i).remove(),s.data("ui-tooltip-title")&&(s.attr("title",s.data("ui-tooltip-title")),s.removeData("ui-tooltip-title"))})}})})(jQuery);(function(t,e){var i="ui-effects-";t.effects={effect:{}},function(t,e){function i(t,e,i){var s=u[e.type]||{};return null==t?i||!e.def?null:e.def:(t=s.floor?~~t:parseFloat(t),isNaN(t)?e.def:s.mod?(t+s.mod)%s.mod:0>t?0:t>s.max?s.max:t)}function s(i){var s=l(),n=s._rgba=[];return i=i.toLowerCase(),f(h,function(t,a){var o,r=a.re.exec(i),h=r&&a.parse(r),l=a.space||"rgba";return h?(o=s[l](h),s[c[l].cache]=o[c[l].cache],n=s._rgba=o._rgba,!1):e}),n.length?("0,0,0,0"===n.join()&&t.extend(n,a.transparent),s):a[i]}function n(t,e,i){return i=(i+1)%1,1>6*i?t+6*(e-t)*i:1>2*i?e:2>3*i?t+6*(e-t)*(2/3-i):t}var a,o="backgroundColor borderBottomColor borderLeftColor borderRightColor borderTopColor color columnRuleColor outlineColor textDecorationColor textEmphasisColor",r=/^([\-+])=\s*(\d+\.?\d*)/,h=[{re:/rgba?\(\s*(\d{1,3})\s*,\s*(\d{1,3})\s*,\s*(\d{1,3})\s*(?:,\s*(\d?(?:\.\d+)?)\s*)?\)/,parse:function(t){return[t[1],t[2],t[3],t[4]]}},{re:/rgba?\(\s*(\d+(?:\.\d+)?)\%\s*,\s*(\d+(?:\.\d+)?)\%\s*,\s*(\d+(?:\.\d+)?)\%\s*(?:,\s*(\d?(?:\.\d+)?)\s*)?\)/,parse:function(t){return[2.55*t[1],2.55*t[2],2.55*t[3],t[4]]}},{re:/#([a-f0-9]{2})([a-f0-9]{2})([a-f0-9]{2})/,parse:function(t){return[parseInt(t[1],16),parseInt(t[2],16),parseInt(t[3],16)]}},{re:/#([a-f0-9])([a-f0-9])([a-f0-9])/,parse:function(t){return[parseInt(t[1]+t[1],16),parseInt(t[2]+t[2],16),parseInt(t[3]+t[3],16)]}},{re:/hsla?\(\s*(\d+(?:\.\d+)?)\s*,\s*(\d+(?:\.\d+)?)\%\s*,\s*(\d+(?:\.\d+)?)\%\s*(?:,\s*(\d?(?:\.\d+)?)\s*)?\)/,space:"hsla",parse:function(t){return[t[1],t[2]/100,t[3]/100,t[4]]}}],l=t.Color=function(e,i,s,n){return new t.Color.fn.parse(e,i,s,n)},c={rgba:{props:{red:{idx:0,type:"byte"},green:{idx:1,type:"byte"},blue:{idx:2,type:"byte"}}},hsla:{props:{hue:{idx:0,type:"degrees"},saturation:{idx:1,type:"percent"},lightness:{idx:2,type:"percent"}}}},u={"byte":{floor:!0,max:255},percent:{max:1},degrees:{mod:360,floor:!0}},d=l.support={},p=t("<p>")[0],f=t.each;p.style.cssText="background-color:rgba(1,1,1,.5)",d.rgba=p.style.backgroundColor.indexOf("rgba")>-1,f(c,function(t,e){e.cache="_"+t,e.props.alpha={idx:3,type:"percent",def:1}}),l.fn=t.extend(l.prototype,{parse:function(n,o,r,h){if(n===e)return this._rgba=[null,null,null,null],this;(n.jquery||n.nodeType)&&(n=t(n).css(o),o=e);var u=this,d=t.type(n),p=this._rgba=[];return o!==e&&(n=[n,o,r,h],d="array"),"string"===d?this.parse(s(n)||a._default):"array"===d?(f(c.rgba.props,function(t,e){p[e.idx]=i(n[e.idx],e)}),this):"object"===d?(n instanceof l?f(c,function(t,e){n[e.cache]&&(u[e.cache]=n[e.cache].slice())}):f(c,function(e,s){var a=s.cache;f(s.props,function(t,e){if(!u[a]&&s.to){if("alpha"===t||null==n[t])return;u[a]=s.to(u._rgba)}u[a][e.idx]=i(n[t],e,!0)}),u[a]&&0>t.inArray(null,u[a].slice(0,3))&&(u[a][3]=1,s.from&&(u._rgba=s.from(u[a])))}),this):e},is:function(t){var i=l(t),s=!0,n=this;return f(c,function(t,a){var o,r=i[a.cache];return r&&(o=n[a.cache]||a.to&&a.to(n._rgba)||[],f(a.props,function(t,i){return null!=r[i.idx]?s=r[i.idx]===o[i.idx]:e})),s}),s},_space:function(){var t=[],e=this;return f(c,function(i,s){e[s.cache]&&t.push(i)}),t.pop()},transition:function(t,e){var s=l(t),n=s._space(),a=c[n],o=0===this.alpha()?l("transparent"):this,r=o[a.cache]||a.to(o._rgba),h=r.slice();return s=s[a.cache],f(a.props,function(t,n){var a=n.idx,o=r[a],l=s[a],c=u[n.type]||{};null!==l&&(null===o?h[a]=l:(c.mod&&(l-o>c.mod/2?o+=c.mod:o-l>c.mod/2&&(o-=c.mod)),h[a]=i((l-o)*e+o,n)))}),this[n](h)},blend:function(e){if(1===this._rgba[3])return this;var i=this._rgba.slice(),s=i.pop(),n=l(e)._rgba;return l(t.map(i,function(t,e){return(1-s)*n[e]+s*t}))},toRgbaString:function(){var e="rgba(",i=t.map(this._rgba,function(t,e){return null==t?e>2?1:0:t});return 1===i[3]&&(i.pop(),e="rgb("),e+i.join()+")"},toHslaString:function(){var e="hsla(",i=t.map(this.hsla(),function(t,e){return null==t&&(t=e>2?1:0),e&&3>e&&(t=Math.round(100*t)+"%"),t});return 1===i[3]&&(i.pop(),e="hsl("),e+i.join()+")"},toHexString:function(e){var i=this._rgba.slice(),s=i.pop();return e&&i.push(~~(255*s)),"#"+t.map(i,function(t){return t=(t||0).toString(16),1===t.length?"0"+t:t}).join("")},toString:function(){return 0===this._rgba[3]?"transparent":this.toRgbaString()}}),l.fn.parse.prototype=l.fn,c.hsla.to=function(t){if(null==t[0]||null==t[1]||null==t[2])return[null,null,null,t[3]];var e,i,s=t[0]/255,n=t[1]/255,a=t[2]/255,o=t[3],r=Math.max(s,n,a),h=Math.min(s,n,a),l=r-h,c=r+h,u=.5*c;return e=h===r?0:s===r?60*(n-a)/l+360:n===r?60*(a-s)/l+120:60*(s-n)/l+240,i=0===l?0:.5>=u?l/c:l/(2-c),[Math.round(e)%360,i,u,null==o?1:o]},c.hsla.from=function(t){if(null==t[0]||null==t[1]||null==t[2])return[null,null,null,t[3]];var e=t[0]/360,i=t[1],s=t[2],a=t[3],o=.5>=s?s*(1+i):s+i-s*i,r=2*s-o;return[Math.round(255*n(r,o,e+1/3)),Math.round(255*n(r,o,e)),Math.round(255*n(r,o,e-1/3)),a]},f(c,function(s,n){var a=n.props,o=n.cache,h=n.to,c=n.from;l.fn[s]=function(s){if(h&&!this[o]&&(this[o]=h(this._rgba)),s===e)return this[o].slice();var n,r=t.type(s),u="array"===r||"object"===r?s:arguments,d=this[o].slice();return f(a,function(t,e){var s=u["object"===r?t:e.idx];null==s&&(s=d[e.idx]),d[e.idx]=i(s,e)}),c?(n=l(c(d)),n[o]=d,n):l(d)},f(a,function(e,i){l.fn[e]||(l.fn[e]=function(n){var a,o=t.type(n),h="alpha"===e?this._hsla?"hsla":"rgba":s,l=this[h](),c=l[i.idx];return"undefined"===o?c:("function"===o&&(n=n.call(this,c),o=t.type(n)),null==n&&i.empty?this:("string"===o&&(a=r.exec(n),a&&(n=c+parseFloat(a[2])*("+"===a[1]?1:-1))),l[i.idx]=n,this[h](l)))})})}),l.hook=function(e){var i=e.split(" ");f(i,function(e,i){t.cssHooks[i]={set:function(e,n){var a,o,r="";if("transparent"!==n&&("string"!==t.type(n)||(a=s(n)))){if(n=l(a||n),!d.rgba&&1!==n._rgba[3]){for(o="backgroundColor"===i?e.parentNode:e;(""===r||"transparent"===r)&&o&&o.style;)try{r=t.css(o,"backgroundColor"),o=o.parentNode}catch(h){}n=n.blend(r&&"transparent"!==r?r:"_default")}n=n.toRgbaString()}try{e.style[i]=n}catch(h){}}},t.fx.step[i]=function(e){e.colorInit||(e.start=l(e.elem,i),e.end=l(e.end),e.colorInit=!0),t.cssHooks[i].set(e.elem,e.start.transition(e.end,e.pos))}})},l.hook(o),t.cssHooks.borderColor={expand:function(t){var e={};return f(["Top","Right","Bottom","Left"],function(i,s){e["border"+s+"Color"]=t}),e}},a=t.Color.names={aqua:"#00ffff",black:"#000000",blue:"#0000ff",fuchsia:"#ff00ff",gray:"#808080",green:"#008000",lime:"#00ff00",maroon:"#800000",navy:"#000080",olive:"#808000",purple:"#800080",red:"#ff0000",silver:"#c0c0c0",teal:"#008080",white:"#ffffff",yellow:"#ffff00",transparent:[null,null,null,0],_default:"#ffffff"}}(jQuery),function(){function i(e){var i,s,n=e.ownerDocument.defaultView?e.ownerDocument.defaultView.getComputedStyle(e,null):e.currentStyle,a={};if(n&&n.length&&n[0]&&n[n[0]])for(s=n.length;s--;)i=n[s],"string"==typeof n[i]&&(a[t.camelCase(i)]=n[i]);else for(i in n)"string"==typeof n[i]&&(a[i]=n[i]);return a}function s(e,i){var s,n,o={};for(s in i)n=i[s],e[s]!==n&&(a[s]||(t.fx.step[s]||!isNaN(parseFloat(n)))&&(o[s]=n));return o}var n=["add","remove","toggle"],a={border:1,borderBottom:1,borderColor:1,borderLeft:1,borderRight:1,borderTop:1,borderWidth:1,margin:1,padding:1};t.each(["borderLeftStyle","borderRightStyle","borderBottomStyle","borderTopStyle"],function(e,i){t.fx.step[i]=function(t){("none"!==t.end&&!t.setAttr||1===t.pos&&!t.setAttr)&&(jQuery.style(t.elem,i,t.end),t.setAttr=!0)}}),t.fn.addBack||(t.fn.addBack=function(t){return this.add(null==t?this.prevObject:this.prevObject.filter(t))}),t.effects.animateClass=function(e,a,o,r){var h=t.speed(a,o,r);return this.queue(function(){var a,o=t(this),r=o.attr("class")||"",l=h.children?o.find("*").addBack():o;l=l.map(function(){var e=t(this);return{el:e,start:i(this)}}),a=function(){t.each(n,function(t,i){e[i]&&o[i+"Class"](e[i])})},a(),l=l.map(function(){return this.end=i(this.el[0]),this.diff=s(this.start,this.end),this}),o.attr("class",r),l=l.map(function(){var e=this,i=t.Deferred(),s=t.extend({},h,{queue:!1,complete:function(){i.resolve(e)}});return this.el.animate(this.diff,s),i.promise()}),t.when.apply(t,l.get()).done(function(){a(),t.each(arguments,function(){var e=this.el;t.each(this.diff,function(t){e.css(t,"")})}),h.complete.call(o[0])})})},t.fn.extend({addClass:function(e){return function(i,s,n,a){return s?t.effects.animateClass.call(this,{add:i},s,n,a):e.apply(this,arguments)}}(t.fn.addClass),removeClass:function(e){return function(i,s,n,a){return arguments.length>1?t.effects.animateClass.call(this,{remove:i},s,n,a):e.apply(this,arguments)}}(t.fn.removeClass),toggleClass:function(i){return function(s,n,a,o,r){return"boolean"==typeof n||n===e?a?t.effects.animateClass.call(this,n?{add:s}:{remove:s},a,o,r):i.apply(this,arguments):t.effects.animateClass.call(this,{toggle:s},n,a,o)}}(t.fn.toggleClass),switchClass:function(e,i,s,n,a){return t.effects.animateClass.call(this,{add:i,remove:e},s,n,a)}})}(),function(){function s(e,i,s,n){return t.isPlainObject(e)&&(i=e,e=e.effect),e={effect:e},null==i&&(i={}),t.isFunction(i)&&(n=i,s=null,i={}),("number"==typeof i||t.fx.speeds[i])&&(n=s,s=i,i={}),t.isFunction(s)&&(n=s,s=null),i&&t.extend(e,i),s=s||i.duration,e.duration=t.fx.off?0:"number"==typeof s?s:s in t.fx.speeds?t.fx.speeds[s]:t.fx.speeds._default,e.complete=n||i.complete,e}function n(e){return!e||"number"==typeof e||t.fx.speeds[e]?!0:"string"!=typeof e||t.effects.effect[e]?t.isFunction(e)?!0:"object"!=typeof e||e.effect?!1:!0:!0}t.extend(t.effects,{version:"1.10.2",save:function(t,e){for(var s=0;e.length>s;s++)null!==e[s]&&t.data(i+e[s],t[0].style[e[s]])},restore:function(t,s){var n,a;for(a=0;s.length>a;a++)null!==s[a]&&(n=t.data(i+s[a]),n===e&&(n=""),t.css(s[a],n))},setMode:function(t,e){return"toggle"===e&&(e=t.is(":hidden")?"show":"hide"),e},getBaseline:function(t,e){var i,s;switch(t[0]){case"top":i=0;break;case"middle":i=.5;break;case"bottom":i=1;break;default:i=t[0]/e.height}switch(t[1]){case"left":s=0;break;case"center":s=.5;break;case"right":s=1;break;default:s=t[1]/e.width}return{x:s,y:i}},createWrapper:function(e){if(e.parent().is(".ui-effects-wrapper"))return e.parent();var i={width:e.outerWidth(!0),height:e.outerHeight(!0),"float":e.css("float")},s=t("<div></div>").addClass("ui-effects-wrapper").css({fontSize:"100%",background:"transparent",border:"none",margin:0,padding:0}),n={width:e.width(),height:e.height()},a=document.activeElement;try{a.id}catch(o){a=document.body}return e.wrap(s),(e[0]===a||t.contains(e[0],a))&&t(a).focus(),s=e.parent(),"static"===e.css("position")?(s.css({position:"relative"}),e.css({position:"relative"})):(t.extend(i,{position:e.css("position"),zIndex:e.css("z-index")}),t.each(["top","left","bottom","right"],function(t,s){i[s]=e.css(s),isNaN(parseInt(i[s],10))&&(i[s]="auto")}),e.css({position:"relative",top:0,left:0,right:"auto",bottom:"auto"})),e.css(n),s.css(i).show()},removeWrapper:function(e){var i=document.activeElement;return e.parent().is(".ui-effects-wrapper")&&(e.parent().replaceWith(e),(e[0]===i||t.contains(e[0],i))&&t(i).focus()),e},setTransition:function(e,i,s,n){return n=n||{},t.each(i,function(t,i){var a=e.cssUnit(i);a[0]>0&&(n[i]=a[0]*s+a[1])}),n}}),t.fn.extend({effect:function(){function e(e){function s(){t.isFunction(a)&&a.call(n[0]),t.isFunction(e)&&e()}var n=t(this),a=i.complete,r=i.mode;(n.is(":hidden")?"hide"===r:"show"===r)?(n[r](),s()):o.call(n[0],i,s)}var i=s.apply(this,arguments),n=i.mode,a=i.queue,o=t.effects.effect[i.effect];return t.fx.off||!o?n?this[n](i.duration,i.complete):this.each(function(){i.complete&&i.complete.call(this)}):a===!1?this.each(e):this.queue(a||"fx",e)},show:function(t){return function(e){if(n(e))return t.apply(this,arguments);var i=s.apply(this,arguments);return i.mode="show",this.effect.call(this,i)}}(t.fn.show),hide:function(t){return function(e){if(n(e))return t.apply(this,arguments);var i=s.apply(this,arguments);return i.mode="hide",this.effect.call(this,i)}}(t.fn.hide),toggle:function(t){return function(e){if(n(e)||"boolean"==typeof e)return t.apply(this,arguments);var i=s.apply(this,arguments);return i.mode="toggle",this.effect.call(this,i)}}(t.fn.toggle),cssUnit:function(e){var i=this.css(e),s=[];return t.each(["em","px","%","pt"],function(t,e){i.indexOf(e)>0&&(s=[parseFloat(i),e])}),s}})}(),function(){var e={};t.each(["Quad","Cubic","Quart","Quint","Expo"],function(t,i){e[i]=function(e){return Math.pow(e,t+2)}}),t.extend(e,{Sine:function(t){return 1-Math.cos(t*Math.PI/2)},Circ:function(t){return 1-Math.sqrt(1-t*t)},Elastic:function(t){return 0===t||1===t?t:-Math.pow(2,8*(t-1))*Math.sin((80*(t-1)-7.5)*Math.PI/15)},Back:function(t){return t*t*(3*t-2)},Bounce:function(t){for(var e,i=4;((e=Math.pow(2,--i))-1)/11>t;);return 1/Math.pow(4,3-i)-7.5625*Math.pow((3*e-2)/22-t,2)}}),t.each(e,function(e,i){t.easing["easeIn"+e]=i,t.easing["easeOut"+e]=function(t){return 1-i(1-t)},t.easing["easeInOut"+e]=function(t){return.5>t?i(2*t)/2:1-i(-2*t+2)/2}})}()})(jQuery);(function(t){var e=/up|down|vertical/,i=/up|left|vertical|horizontal/;t.effects.effect.blind=function(s,n){var a,o,r,h=t(this),l=["position","top","bottom","left","right","height","width"],c=t.effects.setMode(h,s.mode||"hide"),u=s.direction||"up",d=e.test(u),p=d?"height":"width",f=d?"top":"left",m=i.test(u),g={},v="show"===c;h.parent().is(".ui-effects-wrapper")?t.effects.save(h.parent(),l):t.effects.save(h,l),h.show(),a=t.effects.createWrapper(h).css({overflow:"hidden"}),o=a[p](),r=parseFloat(a.css(f))||0,g[p]=v?o:0,m||(h.css(d?"bottom":"right",0).css(d?"top":"left","auto").css({position:"absolute"}),g[f]=v?r:o+r),v&&(a.css(p,0),m||a.css(f,r+o)),a.animate(g,{duration:s.duration,easing:s.easing,queue:!1,complete:function(){"hide"===c&&h.hide(),t.effects.restore(h,l),t.effects.removeWrapper(h),n()}})}})(jQuery);(function(t){t.effects.effect.bounce=function(e,i){var s,n,a,o=t(this),r=["position","top","bottom","left","right","height","width"],h=t.effects.setMode(o,e.mode||"effect"),l="hide"===h,c="show"===h,u=e.direction||"up",d=e.distance,p=e.times||5,f=2*p+(c||l?1:0),m=e.duration/f,g=e.easing,v="up"===u||"down"===u?"top":"left",_="up"===u||"left"===u,b=o.queue(),y=b.length;for((c||l)&&r.push("opacity"),t.effects.save(o,r),o.show(),t.effects.createWrapper(o),d||(d=o["top"===v?"outerHeight":"outerWidth"]()/3),c&&(a={opacity:1},a[v]=0,o.css("opacity",0).css(v,_?2*-d:2*d).animate(a,m,g)),l&&(d/=Math.pow(2,p-1)),a={},a[v]=0,s=0;p>s;s++)n={},n[v]=(_?"-=":"+=")+d,o.animate(n,m,g).animate(a,m,g),d=l?2*d:d/2;l&&(n={opacity:0},n[v]=(_?"-=":"+=")+d,o.animate(n,m,g)),o.queue(function(){l&&o.hide(),t.effects.restore(o,r),t.effects.removeWrapper(o),i()}),y>1&&b.splice.apply(b,[1,0].concat(b.splice(y,f+1))),o.dequeue()}})(jQuery);(function(t){t.effects.effect.clip=function(e,i){var s,n,a,o=t(this),r=["position","top","bottom","left","right","height","width"],h=t.effects.setMode(o,e.mode||"hide"),l="show"===h,c=e.direction||"vertical",u="vertical"===c,d=u?"height":"width",p=u?"top":"left",f={};t.effects.save(o,r),o.show(),s=t.effects.createWrapper(o).css({overflow:"hidden"}),n="IMG"===o[0].tagName?s:o,a=n[d](),l&&(n.css(d,0),n.css(p,a/2)),f[d]=l?a:0,f[p]=l?0:a/2,n.animate(f,{queue:!1,duration:e.duration,easing:e.easing,complete:function(){l||o.hide(),t.effects.restore(o,r),t.effects.removeWrapper(o),i()}})}})(jQuery);(function(t){t.effects.effect.drop=function(e,i){var s,n=t(this),a=["position","top","bottom","left","right","opacity","height","width"],o=t.effects.setMode(n,e.mode||"hide"),r="show"===o,h=e.direction||"left",l="up"===h||"down"===h?"top":"left",c="up"===h||"left"===h?"pos":"neg",u={opacity:r?1:0};t.effects.save(n,a),n.show(),t.effects.createWrapper(n),s=e.distance||n["top"===l?"outerHeight":"outerWidth"](!0)/2,r&&n.css("opacity",0).css(l,"pos"===c?-s:s),u[l]=(r?"pos"===c?"+=":"-=":"pos"===c?"-=":"+=")+s,n.animate(u,{queue:!1,duration:e.duration,easing:e.easing,complete:function(){"hide"===o&&n.hide(),t.effects.restore(n,a),t.effects.removeWrapper(n),i()}})}})(jQuery);(function(t){t.effects.effect.explode=function(e,i){function s(){b.push(this),b.length===u*d&&n()}function n(){p.css({visibility:"visible"}),t(b).remove(),m||p.hide(),i()}var a,o,r,h,l,c,u=e.pieces?Math.round(Math.sqrt(e.pieces)):3,d=u,p=t(this),f=t.effects.setMode(p,e.mode||"hide"),m="show"===f,g=p.show().css("visibility","hidden").offset(),v=Math.ceil(p.outerWidth()/d),_=Math.ceil(p.outerHeight()/u),b=[];for(a=0;u>a;a++)for(h=g.top+a*_,c=a-(u-1)/2,o=0;d>o;o++)r=g.left+o*v,l=o-(d-1)/2,p.clone().appendTo("body").wrap("<div></div>").css({position:"absolute",visibility:"visible",left:-o*v,top:-a*_}).parent().addClass("ui-effects-explode").css({position:"absolute",overflow:"hidden",width:v,height:_,left:r+(m?l*v:0),top:h+(m?c*_:0),opacity:m?0:1}).animate({left:r+(m?0:l*v),top:h+(m?0:c*_),opacity:m?1:0},e.duration||500,e.easing,s)}})(jQuery);(function(t){t.effects.effect.fade=function(e,i){var s=t(this),n=t.effects.setMode(s,e.mode||"toggle");s.animate({opacity:n},{queue:!1,duration:e.duration,easing:e.easing,complete:i})}})(jQuery);(function(t){t.effects.effect.fold=function(e,i){var s,n,a=t(this),o=["position","top","bottom","left","right","height","width"],r=t.effects.setMode(a,e.mode||"hide"),h="show"===r,l="hide"===r,c=e.size||15,u=/([0-9]+)%/.exec(c),d=!!e.horizFirst,p=h!==d,f=p?["width","height"]:["height","width"],m=e.duration/2,g={},v={};t.effects.save(a,o),a.show(),s=t.effects.createWrapper(a).css({overflow:"hidden"}),n=p?[s.width(),s.height()]:[s.height(),s.width()],u&&(c=parseInt(u[1],10)/100*n[l?0:1]),h&&s.css(d?{height:0,width:c}:{height:c,width:0}),g[f[0]]=h?n[0]:c,v[f[1]]=h?n[1]:0,s.animate(g,m,e.easing).animate(v,m,e.easing,function(){l&&a.hide(),t.effects.restore(a,o),t.effects.removeWrapper(a),i()})}})(jQuery);(function(t){t.effects.effect.highlight=function(e,i){var s=t(this),n=["backgroundImage","backgroundColor","opacity"],a=t.effects.setMode(s,e.mode||"show"),o={backgroundColor:s.css("backgroundColor")};"hide"===a&&(o.opacity=0),t.effects.save(s,n),s.show().css({backgroundImage:"none",backgroundColor:e.color||"#ffff99"}).animate(o,{queue:!1,duration:e.duration,easing:e.easing,complete:function(){"hide"===a&&s.hide(),t.effects.restore(s,n),i()}})}})(jQuery);(function(t){t.effects.effect.pulsate=function(e,i){var s,n=t(this),a=t.effects.setMode(n,e.mode||"show"),o="show"===a,r="hide"===a,h=o||"hide"===a,l=2*(e.times||5)+(h?1:0),c=e.duration/l,u=0,d=n.queue(),p=d.length;for((o||!n.is(":visible"))&&(n.css("opacity",0).show(),u=1),s=1;l>s;s++)n.animate({opacity:u},c,e.easing),u=1-u;n.animate({opacity:u},c,e.easing),n.queue(function(){r&&n.hide(),i()}),p>1&&d.splice.apply(d,[1,0].concat(d.splice(p,l+1))),n.dequeue()}})(jQuery);(function(t){t.effects.effect.puff=function(e,i){var s=t(this),n=t.effects.setMode(s,e.mode||"hide"),a="hide"===n,o=parseInt(e.percent,10)||150,r=o/100,h={height:s.height(),width:s.width(),outerHeight:s.outerHeight(),outerWidth:s.outerWidth()};t.extend(e,{effect:"scale",queue:!1,fade:!0,mode:n,complete:i,percent:a?o:100,from:a?h:{height:h.height*r,width:h.width*r,outerHeight:h.outerHeight*r,outerWidth:h.outerWidth*r}}),s.effect(e)},t.effects.effect.scale=function(e,i){var s=t(this),n=t.extend(!0,{},e),a=t.effects.setMode(s,e.mode||"effect"),o=parseInt(e.percent,10)||(0===parseInt(e.percent,10)?0:"hide"===a?0:100),r=e.direction||"both",h=e.origin,l={height:s.height(),width:s.width(),outerHeight:s.outerHeight(),outerWidth:s.outerWidth()},c={y:"horizontal"!==r?o/100:1,x:"vertical"!==r?o/100:1};n.effect="size",n.queue=!1,n.complete=i,"effect"!==a&&(n.origin=h||["middle","center"],n.restore=!0),n.from=e.from||("show"===a?{height:0,width:0,outerHeight:0,outerWidth:0}:l),n.to={height:l.height*c.y,width:l.width*c.x,outerHeight:l.outerHeight*c.y,outerWidth:l.outerWidth*c.x},n.fade&&("show"===a&&(n.from.opacity=0,n.to.opacity=1),"hide"===a&&(n.from.opacity=1,n.to.opacity=0)),s.effect(n)},t.effects.effect.size=function(e,i){var s,n,a,o=t(this),r=["position","top","bottom","left","right","width","height","overflow","opacity"],h=["position","top","bottom","left","right","overflow","opacity"],l=["width","height","overflow"],c=["fontSize"],u=["borderTopWidth","borderBottomWidth","paddingTop","paddingBottom"],d=["borderLeftWidth","borderRightWidth","paddingLeft","paddingRight"],p=t.effects.setMode(o,e.mode||"effect"),f=e.restore||"effect"!==p,m=e.scale||"both",g=e.origin||["middle","center"],v=o.css("position"),_=f?r:h,b={height:0,width:0,outerHeight:0,outerWidth:0};"show"===p&&o.show(),s={height:o.height(),width:o.width(),outerHeight:o.outerHeight(),outerWidth:o.outerWidth()},"toggle"===e.mode&&"show"===p?(o.from=e.to||b,o.to=e.from||s):(o.from=e.from||("show"===p?b:s),o.to=e.to||("hide"===p?b:s)),a={from:{y:o.from.height/s.height,x:o.from.width/s.width},to:{y:o.to.height/s.height,x:o.to.width/s.width}},("box"===m||"both"===m)&&(a.from.y!==a.to.y&&(_=_.concat(u),o.from=t.effects.setTransition(o,u,a.from.y,o.from),o.to=t.effects.setTransition(o,u,a.to.y,o.to)),a.from.x!==a.to.x&&(_=_.concat(d),o.from=t.effects.setTransition(o,d,a.from.x,o.from),o.to=t.effects.setTransition(o,d,a.to.x,o.to))),("content"===m||"both"===m)&&a.from.y!==a.to.y&&(_=_.concat(c).concat(l),o.from=t.effects.setTransition(o,c,a.from.y,o.from),o.to=t.effects.setTransition(o,c,a.to.y,o.to)),t.effects.save(o,_),o.show(),t.effects.createWrapper(o),o.css("overflow","hidden").css(o.from),g&&(n=t.effects.getBaseline(g,s),o.from.top=(s.outerHeight-o.outerHeight())*n.y,o.from.left=(s.outerWidth-o.outerWidth())*n.x,o.to.top=(s.outerHeight-o.to.outerHeight)*n.y,o.to.left=(s.outerWidth-o.to.outerWidth)*n.x),o.css(o.from),("content"===m||"both"===m)&&(u=u.concat(["marginTop","marginBottom"]).concat(c),d=d.concat(["marginLeft","marginRight"]),l=r.concat(u).concat(d),o.find("*[width]").each(function(){var i=t(this),s={height:i.height(),width:i.width(),outerHeight:i.outerHeight(),outerWidth:i.outerWidth()};f&&t.effects.save(i,l),i.from={height:s.height*a.from.y,width:s.width*a.from.x,outerHeight:s.outerHeight*a.from.y,outerWidth:s.outerWidth*a.from.x},i.to={height:s.height*a.to.y,width:s.width*a.to.x,outerHeight:s.height*a.to.y,outerWidth:s.width*a.to.x},a.from.y!==a.to.y&&(i.from=t.effects.setTransition(i,u,a.from.y,i.from),i.to=t.effects.setTransition(i,u,a.to.y,i.to)),a.from.x!==a.to.x&&(i.from=t.effects.setTransition(i,d,a.from.x,i.from),i.to=t.effects.setTransition(i,d,a.to.x,i.to)),i.css(i.from),i.animate(i.to,e.duration,e.easing,function(){f&&t.effects.restore(i,l)})})),o.animate(o.to,{queue:!1,duration:e.duration,easing:e.easing,complete:function(){0===o.to.opacity&&o.css("opacity",o.from.opacity),"hide"===p&&o.hide(),t.effects.restore(o,_),f||("static"===v?o.css({position:"relative",top:o.to.top,left:o.to.left}):t.each(["top","left"],function(t,e){o.css(e,function(e,i){var s=parseInt(i,10),n=t?o.to.left:o.to.top;return"auto"===i?n+"px":s+n+"px"})})),t.effects.removeWrapper(o),i()}})}})(jQuery);(function(t){t.effects.effect.shake=function(e,i){var s,n=t(this),a=["position","top","bottom","left","right","height","width"],o=t.effects.setMode(n,e.mode||"effect"),r=e.direction||"left",h=e.distance||20,l=e.times||3,c=2*l+1,u=Math.round(e.duration/c),d="up"===r||"down"===r?"top":"left",p="up"===r||"left"===r,f={},m={},g={},v=n.queue(),_=v.length;for(t.effects.save(n,a),n.show(),t.effects.createWrapper(n),f[d]=(p?"-=":"+=")+h,m[d]=(p?"+=":"-=")+2*h,g[d]=(p?"-=":"+=")+2*h,n.animate(f,u,e.easing),s=1;l>s;s++)n.animate(m,u,e.easing).animate(g,u,e.easing);n.animate(m,u,e.easing).animate(f,u/2,e.easing).queue(function(){"hide"===o&&n.hide(),t.effects.restore(n,a),t.effects.removeWrapper(n),i()}),_>1&&v.splice.apply(v,[1,0].concat(v.splice(_,c+1))),n.dequeue()}})(jQuery);(function(t){t.effects.effect.slide=function(e,i){var s,n=t(this),a=["position","top","bottom","left","right","width","height"],o=t.effects.setMode(n,e.mode||"show"),r="show"===o,h=e.direction||"left",l="up"===h||"down"===h?"top":"left",c="up"===h||"left"===h,u={};t.effects.save(n,a),n.show(),s=e.distance||n["top"===l?"outerHeight":"outerWidth"](!0),t.effects.createWrapper(n).css({overflow:"hidden"}),r&&n.css(l,c?isNaN(s)?"-"+s:-s:s),u[l]=(r?c?"+=":"-=":c?"-=":"+=")+s,n.animate(u,{queue:!1,duration:e.duration,easing:e.easing,complete:function(){"hide"===o&&n.hide(),t.effects.restore(n,a),t.effects.removeWrapper(n),i()}})}})(jQuery);(function(t){t.effects.effect.transfer=function(e,i){var s=t(this),n=t(e.to),a="fixed"===n.css("position"),o=t("body"),r=a?o.scrollTop():0,h=a?o.scrollLeft():0,l=n.offset(),c={top:l.top-r,left:l.left-h,height:n.innerHeight(),width:n.innerWidth()},u=s.offset(),d=t("<div class='ui-effects-transfer'></div>").appendTo(document.body).addClass(e.className).css({top:u.top-r,left:u.left-h,height:s.innerHeight(),width:s.innerWidth(),position:a?"fixed":"absolute"}).animate(c,e.duration,e.easing,function(){d.remove(),i()})}})(jQuery);

/*
 * SPServices - Work with SharePoint's Web Services using jQuery
 * Version 2014.01
 * @requires jQuery v1.8 or greater - jQuery 1.10.x recommended
 *
 * Copyright (c) 2009-2013 Sympraxis Consulting LLC
 * Examples and docs at:
 * http://spservices.codeplex.com
 * Licensed under the MIT license:
 * http://www.opensource.org/licenses/mit-license.php
 */
/*
 * @description Work with SharePoint's Web Services using jQuery
 * @type jQuery
 * @name SPServices
 * @category Plugins/SPServices
 * @author Sympraxis Consulting LLC/marc.anderson@sympraxisconsulting.com
 */
/* jshint undef: true */
/* global L_Menu_BaseUrl, _spUserId, _spPageContextInfo, GipAddSelectedItems, GipRemoveSelectedItems, GipGetGroupData */

(function($) {

    "use strict";

    // Version info
    var VERSION = "2014.01ALFHA2"; // TODO: Update version

    // String constants
    //   General
    var SLASH = "/";
    var TXTColumnNotFound = "Column not found on page";
    var SCHEMASharePoint = "http://schemas.microsoft.com/sharepoint";
    var multiLookupPrefix = "MultiLookupPicker";
    var multiLookupPrefix2013 = "MultiLookup";

    // Known list field types
    var spListFieldTypes = [
        "Text",
        "DateTime",
        "datetime",
        "User",
        "UserMulti",
        "Lookup",
        "LookupMulti",
        "Boolean",
        "Integer",
        "Counter",
        "MultiChoice",
        "Currency",
        "float",
        "Calc",
        "Attachments",
        "Calculated",
        "ContentTypeId",
        "Note",
        //          "Computed",
        "URL",
        "Number",
        "Choice",
        "ModStat",
        "Guid",
        "File"
    ];

    // Caching
    var promisesCache = {};

    //   Web Service names
    var ALERTS = "Alerts";
    var AUTHENTICATION = "Authentication";
    var COPY = "Copy";
    var FORMS = "Forms";
    var LISTS = "Lists";
    var MEETINGS = "Meetings";
    var PEOPLE = "People";
    var PERMISSIONS = "Permissions";
    var PUBLISHEDLINKSSERVICE = "PublishedLinksService";
    var SEARCH = "Search";
    var SHAREPOINTDIAGNOSTICS = "SharePointDiagnostics";
    var SITEDATA = "SiteData";
    var SITES = "Sites";
    var SOCIALDATASERVICE = "SocialDataService";
    var SPELLCHECK = "SpellCheck";
    var TAXONOMYSERVICE = "TaxonomyClientService";
    var USERGROUP = "usergroup";
    var USERPROFILESERVICE = "UserProfileService";
    var VERSIONS = "Versions";
    var VIEWS = "Views";
    var WEBPARTPAGES = "WebPartPages";
    var WEBS = "Webs";
    var WORKFLOW = "Workflow";

    // Global variables
    var currentContext = new SPServicesContext(); // Variable to hold the current context as we figure it out
    var i = 0; // Generic loop counter
    var encodeOptionList = ["listName", "description"]; // Used to encode options which may contain special characters


    // Array to store Web Service information
    //  WSops.OpName = [WebService, needs_SOAPAction];
    //      OpName              The name of the Web Service operation -> These names are unique
    //      WebService          The name of the WebService this operation belongs to
    //      needs_SOAPAction    Boolean indicating whether the operatio needs to have the SOAPAction passed in the setRequestHeaderfunction.
    //                          true if the operation does a write, else false

    var WSops = [];

    WSops.GetAlerts = [ALERTS, false];
    WSops.DeleteAlerts = [ALERTS, true];

    WSops.Mode = [AUTHENTICATION, false];
    WSops.Login = [AUTHENTICATION, false];

    WSops.CopyIntoItems = [COPY, true];
    WSops.CopyIntoItemsLocal = [COPY, true];
    WSops.GetItem = [COPY, false];

    WSops.GetForm = [FORMS, false];
    WSops.GetFormCollection = [FORMS, false];

    WSops.AddAttachment = [LISTS, true];
    WSops.AddDiscussionBoardItem = [LISTS, true];
    WSops.AddList = [LISTS, true];
    WSops.AddListFromFeature = [LISTS, true];
    WSops.ApplyContentTypeToList = [LISTS, true];
    WSops.CheckInFile = [LISTS, true];
    WSops.CheckOutFile = [LISTS, true];
    WSops.CreateContentType = [LISTS, true];
    WSops.DeleteAttachment = [LISTS, true];
    WSops.DeleteContentType = [LISTS, true];
    WSops.DeleteContentTypeXmlDocument = [LISTS, true];
    WSops.DeleteList = [LISTS, true];
    WSops.GetAttachmentCollection = [LISTS, false];
    WSops.GetList = [LISTS, false];
    WSops.GetListAndView = [LISTS, false];
    WSops.GetListCollection = [LISTS, false];
    WSops.GetListContentType = [LISTS, false];
    WSops.GetListContentTypes = [LISTS, false];
    WSops.GetListItemChanges = [LISTS, false];
    WSops.GetListItemChangesSinceToken = [LISTS, false];
    WSops.GetListItems = [LISTS, false];
    WSops.GetVersionCollection = [LISTS, false];
    WSops.UndoCheckOut = [LISTS, true];
    WSops.UpdateContentType = [LISTS, true];
    WSops.UpdateContentTypesXmlDocument = [LISTS, true];
    WSops.UpdateContentTypeXmlDocument = [LISTS, true];
    WSops.UpdateList = [LISTS, true];
    WSops.UpdateListItems = [LISTS, true];

    WSops.AddMeeting = [MEETINGS, true];
    WSops.CreateWorkspace = [MEETINGS, true];
    WSops.RemoveMeeting = [MEETINGS, true];
    WSops.SetWorkSpaceTitle = [MEETINGS, true];

    WSops.ResolvePrincipals = [PEOPLE, false];
    WSops.SearchPrincipals = [PEOPLE, false];

    WSops.AddPermission = [PERMISSIONS, true];
    WSops.AddPermissionCollection = [PERMISSIONS, true];
    WSops.GetPermissionCollection = [PERMISSIONS, true];
    WSops.RemovePermission = [PERMISSIONS, true];
    WSops.RemovePermissionCollection = [PERMISSIONS, true];
    WSops.UpdatePermission = [PERMISSIONS, true];

    WSops.GetLinks = [PUBLISHEDLINKSSERVICE, true];

    WSops.GetPortalSearchInfo = [SEARCH, false];
    WSops.GetQuerySuggestions = [SEARCH, false];
    WSops.GetSearchMetadata = [SEARCH, false];
    WSops.Query = [SEARCH, false];
    WSops.QueryEx = [SEARCH, false];
    WSops.Registration = [SEARCH, false];
    WSops.Status = [SEARCH, false];

    WSops.SendClientScriptErrorReport = [SHAREPOINTDIAGNOSTICS, true];

    WSops.GetAttachments = [SITEDATA, false];
    WSops.EnumerateFolder = [SITEDATA, false];
    WSops.SiteDataGetList = [SITEDATA, false];
    WSops.SiteDataGetListCollection = [SITEDATA, false];
    WSops.SiteDataGetSite = [SITEDATA, false];
    WSops.SiteDataGetSiteUrl = [SITEDATA, false];
    WSops.SiteDataGetWeb = [SITEDATA, false];

    WSops.CreateWeb = [SITES, true];
    WSops.DeleteWeb = [SITES, true];
    WSops.GetSite = [SITES, false];
    WSops.GetSiteTemplates = [SITES, false];

    WSops.AddComment = [SOCIALDATASERVICE, true];
    WSops.AddTag = [SOCIALDATASERVICE, true];
    WSops.AddTagByKeyword = [SOCIALDATASERVICE, true];
    WSops.CountCommentsOfUser = [SOCIALDATASERVICE, false];
    WSops.CountCommentsOfUserOnUrl = [SOCIALDATASERVICE, false];
    WSops.CountCommentsOnUrl = [SOCIALDATASERVICE, false];
    WSops.CountRatingsOnUrl = [SOCIALDATASERVICE, false];
    WSops.CountTagsOfUser = [SOCIALDATASERVICE, false];
    WSops.DeleteComment = [SOCIALDATASERVICE, true];
    WSops.DeleteRating = [SOCIALDATASERVICE, true];
    WSops.DeleteTag = [SOCIALDATASERVICE, true];
    WSops.DeleteTagByKeyword = [SOCIALDATASERVICE, true];
    WSops.DeleteTags = [SOCIALDATASERVICE, true];
    WSops.GetAllTagTerms = [SOCIALDATASERVICE, false];
    WSops.GetAllTagTermsForUrlFolder = [SOCIALDATASERVICE, false];
    WSops.GetAllTagUrls = [SOCIALDATASERVICE, false];
    WSops.GetAllTagUrlsByKeyword = [SOCIALDATASERVICE, false];
    WSops.GetCommentsOfUser = [SOCIALDATASERVICE, false];
    WSops.GetCommentsOfUserOnUrl = [SOCIALDATASERVICE, false];
    WSops.GetCommentsOnUrl = [SOCIALDATASERVICE, false];
    WSops.GetRatingAverageOnUrl = [SOCIALDATASERVICE, false];
    WSops.GetRatingOfUserOnUrl = [SOCIALDATASERVICE, false];
    WSops.GetRatingOnUrl = [SOCIALDATASERVICE, false];
    WSops.GetRatingsOfUser = [SOCIALDATASERVICE, false];
    WSops.GetRatingsOnUrl = [SOCIALDATASERVICE, false];
    WSops.GetSocialDataForFullReplication = [SOCIALDATASERVICE, false];
    WSops.GetTags = [SOCIALDATASERVICE, true];
    WSops.GetTagsOfUser = [SOCIALDATASERVICE, true];
    WSops.GetTagTerms = [SOCIALDATASERVICE, true];
    WSops.GetTagTermsOfUser = [SOCIALDATASERVICE, true];
    WSops.GetTagTermsOnUrl = [SOCIALDATASERVICE, true];
    WSops.GetTagUrlsOfUser = [SOCIALDATASERVICE, true];
    WSops.GetTagUrlsOfUserByKeyword = [SOCIALDATASERVICE, true];
    WSops.GetTagUrls = [SOCIALDATASERVICE, true];
    WSops.GetTagUrlsByKeyword = [SOCIALDATASERVICE, true];
    WSops.SetRating = [SOCIALDATASERVICE, true];
    WSops.UpdateComment = [SOCIALDATASERVICE, true];

    WSops.SpellCheck = [SPELLCHECK, false];

    // Taxonomy Service Calls
    // Updated 2011.01.27 by Thomas McMillan
    WSops.AddTerms = [TAXONOMYSERVICE, true];
    WSops.GetChildTermsInTerm = [TAXONOMYSERVICE, false];
    WSops.GetChildTermsInTermSet = [TAXONOMYSERVICE, false];
    WSops.GetKeywordTermsByGuids = [TAXONOMYSERVICE, false];
    WSops.GetTermsByLabel = [TAXONOMYSERVICE, false];
    WSops.GetTermSets = [TAXONOMYSERVICE, false];

    WSops.AddGroup = [USERGROUP, true];
    WSops.AddGroupToRole = [USERGROUP, true];
    WSops.AddRole = [USERGROUP, true];
    WSops.AddRoleDef = [USERGROUP, true];
    WSops.AddUserCollectionToGroup = [USERGROUP, true];
    WSops.AddUserCollectionToRole = [USERGROUP, true];
    WSops.AddUserToGroup = [USERGROUP, true];
    WSops.AddUserToRole = [USERGROUP, true];
    WSops.GetAllUserCollectionFromWeb = [USERGROUP, false];
    WSops.GetGroupCollection = [USERGROUP, false];
    WSops.GetGroupCollectionFromRole = [USERGROUP, false];
    WSops.GetGroupCollectionFromSite = [USERGROUP, false];
    WSops.GetGroupCollectionFromUser = [USERGROUP, false];
    WSops.GetGroupCollectionFromWeb = [USERGROUP, false];
    WSops.GetGroupInfo = [USERGROUP, false];
    WSops.GetRoleCollection = [USERGROUP, false];
    WSops.GetRoleCollectionFromGroup = [USERGROUP, false];
    WSops.GetRoleCollectionFromUser = [USERGROUP, false];
    WSops.GetRoleCollectionFromWeb = [USERGROUP, false];
    WSops.GetRoleInfo = [USERGROUP, false];
    WSops.GetRolesAndPermissionsForCurrentUser = [USERGROUP, false];
    WSops.GetRolesAndPermissionsForSite = [USERGROUP, false];
    WSops.GetUserCollection = [USERGROUP, false];
    WSops.GetUserCollectionFromGroup = [USERGROUP, false];
    WSops.GetUserCollectionFromRole = [USERGROUP, false];
    WSops.GetUserCollectionFromSite = [USERGROUP, false];
    WSops.GetUserCollectionFromWeb = [USERGROUP, false];
    WSops.GetUserInfo = [USERGROUP, false];
    WSops.GetUserLoginFromEmail = [USERGROUP, false];
    WSops.RemoveGroup = [USERGROUP, true];
    WSops.RemoveGroupFromRole = [USERGROUP, true];
    WSops.RemoveRole = [USERGROUP, true];
    WSops.RemoveUserCollectionFromGroup = [USERGROUP, true];
    WSops.RemoveUserCollectionFromRole = [USERGROUP, true];
    WSops.RemoveUserCollectionFromSite = [USERGROUP, true];
    WSops.RemoveUserFromGroup = [USERGROUP, true];
    WSops.RemoveUserFromRole = [USERGROUP, true];
    WSops.RemoveUserFromSite = [USERGROUP, true];
    WSops.RemoveUserFromWeb = [USERGROUP, true];
    WSops.UpdateGroupInfo = [USERGROUP, true];
    WSops.UpdateRoleDefInfo = [USERGROUP, true];
    WSops.UpdateRoleInfo = [USERGROUP, true];
    WSops.UpdateUserInfo = [USERGROUP, true];

    WSops.AddColleague = [USERPROFILESERVICE, true];
    WSops.AddLink = [USERPROFILESERVICE, true];
    WSops.AddMembership = [USERPROFILESERVICE, true];
    WSops.AddPinnedLink = [USERPROFILESERVICE, true];
    WSops.CreateMemberGroup = [USERPROFILESERVICE, true];
    WSops.CreateUserProfileByAccountName = [USERPROFILESERVICE, true];
    WSops.GetCommonColleagues = [USERPROFILESERVICE, false];
    WSops.GetCommonManager = [USERPROFILESERVICE, false];
    WSops.GetCommonMemberships = [USERPROFILESERVICE, false];
    WSops.GetInCommon = [USERPROFILESERVICE, false];
    WSops.GetPropertyChoiceList = [USERPROFILESERVICE, false];
    WSops.GetUserColleagues = [USERPROFILESERVICE, false];
    WSops.GetUserLinks = [USERPROFILESERVICE, false];
    WSops.GetUserMemberships = [USERPROFILESERVICE, false];
    WSops.GetUserPinnedLinks = [USERPROFILESERVICE, false];
    WSops.GetUserProfileByGuid = [USERPROFILESERVICE, false];
    WSops.GetUserProfileByIndex = [USERPROFILESERVICE, false];
    WSops.GetUserProfileByName = [USERPROFILESERVICE, false];
    WSops.GetUserProfileCount = [USERPROFILESERVICE, false];
    WSops.GetUserProfileSchema = [USERPROFILESERVICE, false];
    WSops.ModifyUserPropertyByAccountName = [USERPROFILESERVICE, true];
    WSops.RemoveAllColleagues = [USERPROFILESERVICE, true];
    WSops.RemoveAllLinks = [USERPROFILESERVICE, true];
    WSops.RemoveAllMemberships = [USERPROFILESERVICE, true];
    WSops.RemoveAllPinnedLinks = [USERPROFILESERVICE, true];
    WSops.RemoveColleague = [USERPROFILESERVICE, true];
    WSops.RemoveLink = [USERPROFILESERVICE, true];
    WSops.RemoveMembership = [USERPROFILESERVICE, true];
    WSops.RemovePinnedLink = [USERPROFILESERVICE, true];
    WSops.UpdateColleaguePrivacy = [USERPROFILESERVICE, true];
    WSops.UpdateLink = [USERPROFILESERVICE, true];
    WSops.UpdateMembershipPrivacy = [USERPROFILESERVICE, true];
    WSops.UpdatePinnedLink = [USERPROFILESERVICE, true];

    WSops.DeleteAllVersions = [VERSIONS, true];
    WSops.DeleteVersion = [VERSIONS, true];
    WSops.GetVersions = [VERSIONS, false];
    WSops.RestoreVersion = [VERSIONS, true];

    WSops.AddView = [VIEWS, true];
    WSops.DeleteView = [VIEWS, true];
    WSops.GetView = [VIEWS, false];
    WSops.GetViewHtml = [VIEWS, false];
    WSops.GetViewCollection = [VIEWS, false];
    WSops.UpdateView = [VIEWS, true];
    WSops.UpdateViewHtml = [VIEWS, true];

    WSops.AddWebPart = [WEBPARTPAGES, true];
    WSops.AddWebPartToZone = [WEBPARTPAGES, true];
    WSops.GetWebPart2 = [WEBPARTPAGES, false];
    WSops.GetWebPartPage = [WEBPARTPAGES, false];
    WSops.GetWebPartProperties = [WEBPARTPAGES, false];
    WSops.GetWebPartProperties2 = [WEBPARTPAGES, false];

    WSops.CreateContentType = [WEBS, true];
    WSops.GetColumns = [WEBS, false];
    WSops.GetContentType = [WEBS, false];
    WSops.GetContentTypes = [WEBS, false];
    WSops.GetCustomizedPageStatus = [WEBS, false];
    WSops.GetListTemplates = [WEBS, false];
    WSops.GetObjectIdFromUrl = [WEBS, false]; // 2010
    WSops.GetWeb = [WEBS, false];
    WSops.GetWebCollection = [WEBS, false];
    WSops.GetAllSubWebCollection = [WEBS, false];
    WSops.UpdateColumns = [WEBS, true];
    WSops.UpdateContentType = [WEBS, true];
    WSops.WebUrlFromPageUrl = [WEBS, false];

    WSops.AlterToDo = [WORKFLOW, true];
    WSops.ClaimReleaseTask = [WORKFLOW, true];
    WSops.GetTemplatesForItem = [WORKFLOW, false];
    WSops.GetToDosForItem = [WORKFLOW, false];
    WSops.GetWorkflowDataForItem = [WORKFLOW, false];
    WSops.GetWorkflowTaskData = [WORKFLOW, false];
    WSops.StartWorkflow = [WORKFLOW, true];

    // Set up SOAP envelope
    var SOAPEnvelope = {};
    SOAPEnvelope.header = "<soap:Envelope xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance' xmlns:xsd='http://www.w3.org/2001/XMLSchema' xmlns:soap='http://schemas.xmlsoap.org/soap/envelope/'><soap:Body>";
    SOAPEnvelope.footer = "</soap:Body></soap:Envelope>";
    SOAPEnvelope.payload = "";
    var SOAPAction;

    // Main function, which calls SharePoint's Web Services directly.
    $.fn.SPServices = function(options) {

        // If there are no options passed in, use the defaults.  Extend replaces each default with the passed option.
        var opt = $.extend({}, $.fn.SPServices.defaults, options);

        // Encode options which may contain special character, esp. ampersand
        for (var i = 0; i < encodeOptionList.length; i++) {
            if (typeof opt[encodeOptionList[i]] === "string") {
                opt[encodeOptionList[i]] = encodeXml(opt[encodeOptionList[i]]);
            }
        }

        // Put together operation header and SOAPAction for the SOAP call based on which Web Service we're calling
        SOAPEnvelope.opheader = "<" + opt.operation + " ";
        switch (WSops[opt.operation][0]) {
            case ALERTS:
                SOAPEnvelope.opheader += "xmlns='" + SCHEMASharePoint + "/soap/2002/1/alerts/' >";
                SOAPAction = SCHEMASharePoint + "/soap/2002/1/alerts/";
                break;
            case MEETINGS:
                SOAPEnvelope.opheader += "xmlns='" + SCHEMASharePoint + "/soap/meetings/' >";
                SOAPAction = SCHEMASharePoint + "/soap/meetings/";
                break;
            case PERMISSIONS:
                SOAPEnvelope.opheader += "xmlns='" + SCHEMASharePoint + "/soap/directory/' >";
                SOAPAction = SCHEMASharePoint + "/soap/directory/";
                break;
            case PUBLISHEDLINKSSERVICE:
                SOAPEnvelope.opheader += "xmlns='http://microsoft.com/webservices/SharePointPortalServer/PublishedLinksService/' >";
                SOAPAction = "http://microsoft.com/webservices/SharePointPortalServer/PublishedLinksService/";
                break;
            case SEARCH:
                SOAPEnvelope.opheader += "xmlns='urn:Microsoft.Search' >";
                SOAPAction = "urn:Microsoft.Search/";
                break;
            case SHAREPOINTDIAGNOSTICS:
                SOAPEnvelope.opheader += "xmlns='" + SCHEMASharePoint + "/diagnostics/' >";
                SOAPAction = "http://schemas.microsoft.com/sharepoint/diagnostics/";
                break;
            case SOCIALDATASERVICE:
                SOAPEnvelope.opheader += "xmlns='http://microsoft.com/webservices/SharePointPortalServer/SocialDataService' >";
                SOAPAction = "http://microsoft.com/webservices/SharePointPortalServer/SocialDataService/";
                break;
            case SPELLCHECK:
                SOAPEnvelope.opheader += "xmlns='http://schemas.microsoft.com/sharepoint/publishing/spelling/' >";
                SOAPAction = "http://schemas.microsoft.com/sharepoint/publishing/spelling/SpellCheck";
                break;
            case TAXONOMYSERVICE:
                SOAPEnvelope.opheader += "xmlns='" + SCHEMASharePoint + "/taxonomy/soap/' >";
                SOAPAction = SCHEMASharePoint + "/taxonomy/soap/";
                break;
            case USERGROUP:
                SOAPEnvelope.opheader += "xmlns='" + SCHEMASharePoint + "/soap/directory/' >";
                SOAPAction = SCHEMASharePoint + "/soap/directory/";
                break;
            case USERPROFILESERVICE:
                SOAPEnvelope.opheader += "xmlns='http://microsoft.com/webservices/SharePointPortalServer/UserProfileService' >";
                SOAPAction = "http://microsoft.com/webservices/SharePointPortalServer/UserProfileService/";
                break;
            case WEBPARTPAGES:
                SOAPEnvelope.opheader += "xmlns='http://microsoft.com/sharepoint/webpartpages' >";
                SOAPAction = "http://microsoft.com/sharepoint/webpartpages/";
                break;
            case WORKFLOW:
                SOAPEnvelope.opheader += "xmlns='" + SCHEMASharePoint + "/soap/workflow/' >";
                SOAPAction = SCHEMASharePoint + "/soap/workflow/";
                break;
            default:
                SOAPEnvelope.opheader += "xmlns='" + SCHEMASharePoint + "/soap/'>";
                SOAPAction = SCHEMASharePoint + "/soap/";
                break;
        }

        // Add the operation to the SOAPAction and opfooter
        SOAPAction += opt.operation;
        SOAPEnvelope.opfooter = "</" + opt.operation + ">";

        // Build the URL for the Ajax call based on which operation we're calling
        // If the webURL has been provided, then use it, else use the current site
        var ajaxURL = "_vti_bin/" + WSops[opt.operation][0] + ".asmx";
        var thisSite = $().SPServices.SPGetCurrentSite();
        if (opt.webURL.charAt(opt.webURL.length - 1) === SLASH) {
            ajaxURL = opt.webURL + ajaxURL;
        } else if (opt.webURL.length > 0) {
            ajaxURL = opt.webURL + SLASH + ajaxURL;
        } else {
            ajaxURL = thisSite + ((thisSite.charAt(thisSite.length - 1) === SLASH) ? ajaxURL : (SLASH + ajaxURL));
        }

        SOAPEnvelope.payload = "";
        // Each operation requires a different set of values.  This switch statement sets them up in the SOAPEnvelope.payload.
        switch (opt.operation) {
            // ALERT OPERATIONS
            case "GetAlerts":
                break;
            case "DeleteAlerts":
                SOAPEnvelope.payload += "<IDs>";
                for (i = 0; i < opt.IDs.length; i++) {
                    SOAPEnvelope.payload += wrapNode("string", opt.IDs[i]);
                }
                SOAPEnvelope.payload += "</IDs>";
                break;

                // AUTHENTICATION OPERATIONS
            case "Mode":
                break;
            case "Login":
                addToPayload(opt, ["username", "password"]);
                break;

                // COPY OPERATIONS
            case "CopyIntoItems":
                addToPayload(opt, ["SourceUrl"]);
                SOAPEnvelope.payload += "<DestinationUrls>";
                for (i = 0; i < opt.DestinationUrls.length; i++) {
                    SOAPEnvelope.payload += wrapNode("string", opt.DestinationUrls[i]);
                }
                SOAPEnvelope.payload += "</DestinationUrls>";
                addToPayload(opt, ["Fields", "Stream", "Results"]);
                break;
            case "CopyIntoItemsLocal":
                addToPayload(opt, ["SourceUrl"]);
                SOAPEnvelope.payload += "<DestinationUrls>";
                for (i = 0; i < opt.DestinationUrls.length; i++) {
                    SOAPEnvelope.payload += wrapNode("string", opt.DestinationUrls[i]);
                }
                SOAPEnvelope.payload += "</DestinationUrls>";
                break;
            case "GetItem":
                addToPayload(opt, ["Url", "Fields", "Stream"]);
                break;

                // FORM OPERATIONS
            case "GetForm":
                addToPayload(opt, ["listName", "formUrl"]);
                break;
            case "GetFormCollection":
                addToPayload(opt, ["listName"]);
                break;

                // LIST OPERATIONS
            case "AddAttachment":
                addToPayload(opt, ["listName", "listItemID", "fileName", "attachment"]);
                break;
            case "AddDiscussionBoardItem":
                addToPayload(opt, ["listName", "message"]);
                break;
            case "AddList":
                addToPayload(opt, ["listName", "description", "templateID"]);
                break;
            case "AddListFromFeature":
                addToPayload(opt, ["listName", "description", "featureID", "templateID"]);
                break;
            case "ApplyContentTypeToList":
                addToPayload(opt, ["webUrl", "contentTypeId", "listName"]);
                break;
            case "CheckInFile":
                addToPayload(opt, ["pageUrl", "comment", "CheckinType"]);
                break;
            case "CheckOutFile":
                addToPayload(opt, ["pageUrl", "checkoutToLocal", "lastmodified"]);
                break;
            case "CreateContentType":
                addToPayload(opt, ["listName", "displayName", "parentType", "fields", "contentTypeProperties", "addToView"]);
                break;
            case "DeleteAttachment":
                addToPayload(opt, ["listName", "listItemID", "url"]);
                break;
            case "DeleteContentType":
                addToPayload(opt, ["listName", "contentTypeId"]);
                break;
            case "DeleteContentTypeXmlDocument":
                addToPayload(opt, ["listName", "contentTypeId", "documentUri"]);
                break;
            case "DeleteList":
                addToPayload(opt, ["listName"]);
                break;
            case "GetAttachmentCollection":
                addToPayload(opt, ["listName", ["listItemID", "ID"]]);
                break;
            case "GetList":
                addToPayload(opt, ["listName"]);
                break;
            case "GetListAndView":
                addToPayload(opt, ["listName", "viewName"]);
                break;
            case "GetListCollection":
                break;
            case "GetListContentType":
                addToPayload(opt, ["listName", "contentTypeId"]);
                break;
            case "GetListContentTypes":
                addToPayload(opt, ["listName"]);
                break;
            case "GetListItems":
                addToPayload(opt, ["listName", "viewName", ["query", "CAMLQuery"],
                    ["viewFields", "CAMLViewFields"],
                    ["rowLimit", "CAMLRowLimit"],
                    ["queryOptions", "CAMLQueryOptions"]
                ]);
                break;
            case "GetListItemChanges":
                addToPayload(opt, ["listName", "viewFields", "since", "contains"]);
                break;
            case "GetListItemChangesSinceToken":
                addToPayload(opt, ["listName", "viewName", ["query", "CAMLQuery"],
                    ["viewFields", "CAMLViewFields"],
                    ["rowLimit", "CAMLRowLimit"],
                    ["queryOptions", "CAMLQueryOptions"], {
                        name: "changeToken",
                        sendNull: false
                    }, {
                        name: "contains",
                        sendNull: false
                    }
                ]);
                break;
            case "GetVersionCollection":
                addToPayload(opt, ["strlistID", "strlistItemID", "strFieldName"]);
                break;
            case "UndoCheckOut":
                addToPayload(opt, ["pageUrl"]);
                break;
            case "UpdateContentType":
                addToPayload(opt, ["listName", "contentTypeId", "contentTypeProperties", "newFields", "updateFields", "deleteFields", "addToView"]);
                break;
            case "UpdateContentTypesXmlDocument":
                addToPayload(opt, ["listName", "newDocument"]);
                break;
            case "UpdateContentTypeXmlDocument":
                addToPayload(opt, ["listName", "contentTypeId", "newDocument"]);
                break;
            case "UpdateList":
                addToPayload(opt, ["listName", "listProperties", "newFields", "updateFields", "deleteFields", "listVersion"]);
                break;
            case "UpdateListItems":
                addToPayload(opt, ["listName"]);
                if (typeof opt.updates !== "undefined" && opt.updates.length > 0) {
                    addToPayload(opt, ["updates"]);
                } else {
                    SOAPEnvelope.payload += "<updates><Batch OnError='Continue'><Method ID='1' Cmd='" + opt.batchCmd + "'>";
                    for (i = 0; i < opt.valuepairs.length; i++) {
                        SOAPEnvelope.payload += "<Field Name='" + opt.valuepairs[i][0] + "'>" + escapeColumnValue(opt.valuepairs[i][1]) + "</Field>";
                    }
                    if (opt.batchCmd !== "New") {
                        SOAPEnvelope.payload += "<Field Name='ID'>" + opt.ID + "</Field>";
                    }
                    SOAPEnvelope.payload += "</Method></Batch></updates>";
                }
                break;

                // MEETINGS OPERATIONS
            case "AddMeeting":
                addToPayload(opt, ["organizerEmail", "uid", "sequence", "utcDateStamp", "title", "location", "utcDateStart", "utcDateEnd", "nonGregorian"]);
                break;
            case "CreateWorkspace":
                addToPayload(opt, ["title", "templateName", "lcid", "timeZoneInformation"]);
                break;
            case "RemoveMeeting":
                addToPayload(opt, ["recurrenceId", "uid", "sequence", "utcDateStamp", "cancelMeeting"]);
                break;
            case "SetWorkspaceTitle":
                addToPayload(opt, ["title"]);
                break;

                // PEOPLE OPERATIONS
            case "ResolvePrincipals":
                addToPayload(opt, ["principalKeys", "principalType", "addToUserInfoList"]);
                break;
            case "SearchPrincipals":
                addToPayload(opt, ["searchText", "maxResults", "principalType"]);
                break;

                // PERMISSION OPERATIONS
            case "AddPermission":
                addToPayload(opt, ["objectName", "objectType", "permissionIdentifier", "permissionType", "permissionMask"]);
                break;
            case "AddPermissionCollection":
                addToPayload(opt, ["objectName", "objectType", "permissionsInfoXml"]);
                break;
            case "GetPermissionCollection":
                addToPayload(opt, ["objectName", "objectType"]);
                break;
            case "RemovePermission":
                addToPayload(opt, ["objectName", "objectType", "permissionIdentifier", "permissionType"]);
                break;
            case "RemovePermissionCollection":
                addToPayload(opt, ["objectName", "objectType", "memberIdsXml"]);
                break;
            case "UpdatePermission":
                addToPayload(opt, ["objectName", "objectType", "permissionIdentifier", "permissionType", "permissionMask"]);
                break;

                // PUBLISHEDLINKSSERVICE OPERATIONS
            case "GetLinks":
                break;

                // SEARCH OPERATIONS
            case "GetPortalSearchInfo":
                SOAPEnvelope.opheader = "<" + opt.operation + " xmlns='http://microsoft.com/webservices/OfficeServer/QueryService'>";
                SOAPAction = "http://microsoft.com/webservices/OfficeServer/QueryService/" + opt.operation;
                break;
            case "GetQuerySuggestions":
                SOAPEnvelope.opheader = "<" + opt.operation + " xmlns='http://microsoft.com/webservices/OfficeServer/QueryService'>";
                SOAPAction = "http://microsoft.com/webservices/OfficeServer/QueryService/" + opt.operation;
                SOAPEnvelope.payload += wrapNode("queryXml", encodeXml(opt.queryXml));
                break;
            case "GetSearchMetadata":
                SOAPEnvelope.opheader = "<" + opt.operation + " xmlns='http://microsoft.com/webservices/OfficeServer/QueryService'>";
                SOAPAction = "http://microsoft.com/webservices/OfficeServer/QueryService/" + opt.operation;
                break;
            case "Query":
                SOAPEnvelope.payload += wrapNode("queryXml", encodeXml(opt.queryXml));
                break;
            case "QueryEx":
                SOAPEnvelope.opheader = "<" + opt.operation + " xmlns='http://microsoft.com/webservices/OfficeServer/QueryService'>";
                SOAPAction = "http://microsoft.com/webservices/OfficeServer/QueryService/" + opt.operation;
                SOAPEnvelope.payload += wrapNode("queryXml", encodeXml(opt.queryXml));
                break;
            case "Registration":
                SOAPEnvelope.payload += wrapNode("registrationXml", encodeXml(opt.registrationXml));
                break;
            case "Status":
                break;

                // SHAREPOINTDIAGNOSTICS OPERATIONS
            case "SendClientScriptErrorReport":
                addToPayload(opt, ["message", "file", "line", "client", "stack", "team", "originalFile"]);
                break;

                // SITEDATA OPERATIONS
            case "EnumerateFolder":
                addToPayload(opt, ["strFolderUrl"]);
                break;
            case "GetAttachments":
                addToPayload(opt, ["strListName", "strItemId"]);
                break;
            case "SiteDataGetList":
                addToPayload(opt, ["strListName"]);
                // Because this operation has a name which duplicates the Lists WS, need to handle
                SOAPEnvelope = siteDataFixSOAPEnvelope(SOAPEnvelope, opt.operation);
                break;
            case "SiteDataGetListCollection":
                // Because this operation has a name which duplicates the Lists WS, need to handle
                SOAPEnvelope = siteDataFixSOAPEnvelope(SOAPEnvelope, opt.operation);
                break;
            case "SiteDataGetSite":
                // Because this operation has a name which duplicates the Lists WS, need to handle
                SOAPEnvelope = siteDataFixSOAPEnvelope(SOAPEnvelope, opt.operation);
                break;
            case "SiteDataGetSiteUrl":
                addToPayload(opt, ["Url"]);
                // Because this operation has a name which duplicates the Lists WS, need to handle
                SOAPEnvelope = siteDataFixSOAPEnvelope(SOAPEnvelope, opt.operation);
                break;
            case "SiteDataGetWeb":
                // Because this operation has a name which duplicates the Lists WS, need to handle
                SOAPEnvelope = siteDataFixSOAPEnvelope(SOAPEnvelope, opt.operation);
                break;

                // SITES OPERATIONS
            case "CreateWeb":
                addToPayload(opt, ["url", "title", "description", "templateName", "language", "languageSpecified",
                    "locale", "localeSpecified", "collationLocale", "collationLocaleSpecified", "uniquePermissions",
                    "uniquePermissionsSpecified", "anonymous", "anonymousSpecified", "presence", "presenceSpecified"
                ]);
                break;
            case "DeleteWeb":
                addToPayload(opt, ["url"]);
                break;
            case "GetSite":
                addToPayload(opt, ["SiteUrl"]);
                break;
            case "GetSiteTemplates":
                addToPayload(opt, ["LCID", "TemplateList"]);
                break;

                // SOCIALDATASERVICE OPERATIONS
            case "AddComment":
                addToPayload(opt, ["url", "comment", "isHighPriority", "title"]);
                break;
            case "AddTag":
                addToPayload(opt, ["url", "termID", "title", "isPrivate"]);
                break;
            case "AddTagByKeyword":
                addToPayload(opt, ["url", "keyword", "title", "isPrivate"]);
                break;
            case "CountCommentsOfUser":
                addToPayload(opt, ["userAccountName"]);
                break;
            case "CountCommentsOfUserOnUrl":
                addToPayload(opt, ["userAccountName", "url"]);
                break;
            case "CountCommentsOnUrl":
                addToPayload(opt, ["url"]);
                break;
            case "CountRatingsOnUrl":
                addToPayload(opt, ["url"]);
                break;
            case "CountTagsOfUser":
                addToPayload(opt, ["userAccountName"]);
                break;
            case "DeleteComment":
                addToPayload(opt, ["url", "lastModifiedTime"]);
                break;
            case "DeleteRating":
                addToPayload(opt, ["url"]);
                break;
            case "DeleteTag":
                addToPayload(opt, ["url", "termID"]);
                break;
            case "DeleteTagByKeyword":
                addToPayload(opt, ["url", "keyword"]);
                break;
            case "DeleteTags":
                addToPayload(opt, ["url"]);
                break;
            case "GetAllTagTerms":
                addToPayload(opt, ["maximumItemsToReturn"]);
                break;
            case "GetAllTagTermsForUrlFolder":
                addToPayload(opt, ["urlFolder", "maximumItemsToReturn"]);
                break;
            case "GetAllTagUrls":
                addToPayload(opt, ["termID"]);
                break;
            case "GetAllTagUrlsByKeyword":
                addToPayload(opt, ["keyword"]);
                break;
            case "GetCommentsOfUser":
                addToPayload(opt, ["userAccountName", "maximumItemsToReturn", "startIndex"]);
                break;
            case "GetCommentsOfUserOnUrl":
                addToPayload(opt, ["userAccountName", "url"]);
                break;
            case "GetCommentsOnUrl":
                addToPayload(opt, ["url", "maximumItemsToReturn", "startIndex"]);
                if (typeof opt.excludeItemsTime !== "undefined" && opt.excludeItemsTime.length > 0) {
                    SOAPEnvelope.payload += wrapNode("excludeItemsTime", opt.excludeItemsTime);
                }
                break;
            case "GetRatingAverageOnUrl":
                addToPayload(opt, ["url"]);
                break;
            case "GetRatingOfUserOnUrl":
                addToPayload(opt, ["userAccountName", "url"]);
                break;
            case "GetRatingOnUrl":
                addToPayload(opt, ["url"]);
                break;
            case "GetRatingsOfUser":
                addToPayload(opt, ["userAccountName"]);
                break;
            case "GetRatingsOnUrl":
                addToPayload(opt, ["url"]);
                break;
            case "GetSocialDataForFullReplication":
                addToPayload(opt, ["userAccountName"]);
                break;
            case "GetTags":
                addToPayload(opt, ["url"]);
                break;
            case "GetTagsOfUser":
                addToPayload(opt, ["userAccountName", "maximumItemsToReturn", "startIndex"]);
                break;
            case "GetTagTerms":
                addToPayload(opt, ["maximumItemsToReturn"]);
                break;
            case "GetTagTermsOfUser":
                addToPayload(opt, ["userAccountName", "maximumItemsToReturn"]);
                break;
            case "GetTagTermsOnUrl":
                addToPayload(opt, ["url", "maximumItemsToReturn"]);
                break;
            case "GetTagUrls":
                addToPayload(opt, ["termID"]);
                break;
            case "GetTagUrlsByKeyword":
                addToPayload(opt, ["keyword"]);
                break;
            case "GetTagUrlsOfUser":
                addToPayload(opt, ["termID", "userAccountName"]);
                break;
            case "GetTagUrlsOfUserByKeyword":
                addToPayload(opt, ["keyword", "userAccountName"]);
                break;
            case "SetRating":
                addToPayload(opt, ["url", "rating", "title", "analysisDataEntry"]);
                break;
            case "UpdateComment":
                addToPayload(opt, ["url", "lastModifiedTime", "comment", "isHighPriority"]);
                break;

                // SPELLCHECK OPERATIONS 
            case "SpellCheck":
                addToPayload(opt, ["chunksToSpell", "declaredLanguage", "useLad"]);
                break;

                // TAXONOMY OPERATIONS 
            case "AddTerms":
                addToPayload(opt, ["sharedServiceId", "termSetId", "lcid", "newTerms"]);
                break;
            case "GetChildTermsInTerm":
                addToPayload(opt, ["sspId", "lcid", "termId", "termSetId"]);
                break;
            case "GetChildTermsInTermSet":
                addToPayload(opt, ["sspId", "lcid", "termSetId"]);
                break;
            case "GetKeywordTermsByGuids":
                addToPayload(opt, ["termIds", "lcid"]);
                break;
            case "GetTermsByLabel":
                addToPayload(opt, ["label", "lcid", "matchOption", "resultCollectionSize", "termIds", "addIfNotFound"]);
                break;
            case "GetTermSets":
                addToPayload(opt, ["sharedServiceId", "termSetId", "lcid", "clientTimeStamps", "clientVersions"]);
                break;

                // USERS AND GROUPS OPERATIONS
            case "AddGroup":
                addToPayload(opt, ["groupName", "ownerIdentifier", "ownerType", "defaultUserLoginName", "description"]);
                break;
            case "AddGroupToRole":
                addToPayload(opt, ["groupName", "roleName"]);
                break;
            case "AddRole":
                addToPayload(opt, ["roleName", "description", "permissionMask"]);
                break;
            case "AddRoleDef":
                addToPayload(opt, ["roleName", "description", "permissionMask"]);
                break;
            case "AddUserCollectionToGroup":
                addToPayload(opt, ["groupName", "usersInfoXml"]);
                break;
            case "AddUserCollectionToRole":
                addToPayload(opt, ["roleName", "usersInfoXml"]);
                break;
            case "AddUserToGroup":
                addToPayload(opt, ["groupName", "userName", "userLoginName", "userEmail", "userNotes"]);
                break;
            case "AddUserToRole":
                addToPayload(opt, ["roleName", "userName", "userLoginName", "userEmail", "userNotes"]);
                break;
            case "GetAllUserCollectionFromWeb":
                break;
            case "GetGroupCollection":
                addToPayload(opt, ["groupNamesXml"]);
                break;
            case "GetGroupCollectionFromRole":
                addToPayload(opt, ["roleName"]);
                break;
            case "GetGroupCollectionFromSite":
                break;
            case "GetGroupCollectionFromUser":
                addToPayload(opt, ["userLoginName"]);
                break;
            case "GetGroupCollectionFromWeb":
                break;
            case "GetGroupInfo":
                addToPayload(opt, ["groupName"]);
                break;
            case "GetRoleCollection":
                addToPayload(opt, ["roleNamesXml"]);
                break;
            case "GetRoleCollectionFromGroup":
                addToPayload(opt, ["groupName"]);
                break;
            case "GetRoleCollectionFromUser":
                addToPayload(opt, ["userLoginName"]);
                break;
            case "GetRoleCollectionFromWeb":
                break;
            case "GetRoleInfo":
                addToPayload(opt, ["roleName"]);
                break;
            case "GetRolesAndPermissionsForCurrentUser":
                break;
            case "GetRolesAndPermissionsForSite":
                break;
            case "GetUserCollection":
                addToPayload(opt, ["userLoginNamesXml"]);
                break;
            case "GetUserCollectionFromGroup":
                addToPayload(opt, ["groupName"]);
                break;
            case "GetUserCollectionFromRole":
                addToPayload(opt, ["roleName"]);
                break;
            case "GetUserCollectionFromSite":
                break;
            case "GetUserCollectionFromWeb":
                break;
            case "GetUserInfo":
                addToPayload(opt, ["userLoginName"]);
                break;
            case "GetUserLoginFromEmail":
                addToPayload(opt, ["emailXml"]);
                break;
            case "RemoveGroup":
                addToPayload(opt, ["groupName"]);
                break;
            case "RemoveGroupFromRole":
                addToPayload(opt, ["roleName", "groupName"]);
                break;
            case "RemoveRole":
                addToPayload(opt, ["roleName"]);
                break;
            case "RemoveUserCollectionFromGroup":
                addToPayload(opt, ["groupName", "userLoginNamesXml"]);
                break;
            case "RemoveUserCollectionFromRole":
                addToPayload(opt, ["roleName", "userLoginNamesXml"]);
                break;
            case "RemoveUserCollectionFromSite":
                addToPayload(opt, ["userLoginNamesXml"]);
                break;
            case "RemoveUserFromGroup":
                addToPayload(opt, ["groupName", "userLoginName"]);
                break;
            case "RemoveUserFromRole":
                addToPayload(opt, ["roleName", "userLoginName"]);
                break;
            case "RemoveUserFromSite":
                addToPayload(opt, ["userLoginName"]);
                break;
            case "RemoveUserFromWeb":
                addToPayload(opt, ["userLoginName"]);
                break;
            case "UpdateGroupInfo":
                addToPayload(opt, ["oldGroupName", "groupName", "ownerIdentifier", "ownerType", "description"]);
                break;
            case "UpdateRoleDefInfo":
                addToPayload(opt, ["oldRoleName", "roleName", "description", "permissionMask"]);
                break;
            case "UpdateRoleInfo":
                addToPayload(opt, ["oldRoleName", "roleName", "description", "permissionMask"]);
                break;
            case "UpdateUserInfo":
                addToPayload(opt, ["userLoginName", "userName", "userEmail", "userNotes"]);
                break;

                // USERPROFILESERVICE OPERATIONS
            case "AddColleague":
                addToPayload(opt, ["accountName", "colleagueAccountName", "group", "privacy", "isInWorkGroup"]);
                break;
            case "AddLink":
                addToPayload(opt, ["accountName", "name", "url", "group", "privacy"]);
                break;
            case "AddMembership":
                addToPayload(opt, ["accountName", "membershipInfo", "group", "privacy"]);
                break;
            case "AddPinnedLink":
                addToPayload(opt, ["accountName", "name", "url"]);
                break;
            case "CreateMemberGroup":
                addToPayload(opt, ["membershipInfo"]);
                break;
            case "CreateUserProfileByAccountName":
                addToPayload(opt, ["accountName"]);
                break;
            case "GetCommonColleagues":
                addToPayload(opt, ["accountName"]);
                break;
            case "GetCommonManager":
                addToPayload(opt, ["accountName"]);
                break;
            case "GetCommonMemberships":
                addToPayload(opt, ["accountName"]);
                break;
            case "GetInCommon":
                addToPayload(opt, ["accountName"]);
                break;
            case "GetPropertyChoiceList":
                addToPayload(opt, ["propertyName"]);
                break;
            case "GetUserColleagues":
                addToPayload(opt, ["accountName"]);
                break;
            case "GetUserLinks":
                addToPayload(opt, ["accountName"]);
                break;
            case "GetUserMemberships":
                addToPayload(opt, ["accountName"]);
                break;
            case "GetUserPinnedLinks":
                addToPayload(opt, ["accountName"]);
                break;
            case "GetUserProfileByGuid":
                addToPayload(opt, ["guid"]);
                break;
            case "GetUserProfileByIndex":
                addToPayload(opt, ["index"]);
                break;
            case "GetUserProfileByName":
                // Note that this operation is inconsistent with the others, using AccountName rather than accountName
                if (typeof opt.accountName !== "undefined" && opt.accountName.length > 0) {
                    addToPayload(opt, [
                        ["AccountName", "accountName"]
                    ]);
                } else {
                    addToPayload(opt, ["AccountName"]);
                }
                break;
            case "GetUserProfileCount":
                break;
            case "GetUserProfileSchema":
                break;
            case "ModifyUserPropertyByAccountName":
                addToPayload(opt, ["accountName", "newData"]);
                break;
            case "RemoveAllColleagues":
                addToPayload(opt, ["accountName"]);
                break;
            case "RemoveAllLinks":
                addToPayload(opt, ["accountName"]);
                break;
            case "RemoveAllMemberships":
                addToPayload(opt, ["accountName"]);
                break;
            case "RemoveAllPinnedLinks":
                addToPayload(opt, ["accountName"]);
                break;
            case "RemoveColleague":
                addToPayload(opt, ["accountName", "colleagueAccountName"]);
                break;
            case "RemoveLink":
                addToPayload(opt, ["accountName", "id"]);
                break;
            case "RemoveMembership":
                addToPayload(opt, ["accountName", "sourceInternal", "sourceReference"]);
                break;
            case "RemovePinnedLink":
                addToPayload(opt, ["accountName", "id"]);
                break;
            case "UpdateColleaguePrivacy":
                addToPayload(opt, ["accountName", "colleagueAccountName", "newPrivacy"]);
                break;
            case "UpdateLink":
                addToPayload(opt, ["accountName", "data"]);
                break;
            case "UpdateMembershipPrivacy":
                addToPayload(opt, ["accountName", "sourceInternal", "sourceReference", "newPrivacy"]);
                break;
            case "UpdatePinnedLink ":
                addToPayload(opt, ["accountName", "data"]);
                break;

                // VERSIONS OPERATIONS
            case "DeleteAllVersions":
                addToPayload(opt, ["fileName"]);
                break;
            case "DeleteVersion":
                addToPayload(opt, ["fileName", "fileVersion"]);
                break;
            case "GetVersions":
                addToPayload(opt, ["fileName"]);
                break;
            case "RestoreVersion":
                addToPayload(opt, ["fileName", "fileVersion"]);
                break;

                // VIEW OPERATIONS
            case "AddView":
                addToPayload(opt, ["listName", "viewName", "viewFields", "query", "rowLimit", "rowLimit", "type", "makeViewDefault"]);
                break;
            case "DeleteView":
                addToPayload(opt, ["listName", "viewName"]);
                break;
            case "GetView":
                addToPayload(opt, ["listName", "viewName"]);
                break;
            case "GetViewCollection":
                addToPayload(opt, ["listName"]);
                break;
            case "GetViewHtml":
                addToPayload(opt, ["listName", "viewName"]);
                break;
            case "UpdateView":
                addToPayload(opt, ["listName", "viewName", "viewProperties", "query", "viewFields", "aggregations", "formats", "rowLimit"]);
                break;
            case "UpdateViewHtml":
                addToPayload(opt, ["listName", "viewName", "viewProperties", "toolbar", "viewHeader", "viewBody", "viewFooter", "viewEmpty", "rowLimitExceeded",
                    "query", "viewFields", "aggregations", "formats", "rowLimit"
                ]);
                break;

                // WEBPARTPAGES OPERATIONS
            case "AddWebPart":
                addToPayload(opt, ["pageUrl", "webPartXml", "storage"]);
                break;
            case "AddWebPartToZone":
                addToPayload(opt, ["pageUrl", "webPartXml", "storage", "zoneId", "zoneIndex"]);
                break;
            case "GetWebPart2":
                addToPayload(opt, ["pageUrl", "storageKey", "storage", "behavior"]);
                break;
            case "GetWebPartPage":
                addToPayload(opt, ["documentName", "behavior"]);
                break;
            case "GetWebPartProperties":
                addToPayload(opt, ["pageUrl", "storage"]);
                break;
            case "GetWebPartProperties2":
                addToPayload(opt, ["pageUrl", "storage", "behavior"]);
                break;

                // WEBS OPERATIONS
            case "Webs.CreateContentType":
                addToPayload(opt, ["displayName", "parentType", "newFields", "contentTypeProperties"]);
                break;
            case "GetColumns":
                addToPayload(opt, ["webUrl"]);
                break;
            case "GetContentType":
                addToPayload(opt, ["contentTypeId"]);
                break;
            case "GetContentTypes":
                break;
            case "GetCustomizedPageStatus":
                addToPayload(opt, ["fileUrl"]);
                break;
            case "GetListTemplates":
                break;
            case "GetObjectIdFromUrl":
                addToPayload(opt, ["objectUrl"]);
                break;
            case "GetWeb":
                addToPayload(opt, [
                    ["webUrl", "webURL"]
                ]);
                break;
            case "GetWebCollection":
                break;
            case "GetAllSubWebCollection":
                break;
            case "UpdateColumns":
                addToPayload(opt, ["newFields", "updateFields", "deleteFields"]);
                break;
            case "Webs.UpdateContentType":
                addToPayload(opt, ["contentTypeId", "contentTypeProperties", "newFields", "updateFields", "deleteFields"]);
                break;
            case "WebUrlFromPageUrl":
                addToPayload(opt, [
                    ["pageUrl", "pageURL"]
                ]);
                break;

                // WORKFLOW OPERATIONS
            case "AlterToDo":
                addToPayload(opt, ["item", "todoId", "todoListId", "taskData"]);
                break;
            case "ClaimReleaseTask":
                addToPayload(opt, ["item", "taskId", "listId", "fClaim"]);
                break;
            case "GetTemplatesForItem":
                addToPayload(opt, ["item"]);
                break;
            case "GetToDosForItem":
                addToPayload(opt, ["item"]);
                break;
            case "GetWorkflowDataForItem":
                addToPayload(opt, ["item"]);
                break;
            case "GetWorkflowTaskData":
                addToPayload(opt, ["item", "listId", "taskId"]);
                break;
            case "StartWorkflow":
                addToPayload(opt, ["item", "templateId", "workflowParameters"]);
                break;

            default:
                break;
        }

        // Glue together the pieces of the SOAP message
        var msg = SOAPEnvelope.header + SOAPEnvelope.opheader + SOAPEnvelope.payload + SOAPEnvelope.opfooter + SOAPEnvelope.footer;

        // Check to see if we've already cached the results
        var cachedPromise;
        if (opt.cacheXML) {
            cachedPromise = promisesCache[msg];
        }

        if (typeof cachedPromise === "undefined") {

            // Finally, make the Ajax call
            promisesCache[msg] = $.ajax({
                // The relative URL for the AJAX call
                url: ajaxURL,
                // By default, the AJAX calls are asynchronous.  You can specify false to require a synchronous call.
                async: opt.async,
                // Before sending the msg, need to send the request header
                beforeSend: function(xhr) {
                    // If we need to pass the SOAPAction, do so
                    if (WSops[opt.operation][1]) {
                        xhr.setRequestHeader("SOAPAction", SOAPAction);
                    }
                },
                // Always a POST
                type: "POST",
                // Here is the SOAP request we've built above
                data: msg,
                // We're getting XML; tell jQuery so that it doesn't need to do a best guess
                dataType: "xml",
                // and this is its content type
                contentType: "text/xml;charset='utf-8'",
                complete: function(xData, Status) {
                    // When the call is complete, call the completefunc if there is one
                    if ($.isFunction(opt.completefunc)) {
                        opt.completefunc(xData, Status);

                    }
                }
            });

            // Return the promise
            return promisesCache[msg];

        } else {
            // Call the completefunc if there is one
            if ($.isFunction(opt.completefunc)) {
                opt.completefunc(cachedPromise, null);
            }
            // Return the cached promise
            return cachedPromise;
        }

    }; // End $.fn.SPServices

    // Defaults added as a function in our library means that the caller can override the defaults
    // for their session by calling this function.  Each operation requires a different set of options;
    // we allow for all in a standardized way.
    $.fn.SPServices.defaults = {

        cacheXML: false, // If true, we'll cache the XML results with jQuery's .data() function
        operation: "", // The Web Service operation
        webURL: "", // URL of the target Web
        makeViewDefault: false, // true to make the view the default view for the list

        // For operations requiring CAML, these options will override any abstractions
        CAMLViewName: "", // View name in CAML format.
        CAMLQuery: "", // Query in CAML format
        CAMLViewFields: "", // View fields in CAML format
        CAMLRowLimit: 0, // Row limit as a string representation of an integer
        CAMLQueryOptions: "<QueryOptions></QueryOptions>", // Query options in CAML format

        // Abstractions for CAML syntax
        batchCmd: "Update", // Method Cmd for UpdateListItems
        valuepairs: [], // Fieldname / Fieldvalue pairs for UpdateListItems

        // As of v0.7.1, removed all options which were assigned an empty string ("")
        DestinationUrls: [], // Array of destination URLs for copy operations
        behavior: "Version3", // An SPWebServiceBehavior indicating whether the client supports Windows SharePoint Services 2.0 or Windows SharePoint Services 3.0: {Version2 | Version3 }
        storage: "Shared", // A Storage value indicating how the Web Part is stored: {None | Personal | Shared}
        objectType: "List", // objectType for operations which require it
        cancelMeeting: true, // true to delete a meeting;false to remove its association with a Meeting Workspace site
        nonGregorian: false, // true if the calendar is set to a format other than Gregorian;otherwise, false.
        fClaim: false, // Specifies if the action is a claim or a release. Specifies true for a claim and false for a release.
        recurrenceId: 0, // The recurrence ID for the meeting that needs its association removed. This parameter can be set to 0 for single-instance meetings.
        sequence: 0, // An integer that is used to determine the ordering of updates in case they arrive out of sequence. Updates with a lower-than-current sequence are discarded. If the sequence is equal to the current sequence, the latest update are applied.
        maximumItemsToReturn: 0, // SocialDataService maximumItemsToReturn
        startIndex: 0, // SocialDataService startIndex
        isHighPriority: false, // SocialDataService isHighPriority
        isPrivate: false, // SocialDataService isPrivate
        rating: 1, // SocialDataService rating
        maxResults: 10, // Unless otherwise specified, the maximum number of principals that can be returned from a provider is 10.
        principalType: "User", // Specifies user scope and other information: [None | User | DistributionList | SecurityGroup | SharePointGroup | All]

        async: true, // Allow the user to force async
        completefunc: null // Function to call on completion

    }; // End $.fn.SPServices.defaults

    // Function to determine the current Web's URL.  We need this for successful Ajax calls.
    // The function is also available as a public function.
    $.fn.SPServices.SPGetCurrentSite = function() {

        // We've already determined the current site...
        if (currentContext.thisSite.length > 0) {
            return currentContext.thisSite;
        }

        // If we still don't know the current site, we call WebUrlFromPageUrlResult.
        var msg = SOAPEnvelope.header +
            "<WebUrlFromPageUrl xmlns='" + SCHEMASharePoint + "/soap/' ><pageUrl>" +
            ((location.href.indexOf("?") > 0) ? location.href.substr(0, location.href.indexOf("?")) : location.href) +
            "</pageUrl></WebUrlFromPageUrl>" +
            SOAPEnvelope.footer;
        $.ajax({
            async: false, // Need this to be synchronous so we're assured of a valid value
            url: "/_vti_bin/Webs.asmx",
            type: "POST",
            data: msg,
            dataType: "xml",
            contentType: "text/xml;charset=\"utf-8\"",
            complete: function(xData, Status) {
                currentContext.thisSite = $(xData.responseXML).find("WebUrlFromPageUrlResult").text();
            }
        });

        return currentContext.thisSite; // Return the URL

    }; // End $.fn.SPServices.SPGetCurrentSite

    // Function to set up cascading dropdowns on a SharePoint form
    // (Newform.aspx, EditForm.aspx, or any other customized form.)
    $.fn.SPServices.SPCascadeDropdowns = function(options) {

        var opt = $.extend({}, {
            relationshipWebURL: "", // [Optional] The name of the Web (site) which contains the relationships list
            relationshipList: "", // The name of the list which contains the parent/child relationships
            relationshipListParentColumn: "", // The internal name of the parent column in the relationship list
            relationshipListChildColumn: "", // The internal name of the child column in the relationship list
            relationshipListSortColumn: "", // [Optional] If specified, sort the options in the dropdown by this column,
            // otherwise the options are sorted by relationshipListChildColumn
            parentColumn: "", // The display name of the parent column in the form
            childColumn: "", // The display name of the child column in the form
            listName: $().SPServices.SPListNameFromUrl(), // The list the form is working with. This is useful if the form is not in the list context.
            CAMLQuery: "", // [Optional] For power users, this CAML fragment will be Anded with the default query on the relationshipList
            CAMLQueryOptions: "<QueryOptions><IncludeMandatoryColumns>FALSE</IncludeMandatoryColumns></QueryOptions>", // [Optional] For power users, ability to specify Query Options
            promptText: "", // [DEPRECATED] Text to use as prompt. If included, {0} will be replaced with the value of childColumn. IOrignal value "Choose {0}..."
            noneText: "(None)", // [Optional] Text to use for the (None) selection. Provided for non-English language support.
            simpleChild: false, // [Optional] If set to true and childColumn is a complex dropdown, convert it to a simple dropdown
            selectSingleOption: false, // [Optional] If set to true and there is only a single child option, select it
            matchOnId: false, // By default, we match on the lookup's text value. If matchOnId is true, we'll match on the lookup id instead.
            completefunc: null, // Function to call on completion of rendering the change.
            debug: false // If true, show error messages;if false, run silent
        }, options);


        var thisParentSetUp = false;
        var thisFunction = "SPServices.SPCascadeDropdowns";

        // Find the parent column's select (dropdown)
        var parentSelect = new DropdownCtl(opt.parentColumn);
        if (parentSelect.Obj.html() === null && opt.debug) {
            errBox(thisFunction, "parentColumn: " + opt.parentColumn, TXTColumnNotFound);
            return;
        }

        // Find the child column's select (dropdown)
        var childSelect = new DropdownCtl(opt.childColumn);
        if (childSelect.Obj.html() === null && opt.debug) {
            errBox(thisFunction, "childColumn: " + opt.childColumn, TXTColumnNotFound);
            return;
        }

        // If requested and the childColumn is a complex dropdown, convert to a simple dropdown
        if (opt.simpleChild === true && childSelect.Type === "C") {
            $().SPServices.SPComplexToSimpleDropdown({
                columnName: opt.childColumn
            });
            // Set the childSelect to reference the new simple dropdown
            childSelect = new DropdownCtl(opt.childColumn);
        }

        var childColumnRequired, childColumnStatic;

        // Get information about the childColumn from the current list
        $().SPServices({
            operation: "GetList",
            async: false,
            cacheXML: true,
            listName: opt.listName,
            completefunc: function(xData) {
                $(xData.responseXML).find("Fields").each(function() {
                    $(this).find("Field[DisplayName='" + opt.childColumn + "']").each(function() {
                        // Determine whether childColumn is Required
                        childColumnRequired = ($(this).attr("Required") === "TRUE") ? true : false;
                        childColumnStatic = $(this).attr("StaticName");
                        // Stop looking; we're done
                        return false;
                    });
                });
            }
        });

        // Save data about each child column on the parent
        var childColumn = {
            opt: opt,
            childSelect: childSelect,
            childColumnStatic: childColumnStatic,
            childColumnRequired: childColumnRequired
        };
        var childColumns = parentSelect.Obj.data("SPCascadeDropdownsChildColumns");

        // If this is the first child for this parent, then create the data object to hold the settings
        if (typeof childColumns === "undefined") {
            parentSelect.Obj.data("SPCascadeDropdownsChildColumns", [childColumn]);
            // If we already have a data object for this parent, then add the setting for this child to it
        } else {
            childColumns.push(childColumn);
            parentSelect.Obj.data("SPCascadeDropdownsChildColumns", childColumns);
            thisParentSetUp = true;
        }

        // We only need to bind to the event(s) if we haven't already done so
        if (!thisParentSetUp) {
            switch (parentSelect.Type) {
                // Plain old select
                case "S":
                    parentSelect.Obj.bind("change", function() {
                        cascadeDropdown(opt.parentColumn, parentSelect);
                    });
                    break;
                    // Input / Select hybrid
                case "C":
                    // Bind to any change on the hidden input element
                    $("input[id='" + parentSelect.Obj.attr("optHid") + "']").bind("propertychange", function() {
                        cascadeDropdown(opt.parentColumn, parentSelect);
                    });
                    break;
                    // Multi-select hybrid
                case "M":
                    // Handle the dblclick on the candidate select
                    $(parentSelect.master.candidateControl).bind("dblclick", function() {
                        cascadeDropdown(opt.parentColumn, parentSelect);
                    });
                    // Handle the dblclick on the selected values
                    $(parentSelect.master.resultControl).bind("dblclick", function() {
                        cascadeDropdown(opt.parentColumn, parentSelect);
                    });
                    // Handle button clicks
                    $(parentSelect.master.addControl).bind("click", function() {
                        cascadeDropdown(opt.parentColumn, parentSelect);
                    });
                    $(parentSelect.master.removeControl).bind("click", function() {
                        cascadeDropdown(opt.parentColumn, parentSelect);
                    });
                    break;
                default:
                    break;
            }
        }
        // Fire the change to set the initially allowable values
        cascadeDropdown(opt.parentColumn, parentSelect);

    }; // End $.fn.SPServices.SPCascadeDropdowns

    function cascadeDropdown(parentColumn, parentSelect) {
        var choices = "";
        var parentSelectSelected;
        var childSelectSelected = null;
        var newMultiLookupPickerdata;
        var numChildOptions;
        var firstChildOptionId;
        var firstChildOptionValue;

        // Filter each child column
        var childColumns = parentSelect.Obj.data("SPCascadeDropdownsChildColumns");
        $(childColumns).each(function() {

            // Break out the data objects for this child column
            var opt = this.opt;
            var childSelect = this.childSelect;
            var childColumnStatic = this.childColumnStatic;
            var childColumnRequired = this.childColumnRequired;

            // Get the parent column selection(s)
            parentSelectSelected = getDropdownSelected(parentSelect, opt.matchOnId);

            // If the selection hasn't changed, then there's nothing to do right now.  This is useful to reduce
            // the number of Web Service calls when the parentSelect.Type = "C" or "M", as there are multiple propertychanges
            // which don't require any action.  The attribute will be unique per child column in case there are
            // multiple children for a given parent.
            var allParentSelections = parentSelectSelected.join(";#");
            if (parentSelect.Obj.data("SPCascadeDropdown_Selected_" + childColumnStatic) === allParentSelections) {
                return;
            }
            parentSelect.Obj.data("SPCascadeDropdown_Selected_" + childColumnStatic, allParentSelections);

            // Get the current child column selection(s)
            childSelectSelected = getDropdownSelected(childSelect, true);

            // When the parent column's selected option changes, get the matching items from the relationship list
            // Get the list items which match the current selection
            var sortColumn = (opt.relationshipListSortColumn.length > 0) ? opt.relationshipListSortColumn : opt.relationshipListChildColumn;
            var camlQuery = "<Query><OrderBy><FieldRef Name='" + sortColumn + "'/></OrderBy><Where><And>";
            if (opt.CAMLQuery.length > 0) {
                camlQuery += "<And>";
            }

            // Build up the criteria for inclusion
            if (parentSelectSelected.length === 0) {
                // Handle the case where no values are selected in multi-selects
                camlQuery += "<Eq><FieldRef Name='" + opt.relationshipListParentColumn + "'/><Value Type='Text'></Value></Eq>";
            } else if (parentSelectSelected.length === 1) {
                // Only one value is selected
                camlQuery += "<Eq><FieldRef Name='" + opt.relationshipListParentColumn +
                    (opt.matchOnId ? "' LookupId='True'/><Value Type='Integer'>" : "'/><Value Type='Text'>") +
                    escapeColumnValue(parentSelectSelected[0]) + "</Value></Eq>";
            } else {
                var compound = (parentSelectSelected.length > 2) ? true : false;
                for (i = 0; i < (parentSelectSelected.length - 1); i++) {
                    camlQuery += "<Or>";
                }
                for (i = 0; i < parentSelectSelected.length; i++) {
                    camlQuery += "<Eq><FieldRef Name='" + opt.relationshipListParentColumn +
                        (opt.matchOnId ? "' LookupId='True'/><Value Type='Integer'>" : "'/><Value Type='Text'>") +
                        escapeColumnValue(parentSelectSelected[i]) + "</Value></Eq>";
                    if (i > 0 && (i < (parentSelectSelected.length - 1)) && compound) {
                        camlQuery += "</Or>";
                    }
                }
                camlQuery += "</Or>";
            }

            if (opt.CAMLQuery.length > 0) {
                camlQuery += opt.CAMLQuery + "</And>";
            }

            // Make sure we don't get any items which don't have the child value
            camlQuery += "<IsNotNull><FieldRef Name='" + opt.relationshipListChildColumn + "' /></IsNotNull>";

            camlQuery += "</And></Where></Query>";

            $().SPServices({
                operation: "GetListItems",
                // Force sync so that we have the right values for the child column onchange trigger
                async: false,
                webURL: opt.relationshipWebURL,
                listName: opt.relationshipList,
                // Filter based on the currently selected parent column's value
                CAMLQuery: camlQuery,
                // Only get the parent and child columns
                CAMLViewFields: "<ViewFields><FieldRef Name='" + opt.relationshipListParentColumn + "' /><FieldRef Name='" + opt.relationshipListChildColumn + "' /></ViewFields>",
                // Override the default view rowlimit and get all appropriate rows
                CAMLRowLimit: 0,
                // Even though setting IncludeMandatoryColumns to FALSE doesn't work as the docs describe, it fixes a bug in GetListItems with mandatory multi-selects
                CAMLQueryOptions: opt.CAMLQueryOptions,
                completefunc: function(xData) {

                    // Handle errors
                    $(xData.responseXML).find("errorstring").each(function() {
                        var thisFunction = "SPServices.SPCascadeDropdowns";
                        var errorText = $(this).text();
                        if (opt.debug && errorText === "One or more field types are not installed properly. Go to the list settings page to delete these fields.") {
                            errBox(thisFunction,
                                "relationshipListParentColumn: " + opt.relationshipListParentColumn + " or " +
                                "relationshipListChildColumn: " + opt.relationshipListChildColumn,
                                "Not found in relationshipList " + opt.relationshipList);
                        } else if (opt.debug && errorText === "Guid should contain 32 digits with 4 dashes (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx).") {
                            errBox(thisFunction,
                                "relationshipList: " + opt.relationshipList,
                                "List not found");
                        }
                        return;
                    });

                    // Add an explanatory prompt
                    switch (childSelect.Type) {
                        case "S":
                            // Remove all of the existing options
                            $(childSelect.Obj).find("option").remove();
                            // If the column is required or the promptText option is empty, don't add the prompt text
                            if (!childColumnRequired && (opt.promptText.length > 0)) {
                                childSelect.Obj.append("<option value='0'>" + opt.promptText.replace(/\{0\}/g, opt.childColumn) + "</option>");
                            } else if (!childColumnRequired) {
                                childSelect.Obj.append("<option value='0'>" + opt.noneText + "</option>");
                            }
                            break;
                        case "C":
                            // If the column is required, don't add the "(None)" option
                            choices = childColumnRequired ? "" : opt.noneText + "|0";
                            childSelect.Obj.attr("value", "");
                            break;
                        case "M":
                            // Remove all of the existing options
                            $(childSelect.master.candidateControl).find("option").remove();
                            newMultiLookupPickerdata = "";
                            break;
                        default:
                            break;
                    }
                    // Get the count of items returned and save it so that we can select if it's a single option 
                    // The item count is stored thus: <rs:data ItemCount="1">
                    numChildOptions = parseFloat($(xData.responseXML).SPFilterNode("rs:data").attr("ItemCount"));

                    // Add an option for each child item
                    $(xData.responseXML).SPFilterNode("z:row").each(function() {

                        var thisOption = {};

                        // If relationshipListChildColumn is a Lookup column, then the ID should be for the Lookup value,
                        // else the ID of the relationshipList item
                        var thisValue = $(this).attr("ows_" + opt.relationshipListChildColumn);

                        if (typeof thisValue !== "undefined" && thisValue.indexOf(";#") > 0) {
                            thisOption = new SplitIndex(thisValue);
                        } else {
                            thisOption.id = $(this).attr("ows_ID");
                            thisOption.value = thisValue;
                        }

                        // If the relationshipListChildColumn is a calculated column, then the value isn't preceded by the ID,
                        // but by the datatype.  In this case, thisOption.id should be the ID of the relationshipList item.
                        // e.g., float;#12345.67
                        if (isNaN(thisOption.id)) {
                            thisOption.id = $(this).attr("ows_ID");
                        }

                        // Save the id and value for the first child option in case we need to select it (selectSingleOption option is true)
                        firstChildOptionId = thisOption.id;
                        firstChildOptionValue = thisOption.value;

                        switch (childSelect.Type) {
                            case "S":
                                var selected = ($(this).attr("ows_ID") === childSelectSelected[0]) ? " selected='selected'" : "";
                                childSelect.Obj.append("<option" + selected + " value='" + thisOption.id + "'>" + thisOption.value + "</option>");
                                break;
                            case "C":
                                if (thisOption.id === childSelectSelected[0]) {
                                    childSelect.Obj.attr("value", thisOption.value);
                                }
                                choices = choices + ((choices.length > 0) ? "|" : "") + thisOption.value + "|" + thisOption.id;
                                break;
                            case "M":
                                $(childSelect.master.candidateControl).append("<option value='" + thisOption.id + "'>" + thisOption.value + "</option>");
                                newMultiLookupPickerdata += thisOption.id + "|t" + thisOption.value + "|t |t |t";
                                break;
                            default:
                                break;
                        }
                    });

                    switch (childSelect.Type) {
                        case "S":
                            childSelect.Obj.trigger("change");
                            // If there is only one option and the selectSingleOption option is true, then select it
                            if (numChildOptions === 1 && opt.selectSingleOption === true) {
                                $(childSelect.Obj).find("option[value!='0']:first").attr("selected", "selected");
                            }
                            break;
                        case "C":
                            // Set the allowable choices
                            childSelect.Obj.attr("choices", choices);
                            // If there is only one option and the selectSingleOption option is true, then select it
                            if (numChildOptions === 1 && opt.selectSingleOption === true) {
                                // Set the input element value
                                $(childSelect.Obj).attr("value", firstChildOptionValue);
                                // Set the value of the optHid input element
                                $("input[id='" + childSelect.Obj.attr("optHid") + "']").val(firstChildOptionId);
                            }
                            // If there's no selection, then remove the value in the associated hidden input element (optHid)
                            if (childSelect.Obj.val() === "") {
                                $("input[id='" + childSelect.Obj.attr("optHid") + "']").val("");
                            }
                            break;
                        case "M":
                            // Clear the master
                            childSelect.master.data = "";
                            childSelect.MultiLookupPickerdata.attr("value", newMultiLookupPickerdata);

                            // Clear any prior selections that are no longer valid or aren't selected
                            $(childSelect.master.resultControl).find("option").each(function() {
                                var thisSelected = $(this);
                                thisSelected.prop("selected", true);
                                $(childSelect.master.candidateControl).find("option[value='" + thisSelected.val() + "']").each(function() {
                                    thisSelected.prop("selected", false);
                                });
                            });
                            GipRemoveSelectedItems(childSelect.master);

                            // Hide any options in the candidate list which are already selected
                            $(childSelect.master.candidateControl).find("option").each(function() {
                                var thisSelected = $(this);
                                $(childSelect.master.resultControl).find("option[value='" + thisSelected.val() + "']").each(function() {
                                    thisSelected.remove();
                                });
                            });
                            GipAddSelectedItems(childSelect.master);

                            // Set master.data to the newly allowable values
                            childSelect.master.data = GipGetGroupData(newMultiLookupPickerdata);

                            // Trigger a dblclick so that the child will be cascaded if it is a multiselect.
                            $(childSelect.master.candidateControl).trigger("dblclick");

                            break;
                        default:
                            break;
                    }
                }
            });
            // If present, call completefunc when all else is done
            if (opt.completefunc !== null) {
                opt.completefunc();
            }
        }); // $(childColumns).each(function()

    } // End cascadeDropdown


    // function to convert complex dropdowns to simple dropdowns
    $.fn.SPServices.SPComplexToSimpleDropdown = function(options) {

        var opt = $.extend({}, {
            columnName: "", // The display name of the column in the form
            completefunc: null, // Function to call on completion of rendering the change.
            debug: false // If true, show error messages;if false, run silent
        }, options);

        // Find the column's select (dropdown)
        var columnSelect = new DropdownCtl(opt.columnName);
        if (columnSelect.Obj.html() === null && opt.debug) {
            errBox("SPServices.SPComplexToSimpleDropdown", "columnName: " + opt.columnName, TXTColumnNotFound);
            return;
        }

        // If we don't have a complex dropdown, then there is nothing to do
        if (columnSelect.Type !== "C") {
            return;
        }

        // The available options are stored in the choices attribute of the complex dropdowns's input element...
        var choices = $(columnSelect.Obj).attr("choices").split("|");
        // The optHid attribute contains the id of a hidden input element which stores the selected value for the commit
        var columnOptHid = $(columnSelect.Obj).attr("optHid");
        var columnOptHidInput = $("input[id='" + columnOptHid + "']");
        // We need to know which option is selected already, if any
        var complexSelectSelectedId = $("input[id='" + columnOptHid + "']").val();

        // Build up the simple dropdown, giving it an easy to select id
        var simpleSelectId = genContainerId("SPComplexToSimpleDropdown", opt.columnName);

        var simpleSelect = "<select id='" + simpleSelectId + "' title='" + opt.columnName + "'>";
        for (i = 0; i < choices.length; i = i + 2) {
            var simpleSelectSelected = (choices[i + 1] === complexSelectSelectedId) ? " selected='selected' " : " ";
            simpleSelect += "<option" + simpleSelectSelected + "value='" + choices[i + 1] + "'>" + choices[i] + "</option>";
        }
        simpleSelect += "</select>";

        // Append the new simple select to the form
        $(columnSelect.Obj).closest("td").prepend(simpleSelect);

        // Remove the complex dropdown functionality since we don't need it anymore...
        $(columnSelect.Obj).closest("span").find("img").remove();
        // ...and hide the input element
        $(columnSelect.Obj).closest("span").find("input").hide();

        // When the simple select changes...
        $("#" + simpleSelectId).change(function() {
            var thisVal = $(this).val();
            // ...set the optHid input element's value to the valus of the selected option...
            columnOptHidInput.val(thisVal);
            // ...and save the selected value as the hidden input's value only if the value is not equal to "0" (None)
            $(columnSelect.Obj).val($(this).find("option[value='" + (thisVal !== "0" ? thisVal : "") + "']").html());
        });
        // Trigger a change to ensure that the selected value registers in the complex dropdown
        $("#" + simpleSelectId).trigger("change");

        // If present, call completefunc when all else is done
        if (opt.completefunc !== null) {
            opt.completefunc();
        }

    }; // End $.fn.SPServices.SPConvertToSimpleDropdown


    // Function to display related information when an option is selected on a form.
    $.fn.SPServices.SPDisplayRelatedInfo = function(options) {

        var opt = $.extend({}, {
            columnName: "", // The display name of the column in the form
            relatedWebURL: "", // [Optional] The name of the Web (site) which contains the related list
            relatedList: "", // The name of the list which contains the additional information
            relatedListColumn: "", // The internal name of the related column in the related list
            relatedColumns: [], // An array of related columns to display
            displayFormat: "table", // The format to use in displaying the related information.  Possible values are: [table, list]
            headerCSSClass: "ms-vh2", // CSS class for the table headers
            rowCSSClass: "ms-vb", // CSS class for the table rows
            CAMLQuery: "", // [Optional] For power users, this CAML fragment will be <And>ed with the default query on the relatedList
            numChars: 0, // If used on an input column (not a dropdown), no matching will occur until at least this number of characters has been entered
            matchType: "Eq", // If used on an input column (not a dropdown), type of match. Can be any valid CAML comparison operator, most often "Eq" or "BeginsWith"
            matchOnId: false, // By default, we match on the lookup's text value. If matchOnId is true, we'll match on the lookup id instead.
            completefunc: null, // Function to call on completion of rendering the change.
            debug: false // If true, show error messages;if false, run silent
        }, options);

        var divId;
        var relatedColumnsXML = [];
        var relatedListXML;
        var thisFunction = "SPServices.SPDisplayRelatedInfo";

        // Find the column's select (dropdown)
        var columnSelect = new DropdownCtl(opt.columnName);
        if (columnSelect.Obj.html() === null && opt.debug) {
            errBox(thisFunction, "columnName: " + opt.columnName, TXTColumnNotFound);
            return;
        }

        // Generate a unique id for the container
        divId = genContainerId("SPDisplayRelatedInfo", opt.columnName);

        // Get information about the related list and its columns
        $().SPServices({
            operation: "GetList",
            async: false,
            cacheXML: true,
            webURL: opt.relatedWebURL,
            listName: opt.relatedList,
            completefunc: function(xData) {
                // If debug is on, notify about an error
                $(xData.responseXML).find("faultcode").each(function() {
                    if (opt.debug) {
                        errBox(thisFunction, "relatedList: " + opt.relatedList, "List not found");
                        return;
                    }
                });
                // Get info about the related list
                relatedListXML = $(xData.responseXML).find("List");
                // Save the information about each column requested
                for (i = 0; i < opt.relatedColumns.length; i++) {
                    relatedColumnsXML[opt.relatedColumns[i]] = $(xData.responseXML).find("Fields > Field[Name='" + opt.relatedColumns[i] + "']");
                }
                relatedColumnsXML[opt.relatedListColumn] = $(xData.responseXML).find("Fields > Field[Name='" + opt.relatedListColumn + "']");
            }
        });

        switch (columnSelect.Type) {
            // Plain old select
            case "S":
                columnSelect.Obj.bind("change", function() {
                    showRelated(opt, divId, relatedListXML, relatedColumnsXML);
                });
                break;
                // Input / Select hybrid
            case "C":
                // Bind to any change on the hidden input element
                $("input[id='" + columnSelect.Obj.attr("optHid") + "']").bind("propertychange", function() {
                    showRelated(opt, divId, relatedListXML, relatedColumnsXML);
                });
                break;
                // Multi-select hybrid
            case "M":
                if (opt.debug) {
                    errBox(thisFunction, "columnName: " + opt.columnName, "Multi-select columns not supported by this function");
                }
                break;
            default:
                break;
        }
        // Fire the change to set the initially allowable values
        showRelated(opt, divId, relatedListXML, relatedColumnsXML);

    }; // End $.fn.SPServices.SPDisplayRelatedInfo

    function showRelated(opt, divId, relatedListXML, relatedColumnsXML) {

        var columnSelectSelected = null;
        var thisFunction = "SPServices.SPDisplayRelatedInfo";

        // Find the column's select (dropdown)
        var columnSelect = new DropdownCtl(opt.columnName);

        // Get the current column selection(s)
        columnSelectSelected = getDropdownSelected(columnSelect, opt.matchOnId);
        if (columnSelect.Type === "C" && opt.numChars > 0 && columnSelectSelected[0].length < opt.numChars) {
            return;
        }

        // If the selection hasn't changed, then there's nothing to do right now.  This is useful to reduce
        // the number of Web Service calls when the parentSelect.Type = "C", as there are multiple propertychanges
        // which don't require any action.
        if (columnSelect.Obj.attr("showRelatedSelected") === columnSelectSelected[0]) {
            return;
        }
        columnSelect.Obj.attr("showRelatedSelected", columnSelectSelected[0]);

        // Remove the old container...
        $("#" + divId).remove();
        // ...and append a new, empty one
        columnSelect.Obj.parent().append("<div id=" + divId + "></div>");

        // Get the list items which match the current selection
        var camlQuery = "<Query><Where>";
        if (opt.CAMLQuery.length > 0) {
            camlQuery += "<And>";
        }

        // Need to handle Lookup columns differently than static columns
        var relatedListColumnType = relatedColumnsXML[opt.relatedListColumn].attr("Type");
        if (relatedListColumnType === "Lookup") {
            camlQuery += "<Eq><FieldRef Name='" + opt.relatedListColumn +
                (opt.matchOnId ? "' LookupId='True'/><Value Type='Integer'>" : "'/><Value Type='Text'>") +
                escapeColumnValue(columnSelectSelected[0]) + "</Value></Eq>";
        } else {
            camlQuery += "<Eq><FieldRef Name='" +
                (opt.matchOnId ? "ID' /><Value Type='Counter'>" : opt.relatedListColumn + "'/><Value Type='Text'>") +
                escapeColumnValue(columnSelectSelected[0]) + "</Value></Eq>";
        }

        if (opt.CAMLQuery.length > 0) {
            camlQuery += opt.CAMLQuery + "</And>";
        }
        camlQuery += "</Where></Query>";

        var viewFields = " ";
        for (i = 0; i < opt.relatedColumns.length; i++) {
            viewFields += "<FieldRef Name='" + opt.relatedColumns[i] + "' />";
        }

        $().SPServices({
            operation: "GetListItems",
            async: false,
            webURL: opt.relatedWebURL,
            listName: opt.relatedList,
            // Filter based on the column's currently selected value
            CAMLQuery: camlQuery,
            CAMLViewFields: "<ViewFields>" + viewFields + "</ViewFields>",
            // Override the default view rowlimit and get all appropriate rows
            CAMLRowLimit: 0,
            completefunc: function(xData) {

                // Handle errors
                $(xData.responseXML).find("errorstring").each(function() {
                    var errorText = $(this).text();
                    if (opt.debug && errorText === "One or more field types are not installed properly. Go to the list settings page to delete these fields.") {
                        errBox(thisFunction,
                            "relatedListColumn: " + opt.relatedListColumn,
                            "Column not found in relatedList " + opt.relatedList);
                    } else if (opt.debug && errorText === "Guid should contain 32 digits with 4 dashes (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx).") {
                        errBox(thisFunction,
                            "relatedList: " + opt.relatedList,
                            "List not found");
                    }
                    return;
                });

                var outString;
                // Output each row
                switch (opt.displayFormat) {
                    // Only implementing the table format in the first iteration (v0.2.9)
                    case "table":
                        outString = "<table>";
                        outString += "<tr>";
                        for (i = 0; i < opt.relatedColumns.length; i++) {
                            if (typeof relatedColumnsXML[opt.relatedColumns[i]] === "undefined" && opt.debug) {
                                errBox(thisFunction, "columnName: " + opt.relatedColumns[i], "Column not found in relatedList");
                                return;
                            }
                            outString += "<th class='" + opt.headerCSSClass + "'>" + relatedColumnsXML[opt.relatedColumns[i]].attr("DisplayName") + "</th>";
                        }
                        outString += "</tr>";
                        // Add an option for each child item
                        $(xData.responseXML).SPFilterNode("z:row").each(function() {
                            outString += "<tr>";
                            for (i = 0; i < opt.relatedColumns.length; i++) {
                                outString += "<td class='" + opt.rowCSSClass + "'>" + showColumn(relatedListXML, relatedColumnsXML[opt.relatedColumns[i]], $(this).attr("ows_" + opt.relatedColumns[i]), opt) + "</td>";
                            }
                            outString += "</tr>";
                        });
                        outString += "</table>";
                        break;
                        // list format implemented in v0.5.0. Still table-based, but vertical orientation.
                    case "list":
                        outString = "<table>";
                        $(xData.responseXML).SPFilterNode("z:row").each(function() {
                            for (i = 0; i < opt.relatedColumns.length; i++) {
                                if (typeof relatedColumnsXML[opt.relatedColumns[i]] === "undefined" && opt.debug) {
                                    errBox(thisFunction, "columnName: " + opt.relatedColumns[i], "Column not found in relatedList");
                                    return;
                                }
                                outString += "<tr>";
                                outString += "<th class='" + opt.headerCSSClass + "'>" + relatedColumnsXML[opt.relatedColumns[i]].attr("DisplayName") + "</th>";
                                outString += "<td class='" + opt.rowCSSClass + "'>" + showColumn(relatedListXML, relatedColumnsXML[opt.relatedColumns[i]], $(this).attr("ows_" + opt.relatedColumns[i]), opt) + "</td>";
                                outString += "</tr>";
                            }
                        });
                        outString += "</table>";
                        break;
                    default:
                        break;
                }
                // Write out the results
                $("#" + divId).html(outString);
            }
        });
        // If present, call completefunc when all else is done
        if (opt.completefunc !== null) {
            opt.completefunc();
        }
    } // End showRelated

    // Function to filter a lookup based dropdown 
    $.fn.SPServices.SPFilterDropdown = function(options) {
        var opt = $.extend({}, {
            relationshipWebURL: "", // [Optional] The name of the Web (site) which contains the relationshipList
            relationshipList: "", // The name of the list which contains the lookup values
            relationshipListColumn: "", // The internal name of the column in the relationship list
            relationshipListSortColumn: "", // [Optional] If specified, sort the options in the dropdown by this column,
            // otherwise the options are sorted by relationshipListColumn
            relationshipListSortAscending: true, // [Optional] By default, the sort is ascending. If false, descending
            columnName: "", // The display name of the column in the form
            listName: $().SPServices.SPListNameFromUrl(), // The list the form is working with. This is useful if the form is not in the list context.
            promptText: "", // [DEPRECATED] Text to use as prompt. If included, {0} will be replaced with the value of columnName. IOrignal value "Choose {0}..."
            noneText: "(None)", // [Optional] Text to use for the (None) selection. Provided for non-English language support.
            CAMLQuery: "", // This CAML fragment will be applied to the relationshipList
            CAMLQueryOptions: "<QueryOptions><IncludeMandatoryColumns>FALSE</IncludeMandatoryColumns><ViewAttributes Scope='RecursiveAll'/></QueryOptions>", // Need this to mirror SharePoint's behavior, but it can be overridden
            completefunc: null, // Function to call on completion of rendering the change.
            debug: false // If true, show error messages; if false, run silent
        }, options);

        var choices = "";
        var columnSelectSelected = null;
        var newMultiLookupPickerdata;
        var columnColumnRequired;
        var thisFunction = "SPServices.SPFilterDropdown";

        // Find the column's select (dropdown)
        var columnSelect = new DropdownCtl(opt.columnName);
        if (columnSelect.Obj.html() === null && opt.debug) {
            errBox(thisFunction, "columnName: " + opt.columnName, TXTColumnNotFound);
            return;
        }

        // Get the current column selection(s)
        columnSelectSelected = getDropdownSelected(columnSelect, true);

        // Get the relationshipList items which match the current selection
        var sortColumn = (opt.relationshipListSortColumn.length > 0) ? opt.relationshipListSortColumn : opt.relationshipListColumn;
        var sortOrder = (opt.relationshipListSortAscending === true) ? "" : "Ascending='FALSE'";
        var camlQuery = "<Query><OrderBy><FieldRef Name='" + sortColumn + "' " + sortOrder + "/></OrderBy><Where>";
        if (opt.CAMLQuery.length > 0) {
            camlQuery += opt.CAMLQuery;
        }
        camlQuery += "</Where></Query>";

        // Get information about columnName from the current list
        $().SPServices({
            operation: "GetList",
            async: false,
            cacheXML: true,
            listName: opt.listName,
            completefunc: function(xData) {
                $(xData.responseXML).find("Fields").each(function() {
                    $(this).find("Field[DisplayName='" + opt.columnName + "']").each(function() {
                        // Determine whether columnName is Required
                        columnColumnRequired = ($(this).attr("Required") === "TRUE") ? true : false;
                        // Stop looking; we're done
                        return false;
                    });
                });
            }
        });

        $().SPServices({
            operation: "GetListItems",
            // Force sync so that we have the right values for the column onchange trigger
            async: false,
            webURL: opt.relationshipWebURL,
            listName: opt.relationshipList,
            // Filter based on the specified CAML
            CAMLQuery: camlQuery,
            // Only get the columnName's data (plus columns we can't prevent)
            CAMLViewFields: "<ViewFields><FieldRef Name='" + opt.relationshipListColumn + "' /></ViewFields>",
            // Override the default view rowlimit and get all appropriate rows
            CAMLRowLimit: 0,
            // Even though setting IncludeMandatoryColumns to FALSE doesn't work as the docs describe, it fixes a bug in GetListItems with mandatory multi-selects
            CAMLQueryOptions: opt.CAMLQueryOptions,
            completefunc: function(xData) {

                // Handle errors
                $(xData.responseXML).find("errorstring").each(function() {
                    var errorText = $(this).text();
                    if (opt.debug && errorText === "One or more field types are not installed properly. Go to the list settings page to delete these fields.") {
                        errBox(thisFunction,
                            "relationshipListColumn: " + opt.relationshipListColumn,
                            "Not found in relationshipList " + opt.relationshipList);
                    } else if (opt.debug && errorText === "Guid should contain 32 digits with 4 dashes (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx).") {
                        errBox(thisFunction,
                            "relationshipList: " + opt.relationshipList,
                            "List not found");
                    }
                    return;
                });

                // Add an explanatory prompt
                switch (columnSelect.Type) {
                    case "S":
                        // Remove all of the existing options
                        $(columnSelect.Obj).find("option").remove();
                        // If the column is required or the promptText option is empty, don't add the prompt text
                        if (!columnColumnRequired && (opt.promptText.length > 0)) {
                            columnSelect.Obj.append("<option value='0'>" + opt.promptText.replace(/\{0\}/g, opt.columnName) + "</option>");
                        } else if (!columnColumnRequired) {
                            columnSelect.Obj.append("<option value='0'>" + opt.noneText + "</option>");
                        }
                        break;
                    case "C":
                        // If the column is required, don't add the "(None)" option
                        choices = columnColumnRequired ? "" : opt.noneText + "|0";
                        columnSelect.Obj.attr("value", "");
                        break;
                    case "M":
                        // Remove all of the existing options
                        $(columnSelect.master.candidateControl).find("option").remove();
                        newMultiLookupPickerdata = "";
                        break;
                    default:
                        break;
                }

                // Add an option for each item
                $(xData.responseXML).SPFilterNode("z:row").each(function() {

                    var thisOption = {};

                    // If relationshipListColumn is a Lookup column, then the ID should be for the Lookup value,
                    // else the ID of the relationshipList item
                    var thisValue = $(this).attr("ows_" + opt.relationshipListColumn);

                    if (typeof thisValue !== "undefined" && thisValue.indexOf(";#") > 0) {
                        thisOption = new SplitIndex(thisValue);
                    } else {
                        thisOption.id = $(this).attr("ows_ID");
                        thisOption.value = thisValue;
                    }

                    // If the relationshipListColumn is a calculated column, then the value isn't preceded by the ID,
                    // but by the datatype.  In this case, thisOption.id should be the ID of the relationshipList item.
                    // e.g., float;#12345.67
                    if (isNaN(thisOption.id)) {
                        thisOption.id = $(this).attr("ows_ID");
                    }

                    switch (columnSelect.Type) {
                        case "S":
                            var selected = ($(this).attr("ows_ID") === columnSelectSelected[0]) ? " selected='selected'" : "";
                            columnSelect.Obj.append("<option" + selected + " value='" + thisOption.id + "'>" + thisOption.value + "</option>");
                            break;
                        case "C":
                            if (thisOption.id === columnSelectSelected[0]) {
                                columnSelect.Obj.attr("value", thisOption.value);
                            }
                            choices = choices + ((choices.length > 0) ? "|" : "") + thisOption.value + "|" + thisOption.id;
                            break;
                        case "M":
                            $(columnSelect.master.candidateControl).append("<option value='" + thisOption.id + "'>" + thisOption.value + "</option>");
                            newMultiLookupPickerdata += thisOption.id + "|t" + thisOption.value + "|t |t |t";
                            break;
                        default:
                            break;
                    }
                });

                switch (columnSelect.Type) {
                    case "S":
                        columnSelect.Obj.trigger("change");
                        break;
                    case "C":
                        columnSelect.Obj.attr("choices", choices);
                        columnSelect.Obj.trigger("propertychange");
                        break;
                    case "M":
                        // Clear the master
                        columnSelect.master.data = "";

                        columnSelect.MultiLookupPickerdata.attr("value", newMultiLookupPickerdata);
                        // Clear any prior selections that are no longer valid
                        $(columnSelect.master.resultControl).find("option").each(function() {
                            var thisSelected = $(this);
                            $(this).attr("selected", "selected");
                            $(columnSelect.master.candidateControl).find("option").each(function() {
                                if ($(this).html() === thisSelected.html()) {
                                    thisSelected.removeAttr("selected");
                                }
                            });
                        });
                        GipRemoveSelectedItems(columnSelect.master);
                        // Hide any options in the candidate list which are already selected
                        $(columnSelect.master.candidateControl).find("option").each(function() {
                            var thisSelected = $(this);
                            $(columnSelect.master.resultControl).find("option").each(function() {
                                if ($(this).html() === thisSelected.html()) {
                                    thisSelected.remove();
                                }
                            });
                        });
                        GipAddSelectedItems(columnSelect.master);
                        // Set master.data to the newly allowable values
                        columnSelect.master.data = GipGetGroupData(newMultiLookupPickerdata);

                        // Trigger a dblclick so that the child will be cascaded if it is a multiselect.
                        $(columnSelect.master.candidateControl).trigger("dblclick");

                        break;
                    default:
                        break;
                }
            }
        });
        // If present, call completefunc when all else is done
        if (opt.completefunc !== null) {
            opt.completefunc();
        }
    }; // End $.fn.SPServices.SPFilterDropdown


    // Utility function to show the results of a Web Service call formatted well in the browser.
    $.fn.SPServices.SPDebugXMLHttpResult = function(options) {

        var opt = $.extend({}, {
            node: null, // An XMLHttpResult object from an ajax call
            indent: 0 // Number of indents
        }, options);

        var i;
        var NODE_TEXT = 3;
        var NODE_CDATA_SECTION = 4;

        var outString = "";
        // For each new subnode, begin rendering a new TABLE
        outString += "<table class='ms-vb' style='margin-left:" + opt.indent * 3 + "px;' width='100%'>";
        // DisplayPatterns are a bit unique, so let's handle them differently
        if (opt.node.nodeName === "DisplayPattern") {
            outString += "<tr><td width='100px' style='font-weight:bold;'>" + opt.node.nodeName +
                "</td><td><textarea readonly='readonly' rows='5' cols='50'>" + opt.node.xml + "</textarea></td></tr>";
            // A node which has no children
        } else if (!opt.node.hasChildNodes()) {
            outString += "<tr><td width='100px' style='font-weight:bold;'>" + opt.node.nodeName +
                "</td><td>" + ((opt.node.nodeValue !== null) ? checkLink(opt.node.nodeValue) : "&nbsp;") + "</td></tr>";
            if (opt.node.attributes) {
                outString += "<tr><td colspan='99'>" + showAttrs(opt.node) + "</td></tr>";
            }
            // A CDATA_SECTION node
        } else if (opt.node.hasChildNodes() && opt.node.firstChild.nodeType === NODE_CDATA_SECTION) {
            outString += "<tr><td width='100px' style='font-weight:bold;'>" + opt.node.nodeName +
                "</td><td><textarea readonly='readonly' rows='5' cols='50'>" + opt.node.parentNode.text + "</textarea></td></tr>";
            // A TEXT node
        } else if (opt.node.hasChildNodes() && opt.node.firstChild.nodeType === NODE_TEXT) {
            outString += "<tr><td width='100px' style='font-weight:bold;'>" + opt.node.nodeName +
                "</td><td>" + checkLink(opt.node.firstChild.nodeValue) + "</td></tr>";
            // Handle child nodes
        } else {
            outString += "<tr><td width='100px' style='font-weight:bold;' colspan='99'>" + opt.node.nodeName + "</td></tr>";
            if (opt.node.attributes) {
                outString += "<tr><td colspan='99'>" + showAttrs(opt.node) + "</td></tr>";
            }
            // Since the node has child nodes, recurse
            outString += "<tr><td>";
            for (i = 0; i < opt.node.childNodes.length; i++) {
                outString += $().SPServices.SPDebugXMLHttpResult({
                    node: opt.node.childNodes.item(i),
                    indent: opt.indent + 1
                });
            }
            outString += "</td></tr>";
        }
        outString += "</table>";
        // Return the HTML which we have built up
        return outString;
    }; // End $.fn.SPServices.SPDebugXMLHttpResult

    // Function which returns the account name for the current user in DOMAIN\username format
    $.fn.SPServices.SPGetCurrentUser = function(options) {

        var opt = $.extend({}, {
            webURL: "", // URL of the target Site Collection.  If not specified, the current Web is used.
            fieldName: "Name", // Specifies which field to return from the userdisp.aspx page
            fieldNames: {}, // Specifies which fields to return from the userdisp.aspx page - added in v0.7.2 to allow multiple columns
            debug: false // If true, show error messages; if false, run silent
        }, options);

        // The current user's ID is reliably available in an existing JavaScript variable
        if (opt.fieldName === "ID" && typeof currentContext.thisUserId !== "undefined") {
            return currentContext.thisUserId;
        }

        var thisField = "";
        var theseFields = {};
        var fieldCount = opt.fieldNames.length > 0 ? opt.fieldNames.length : 1;
        var thisUserDisp;
        var thisWeb = opt.webURL.length > 0 ? opt.webURL : $().SPServices.SPGetCurrentSite();

        // Get the UserDisp.aspx page using AJAX
        $.ajax({
            // Need this to be synchronous so we're assured of a valid value
            async: false,
            // Force parameter forces redirection to a page that displays the information as stored in the UserInfo table rather than My Site.
            // Adding the extra Query String parameter with the current date/time forces the server to view this as a new request.
            url: thisWeb + "/_layouts/userdisp.aspx?Force=True&" + new Date().getTime(),
            complete: function(xData, Status) {
                thisUserDisp = xData;
            }
        });

        for (i = 0; i < fieldCount; i++) {

            // The current user's ID is reliably available in an existing JavaScript variable
            if (opt.fieldNames[i] === "ID") {
                thisField = currentContext.thisUserId;
            } else {
                var thisTextValue;
                if (fieldCount > 1) {
                    thisTextValue = RegExp("FieldInternalName=\"" + opt.fieldNames[i] + "\"", "gi");
                } else {
                    thisTextValue = RegExp("FieldInternalName=\"" + opt.fieldName + "\"", "gi");
                }
                $(thisUserDisp.responseText).find("table.ms-formtable td[id^='SPField']").each(function() {
                    if (thisTextValue.test($(this).html())) {
                        // Each fieldtype contains a different data type, as indicated by the id
                        switch ($(this).attr("id")) {
                            case "SPFieldText":
                                thisField = $(this).text();
                                break;
                            case "SPFieldNote":
                                thisField = $(this).find("div").html();
                                break;
                            case "SPFieldURL":
                                thisField = $(this).find("img").attr("src");
                                break;
                                // Just in case
                            default:
                                thisField = $(this).text();
                                break;
                        }
                        // Stop looking; we're done
                        return false;
                    }
                });
            }
            if (opt.fieldNames[i] !== "ID") {
                thisField = (typeof thisField !== "undefined") ? thisField.replace(/(^[\s\xA0]+|[\s\xA0]+$)/g, '') : null;
            }
            if (fieldCount > 1) {
                theseFields[opt.fieldNames[i]] = thisField;
            }
        }

        return (fieldCount > 1) ? theseFields : thisField;

    }; // End $.fn.SPServices.SPGetCurrentUser

    // Function which provides a link on a Lookup column for the user to follow
    // which allows them to add a new value to the Lookup list.
    // Based on http://blog.mastykarz.nl/extending-lookup-fields-add-new-item-option/
    // by Waldek Mastykarz
    $.fn.SPServices.SPLookupAddNew = function(options) {

        var opt = $.extend({}, {
            lookupColumn: "", // The display name of the Lookup column
            promptText: "Add new {0}", // Text to use as prompt + column name
            newWindow: false, // If true, the link will open in a new window *without* passing the Source.
            ContentTypeID: "", // [Optional] Pass the ContentTypeID if you'd like to specify it
            completefunc: null, // Function to call on completion of rendering the change.
            debug: false // If true, show error messages;if false, run silent
        }, options);

        var thisFunction = "SPServices.SPLookupAddNew";

        // Find the lookup column's select (dropdown)
        var lookupSelect = new DropdownCtl(opt.lookupColumn);
        if (lookupSelect.Obj.html() === null && opt.debug) {
            errBox(thisFunction, "lookupColumn: " + opt.lookupColumn, TXTColumnNotFound);
            return;
        }

        var newUrl = "";
        var lookupListUrl = "";
        var lookupColumnStaticName = "";
        // Use GetList for the current list to determine the details for the Lookup column
        $().SPServices({
            operation: "GetList",
            async: false,
            cacheXML: true,
            listName: $().SPServices.SPListNameFromUrl(),
            completefunc: function(xData, Status) {
                $(xData.responseXML).find("Field[DisplayName='" + opt.lookupColumn + "']").each(function() {
                    lookupColumnStaticName = $(this).attr("StaticName");
                    // Use GetList for the Lookup column's list to determine the list's URL
                    $().SPServices({
                        operation: "GetList",
                        async: false,
                        cacheXML: true,
                        listName: $(this).attr("List"),
                        completefunc: function(xData, Status) {
                            $(xData.responseXML).find("List").each(function() {
                                lookupListUrl = $(this).attr("WebFullUrl");
                                // Need to handle when list is in the root site
                                lookupListUrl = lookupListUrl !== SLASH ? lookupListUrl + SLASH : lookupListUrl;
                            });
                        }
                    });
                    // Get the NewItem form for the Lookup column's list
                    newUrl = getListFormUrl($(this).attr("List"), "NewForm");
                    // Stop looking;we're done
                    return false;
                });
            }
        });

        if (lookupListUrl.length === 0 && opt.debug) {
            errBox(thisFunction, "lookupColumn: " + opt.lookupColumn, "This column does not appear to be a lookup column");
            return;
        }
        if (newUrl.length > 0) {
            // Build the link to the Lookup column's list enclosed in a div with the id="SPLookupAddNew_" + lookupColumnStaticName
            var newHref = lookupListUrl + newUrl;
            // If requested, open the link in a new window and if requested, pass the ContentTypeID
            newHref += opt.newWindow ?
                ((opt.ContentTypeID.length > 0) ? "?ContentTypeID=" + opt.ContentTypeID : "") + "' target='_blank'" :
                "?" + ((opt.ContentTypeID.length > 0) ? "ContentTypeID=" + opt.ContentTypeID + "&" : "") + "Source=" + escapeUrl(location.href) + "'";
            var newLink = "<div id='SPLookupAddNew_" + lookupColumnStaticName + "'>" + "<a href='" + newHref + ">" + opt.promptText.replace(/\{0\}/g, opt.lookupColumn) + "</a></div>";
            // Append the link to the Lookup columns's formbody table cell
            $(lookupSelect.Obj).parents("td.ms-formbody").append(newLink);
        } else if (opt.debug) {
            errBox(thisFunction, "lookupColumn: " + opt.lookupColumn, "NewForm cannot be found");
            return;
        }
        // If present, call completefunc when all else is done
        if (opt.completefunc !== null) {
            opt.completefunc();
        }
    }; // End $.fn.SPServices.SPLookupAddNew

    // Function to return the ID of the last item created on a list by a specific user. Useful for maintaining parent/child relationships
    // between list forms
    $.fn.SPServices.SPGetLastItemId = function(options) {

        var opt = $.extend({}, {
            webURL: "", // URL of the target Web.  If not specified, the current Web is used.
            listName: "", // The name or GUID of the list
            userAccount: "", // The account for the user in DOMAIN\username format. If not specified, the current user is used.
            CAMLQuery: "" // [Optional] For power users, this CAML fragment will be Anded with the default query on the relatedList
        }, options);

        var userId;
        var lastId = 0;
        $().SPServices({
            operation: "GetUserInfo",
            webURL: opt.webURL,
            async: false,
            userLoginName: (opt.userAccount !== "") ? opt.userAccount : $().SPServices.SPGetCurrentUser(),
            completefunc: function(xData, Status) {
                $(xData.responseXML).find("User").each(function() {
                    userId = $(this).attr("ID");
                });
            }
        });

        // Get the list items for the user, sorted by Created, descending. If the CAMLQuery option has been specified, And it with
        // the existing Where clause
        var camlQuery = "<Query><Where>";
        if (opt.CAMLQuery.length > 0) {
            camlQuery += "<And>";
        }
        camlQuery += "<Eq><FieldRef Name='Author' LookupId='TRUE'/><Value Type='Integer'>" + userId + "</Value></Eq>";
        if (opt.CAMLQuery.length > 0) {
            camlQuery += opt.CAMLQuery + "</And>";
        }
        camlQuery += "</Where><OrderBy><FieldRef Name='Created_x0020_Date' Ascending='FALSE'/></OrderBy></Query>";

        $().SPServices({
            operation: "GetListItems",
            async: false,
            webURL: opt.webURL,
            listName: opt.listName,
            CAMLQuery: camlQuery,
            CAMLViewFields: "<ViewFields><FieldRef Name='ID'/></ViewFields>",
            CAMLRowLimit: 1,
            CAMLQueryOptions: "<QueryOptions><ViewAttributes Scope='Recursive' /></QueryOptions>",
            completefunc: function(xData) {
                $(xData.responseXML).SPFilterNode("z:row").each(function() {
                    lastId = $(this).attr("ows_ID");
                });
            }
        });
        return lastId;
    }; // End $.fn.SPServices.SPGetLastItemId

    // Function which checks to see if the value for a column on the form is unique in the list.
    $.fn.SPServices.SPRequireUnique = function(options) {

        var opt = $.extend({}, {
            columnStaticName: "Title", // Name of the column
            duplicateAction: 0, // 0 = warn, 1 = prevent
            ignoreCase: false, // If set to true, the function ignores case, if false it looks for an exact match
            initMsg: "This value must be unique.", // Initial message to display after setup
            initMsgCSSClass: "ms-vb", // CSS class for initial message
            errMsg: "This value is not unique.", // Error message to display if not unique
            errMsgCSSClass: "ms-formvalidation", // CSS class for error message
            showDupes: false, // If true, show links to the duplicate item(s) after the error message
            completefunc: null // Function to call on completion of rendering the change.
        }, options);

        // Get the current item's ID from the Query String
        var queryStringVals = $().SPServices.SPGetQueryString();
        var thisID = queryStringVals.ID;
        currentContext.thisList = $().SPServices.SPListNameFromUrl();

        // Set the messages based on the options provided
        var msg = "<span id='SPRequireUnique" + opt.columnStaticName + "' class='{0}'>{1}</span><br/>";
        var firstMsg = msg.replace(/\{0\}/g, opt.initMsgCSSClass).replace(/\{1\}/g, opt.initMsg);

        // We need the DisplayName
        var columnDisplayName = $().SPServices.SPGetDisplayFromStatic({
            listName: currentContext.thisList,
            columnStaticName: opt.columnStaticName
        });
        var columnObj = $("input[Title='" + columnDisplayName + "']");
        $(columnObj).parent().append(firstMsg);

        $(columnObj).blur(function() {
            var columnValueIDs = [];
            // Get the columnDisplayName's value
            var columnValue = $(this).attr("value");
            if (columnValue.length === 0) {
                return false;
            }

            // Call the Lists Web Service (GetListItems) to see if the value already exists
            $().SPServices({
                operation: "GetListItems",
                async: false,
                listName: currentContext.thisList,
                // Make sure we get all the items, ignoring any filters on the default view.
                CAMLQuery: "<Query><Where><IsNotNull><FieldRef Name='" + opt.columnStaticName + "'/></IsNotNull></Where></Query>",
                // Filter based on columnStaticName's value
                CAMLViewFields: "<ViewFields><FieldRef Name='ID' /><FieldRef Name='" + opt.columnStaticName + "' /></ViewFields>",
                // Override the default view rowlimit and get all appropriate rows
                CAMLRowLimit: 0,
                completefunc: function(xData) {
                    var testValue = opt.ignoreCase ? columnValue.toUpperCase() : columnValue;
                    $(xData.responseXML).SPFilterNode("z:row").each(function() {
                        var thisValue = opt.ignoreCase ? $(this).attr("ows_" + opt.columnStaticName).toUpperCase() : $(this).attr("ows_" + opt.columnStaticName);
                        // If this value already exists in columnStaticName and it's not the current item, then save the ID in the array
                        if ((testValue === thisValue) && ($(this).attr("ows_ID") !== thisID)) {
                            columnValueIDs.push([$(this).attr("ows_ID"), $(this).attr("ows_" + opt.columnStaticName)]);
                        }
                    });
                }
            });
            var newMsg = opt.initMsg;
            $("span#SPRequireUnique" + opt.columnStaticName).html(newMsg).attr("class", opt.initMsgCSSClass);

            $("input[value='OK']:disabled, input[value='Save']:disabled").removeAttr("disabled");
            if (columnValueIDs.length > 0) {
                newMsg = opt.errMsg;
                $("span#SPRequireUnique" + opt.columnStaticName).html(newMsg).attr("class", opt.errMsgCSSClass);
                if (opt.duplicateAction === 1) {
                    $("input[Title='" + opt.columnDisplayName + "']").focus();
                    $("input[value='OK'], input[value='Save']").attr("disabled", "disabled");
                }
                if (opt.showDupes) {
                    var out = " " + columnValueIDs.length + " duplicate item" + (columnValueIDs.length > 1 ? "s" : "") + ": ";
                    for (i = 0; i < columnValueIDs.length; i++) {
                        out += "<a href='DispForm.aspx?ID=" + columnValueIDs[i][0] + "&Source=" + location.href + "'>" + columnValueIDs[i][1] + "</a> ";
                    }
                    $("span#SPRequireUnique" + opt.columnStaticName).append(out);
                }
            }

        });
        // If present, call completefunc when all else is done
        if (opt.completefunc !== null) {
            opt.completefunc();
        }
    }; // End $.fn.SPServices.SPRequireUnique

    // This function returns the DisplayName for a column based on the StaticName.
    $.fn.SPServices.SPGetDisplayFromStatic = function(options) {

        var opt = $.extend({}, {
            webURL: "", // URL of the target Web.  If not specified, the current Web is used.
            listName: "", // The name or GUID of the list
            columnStaticName: "", // StaticName of the column
            columnStaticNames: {} // StaticName of the columns - added in v0.7.2 to allow multiple columns
        }, options);

        var displayName = "";
        var displayNames = {};
        var nameCount = opt.columnStaticNames.length > 0 ? opt.columnStaticNames.length : 1;

        $().SPServices({
            operation: "GetList",
            async: false,
            cacheXML: true,
            webURL: opt.webURL,
            listName: opt.listName,
            completefunc: function(xData) {
                if (nameCount > 1) {
                    for (i = 0; i < nameCount; i++) {
                        displayNames[opt.columnStaticNames[i]] = $(xData.responseXML).find("Field[StaticName='" + opt.columnStaticNames[i] + "']").attr("DisplayName");
                    }
                } else {
                    displayName = $(xData.responseXML).find("Field[StaticName='" + opt.columnStaticName + "']").attr("DisplayName");
                }
            }
        });

        return (nameCount > 1) ? displayNames : displayName;

    }; // End $.fn.SPServices.SPGetDisplayFromStatic

    // This function returns the StaticName for a column based on the DisplayName.
    $.fn.SPServices.SPGetStaticFromDisplay = function(options) {

        var opt = $.extend({}, {
            webURL: "", // URL of the target Web.  If not specified, the current Web is used.
            listName: "", // The name or GUID of the list
            columnDisplayName: "", // DisplayName of the column
            columnDisplayNames: {} // DisplayNames of the columns - added in v0.7.2 to allow multiple columns
        }, options);

        var staticName = "";
        var staticNames = {};
        var nameCount = opt.columnDisplayNames.length > 0 ? opt.columnDisplayNames.length : 1;

        $().SPServices({
            operation: "GetList",
            async: false,
            cacheXML: true,
            webURL: opt.webURL,
            listName: opt.listName,
            completefunc: function(xData) {
                if (nameCount > 1) {
                    for (i = 0; i < nameCount; i++) {
                        staticNames[opt.columnDisplayNames[i]] = $(xData.responseXML).find("Field[DisplayName='" + opt.columnDisplayNames[i] + "']").attr("StaticName");
                    }
                } else {
                    staticName = $(xData.responseXML).find("Field[DisplayName='" + opt.columnDisplayName + "']").attr("StaticName");
                }
            }
        });

        return (nameCount > 1) ? staticNames : staticName;

    }; // End $.fn.SPServices.SPGetStaticFromDisplay

    // This function allows you to redirect to a another page from a new item form with the new
    // item's ID. This allows chaining of forms from item creation onward.
    $.fn.SPServices.SPRedirectWithID = function(options) {

        var opt = $.extend({}, {
            redirectUrl: "", // Page for the redirect
            qsParamName: "ID" // In some cases, you may want to pass the newly created item's ID with a different
            // parameter name than ID. Specify that name here, if needed.
        }, options);

        currentContext.thisList = $().SPServices.SPListNameFromUrl();
        var queryStringVals = $().SPServices.SPGetQueryString();
        var lastID = queryStringVals.ID;
        var QSList = queryStringVals.List;
        var QSRootFolder = queryStringVals.RootFolder;
        var QSContentTypeId = queryStringVals.ContentTypeId;

        // On first load, change the form actions to redirect back to this page with the current lastID for this user and the
        // original Source.
        if (typeof queryStringVals.ID === "undefined") {
            lastID = $().SPServices.SPGetLastItemId({
                listName: currentContext.thisList
            });
            $("form[name='aspnetForm']").each(function() {
                // This page...
                var thisUrl = (location.href.indexOf("?") > 0) ? location.href.substring(0, location.href.indexOf("?")) : location.href;
                // ... plus the Source if it exists
                var thisSource = (typeof queryStringVals.Source === "string") ?
                    "Source=" + queryStringVals.Source.replace(/\//g, "%2f").replace(/:/g, "%3a") : "";

                var newQS = [];
                if (typeof QSList !== "undefined") {
                    newQS.push("List=" + QSList);
                }
                if (typeof QSRootFolder !== "undefined") {
                    newQS.push("RootFolder=" + QSRootFolder);
                }
                if (typeof QSContentTypeId !== "undefined") {
                    newQS.push("ContentTypeId=" + QSContentTypeId);
                }

                var newAction = thisUrl +
                    ((newQS.length > 0) ? ("?" + newQS.join("&") + "&") : "?") +
                // Set the Source to point back to this page with the lastID this user has added
                "Source=" + thisUrl +
                    "?ID=" + lastID +
                // Pass the original source as RealSource, if present
                ((thisSource.length > 0) ? ("%26RealSource=" + queryStringVals.Source) : "") +
                // Pass the override RedirectURL, if present
                ((typeof queryStringVals.RedirectURL === "string") ? ("%26RedirectURL=" + queryStringVals.RedirectURL) : "");
                $(this).attr("action", newAction);
            });
            // If this is the load after the item is saved, wait until the new item has been saved (commits are asynchronous),
            // then do the redirect to redirectUrl with the new lastID, passing along the original Source.
        } else {
            while (queryStringVals.ID === lastID) {
                lastID = $().SPServices.SPGetLastItemId({
                    listName: currentContext.thisList
                });
            }
            // If there is a RedirectURL parameter on the Query String, then redirect there instead of the value
            // specified in the options (opt.redirectUrl)
            var thisRedirectUrl = (typeof queryStringVals.RedirectURL === "string") ? queryStringVals.RedirectURL : opt.redirectUrl;
            location.href = thisRedirectUrl + "?" + opt.qsParamName + "=" + lastID +
                ((typeof queryStringVals.RealSource === "string") ? ("&Source=" + queryStringVals.RealSource) : "");
        }
    }; // End $.fn.SPServices.SPRedirectWithID

    // The SPSetMultiSelectSizes function sets the sizes of the multi-select boxes for a column on a form automagically
    // based on the values they contain. The function takes into account the fontSize, fontFamily, fontWeight, etc., in its algorithm.
    $.fn.SPServices.SPSetMultiSelectSizes = function(options) {

        var opt = $.extend({}, {
            multiSelectColumn: "",
            minWidth: 0,
            maxWidth: 0,
            debug: false
        }, options);

        var thisFunction = "SPServices.SPSetMultiSelectSizes";

        // Find the multi-select column
        var thisMultiSelect = new DropdownCtl(opt.multiSelectColumn);
        if (thisMultiSelect.Obj.html() === null && opt.debug) {
            errBox(thisFunction, "multiSelectColumn: " + opt.multiSelectColumn, TXTColumnNotFound);
            return;
        }
        if (thisMultiSelect.Type !== "M" && opt.debug) {
            errBox(thisFunction, "multiSelectColumn: " + opt.multiSelectColumn, "Column is not multi-select.");
            return;
        }

        // Create a temporary clone of the select to use to determine the appropriate width settings.
        // We'll append it to the end of the enclosing span.
        var cloneId = genContainerId("SPSetMultiSelectSizes", opt.multiSelectColumn);
        var cloneObj = $("<select id='" + cloneId + "' ></select>").appendTo(thisMultiSelect.container);
        cloneObj.css({
            "width": "auto", // We want the clone to resize its width based on the contents
            "height": 0, // Just to keep the page clean while we are using the clone
            "visibility": "hidden" // And let's keep it hidden
        });

        // Add all the values to the cloned select.  First the left (possible values) select...
        $(thisMultiSelect.master.candidateControl).find("option").each(function() {
            cloneObj.append("<option value='" + $(this).html() + "'>" + $(this).html() + "</option>");
        });
        // ...then the right (selected values) select (in case some values have already been selected)
        $(thisMultiSelect.master.resultControl).find("option").each(function() {
            cloneObj.append("<option value='" + $(this).val() + "'>" + $(this).html() + "</option>");
        });

        // We'll add 5px for a little padding on the right.
        var divWidth = cloneObj.width() + 5;
        var newDivWidth = divWidth;
        if (opt.minWidth > 0 || opt.maxWidth > 0) {
            if (divWidth < opt.minWidth) {
                divWidth = opt.minWidth;
            }
            if (newDivWidth < opt.minWidth) {
                newDivWidth = opt.minWidth;
            }
            if (newDivWidth > opt.maxWidth) {
                newDivWidth = opt.maxWidth;
            }
        }
        var selectWidth = divWidth;

        // Set the new widths
        $(thisMultiSelect.master.candidateControl).css("width", selectWidth + "px").parent().css("width", newDivWidth + "px");
        $(thisMultiSelect.master.resultControl).css("width", selectWidth + "px").parent().css("width", newDivWidth + "px");

        // Remove the select's clone, since we're done with it
        cloneObj.remove();

    }; // End $.fn.SPServices.SPSetMultiSelectSizes

    // Does an audit of a site's list forms to show where script is in use.
    $.fn.SPServices.SPScriptAudit = function(options) {

        var opt = $.extend({}, {
            webURL: "", // [Optional] The name of the Web (site) to audit
            listName: "", // [Optional] The name of a specific list to audit. If not present, all lists in the site are audited.
            outputId: "", // The id of the DOM object for output
            auditForms: true, // Audit the form pages
            auditViews: true, // Audit the view pages
            auditPages: true, // Audit the Pages Document Library
            auditPagesListName: "Pages", // The Pages Document Library(ies), if desired. Either a single string or an array of strings.
            showHiddenLists: false, // Show output for hidden lists
            showNoScript: false, // Show output for lists with no scripts (effectively "verbose")
            showSrc: true // Show the source location for included scripts
        }, options);

        var formTypes = [
            ["New", "NewForm.aspx", false],
            ["Display", "DispForm.aspx", false],
            ["Edit", "EditForm.aspx", false]
        ];
        var listXml;

        // Build the table to contain the results
        $("#" + opt.outputId)
            .append("<table id='SPScriptAudit' width='100%' style='border-collapse: collapse;' border=0 cellSpacing=0 cellPadding=1>" +
                "<tr>" +
                "<th></th>" +
                "<th>List</th>" +
                "<th>Page Class</th>" +
                "<th>Page Type</th>" +
                "<th>Page</th>" +
                (opt.showSrc ? "<th>Script References</th>" : "") +
                "</tr>" +
                "</table>");
        // Apply the CSS class to the headers
        $("#SPScriptAudit th").attr("class", "ms-vh2-nofilter");

        // Don't bother with the lists if the options don't require them
        if (opt.auditForms || opt.auditViews) {
            // First, get all of the lists within the site
            $().SPServices({
                operation: "GetListCollection",
                webURL: opt.webURL,
                async: false, // Need this to be synchronous so we're assured of a valid value
                completefunc: function(xData, Status) {
                    $(xData.responseXML).find("List").each(function() {
                        listXml = $(this);

                        // If listName has been specified, then only return results for that list
                        if ((opt.listName.length === 0) || (listXml.attr("Title") === opt.listName)) {
                            // Don't work with hidden lists unless we're asked to
                            if ((opt.showHiddenLists && listXml.attr("Hidden") === "False") || !opt.showHiddenLists) {

                                // Audit the list's forms
                                if (opt.auditForms) {
                                    // Get the list's Content Types, therefore the form pages
                                    $().SPServices({
                                        operation: "GetListContentTypes",
                                        webURL: opt.webURL,
                                        listName: listXml.attr("ID"),
                                        async: false, // Need this to be synchronous so we're assured of a valid value
                                        completefunc: function(xData, Status) {
                                            $(xData.responseXML).find("ContentType").each(function() {
                                                // Don't deal with folders
                                                if ($(this).attr("ID").substring(0, 6) !== "0x0120") {
                                                    var formUrls = $(this).find("FormUrls");
                                                    for (i = 0; i < formTypes.length; i++) {
                                                        // Look for a customized form...
                                                        $(formUrls).find(formTypes[i][0]).each(function() {
                                                            SPScriptAuditPage(opt, listXml, "Form", this.nodeName, ((opt.webURL.length > 0) ? opt.webURL : $().SPServices.SPGetCurrentSite()) + SLASH + $(this).text());
                                                            formTypes[i][2] = true;
                                                        });
                                                        // ...else the uncustomized form
                                                        if (!formTypes[i][2]) {
                                                            var defaultViewUrl = listXml.attr("DefaultViewUrl");
                                                            SPScriptAuditPage(opt, listXml, "Form", formTypes[i][0],
                                                                defaultViewUrl.substring(0, defaultViewUrl.lastIndexOf(SLASH) + 1) + formTypes[i][1]);
                                                        }
                                                    }
                                                    // Reset the form types
                                                    for (i = 0; i < formTypes.length; i++) {
                                                        formTypes[i][2] = false;
                                                    }
                                                }
                                            });
                                        }
                                    });
                                }

                                // Audit the list's views
                                if (opt.auditViews) {
                                    // Get the list's Views
                                    $().SPServices({
                                        operation: "GetViewCollection",
                                        webURL: opt.webURL,
                                        listName: listXml.attr("ID"),
                                        async: false, // Need this to be synchronous so we're assured of a valid value
                                        completefunc: function(xData, Status) {
                                            $(xData.responseXML).find("View").each(function() {
                                                SPScriptAuditPage(opt, listXml, "View", $(this).attr("DisplayName"), $(this).attr("Url"));
                                            });
                                        }
                                    });
                                }

                            }
                        }
                    });
                }
            });
        }

        // Don't bother with auditing pages if the options don't require it
        var numLists = 0;
        var listsArray = [];
        if (typeof opt.auditPagesListName === "string") {
            numLists = 1;
            listsArray.push(opt.auditPagesListName);
        } else {
            numLists = opt.auditPagesListName.length;
            listsArray = opt.auditPagesListName;
        }

        if (opt.auditPages) {
            for (i = 0; i < numLists; i++) {
                $().SPServices({
                    operation: "GetList",
                    async: false,
                    cacheXML: true,
                    webURL: opt.webURL,
                    listName: listsArray[i],
                    completefunc: function(xData, Status) {
                        $(xData.responseXML).find("List").each(function() {
                            listXml = $(this);
                        });
                    }
                });
                // Get all of the items from the Document Library
                $().SPServices({
                    operation: "GetListItems",
                    async: false,
                    webURL: opt.webURL,
                    listName: listsArray[i],
                    CAMLQuery: "<Query><Where><Neq><FieldRef Name='ContentType'/><Value Type='Text'>Folder</Value></Neq></Where></Query>",
                    CAMLViewFields: "<ViewFields><FieldRef Name='Title'/><FieldRef Name='FileRef'/></ViewFields>",
                    CAMLRowLimit: 0,
                    completefunc: function(xData) {
                        $(xData.responseXML).SPFilterNode("z:row").each(function() {
                            var thisPageUrl = $(this).attr("ows_FileRef").split(";#")[1];
                            var thisTitle = $(this).attr("ows_Title");
                            var thisPageType = (typeof thisTitle !== "undefined") ? thisTitle : "";
                            if (thisPageUrl.indexOf(".aspx") > 0) {
                                SPScriptAuditPage(opt, listXml, "Page", thisPageType, SLASH + thisPageUrl);
                            }
                        });
                    }
                });
            }
        }
        // Remove progress indicator and make the output pretty by cleaning up the ms-alternating CSS class
        $("#SPScriptAudit tr[class='ms-alternating']:even").removeAttr("class");
    }; // End $.fn.SPServices.SPScriptAudit

    // Displays the usage of scripts in a site
    function SPScriptAuditPage(opt, listXml, pageClass, pageType, pageUrl) {

        var i = 0;
        var jQueryPage = 0;
        var pageScriptSrc = {};
        pageScriptSrc.type = [];
        pageScriptSrc.src = [];
        pageScriptSrc.script = [];
        var scriptRegex = RegExp("<script[\\s\\S]*?/script>", "gi");

        // Fetch the page
        $.ajax({
            type: "GET",
            url: pageUrl,
            dataType: "text",
            async: false,
            success: function(xData) {

                var scriptMatch;

                while (scriptMatch = scriptRegex.exec(xData)) {
                    var scriptLanguage = getScriptAttribute(scriptMatch, "language");
                    var scriptType = getScriptAttribute(scriptMatch, "type");
                    var scriptSrc = getScriptAttribute(scriptMatch, "src");
                    if (scriptSrc !== null && scriptSrc.length > 0 && !coreScript(scriptSrc)) {
                        pageScriptSrc.type.push((scriptLanguage !== null && scriptLanguage.length > 0) ? scriptLanguage : scriptType);
                        pageScriptSrc.src.push(scriptSrc);
                        jQueryPage++;
                    }
                }

                // Only show pages without script if we've been asked to do so.
                if ((!opt.showNoScript && (pageScriptSrc.type.length > 0)) || opt.showNoScript) {
                    var pagePath = pageUrl.substring(0, pageUrl.lastIndexOf(SLASH) + 1);
                    var out = "<tr class=ms-alternating>" +
                        "<td class=ms-vb-icon><a href='" + listXml.attr("DefaultViewUrl") + "'><IMG border=0 src='" + listXml.attr("ImageUrl") + "'width=16 height=16></A></TD>" +
                        "<td class=ms-vb2><a href='" + listXml.attr("DefaultViewUrl") + "'>" + listXml.attr("Title") + ((listXml.attr("Hidden") === "True") ? '(Hidden)' : '') + "</td>" +
                        "<td class=ms-vb2>" + pageClass + "</td>" +
                        "<td class=ms-vb2>" + pageType + "</td>" +
                        "<td class=ms-vb2><a href='" + pageUrl + "'>" + fileName(pageUrl) + "</td>";
                    if (opt.showSrc) {
                        var thisSrcPath;
                        out += "<td valign='top'><table width='100%' style='border-collapse: collapse;' border=0 cellSpacing=0 cellPadding=1>";
                        for (i = 0; i < pageScriptSrc.type.length; i++) {
                            thisSrcPath = (pageScriptSrc.src[i].substr(0, 1) !== SLASH) ? pagePath + pageScriptSrc.src[i] : pageScriptSrc.src[i];
                            out += "<tr><td class=ms-vb2 width='30%'>" + pageScriptSrc.type[i] + "</td>";
                            out += "<td class=ms-vb2 width='70%'><a href='" + thisSrcPath + "'>" + fileName(pageScriptSrc.src[i]) + "</td></tr>";
                        }
                        out += "</table></td>";
                    }
                    $("#SPScriptAudit").append(out);
                }
            }
        });
    } // End of function SPScriptAuditPage

    function getScriptAttribute(source, attribute) {
        var matches;
        var regex = RegExp(attribute + "=(\"([^\"]*)\")|('([^']*)')", "gi");
        if (matches = regex.exec(source)) {
            return matches[2];
        }
        return null;
    } // End of function getScriptAttribute

    // Check to see if the script reference is part of SharePoint core so that we can ignore it
    function coreScript(src) {
        var i;
        var coreScriptLocations = ["WebResource.axd", "_layouts"];
        for (i = 0; i < coreScriptLocations.length; i++) {
            if (src.indexOf(coreScriptLocations[i]) > -1) {
                return true;
            }
        }
        return false;
    } // End of function coreScript

    // Rearrange radio buttons or checkboxes in a form from vertical to horizontal display to save page real estate
    $.fn.SPServices.SPArrangeChoices = function(options) {

        var opt = $.extend({}, {
            listName: $().SPServices.SPListNameFromUrl(), // The list name for the current form
            columnName: "", // The display name of the column in the form
            perRow: 99, // Maximum number of choices desired per row.
            randomize: false // If true, randomize the order of the options
        }, options);

        var columnFillInChoice = false;
        var columnOptions = [];
        var out;

        // Get information about columnName from the list to determine if we're allowing fill-in choices
        var thisGetList = $().SPServices({
            operation: "GetList",
            async: false,
            cacheXML: true,
            listName: opt.listName
        });

        // when the promise is available...     
        thisGetList.done(function() {
            $(thisGetList.responseXML).find("Field[DisplayName='" + opt.columnName + "']").each(function() {
                // Determine whether columnName allows a fill-in choice
                columnFillInChoice = ($(this).attr("FillInChoice") === "TRUE") ? true : false;
                // Stop looking;we're done
                return false;
            });

            var thisFormField = findFormField(opt.columnName);

            var totalChoices = $(thisFormField).find("tr").length;
            var choiceNumber = 0;
            var fillinPrompt;
            var fillinInput;
            // Collect all of the choices
            $(thisFormField).find("tr").each(function() {
                choiceNumber++;
                // If this is the fill-in prompt, save it...
                if (columnFillInChoice && choiceNumber === (totalChoices - 1)) {
                    fillinPrompt = $(this).find("td").html();
                    // ...or if it is the fill-in input box, save it...
                } else if (columnFillInChoice && choiceNumber === totalChoices) {
                    fillinInput = $(this).find("td").html();
                    // ...else push into the columnOptions array.
                } else {
                    columnOptions.push($(this).html());
                }
            });
            out = "<TR>";

            // If randomize is true, randomly sort the options
            if (opt.randomize) {
                columnOptions.sort(randOrd);
            }

            // Add all of the options to the out string
            for (i = 0; i < columnOptions.length; i++) {
                out += columnOptions[i];
                // If we've already got perRow columnOptions in the row, close off the row
                if ((i + 1) % opt.perRow === 0) {
                    out += "</TR><TR>";
                }
            }
            out += "</TR>";

            // If we are allowing a fill-in choice, add that option in a separate row at the bottom
            if (columnFillInChoice) {
                out += "<TR><TD colspan='99'>" + fillinPrompt + fillinInput + "</TD></TR>";
            }

            // Remove the existing rows...
            $(thisFormField).find("tr").remove();
            // ...and append the out string
            $(thisFormField).find("table").append(out);

        });

    }; // End $.fn.SPServices.SPArrangeChoices

    // Provide suggested values from a list for in input column based on characters typed
    $.fn.SPServices.SPAutocomplete = function(options) {

        var opt = $.extend({}, {
            webURL: "", // [Optional] The name of the Web (site) which contains the sourceList
            sourceList: "", // The name of the list which contains the values
            sourceColumn: "", // The static name of the column which contains the values
            columnName: "", // The display name of the column in the form
            CAMLQuery: "", // [Optional] For power users, this CAML fragment will be Anded with the default query on the relatedList
            CAMLQueryOptions: "<QueryOptions></QueryOptions>", // [Optional] For power users, allows specifying the CAMLQueryOptions for the GetListItems call
            CAMLRowLimit: 0, // [Optional] Override the default view rowlimit and get all appropriate rows
            filterType: "BeginsWith", // Type of filtering: [BeginsWith, Contains]
            numChars: 0, // Wait until this number of characters has been typed before attempting any actions
            ignoreCase: false, // If set to true, the function ignores case, if false it looks for an exact match
            highlightClass: "", // If a class is supplied, highlight the matched characters in the values by applying that class to a wrapping span
            uniqueVals: false, // If set to true, the function only adds unique values to the list (no duplicates)
            maxHeight: 99999, // Sets the maximum number of values to display before scrolling occurs
            slideDownSpeed: "fast", // Speed at which the div should slide down when values match (milliseconds or ["fast" | "slow"])
            processingIndicator: "_layouts/images/REFRESH.GIF", // If present, show this while processing
            debug: false // If true, show error messages;if false, run silent
        }, options);

        var matchNum;

        // Find the input control for the column and save some of its attributes
        var columnObj = $("input[Title='" + opt.columnName + "']");
        columnObj.css("position", "");
        var columnObjColor = columnObj.css("color");
        var columnObjWidth = columnObj.css("width");

        if (columnObj.html() === null && opt.debug) {
            errBox("SPServices.SPAutocomplete",
                "columnName: " + opt.columnName,
                "Column is not an input control or is not found on page");
            return;
        }

        // Remove the <br/> which isn't needed and messes up the formatting
        columnObj.closest("span").find("br").remove();
        columnObj.wrap("<div>");

        // Create a div to contain the matching values and add it to the DOM
        var containerId = genContainerId("SPAutocomplete", opt.columnName);
        columnObj.after("<div><ul id='" + containerId + "' style='width:" + columnObjWidth + ";display:none;padding:2px;border:1px solid #2A1FAA;background-color:#FFF;position:absolute;z-index:40;margin:0'></div>");

        // Set the width to match the width of the input control
        $("#" + containerId).css("width", columnObjWidth);

        // Handle keypresses
        $(columnObj).keyup(function() {

            // Get the column's value
            var columnValue = $(this).val();

            // Hide the container while we're working on it
            $("#" + containerId).hide();

            // Have enough characters been typed yet?
            if (columnValue.length < opt.numChars) {
                return false;
            }

            // Show the the processingIndicator as a background image in the input element
            columnObj.css({
                "background-image": "url(" + opt.processingIndicator + ")",
                "background-position": "right",
                "background-repeat": "no-repeat"
            });

            // Array to hold the matched values
            var matchArray = [];

            // Build the appropriate CAMLQuery
            var camlQuery = "<Query><OrderBy><FieldRef Name='" + opt.sourceColumn + "'/></OrderBy><Where>";
            if (opt.CAMLQuery.length > 0) {
                camlQuery += "<And>";
            }
            camlQuery += "<" + opt.filterType + "><FieldRef Name='" + opt.sourceColumn + "'/><Value Type='Text'>" + columnValue + "</Value></" + opt.filterType + ">";
            if (opt.CAMLQuery.length > 0) {
                camlQuery += opt.CAMLQuery + "</And>";
            }
            camlQuery += "</Where></Query>";

            // Call GetListItems to find all of the potential values
            $().SPServices({
                operation: "GetListItems",
                async: false,
                webURL: opt.WebURL,
                listName: opt.sourceList,
                CAMLQuery: camlQuery,
                CAMLQueryOptions: opt.CAMLQueryOptions,
                CAMLViewFields: "<ViewFields><FieldRef Name='" + opt.sourceColumn + "' /></ViewFields>",
                CAMLRowLimit: opt.CAMLRowLimit,
                completefunc: function(xData) {
                    // Handle upper/lower case if ignoreCase = true
                    var testValue = opt.ignoreCase ? columnValue.toUpperCase() : columnValue;
                    // See which values match and add the ones that do to matchArray
                    $(xData.responseXML).SPFilterNode("z:row").each(function() {
                        var thisValue = $(this).attr("ows_" + opt.sourceColumn);
                        var thisValueTest = opt.ignoreCase ? $(this).attr("ows_" + opt.sourceColumn).toUpperCase() : $(this).attr("ows_" + opt.sourceColumn);
                        // Make sure we have a match...
                        if (opt.filterType === "Contains") {
                            var firstMatch = thisValueTest.indexOf(testValue);
                            if ((firstMatch >= 0) &&
                                // ...and that the match is not already in the array if we want uniqueness
                                (!opt.uniqueVals || ($.inArray(thisValue, matchArray) === -1))) {
                                matchArray.push($(this).attr("ows_" + opt.sourceColumn));
                            }
                        } else {
                            // Handles normal case, which is BeginsWith and and other unknown values
                            if (testValue === thisValueTest.substr(0, testValue.length) &&
                                // ...and that the match is not already in the array if we want uniqueness
                                (!opt.uniqueVals || ($.inArray(thisValue, matchArray) === -1))) {
                                matchArray.push($(this).attr("ows_" + opt.sourceColumn));
                            }
                        }
                    });
                }
            });

            // Build out the set of list elements to contain the available values
            var out = "";
            for (i = 0; i < matchArray.length; i++) {
                // If a highlightClass has been supplied, wrap a span around each match
                if (opt.highlightClass.length > 0) {
                    // Set up Regex based on whether we want to ignore case
                    var thisRegex = new RegExp(columnValue, opt.ignoreCase ? "gi" : "g");
                    // Look for all occurrences
                    var matches = matchArray[i].match(thisRegex);
                    var startLoc = 0;
                    // Loop for each occurrence, wrapping each in a span with the highlightClass CSS class
                    for (matchNum = 0; matchNum < matches.length; matchNum++) {
                        var thisPos = matchArray[i].indexOf(matches[matchNum], startLoc);
                        var endPos = thisPos + matches[matchNum].length;
                        var thisSpan = "<span class='" + opt.highlightClass + "'>" + matches[matchNum] + "</span>";
                        matchArray[i] = matchArray[i].substr(0, thisPos) + thisSpan + matchArray[i].substr(endPos);
                        startLoc = thisPos + thisSpan.length;
                    }
                }
                // Add the value to the markup for the container
                out += "<li style='display: block;position: relative;cursor: pointer;'>" + matchArray[i] + "</li>";
            }

            // Add all the list elements to the containerId container
            $("#" + containerId).html(out);
            // Set up hehavior for the available values in the list element
            $("#" + containerId + " li").click(function() {
                $("#" + containerId).fadeOut(opt.slideUpSpeed);
                columnObj.val($(this).text());
            }).mouseover(function() {
                var mouseoverCss = {
                    "cursor": "hand",
                    "color": "#ffffff",
                    "background": "#3399ff"
                };
                $(this).css(mouseoverCss);
            }).mouseout(function() {
                var mouseoutCss = {
                    "cursor": "inherit",
                    "color": columnObjColor,
                    "background": "transparent"
                };
                $(this).css(mouseoutCss);
            });

            // If we've got some values to show, then show 'em!
            if (matchArray.length > 0) {
                $("#" + containerId).slideDown(opt.slideDownSpeed);
            }
            // Remove the processing indicator
            columnObj.css("background-image", "");
        });

    }; // End $.fn.SPServices.SPAutocomplete

    // Get the Query String parameters and their values and return in an array
    // Includes code from http://www.developerdrive.com/2013/08/turning-the-querystring-into-a-json-object-using-javascript/
    // Simplified in 2014.01 using this code
    $.fn.SPServices.SPGetQueryString = function(options) {

        var opt = $.extend({}, {
            lowercase: false // If true, parameter names will be converted to lowercase
        }, options);

        var queryStringVals = {};

        var qs = location.search.slice(1).split('&');

        qs.forEach(function(param) {
            param = param.split('=');
            var paramName = opt.lowercase ? param[0].toLowerCase() : param[0];
            queryStringVals[paramName] = decodeURIComponent(param[1] || '');
        });

        return queryStringVals;

    }; // End $.fn.SPServices.SPGetQueryString

    // Get the current list's GUID (ID) from the current URL.  Use of this function only makes sense if we're in a list's context,
    // and we assume that we are calling it from an aspx page which is a form or view for the list.
    $.fn.SPServices.SPListNameFromUrl = function(options) {

        var opt = $.extend({}, {
            listName: "" // [Optional] Pass in the name or GUID of a list if you are not in its context. e.g., on a Web Part pages in the Pages library
        }, options);

        // Has the list name or GUID been passed in?
        if (opt.listName.length > 0) {
            currentContext.thisList = opt.listName;
            return currentContext.thisList;
            // Do we already know the current list?
        } else if (currentContext.thisList.length > 0) {
            return currentContext.thisList;
        }

        // Parse out the list's root URL from the current location or the passed url
        var thisPage = location.href;
        var thisPageBaseName = thisPage.substring(0, thisPage.indexOf(".aspx"));
        var listPath = decodeURIComponent(thisPageBaseName.substring(0, thisPageBaseName.lastIndexOf(SLASH) + 1)).toUpperCase();

        // Call GetListCollection and loop through the results to find a match with the list's URL to get the list's GUID
        $().SPServices({
            operation: "GetListCollection",
            async: false,
            completefunc: function(xData, Status) {
                $(xData.responseXML).find("List").each(function() {
                    var defaultViewUrl = $(this).attr("DefaultViewUrl");
                    var listCollList = defaultViewUrl.substring(0, defaultViewUrl.lastIndexOf(SLASH) + 1).toUpperCase();
                    if (listPath.indexOf(listCollList) > 0) {
                        currentContext.thisList = $(this).attr("ID");
                        return false;
                    }
                });
            }
        });

        // Return the list GUID (ID)
        return currentContext.thisList;

    }; // End $.fn.SPServices.SPListNameFromUrl

    // SPUpdateMultipleListItems allows you to update multiple items in a list based upon some common characteristic or metadata criteria.
    $.fn.SPServices.SPUpdateMultipleListItems = function(options) {

        var opt = $.extend({}, {
            webURL: "", // [Optional] URL of the target Web.  If not specified, the current Web is used.
            listName: "", // The list to operate on.
            CAMLQuery: "", // A CAML fragment specifying which items in the list will be selected and updated
            batchCmd: "Update", // The operation to perform. By default, Update.
            valuepairs: [], // Valuepairs for the update in the form [[fieldname1, fieldvalue1], [fieldname2, fieldvalue2]...]
            completefunc: null, // Function to call on completion of rendering the change.
            debug: false // If true, show error messages;if false, run silent
        }, options);

        var i;
        var itemsToUpdate = [];
        var documentsToUpdate = [];

        // Call GetListItems to find all of the items matching the CAMLQuery
        $().SPServices({
            operation: "GetListItems",
            async: false,
            webURL: opt.webURL,
            listName: opt.listName,
            CAMLQuery: opt.CAMLQuery,
            CAMLQueryOptions: "<QueryOptions><ViewAttributes Scope='Recursive' /></QueryOptions>",
            completefunc: function(xData) {
                $(xData.responseXML).SPFilterNode("z:row").each(function() {
                    itemsToUpdate.push($(this).attr("ows_ID"));
                    var fileRef = $(this).attr("ows_FileRef");
                    fileRef = "/" + fileRef.substring(fileRef.indexOf(";#") + 2);
                    documentsToUpdate.push(fileRef);
                });
            }
        });

        var fieldNum;
        var batch = "<Batch OnError='Continue'>";
        for (i = 0; i < itemsToUpdate.length; i++) {
            batch += "<Method ID='" + i + "' Cmd='" + opt.batchCmd + "'>";
            for (fieldNum = 0; fieldNum < opt.valuepairs.length; fieldNum++) {
                batch += "<Field Name='" + opt.valuepairs[fieldNum][0] + "'>" + escapeColumnValue(opt.valuepairs[fieldNum][1]) + "</Field>";
            }
            batch += "<Field Name='ID'>" + itemsToUpdate[i] + "</Field>";
            if (documentsToUpdate[i].length > 0) {
                batch += "<Field Name='FileRef'>" + documentsToUpdate[i] + "</Field>";
            }
            batch += "</Method>";
        }
        batch += "</Batch>";

        // Call UpdateListItems to update all of the items matching the CAMLQuery
        $().SPServices({
            operation: "UpdateListItems",
            async: false,
            webURL: opt.webURL,
            listName: opt.listName,
            updates: batch,
            completefunc: function(xData) {
                // If present, call completefunc when all else is done
                if (opt.completefunc !== null) {
                    opt.completefunc(xData);
                }
            }
        });

    }; // End $.fn.SPServices.SPUpdateMultipleListItems

    // SPGetListItemsJson retrieves items from a list in JSON format
    $.fn.SPServices.SPGetListItemsJson = function(options) {

        var opt = $.extend({}, {
            webURL: "", // [Optional] URL of the target Web.  If not specified, the current Web is used.
            listName: "",
            CAMLViewName: "",
            CAMLQuery: "",
            CAMLViewFields: "",
            CAMLRowLimit: "",
            CAMLQueryOptions: "",
            changeToken: "", // [Optional] If provided, will be passed with the request
            contains: "", // CAML snippet for an additional filter
            mapping: null, // If provided, use this mapping rather than creating one automagically from the list schema
            mappingOverrides: null, // Pass in specific column overrides here
            debug: false // If true, show error messages;if false, run silent
        }, options);

        var newChangeToken;
        var thisListJsonMapping = {};
        var thisData;
        var deletedIds = [];
        var result = $.Deferred();

        // Call GetListItems to find all of the items matching the CAMLQuery
        var thisData = $().SPServices({
            operation: "GetListItemChangesSinceToken",
            webURL: opt.webURL,
            listName: opt.listName,
            CAMLViewName: opt.CAMLViewName,
            CAMLQuery: opt.CAMLQuery,
            CAMLViewFields: opt.CAMLViewFields,
            CAMLRowLimit: opt.CAMLRowLimit,
            CAMLQueryOptions: opt.CAMLQueryOptions,
            changeToken: opt.changeToken,
            contains: opt.contains
        });

        thisData.done(function() {

            var mappingKey = "SPGetListItemsJson" + opt.webURL + opt.listName;

            // We're going to use this multiple times
            var responseXml = $(thisData.responseXML);

            // Get the changeToken
            newChangeToken = responseXml.find("Changes").attr("LastChangeToken");

            // Some of the existing items may have been deleted
            responseXml.find("listitems Changes Id[ChangeType='Delete']").each(function() {
                deletedIds.push($(this).text());
            });

            if (opt.mapping === null) {
                // Automagically create the mapping
                responseXml.find("List > Fields > Field").each(function() {
                    var thisField = $(this);
                    var thisType = thisField.attr("Type");
                    // Only work with known column types
                    if ($.inArray(thisType, spListFieldTypes) >= 0) {
                        thisListJsonMapping["ows_" + thisField.attr("Name")] = {
                            mappedName: thisField.attr("Name"),
                            objectType: thisField.attr("Type")
                        };
                    }

                });

            } else {
                thisListJsonMapping = opt.mapping;
            }

            // Implement any mappingOverrides
            // Example: { ows_JSONTextColumn: { mappedName: "JTC", objectType: "JSON" } } 
            if (opt.mappingOverrides !== null) {
                // For each mappingOverride, override the list schema
                for (var mapping in opt.mappingOverrides) {
                    thisListJsonMapping[mapping] = opt.mappingOverrides[mapping];
                }
            }

            // If we haven't retrieved the list schema in this call, try to grab it from the saved data from a prior call
            if ($.isEmptyObject(thisListJsonMapping)) {
                thisListJsonMapping = $(document).data(mappingKey);
            } else {
                $(document).data(mappingKey, thisListJsonMapping);
            }

            var jsonData = responseXml.SPFilterNode("z:row").SPXmlToJson({
                mapping: thisListJsonMapping,
                sparse: true
            });

            var thisResult = {
                changeToken: newChangeToken,
                mapping: thisListJsonMapping,
                data: jsonData,
                deletedIds: deletedIds
            };

            result.resolveWith(thisResult);

        });

        return result.promise();

    }; // End $.fn.SPServices.SPUpdateMultipleListItems

    // Convert a JavaScript date to the ISO 8601 format required by SharePoint to update list items
    $.fn.SPServices.SPConvertDateToISO = function(options) {

        var opt = $.extend({}, {
            dateToConvert: new Date(), // The JavaScript date we'd like to convert. If no date is passed, the function returns the current date/time
            dateOffset: "-05:00" // The time zone offset requested. Default is EST
        }, options);

        //Generate ISO 8601 date/time formatted string
        var s = "";
        var d = opt.dateToConvert;
        s += d.getFullYear() + "-";
        s += pad(d.getMonth() + 1) + "-";
        s += pad(d.getDate());
        s += "T" + pad(d.getHours()) + ":";
        s += pad(d.getMinutes()) + ":";
        s += pad(d.getSeconds()) + "Z" + opt.dateOffset;
        //Return the ISO8601 date string
        return s;

    }; // End $.fn.SPServices.SPConvertDateToISO

    // This method for finding specific nodes in the returned XML was developed by Steve Workman. See his blog post
    // http://www.steveworkman.com/html5-2/javascript/2011/improving-javascript-xml-node-finding-performance-by-2000/
    // for performance details.
    $.fn.SPFilterNode = function(name) {
        return this.find('*').filter(function() {
            return this.nodeName === name;
        });
    }; // End $.fn.SPFilterNode

    // This function converts an XML node set to JSON
    // Initial implementation focuses only on GetListItems
    $.fn.SPXmlToJson = function(options) {

        var opt = $.extend({}, {
            mapping: {}, // columnName: mappedName: "mappedName", objectType: "objectType"
            includeAllAttrs: false, // If true, return all attributes, regardless whether they are in the mapping
            removeOws: true, // Specifically for GetListItems, if true, the leading ows_ will be stripped off the field name
            sparse: false // If true, empty ("") values will not be returned
        }, options);

        var attrNum;
        var jsonObject = [];

        this.each(function() {
            var row = {};
            var rowAttrs = this.attributes;

            if (!opt.sparse) {
                // Bring back all mapped columns, even those with no value
                $.each(opt.mapping, function() {
                    row[this.mappedName] = "";
                });
            }

            // Parse through the element's attributes
            for (attrNum = 0; attrNum < rowAttrs.length; attrNum++) {
                var thisAttrName = rowAttrs[attrNum].name;
                var thisMapping = opt.mapping[thisAttrName];
                var thisObjectName = typeof thisMapping !== "undefined" ? thisMapping.mappedName : opt.removeOws ? thisAttrName.split("ows_")[1] : thisAttrName;
                var thisObjectType = typeof thisMapping !== "undefined" ? thisMapping.objectType : undefined;
                if (opt.includeAllAttrs || thisMapping !== undefined) {
                    row[thisObjectName] = attrToJson(rowAttrs[attrNum].value, thisObjectType);
                }
            }
            // Push this item into the JSON Object          
            jsonObject.push(row);

        });

        // Return the JSON object
        return jsonObject;

    }; // End $.fn.SPServices.SPXmlToJson


    function attrToJson(v, objectType) {

        var colValue;

        switch (objectType) {
            case "Text":
                colValue = stringToJsonObject(v);
                break;
            case "DateTime":
            case "datetime": // For calculated columns, stored as datetime;#value
                // Dates have dashes instead of slashes: ows_Created="2009-08-25 14:24:48"
                colValue = dateToJsonObject(v);
                break;
            case "User":
                colValue = userToJsonObject(v);
                break;
            case "UserMulti":
                colValue = userMultiToJsonObject(v);
                break;
            case "Lookup":
                colValue = lookupToJsonObject(v);
                break;
            case "LookupMulti":
                colValue = lookupMultiToJsonObject(v);
                break;
            case "Boolean":
                colValue = booleanToJsonObject(v);
                break;
            case "Integer":
                colValue = intToJsonObject(v);
                break;
            case "Counter":
                colValue = intToJsonObject(v);
                break;
            case "MultiChoice":
                colValue = choiceMultiToJsonObject(v);
                break;
            case "Number":
            case "Currency":
            case "float": // For calculated columns, stored as float;#value
                colValue = floatToJsonObject(v);
                break;
            case "Calculated":
                colValue = calcToJsonObject(v);
                break;
            case "Attachments":
                colValue = lookupToJsonObject(v);
                break;
            case "JSON":
                colValue = jsonToJsonObject(v); // Special case for text JSON stored in text columns
                break;
            default:
                // All other objectTypes will be simple strings
                colValue = stringToJsonObject(v);
                break;
        }
        return colValue;
    }

    function stringToJsonObject(s) {
        return s;
    }

    function intToJsonObject(s) {
        return parseInt(s, 10);
    }

    function floatToJsonObject(s) {
        return parseFloat(s);
    }

    function booleanToJsonObject(s) {
        var out = s === "0" ? false : true;
        return out;
    }

    function dateToJsonObject(s) {

        var dt = s.split("T");
        var d = dt[0].split("-");
        var t = dt[1].split(":");
        var t3 = t[2].split("Z");
        var date = new Date(d[0], (d[1] - 1), d[2], t[0], t[1], t3[0]);
        return date;
    }

    function userToJsonObject(s) {
        if (s.length === 0) {
            return null;
        } else {
            var thisUser = new SplitIndex(s);
            var thisUserExpanded = thisUser.value.split(",#");
            if (thisUserExpanded.length === 1) {
                return {
                    userId: thisUser.id,
                    userName: thisUser.value
                };
            } else {
                return {
                    userId: thisUser.id,
                    userName: thisUserExpanded[0].replace(/(,,)/g, ","),
                    loginName: thisUserExpanded[1].replace(/(,,)/g, ","),
                    email: thisUserExpanded[2].replace(/(,,)/g, ","),
                    sipAddress: thisUserExpanded[3].replace(/(,,)/g, ","),
                    title: thisUserExpanded[4].replace(/(,,)/g, ",")
                };
            }
        }
    }

    function userMultiToJsonObject(s) {
        if (s.length === 0) {
            return null;
        } else {
            var thisUserMultiObject = [];
            var thisUserMulti = s.split(";#");
            for (i = 0; i < thisUserMulti.length; i = i + 2) {
                var thisUser = userToJsonObject(thisUserMulti[i] + ";#" + thisUserMulti[i + 1]);
                thisUserMultiObject.push(thisUser);
            }
            return thisUserMultiObject;
        }
    }

    function lookupToJsonObject(s) {
        if (s.length === 0) {
            return null;
        } else {
            var thisLookup = new SplitIndex(s);
            return {
                lookupId: thisLookup.id,
                lookupValue: thisLookup.value
            };
        }
    }

    function lookupMultiToJsonObject(s) {
        if (s.length === 0) {
            return null;
        } else {
            var thisLookupMultiObject = [];
            var thisLookupMulti = s.split(";#");
            for (i = 0; i < thisLookupMulti.length; i = i + 2) {
                var thisLookup = lookupToJsonObject(thisLookupMulti[i] + ";#" + thisLookupMulti[i + 1]);
                thisLookupMultiObject.push(thisLookup);
            }
            return thisLookupMultiObject;
        }
    }

    function choiceMultiToJsonObject(s) {
        if (s.length === 0) {
            return null;
        } else {
            var thisChoiceMultiObject = [];
            var thisChoiceMulti = s.split(";#");
            for (i = 0; i < thisChoiceMulti.length; i++) {
                if (thisChoiceMulti[i].length !== 0) {
                    thisChoiceMultiObject.push(thisChoiceMulti[i]);
                }
            }
            return thisChoiceMultiObject;
        }
    }

    function calcToJsonObject(s) {
        if (s.length === 0) {
            return null;
        } else {
            var thisCalc = s.split(";#");
            // The first value will be the calculated column value type, the second will be the value
            return attrToJson(thisCalc[1], thisCalc[0]);
        }
    }

    function jsonToJsonObject(s) {
        if (s.length === 0) {
            return null;
        } else {
            return $.parseJSON(s);
        }
    }

    // Find a People Picker in the page
    // Returns references to:
    //   row - The TR which contains the People Picker (useful if you'd like to hide it at some point)
    //   contents - The element which contains the current value
    //   currentValue - The current value if it is set
    //   checkNames - The Check Names image (in case you'd like to click it at some point)
    $.fn.SPServices.SPFindPeoplePicker = function(options) {

        var opt = $.extend({}, {
            peoplePickerDisplayName: "", // The displayName of the People Picker on the form
            valueToSet: "", // The value to set the People Picker to. Should be a string containing each username or groupname separated by semi-colons.
            checkNames: true // If set to true, the Check Names image will be clicked to resolve the names
        }, options);

        var thisRow = $("nobr").filter(function() {
            // Ensures we get a match whether or not the People Picker is required (if required, the nobr contains a span also)
            return $(this).contents().eq(0).text() === opt.peoplePickerDisplayName;
        }).closest("tr");

        var thisContents = thisRow.find("div[name='upLevelDiv']");
        var thisCheckNames = thisRow.find("img[Title='Check Names']:first");

        // If a value was provided, set the value
        if (opt.valueToSet.length > 0) {
            thisContents.html(opt.valueToSet);
        }

        // If checkName is true, click the check names icon
        if (opt.checkNames) {
            thisCheckNames.click();
        }
        var thisCurrentValue = $.trim(thisContents.text());

        // Parse the entity data
        var dictionaryEntries = [];

        // IE
        thisContents.children("span").each(function() {

            // Grab the entity data
            var thisData = $(this).find("div[data]").attr("data");

            var dictionaryEntry = {};

            // Entity data is only available in IE
            if (typeof thisData !== "undefined") {
                var arrayOfDictionaryEntry = $.parseXML(thisData);
                var $xml = $(arrayOfDictionaryEntry);

                $xml.find("DictionaryEntry").each(function() {
                    var key = $(this).find("Key").text();
                    var value = $(this).find("Value").text();
                    dictionaryEntry[key] = value;
                });
                dictionaryEntries.push(dictionaryEntry);
                // For other browsers, we'll call GetUserInfo to get the data
            } else {
                $().SPServices({
                    operation: "GetUserInfo",
                    async: false,
                    cacheXML: true,
                    userLoginName: $(this).attr("title"),
                    completefunc: function(xData) {

                        $(xData.responseXML).find("User").each(function() {

                            $.each(this.attributes, function(i, attrib) {
                                var key = attrib.name;
                                var value = attrib.value;
                                dictionaryEntry[key] = value;
                            });
                            dictionaryEntries.push(dictionaryEntry);
                        });
                    }
                });
            }
        });

        return {
            row: thisRow,
            contents: thisContents,
            currentValue: thisCurrentValue,
            checkNames: thisCheckNames,
            dictionaryEntries: dictionaryEntries
        };
    };

    // Return the current version of SPServices as a string
    $.fn.SPServices.Version = function() {

        return VERSION;

    }; // End $.fn.SPServices.Version


    ////// PRIVATE FUNCTIONS ////////

    // Get the current context (as much as we can) on startup
    // See: http://johnliu.net/blog/2012/2/3/sharepoint-javascript-current-page-context-info.html
    function SPServicesContext() {

        // SharePoint 2010 gives us a context variable
        if (typeof _spPageContextInfo !== "undefined") {
            this.thisSite = _spPageContextInfo.webServerRelativeUrl;
            this.thisList = _spPageContextInfo.pageListId;
            this.thisUserId = _spPageContextInfo.userId;
            // In SharePoint 2007, we know the UserID only
        } else {
            this.thisSite = (typeof L_Menu_BaseUrl !== "undefined") ? L_Menu_BaseUrl : "";
            this.thisList = "";
            this.thisUserId = (typeof _spUserId !== "undefined") ? _spUserId : undefined;
        }

    } // End of function SPServicesContext


    // Display a column (field) formatted correctly based on its definition in the list.
    // NOTE: Currently not dealing with locale differences.
    //   columnXML          The XML node for the column from a GetList operation
    //   columnValue        The text representation of the column's value
    //   opt                The current set of options
    function showColumn(listXML, columnXML, columnValue, opt) {

        if (typeof columnValue === "undefined") {
            return "";
        }

        var i;
        var outString = "";
        var dispUrl;
        var numDecimals;
        var outArray = [];
        var webUrl = opt.relatedWebURL.length > 0 ? opt.relatedWebURL : $().SPServices.SPGetCurrentSite();

        switch (columnXML.attr("Type")) {
            case "Text":
                outString = columnValue;
                break;
            case "URL":
                switch (columnXML.attr("Format")) {
                    // URL as hyperlink
                    case "Hyperlink":
                        outString = "<a href='" + columnValue.substring(0, columnValue.search(",")) + "'>" +
                            columnValue.substring(columnValue.search(",") + 1) + "</a>";
                        break;
                        // URL as image
                    case "Image":
                        outString = "<img alt='" + columnValue.substring(columnValue.search(",") + 1) +
                            "' src='" + columnValue.substring(0, columnValue.search(",")) + "'/>";
                        break;
                        // Just in case
                    default:
                        outString = columnValue;
                        break;
                }
                break;
            case "User":
            case "UserMulti":
                var userMultiValues = columnValue.split(";#");
                for (i = 0; i < userMultiValues.length; i = i + 2) {
                    outArray.push("<a href='/_layouts/userdisp.aspx?ID=" + userMultiValues[i] +
                        "&Source=" + escapeUrl(location.href) + "'>" +
                        userMultiValues[i + 1] + "</a>");
                }
                outString = outArray.join(", ");
                break;
            case "Calculated":
                var calcColumn = columnValue.split(";#");
                outString = calcColumn[1];
                break;
            case "Number":
                numDecimals = columnXML.attr("Decimals");
                outString = typeof numDecimals === "undefined" ?
                    parseFloat(columnValue).toString() :
                    parseFloat(columnValue).toFixed(numDecimals).toString();
                break;
            case "Currency":
                numDecimals = columnXML.attr("Decimals");
                outString = typeof numDecimals === "undefined" ?
                    parseFloat(columnValue).toFixed(2).toString() :
                    parseFloat(columnValue).toFixed(numDecimals).toString();
                break;
            case "Lookup":
                switch (columnXML.attr("Name")) {
                    case "FileRef":
                        // Get the display form URL for the lookup source list
                        dispUrl = listXML.attr("BaseType") === "1" ? listXML.attr("RootFolder") + SLASH + "Forms/DispForm.aspx" :
                            listXML.attr("RootFolder") + SLASH + "DispForm.aspx";
                        outString = "<a href='" + dispUrl +
                            "?ID=" + columnValue.substring(0, columnValue.search(";#")) + "&RootFolder=*&Source=" + escapeUrl(location.href) + "'>" +
                            columnValue.substring(columnValue.search(";#") + 2) + "</a>";
                        break;
                    case "FileDirRef":
                        // Get the display form URL for the lookup source list
                        dispUrl = SLASH + columnValue.substring(columnValue.search(";#") + 2);
                        outString = "<a href='" + dispUrl + "'>" +
                            columnValue.substring(columnValue.search(";#") + 2) + "</a>";
                        break;
                        // Any other lookup column
                    default:
                        // Get the display form URL for the lookup source list
                        dispUrl = getListFormUrl(columnXML.attr("List"), "DisplayForm");
                        outString = "<a href='" + opt.relatedWebURL + SLASH + dispUrl +
                            "?ID=" + columnValue.substring(0, columnValue.search(";#")) + "&RootFolder=*&Source=" + escapeUrl(location.href) + "'>" +
                            columnValue.substring(columnValue.search(";#") + 2) + "</a>";
                        break;
                }
                break;
            case "LookupMulti":
                // Get the display form URL for the lookup source list
                dispUrl = getListFormUrl(columnXML.attr("List"), "DisplayForm");
                // Show all the values as links to the items, separated by commas
                outString = "";
                if (columnValue.length > 0) {
                    var lookupMultiValues = columnValue.split(";#");
                    for (i = 0; i < lookupMultiValues.length / 2; i++) {
                        outArray.push("<a href='" + webUrl + SLASH + dispUrl +
                            "?ID=" + lookupMultiValues[i * 2] + "&RootFolder=*&Source=" + escapeUrl(location.href) + "'>" +
                            lookupMultiValues[(i * 2) + 1] + "</a>");
                    }
                }
                outString = outArray.join(", ");
                break;
            case "File":
                fileName = columnValue.substring(columnValue.search(";#") + 2);
                outString = "<a href='" + listXML.attr("RootFolder") + SLASH + fileName + "'>" + fileName + "</a>";
                break;
            case "Counter":
                outString = columnValue;
                break;
            case "DateTime":
                outString = columnValue;
                break;
            default:
                outString = columnValue;
                break;
        }
        return outString;
    } // End of function showColumn


    // Show a single attribute of a node, enclosed in a table
    //   node               The XML node
    //   opt                The current set of options
    function showAttrs(node) {
        var i;
        var out = "<table class='ms-vb' width='100%'>";
        for (i = 0; i < node.attributes.length; i++) {
            out += "<tr><td width='10px' style='font-weight:bold;'>" + i + "</td><td width='100px'>" +
                node.attributes.item(i).nodeName + "</td><td>" + checkLink(node.attributes.item(i).nodeValue) + "</td></tr>";
        }
        out += "</table>";
        return out;
    } // End of function showAttrs


    // Find a dropdown (or multi-select) in the DOM. Returns the dropdown onject and its type:
    // S = Simple (select)
    // C = Compound (input + select hybrid)
    // M = Multi-select (select hybrid)
    function DropdownCtl(colName) {

        var idLen = 50;
        var colStaticName = $().SPServices.SPGetStaticFromDisplay({
            listName: $().SPServices.SPListNameFromUrl(),
            columnDisplayName: colName
        });

        // Simple, where the select's title attribute is colName (DisplayName)
        if ((this.Obj = $("select[Title='" + colName + "']")).length === 1) {
            this.Type = "S";
            // Simple, where the select's id begins with colStaticName (StaticName) - needed for required columns where title="colName Required Field"
        } else if ((this.Obj = $("select:regex(id, (" + colStaticName + ")(_)[0-9a-fA-F]{8}(-))")).length === 1) {
            this.Type = "S";
            // Compound
        } else if ((this.Obj = $("input[Title='" + colName + "']")).length === 1) {
            this.Type = "C";
            // Multi-select: This will find the multi-select column control in English and most other language sites where the Title looks like 'Column Name possible values'
        } else if ((this.Obj = $("select[ID$='SelectCandidate'][Title^='" + colName + " ']")).length === 1) {
            this.Type = "M";
            // Multi-select: This will find the multi-select column control on a Russian site (and perhaps others) where the Title looks like '????????? ????????: Column Name'
        } else if ((this.Obj = $("select[ID$='SelectCandidate'][Title$=': " + colName + "']")).length === 1) {
            this.Type = "M";
            // Multi-select: This will find the multi-select column control on a German site (and perhaps others) where the Title looks like 'MÃ¶gliche Werte fÃ¼r &quot;Column name&quot;.'
        } else if ((this.Obj = $("select[ID$='SelectCandidate'][Title$='\"" + colName + "\".']")).length === 1) {
            this.Type = "M";
            // Multi-select: This will find the multi-select column control on a Italian site (and perhaps others) where the Title looks like "Valori possibili Column name"
        } else if ((this.Obj = $("select[ID$='SelectCandidate'][Title$=' " + colName + "']")).length === 1) {
            this.Type = "M";
        } else {
            this.Type = null;
        }

        if (this.Type === "M") {
            // Find the important bits of the multiselect control
            this.container = this.Obj.closest("span");
            this.MultiLookupPickerdata = this.container.find("input[id$='" + multiLookupPrefix + "_data'], input[id$='" + multiLookupPrefix2013 + "_data']");
            var addButtonId = this.container.find("[id$='AddButton']").attr("id");
            this.master =
                window[addButtonId.replace(/AddButton/, multiLookupPrefix + "_m")] || // SharePoint 2007
            window[addButtonId.replace(/AddButton/, multiLookupPrefix2013 + "_m")]; // SharePoint 2013
        }
    } // End of function DropdownCtl

    // Returns the selected value(s) for a dropdown in an array. Expects a dropdown object as returned by the DropdownCtl function.
    // If matchOnId is true, returns the ids rather than the text values for the selection options(s).
    function getDropdownSelected(columnSelect, matchOnId) {

        var columnSelectSelected = [];

        switch (columnSelect.Type) {
            case "S":
                if (matchOnId) {
                    columnSelectSelected.push(columnSelect.Obj.find("option:selected").val() || []);
                } else {
                    columnSelectSelected.push(columnSelect.Obj.find("option:selected").text() || []);
                }
                break;
            case "C":
                if (matchOnId) {
                    columnSelectSelected.push($("input[id='" + columnSelect.Obj.attr("optHid") + "']").val() || []);
                } else {
                    columnSelectSelected.push(columnSelect.Obj.val() || []);
                }
                break;
            case "M":
                $(columnSelect.master.resultControl).find("option").each(function() {
                    if (matchOnId) {
                        columnSelectSelected.push($(this).val());
                    } else {
                        columnSelectSelected.push($(this).html());
                    }
                });
                break;
            default:
                break;
        }
        return columnSelectSelected;

    } // End of function getDropdownSelected

    // Build an error message based on passed parameters
    function errBox(func, param, msg) {
        var errMsg = "<b>Error in function</b><br/>" + func + "<br/>" +
            "<b>Parameter</b><br/>" + param + "<br/>" +
            "<b>Message</b><br/>" + msg + "<br/><br/>" +
            "<span onmouseover='this.style.cursor=\"hand\";' onmouseout='this.style.cursor=\"inherit\";' style='width=100%;text-align:right;'>Click to continue</span></div>";
        modalBox(errMsg);
    } // End of function errBox

    // Call this function to pop up a branded modal msgBox
    function modalBox(msg) {
        var boxCSS = "position:absolute;width:300px;height:150px;padding:10px;background-color:#000000;color:#ffffff;z-index:30;font-family:'Arial';font-size:12px;display:none;";
        $("#aspnetForm").parent().append("<div id='SPServices_msgBox' style=" + boxCSS + ">" + msg);
        var height = $("#SPServices_msgBox").height();
        var width = $("#SPServices_msgBox").width();
        var leftVal = ($(window).width() / 2) - (width / 2) + "px";
        var topVal = ($(window).height() / 2) - (height / 2) - 100 + "px";
        $("#SPServices_msgBox").css({
            border: '5px #C02000 solid',
            left: leftVal,
            top: topVal
        }).show().fadeTo("slow", 0.75).click(function() {
            $(this).fadeOut("3000", function() {
                $(this).remove();
            });
        });
    } // End of function modalBox

    // Generate a unique id for a containing div using the function name and the column display name
    function genContainerId(funcname, columnName) {
        return funcname + "_" + $().SPServices.SPGetStaticFromDisplay({
            listName: $().SPServices.SPListNameFromUrl(),
            columnDisplayName: columnName
        });
    } // End of function genContainerId

    // Get the URL for a specified form for a list
    function getListFormUrl(l, f) {

        var u;
        $().SPServices({
            operation: "GetFormCollection",
            async: false,
            listName: l,
            completefunc: function(xData, Status) {
                u = $(xData.responseXML).find("Form[Type='" + f + "']").attr("Url");
            }
        });
        return u;

    } // End of function getListFormUrl

    // Add the option values to the SOAPEnvelope.payload for the operation
    //  opt = options for the call
    //  paramArray = an array of option names to add to the payload
    //      "paramName" if the parameter name and the option name match
    //      ["paramName", "optionName"] if the parameter name and the option name are different (this handles early "wrappings" with inconsistent naming)
    //      {name: "paramName", sendNull: false} indicates the element is marked as "add to payload only if non-null"
    function addToPayload(opt, paramArray) {

        var i;

        for (i = 0; i < paramArray.length; i++) {
            // the parameter name and the option name match
            if (typeof paramArray[i] === "string") {
                SOAPEnvelope.payload += wrapNode(paramArray[i], opt[paramArray[i]]);
                // the parameter name and the option name are different 
            } else if ($.isArray(paramArray[i]) && paramArray[i].length === 2) {
                SOAPEnvelope.payload += wrapNode(paramArray[i][0], opt[paramArray[i][1]]);
                // the element not a string or an array and is marked as "add to payload only if non-null"
            } else if ((typeof paramArray[i] === "object") && (paramArray[i].sendNull !== undefined)) {
                SOAPEnvelope.payload += ((opt[paramArray[i].name] === undefined) || (opt[paramArray[i].name].length === 0)) ? "" : wrapNode(paramArray[i].name, opt[paramArray[i].name]);
                // something isn't right, so report it
            } else {
                errBox(opt.operation, "paramArray[" + i + "]: " + paramArray[i], "Invalid paramArray element passed to addToPayload()");
            }
        }
    } // End of function addToPayload

    // Finds the td which contains a form field in default forms using the comment which contains:
    //  <!--  FieldName="Title"
    //      FieldInternalName="Title"
    //      FieldType="SPFieldText"
    //  -->
    // as the "anchor" to find it. Necessary because SharePoint doesn't give all field types ids or specific classes.
    function findFormField(columnName) {
        var thisFormBody;
        // There's no easy way to find one of these columns; we'll look for the comment with the columnName
        var searchText = RegExp("FieldName=\"" + columnName.replace(/[-[\]{}()*+?.,\\^$|#\s]/g, "\\$&") + "\"", "gi");
        // Loop through all of the ms-formbody table cells
        $("td.ms-formbody, td.ms-formbodysurvey").each(function() {
            // Check for the right comment
            if (searchText.test($(this).html())) {
                thisFormBody = $(this);
                // Found it, so we're done
                return false;
            }
        });
        return thisFormBody;
    } // End of function findFormField

    // The SiteData operations have the same names as other Web Service operations. To make them easy to call and unique, I'm using
    // the SiteData prefix on their names. This function replaces that name with the right name in the SOAPEnvelope.
    function siteDataFixSOAPEnvelope(SOAPEnvelope, siteDataOperation) {
        var siteDataOp = siteDataOperation.substring(8);
        SOAPEnvelope.opheader = SOAPEnvelope.opheader.replace(siteDataOperation, siteDataOp);
        SOAPEnvelope.opfooter = SOAPEnvelope.opfooter.replace(siteDataOperation, siteDataOp);
        return SOAPEnvelope;
    } // End of function siteDataFixSOAPEnvelope

    // Wrap an XML node (n) around a value (v)
    function wrapNode(n, v) {
        var thisValue = typeof v !== "undefined" ? v : "";
        return "<" + n + ">" + thisValue + "</" + n + ">";
    }

    // Generate a random number for sorting arrays randomly
    function randOrd() {
        return (Math.round(Math.random()) - 0.5);
    }

    // If a string is a URL, format it as a link, else return the string as-is
    function checkLink(s) {
        return ((s.indexOf("http") === 0) || (s.indexOf(SLASH) === 0)) ? "<a href='" + s + "'>" + s + "</a>" : s;
    }

    // Get the filename from the full URL
    function fileName(s) {
        return s.substring(s.lastIndexOf(SLASH) + 1, s.length);
    }

    /* Taken from http://dracoblue.net/dev/encodedecode-special-xml-characters-in-javascript/155/ */
    var xml_special_to_escaped_one_map = {
        '&': '&amp;',
        '"': '&quot;',
        '<': '&lt;',
        '>': '&gt;'
    };
    var escaped_one_to_xml_special_map = {
        '&amp;': '&',
        '&quot;': '"',
        '&lt;': '<',
        '&gt;': '>'
    };

    function encodeXml(string) {
        return string.replace(/([\&"<>])/g, function(str, item) {
            return xml_special_to_escaped_one_map[item];
        });
    }

    function decodeXml(string) {
        return string.replace(/(&quot;|&lt;|&gt;|&amp;)/g,
            function(str, item) {
                return escaped_one_to_xml_special_map[item];
            });
    }
    /* Taken from http://dracoblue.net/dev/encodedecode-special-xml-characters-in-javascript/155/ */

    // Escape column values
    function escapeColumnValue(s) {
        if (typeof s === "string") {
            return s.replace(/&(?![a-zA-Z]{1,8};)/g, "&amp;");
        } else {
            return s;
        }
    }

    // Escape Url
    function escapeUrl(u) {
        return u.replace(/&/g, '%26');
    }

    // Split values like 1;#value into id and value                             
    function SplitIndex(s) {
        var spl = s.split(";#");
        this.id = spl[0];
        this.value = spl[1];
    }

    function pad(n) {
        return n < 10 ? "0" + n : n;
    }

    // James Padolsey's Regex Selector for jQuery http://james.padolsey.com/javascript/regex-selector-for-jquery/
    $.expr[':'].regex = function(elem, index, match) {
        var matchParams = match[3].split(','),
            validLabels = /^(data|css):/,
            attr = {
                method: matchParams[0].match(validLabels) ?
                    matchParams[0].split(':')[0] : 'attr',
                property: matchParams.shift().replace(validLabels, '')
            },
            regexFlags = 'ig',
            regex = new RegExp(matchParams.join('').replace(/^\s+|\s+$/g, ''), regexFlags);
        return regex.test(jQuery(elem)[attr.method](attr.property));
    }


})(jQuery);

/**
* vkBeautify - javascript plugin to pretty-print or minify text in XML, JSON, CSS and SQL formats.
*  
* Version - 0.99.00.beta 
* Copyright (c) 2012 Vadim Kiryukhin
* vkiryukhin @ gmail.com
* http://www.eslinstructor.net/vkbeautify/
* 
* Dual licensed under the MIT and GPL licenses:
*   http://www.opensource.org/licenses/mit-license.php
*   http://www.gnu.org/licenses/gpl.html
*
*   Pretty print
*
*        vkbeautify.xml(text [,indent_pattern]);
*        vkbeautify.json(text [,indent_pattern]);
*        vkbeautify.css(text [,indent_pattern]);
*        vkbeautify.sql(text [,indent_pattern]);
*
*        @text - String; text to beatufy;
*        @indent_pattern - Integer | String;
*                Integer:  number of white spaces;
*                String:   character string to visualize indentation ( can also be a set of white spaces )
*   Minify
*
*        vkbeautify.xmlmin(text [,preserve_comments]);
*        vkbeautify.jsonmin(text);
*        vkbeautify.cssmin(text [,preserve_comments]);
*        vkbeautify.sqlmin(text);
*
*        @text - String; text to minify;
*        @preserve_comments - Bool; [optional];
*                Set this flag to true to prevent removing comments from @text ( minxml and mincss functions only. )
*
*   Examples:
*        vkbeautify.xml(text); // pretty print XML
*        vkbeautify.json(text, 4 ); // pretty print JSON
*        vkbeautify.css(text, '. . . .'); // pretty print CSS
*        vkbeautify.sql(text, '----'); // pretty print SQL
*
*        vkbeautify.xmlmin(text, true);// minify XML, preserve comments
*        vkbeautify.jsonmin(text);// minify JSON
*        vkbeautify.cssmin(text);// minify CSS, remove comments ( default )
*        vkbeautify.sqlmin(text);// minify SQL
*
*/

(function() {

function createShiftArr(step) {

    var space = '    ';
    
    if ( isNaN(parseInt(step)) ) {  // argument is string
        space = step;
    } else { // argument is integer
        switch(step) {
            case 1: space = ' '; break;
            case 2: space = '  '; break;
            case 3: space = '   '; break;
            case 4: space = '    '; break;
            case 5: space = '     '; break;
            case 6: space = '      '; break;
            case 7: space = '       '; break;
            case 8: space = '        '; break;
            case 9: space = '         '; break;
            case 10: space = '          '; break;
            case 11: space = '           '; break;
            case 12: space = '            '; break;
        }
    }

    var shift = ['\n']; // array of shifts
    for(ix=0;ix<100;ix++){
        shift.push(shift[ix]+space); 
    }
    return shift;
}

function vkbeautify(){
    this.step = '    '; // 4 spaces
    this.shift = createShiftArr(this.step);
};

vkbeautify.prototype.xml = function(text,step) {

    var ar = text.replace(/>\s{0,}</g,"><")
                 .replace(/</g,"~::~<")
                 .replace(/\s*xmlns\:/g,"~::~xmlns:")
                 .replace(/\s*xmlns\=/g,"~::~xmlns=")
                 .split('~::~'),
        len = ar.length,
        inComment = false,
        deep = 0,
        str = '',
        ix = 0,
        shift = step ? createShiftArr(step) : this.shift;

        for(ix=0;ix<len;ix++) {
            // start comment or <![CDATA[...]]> or <!DOCTYPE //
            if(ar[ix].search(/<!/) > -1) { 
                str += shift[deep]+ar[ix];
                inComment = true; 
                // end comment  or <![CDATA[...]]> //
                if(ar[ix].search(/-->/) > -1 || ar[ix].search(/\]>/) > -1 || ar[ix].search(/!DOCTYPE/) > -1 ) { 
                    inComment = false; 
                }
            } else 
            // end comment  or <![CDATA[...]]> //
            if(ar[ix].search(/-->/) > -1 || ar[ix].search(/\]>/) > -1) { 
                str += ar[ix];
                inComment = false; 
            } else 
            // <elm></elm> //
            if( /^<\w/.exec(ar[ix-1]) && /^<\/\w/.exec(ar[ix]) &&
                /^<[\w:\-\.\,]+/.exec(ar[ix-1]) == /^<\/[\w:\-\.\,]+/.exec(ar[ix])[0].replace('/','')) { 
                str += ar[ix];
                if(!inComment) deep--;
            } else
             // <elm> //
            if(ar[ix].search(/<\w/) > -1 && ar[ix].search(/<\//) == -1 && ar[ix].search(/\/>/) == -1 ) {
                str = !inComment ? str += shift[deep++]+ar[ix] : str += ar[ix];
            } else 
             // <elm>...</elm> //
            if(ar[ix].search(/<\w/) > -1 && ar[ix].search(/<\//) > -1) {
                str = !inComment ? str += shift[deep]+ar[ix] : str += ar[ix];
            } else 
            // </elm> //
            if(ar[ix].search(/<\//) > -1) { 
                str = !inComment ? str += shift[--deep]+ar[ix] : str += ar[ix];
            } else 
            // <elm/> //
            if(ar[ix].search(/\/>/) > -1 ) { 
                str = !inComment ? str += shift[deep]+ar[ix] : str += ar[ix];
            } else 
            // <? xml ... ?> //
            if(ar[ix].search(/<\?/) > -1) { 
                str += shift[deep]+ar[ix];
            } else 
            // xmlns //
            if( ar[ix].search(/xmlns\:/) > -1  || ar[ix].search(/xmlns\=/) > -1) { 
                str += shift[deep]+ar[ix];
            } 
            
            else {
                str += ar[ix];
            }
        }
        
    return  (str[0] == '\n') ? str.slice(1) : str;
}

vkbeautify.prototype.json = function(text,step) {

    var step = step ? step : this.step;
    
    if (typeof JSON === 'undefined' ) return text; 
    
    if ( typeof text === "string" ) return JSON.stringify(JSON.parse(text), null, step);
    if ( typeof text === "object" ) return JSON.stringify(text, null, step);
        
    return text; // text is not string nor object
}

vkbeautify.prototype.css = function(text, step) {

    var ar = text.replace(/\s{1,}/g,' ')
                .replace(/\{/g,"{~::~")
                .replace(/\}/g,"~::~}~::~")
                .replace(/\;/g,";~::~")
                .replace(/\/\*/g,"~::~/*")
                .replace(/\*\//g,"*/~::~")
                .replace(/~::~\s{0,}~::~/g,"~::~")
                .split('~::~'),
        len = ar.length,
        deep = 0,
        str = '',
        ix = 0,
        shift = step ? createShiftArr(step) : this.shift;
        
        for(ix=0;ix<len;ix++) {

            if( /\{/.exec(ar[ix]))  { 
                str += shift[deep++]+ar[ix];
            } else 
            if( /\}/.exec(ar[ix]))  { 
                str += shift[--deep]+ar[ix];
            } else
            if( /\*\\/.exec(ar[ix]))  { 
                str += shift[deep]+ar[ix];
            }
            else {
                str += shift[deep]+ar[ix];
            }
        }
        return str.replace(/^\n{1,}/,'');
}

//----------------------------------------------------------------------------

function isSubquery(str, parenthesisLevel) {
    return  parenthesisLevel - (str.replace(/\(/g,'').length - str.replace(/\)/g,'').length )
}

function split_sql(str, tab) {

    return str.replace(/\s{1,}/g," ")

                .replace(/ AND /ig,"~::~"+tab+tab+"AND ")
                .replace(/ BETWEEN /ig,"~::~"+tab+"BETWEEN ")
                .replace(/ CASE /ig,"~::~"+tab+"CASE ")
                .replace(/ ELSE /ig,"~::~"+tab+"ELSE ")
                .replace(/ END /ig,"~::~"+tab+"END ")
                .replace(/ FROM /ig,"~::~FROM ")
                .replace(/ GROUP\s{1,}BY/ig,"~::~GROUP BY ")
                .replace(/ HAVING /ig,"~::~HAVING ")
                //.replace(/ SET /ig," SET~::~")
                .replace(/ IN /ig," IN ")
                
                .replace(/ JOIN /ig,"~::~JOIN ")
                .replace(/ CROSS~::~{1,}JOIN /ig,"~::~CROSS JOIN ")
                .replace(/ INNER~::~{1,}JOIN /ig,"~::~INNER JOIN ")
                .replace(/ LEFT~::~{1,}JOIN /ig,"~::~LEFT JOIN ")
                .replace(/ RIGHT~::~{1,}JOIN /ig,"~::~RIGHT JOIN ")
                
                .replace(/ ON /ig,"~::~"+tab+"ON ")
                .replace(/ OR /ig,"~::~"+tab+tab+"OR ")
                .replace(/ ORDER\s{1,}BY/ig,"~::~ORDER BY ")
                .replace(/ OVER /ig,"~::~"+tab+"OVER ")

                .replace(/\(\s{0,}SELECT /ig,"~::~(SELECT ")
                .replace(/\)\s{0,}SELECT /ig,")~::~SELECT ")
                
                .replace(/ THEN /ig," THEN~::~"+tab+"")
                .replace(/ UNION /ig,"~::~UNION~::~")
                .replace(/ USING /ig,"~::~USING ")
                .replace(/ WHEN /ig,"~::~"+tab+"WHEN ")
                .replace(/ WHERE /ig,"~::~WHERE ")
                .replace(/ WITH /ig,"~::~WITH ")
                
                //.replace(/\,\s{0,}\(/ig,",~::~( ")
                //.replace(/\,/ig,",~::~"+tab+tab+"")

                .replace(/ ALL /ig," ALL ")
                .replace(/ AS /ig," AS ")
                .replace(/ ASC /ig," ASC ") 
                .replace(/ DESC /ig," DESC ")   
                .replace(/ DISTINCT /ig," DISTINCT ")
                .replace(/ EXISTS /ig," EXISTS ")
                .replace(/ NOT /ig," NOT ")
                .replace(/ NULL /ig," NULL ")
                .replace(/ LIKE /ig," LIKE ")
                .replace(/\s{0,}SELECT /ig,"SELECT ")
                .replace(/\s{0,}UPDATE /ig,"UPDATE ")
                .replace(/ SET /ig," SET ")
                            
                .replace(/~::~{1,}/g,"~::~")
                .split('~::~');
}

vkbeautify.prototype.sql = function(text,step) {

    var ar_by_quote = text.replace(/\s{1,}/g," ")
                            .replace(/\'/ig,"~::~\'")
                            .split('~::~'),
        len = ar_by_quote.length,
        ar = [],
        deep = 0,
        tab = this.step,//+this.step,
        inComment = true,
        inQuote = false,
        parenthesisLevel = 0,
        str = '',
        ix = 0,
        shift = step ? createShiftArr(step) : this.shift;;

        for(ix=0;ix<len;ix++) {
            if(ix%2) {
                ar = ar.concat(ar_by_quote[ix]);
            } else {
                ar = ar.concat(split_sql(ar_by_quote[ix], tab) );
            }
        }
        
        len = ar.length;
        for(ix=0;ix<len;ix++) {
            
            parenthesisLevel = isSubquery(ar[ix], parenthesisLevel);
            
            if( /\s{0,}\s{0,}SELECT\s{0,}/.exec(ar[ix]))  { 
                ar[ix] = ar[ix].replace(/\,/g,",\n"+tab+tab+"")
            } 
            
            if( /\s{0,}\s{0,}SET\s{0,}/.exec(ar[ix]))  { 
                ar[ix] = ar[ix].replace(/\,/g,",\n"+tab+tab+"")
            } 
            
            if( /\s{0,}\(\s{0,}SELECT\s{0,}/.exec(ar[ix]))  { 
                deep++;
                str += shift[deep]+ar[ix];
            } else 
            if( /\'/.exec(ar[ix]) )  { 
                if(parenthesisLevel<1 && deep) {
                    deep--;
                }
                str += ar[ix];
            }
            else  { 
                str += shift[deep]+ar[ix];
                if(parenthesisLevel<1 && deep) {
                    deep--;
                }
            } 
            var junk = 0;
        }

        str = str.replace(/^\n{1,}/,'').replace(/\n{1,}/g,"\n");
        return str;
}


vkbeautify.prototype.xmlmin = function(text, preserveComments) {

    var str = preserveComments ? text
                               : text.replace(/\<![ \r\n\t]*(--([^\-]|[\r\n]|-[^\-])*--[ \r\n\t]*)\>/g,"")
                                     .replace(/[ \r\n\t]{1,}xmlns/g, ' xmlns');
    return  str.replace(/>\s{0,}</g,"><"); 
}

vkbeautify.prototype.jsonmin = function(text) {

    if (typeof JSON === 'undefined' ) return text; 
    
    return JSON.stringify(JSON.parse(text), null, 0); 
                
}

vkbeautify.prototype.cssmin = function(text, preserveComments) {
    
    var str = preserveComments ? text
                               : text.replace(/\/\*([^*]|[\r\n]|(\*+([^*/]|[\r\n])))*\*+\//g,"") ;

    return str.replace(/\s{1,}/g,' ')
              .replace(/\{\s{1,}/g,"{")
              .replace(/\}\s{1,}/g,"}")
              .replace(/\;\s{1,}/g,";")
              .replace(/\/\*\s{1,}/g,"/*")
              .replace(/\*\/\s{1,}/g,"*/");
}

vkbeautify.prototype.sqlmin = function(text) {
    return text.replace(/\s{1,}/g," ").replace(/\s{1,}\(/,"(").replace(/\s{1,}\)/,")");
}

window.vkbeautify = new vkbeautify();

})();




            
//-------- 3rd Party Libs above: inserted by build script ----------------- 

//-------- START SPWidgets plugin: inserted by build script ----------------- 

(function(h){var s=h;document.head||(document.head=document.getElementsByTagName("head")[0]);(function(){try{h.pt||(h.pt={})}catch(c){h.pt={}}void 0===h.pt._cache&&(h.pt._cache={});h.SPWidgets={};h.SPWidgets.version="20140315113942";h.SPWidgets.defaults={};h.fn.SPMsgHasError=function(){var c=h(this).find("ErrorCode"),e=!1;if(!c.length)return h(this).find("faultcode").length?!0:!1;c.each(function(){if("0x00000000"!==h(this).text())return e=!0,!1});return e};h.fn.SPGetMsgError=function(){var c=
h(this),e="",b=c.find("ErrorCode"),d=0;b.length||(b=c.find("faultcode"));if(!b.length)return"";b.each(function(){var a=h(this);"0x00000000"!==a.text()&&(d+=1,e+="("+d+") "+a.text()+": "+a.parent().children().not(a).text()+"\n")});return e=d+" error(s) encountered! \n"+e};h.SPWidgets.fillTemplate=function(c,e){var b,d,a,g,f,m,n,q,l;"object"===typeof c&&1===arguments.length&&(e=c.data,c=c.tmplt);b="";d="string"!==typeof c?String(h("<div/>").append(c).html()):c;a=d.match(/(\{\{.*?\}\})/g);h.isArray(e)||
(e=[e]);if(null!==a)for(m=0,n=e.length;m<n;m++){q=d;g=0;for(f=a.length;g<f;g++)a[g]=a[g].replace(/[\{\}]/g,""),l=e[m][a[g]]||"",h.isFunction(l)&&(l=l()),q=q.replace("{{"+a[g]+"}}",l);b+=q}return b};h.SPWidgets.parseLookupFieldValue=function(c){var e=[],b=String(c).split(";#"),d=b.length,a,g;if(void 0===c)return e;for(c=0;c<d;c++)a=b[c],c++,g=b[c],(a||g)&&e.push({id:a,title:g});return e};h.SPWidgets.getCamlLogical=function(c){c=h.extend({},{type:"AND",values:[],onEachValue:null},c);var e="<And>",b=
"</And>",d="",a=0,g=0,f=!1;c.type=String(c.type).toUpperCase();h.isArray(c.values)||(c.values=[c.values]);"AND"!==c.type&&(e="<Or>",b="</Or>");d=e;a=c.values.length;g=a-1;f=h.isFunction(c.onEachValue);2>a&&(d="");for(e=0;e<a;e++)if(d=f?d+String(c.onEachValue(c.values[e])).toString():d+String(c.values[e]).toString(),1<g-e){d+=h.SPWidgets.getCamlLogical(h.extend({},c,{values:c.values.slice(e+1,a-e)}));break}1<a&&(d+=b);return d};h.SPWidgets.SPGetDateString=function(c,e){function b(a){return 10>a?"0"+
a:a}e=String(e||"local").toLowerCase();c=c||new Date;var d="";return d="utc"===e?c.getUTCFullYear()+"-"+b(c.getUTCMonth()+1)+"-"+b(c.getUTCDate())+"T"+b(c.getUTCHours())+":"+b(c.getUTCMinutes())+":"+b(c.getUTCSeconds())+"Z":c.getFullYear()+"-"+b(c.getMonth()+1)+"-"+b(c.getDate())+"T"+b(c.getHours())+":"+b(c.getMinutes())+":"+b(c.getSeconds())};h.SPWidgets.parseDateString=function(c){var e=null,b,d;if(!c)return e;if(e=Date.parse(10===c.length?c+"T00:00":c))return new Date(e);d=[1,4,5,6,7,10,11];c=
c.match(/^(\d{4}|[+\-]\d{6})(?:-(\d{2})(?:-(\d{2}))?)?(?:T(\d{2}):(\d{2})(?::(\d{2})(?:\.(\d{3}))?)?(?:(Z)|([+\-])(\d{2})(?::(\d{2}))?)?)?$/);if(!c)return e;e=0;for(b=d.length;e<b;e++)c[d[e]]=~~c[d[e]];--c[2];"Z"===c[8]?(void 0!==c[9]&&(d=60*c[10]+c[11],"+"===c[9]&&(d=-d),c[5]+=d),e=new Date(Date.UTC(c[1],c[2],c[3],c[4],c[5],c[6],c[7]))):e=new Date(c[1],c[2],c[3],c[4],c[5],c[6],c[7]);return e};h.SPWidgets.makeSameHeight=function(c,e,b){var d=0,a=h(c);b||(b="height");a.each(function(){var a=h(this).css(b,
"");d<a.outerHeight(!0)&&(d=a.outerHeight(!0))});0<d&&(e&&(d+=e),a.css(b,d));return c};h.SPWidgets.escapeXML=function(c){return"string"!==typeof c?"":c.replace(/&/g,"&amp;").replace(/</g,"&lt;").replace(/>/g,"&gt;").replace(/'/g,"&apos;").replace(/"/g,"&quot;")};h.SPWidgets.unEscapeXML=function(c){return"string"!==typeof c?"":c.replace(/&lt;/g,"<").replace(/&gt;/g,">").replace(/&amp;/g,"&").replace(/&apos;/g,"'").replace(/&quot;/g,'"')};h.SPWidgets.getRuntimeInfo=function(){function c(){this.SPWidgets=
h.SPWidgets.version;this.jQuery=h.fn.jquery||"?";this.SPServices=this.jQueryUICss=this.jQueryUI="?";return this}c.prototype.asString=function(){var a="",c;for(c in this)this.hasOwnProperty(c)&&(a+="[ "+c+" = "+this[c]+" ] ");return a};var e=new c,b=h('<div style="position:fixed;width:100px;left:-1000px;"/>').appendTo("body"),d="";try{e.jQueryUI=s.ui.version}catch(a){}try{e.SPServices=h().SPServices.Version()}catch(g){h.fn.SPServices&&(e.SPServices="loaded")}d=b.css("background-image");b.addClass("ui-widget-header");
b.css("background-image")!==d&&(e.jQueryUICss="loaded");b.remove();return e};h.SPWidgets.getSPVersion=function(c){var e={12:"2007",14:"2010",15:"2013"},b=12;"undefined"!==typeof SP&&(b=14,SP.ClientSchemaVersions?SP.ClientSchemaVersions.currentVersion&&(b=parseInt(SP.ClientSchemaVersions.currentVersion)):(b=parseInt(_spPageContextInfo.webUIVersion),4===b&&(b=14)));c&&(b=e[b]||b);return b}})(s);(function(c){var k={initDone:!1,maxColumns:20};c.SPWidgets.defaults.board={list:"",field:"",CAMLQuery:"<Query></Query>",
CAMLViewFields:"",fieldFilter:null,optionalLabel:"(none)",template:null,webURL:c().SPServices.SPGetCurrentSite(),showColPicker:!1,colPickerLabel:"Columns",colPickerVisible:[],colPickerCloseLabel:"Close",colPickerApplyLabel:"Apply",colPickerCheckLabel:"Check-Uncheck All",colPickerTotalLabel:"Selected.",colPickerMaxColMsg:"Can not exceed 10 columns!",colPickerMinColMsg:"Mininum of 2 required!",onGetListItems:null,onPreUpdate:null,onBoardCreate:null,height:null};c.fn.SPShowBoard=function(e){k.initDone||
(k.initDone=!0,""!==k.styleSheet&&c('<style type="text/css">\n\n'+k.styleSheet+"\n\n</style>").prependTo("head"));var b=arguments;return this.each(function(){var d=c(this),a="string"===typeof e,g=d.hasClass("hasSPShowBoard"),f=null,m="",n=null;if(g&&!a)return this;if(a&&g&&!d.hasClass("loadingSPShowBoard"))return m=e.toLowerCase(),n=d.data("SPShowBoardOptions"),"refresh"===m?n._getListItems().then(function(){n.showItemsOnBoard({refresh:!0})}):"redraw"===m?n.setBoardColumnHeight():"setvisible"===m?
n.setUserDefinedVisibleCol(b[1]):"setheight"===m&&(n.height=b[1],n.setBoardColumnHeight()),this;if(d.hasClass("loadingSPShowBoard"))return this;f=c.extend({},c.SPWidgets.defaults.board,e,{ele:d,states:[],statesMap:{},tmpltHeader:"",tmpltState:"",statesCntr:"",headersCntr:"",listItems:[],initDone:!1,formUrls:null,isStateRequired:!0,maxColumnVisible:10,showNumberOfColumns:10,getBoardStates:function(){return c.Deferred(function(a){c().SPServices({operation:"GetList",listName:f.list,cacheXML:!0,async:!1,
webURL:f.webURL,completefunc:function(b,e){var g=c(b.responseXML),m=g.find("Fields Field[StaticName='"+f.field+"']");if(!m.length){m=g.find("Fields Field[DisplayName='"+f.field+"']");if(!m.length){a.rejectWith(d,["Field ("+f.field+") not found in list definition!",b,e]);return}f._origField=f.field;f.field=m.attr("StaticName")}"FALSE"===m.attr("Required")&&(f.isStateRequired=!1);switch(m.attr("Type").toLowerCase()){case "choice":f.isStateRequired||(f.states.push({type:"choice",title:f.optionalLabel,
name:f.optionalLabel}),f.statesMap[""]=f.states[f.states.length-1]);f.fieldFilter&&(f.fieldFilter=f.fieldFilter.split(/\,/));m.find("CHOICES CHOICE").each(function(a,d){var b=c(this).text();if(!f.fieldFilter||c.grep(f.fieldFilter,function(a){return a===b}).length){if(a>=k.maxColumns){try{console.log("SPWIDGETS:BOARD:Warning: Can only build a max of "+k.maxColumns+" columns!")}catch(e){}return!1}f.states.push({type:"choice",title:b,name:b});f.statesMap[b]=f.states[f.states.length-1]}});a.resolveWith(f,
[b,e]);break;case "lookup":f.fieldFilter||(f.fieldFilter="<Query></Query>");c().SPServices({operation:"GetListItems",listName:m.attr("List"),async:!0,cacheXML:!0,CAMLQuery:f.fieldFilter,webURL:f.webURL,CAMLRowLimit:k.maxColumns,CAMLViewFields:'<ViewFields><FieldRef Name="'+m.attr("ShowField")+'" /></ViewFields>',completefunc:function(b,e){if("error"===e)a.rejectWith(d,["Communications Error!",b,e]);else{var g=c(b.responseXML);g.SPMsgHasError()?a.rejectWith(d,[g.SPGetMsgError(),b,e]):(f.isStateRequired||
(f.states.push({type:"lookup",title:f.optionalLabel,name:""}),f.statesMap[""]=f.states[f.states.length-1]),g.SPFilterNode("z:row").each(function(a,d){if(a>=k.maxColumns){try{console.log("SPWIDGETS:BOARD:Warning: Can only build a max of "+k.maxColumns+" columns!")}catch(b){}return!1}var e=c(this),g=e.attr("ows_ID"),e=e.attr("ows_"+m.attr("ShowField")),g=g+";#"+e;f.states.push({type:"lookup",title:e,name:g});f.statesMap[g]=f.states[f.states.length-1]}),a.resolveWith(f,[b,e]))}}});break;default:a.rejectWith(d,
["Field ("+f.field+") Type ("+m.attr("Type")+") is not supported!",b,e])}}})}).promise()},_getListItems:function(){return c.Deferred(function(a){function b(e){c.isFunction(f.onGetListItems)&&f.onGetListItems.call(d,f.listItems,e);a.resolveWith(d,[f.listItems])}c.isFunction(f.CAMLQuery)?f.CAMLQuery.call(d,function(a){c.isArray(a)&&(f.listItems=a,b(f.CAMLQuery))},e):c().SPServices({operation:"GetListItems",listName:f.list,async:!0,CAMLQuery:f.CAMLQuery,CAMLRowLimit:0,CAMLViewFields:f.CAMLViewFields,
webURL:f.webURL,completefunc:function(e,g){if("error"===g)a.rejectWith(d,["Communications Error!",e,g]);else{var m=c(e.responseXML);m.SPMsgHasError()?a.rejectWith(d,[m.SPGetMsgError(),e,g]):(f.listItems=m.SPFilterNode("z:row").SPXmlToJson({includeAllAttrs:!0}),b(m))}}})}).promise()},getBoardItemDataObject:function(a){var b=null,d,e,g;if(a)for(a=String(a),d=0,e=f.listItems.length;d<e;d++)g=f.listItems[d].ID,c.isFunction(g)&&(g=f.listItems[d].ID()),g=String(g),a===g&&(b=f.listItems[d],d=e+e);return b},
showItemsOnBoard:function(a){function b(a,g){var m="",l=null,q="";c.isFunction(f.template)?(m=f.template.call(d,a,g))&&(m=String(m)):m=c.SPWidgets.fillTemplate(f.template,t);void 0!==g&&""!==m?g.html(m):""!==m&&(l=a.ID,c.isFunction(a.ID)&&(l=a.ID()),void 0===k[h]&&(k[h]=""),f.initDone&&e.refresh&&(q+=" spwidget-temp"),k[h]+='<div class="spwidget-board-state-item ui-state-default ui-corner-all'+q+'" data-id="'+l+'">'+m+"</div>");return m}var e=c.extend({},{rows:f.listItems,refresh:!1,doBoardInsert:!0},
a);a=[];var g=[],m=[],k={},n=null,h=null,p=n=null,t=null,x;if(!e.refresh)for(p=0,x=f.states.length;p<x;p++)f.states[p].headerTotalEle.html("0"),f.states[p].dataEle.empty();p=0;for(x=e.rows.length;p<x;p++)t=e.rows[p],h=t[f.field]||"",n=t.ID,c.isFunction(h)&&(h=t[f.field]()),c.isFunction(n)&&(n=n()),f.statesMap[h]&&(!1===e.refresh?(f.initDone&&a.push(t),b(t)):(n=f.statesCntr.find("div[data-id='"+n+"']"),n.length?(n.addClass("spwidget-temp"),n.closest("div.spwidget-board-state").data("boardstate")!==
h&&(n.appendTo(f.statesMap[h].dataEle),m.push(t)),b(t,n)):(f.initDone&&a.push(t),b(t))));if(e.doBoardInsert){for(p in k)k.hasOwnProperty(p)&&""!==k[p]&&f.statesMap[p].dataEle.append(k[p]);f.updBoardHeaders();c.pt.addHoverEffect(d.find(".spwidget-board-state-item"))}f.initDone&&e.refresh&&f.statesCntr.find("div.spwidget-board-state-item").not("div.spwidget-temp").each(function(){g.push(f.getBoardItemDataObject(c(this).data("id")));c(this).remove()}).end().removeClass("spwidget-temp");f.initDone&&(f.statesCntr.find("div.spwidget-board-state").sortable("refresh").end().disableSelection(),
f.setBoardColumnHeight(),p=f.getEventObject(),a.length&&(p.itemsModified.length=0,p.itemsModified.push(a),d.trigger("spwidget:boarditemadd",[d,c.extend({},p)])),g.length&&(p.itemsModified.length=0,p.itemsModified.push(g),d.trigger("spwidget:boarditemremove",[d,c.extend({},p)])),p.itemsModified.length=0,p.itemsModified.push.apply(p.itemsModified,a),p.itemsModified.push.apply(p.itemsModified,g),p.itemsModified.push.apply(p.itemsModified,m),p.itemsModified.length&&d.trigger("spwidget:boardchange",[d,
p]));return k},updBoardHeaders:function(a){var b;if(!c.extend({},{state:null},a).state)for(a=0,b=f.states.length;a<b;a++)f.states[a].headerTotalEle.html(f.states[a].dataEle.children().length)},getEventObject:function(a){a||(a=f.statesCntr.find("div.spwidget-board-state-item:first"));a=c(a);a={stateTotals:{},itemTotal:0,currentState:a.closest("div.spwidget-board-state").data("boardstate"),itemObj:f.getBoardItemDataObject(a.data("id"))||{},itemsModified:[]};var b,d;b=0;for(d=f.states.length;b<d;b++)a.itemTotal+=
a.stateTotals[f.states[b].name]=Number(f.states[b].headerTotalEle.text());return a},getListFormUrl:function(a){function b(){c().SPServices({operation:"GetFormCollection",listName:f.list,webURL:f.webURL,cacheXML:!0,async:!1,completefunc:function(a,b){c(a.responseXML).find("Form").each(function(){var a=c(this);f.formUrls[String(a.attr("Type")).toLowerCase()]=f.webURL+"/"+a.attr("Url")})}})}a=String(a).toLowerCase();null===f.formUrls&&(f.formUrls={},b());return f.formUrls[a]||""},setBoardColumnClass:function(a){var b=
f.headersCntr.add(f.statesCntr);a=parseInt(a);if(!a||2>a)a=0,c.each(f.states,function(c,b){b.isVisible&&a++});if(f.showNumberOfColumns===a)return f;b.addClass("spwidget-states-"+a);f.showNumberOfColumns&&b.removeClass("spwidget-states-"+f.showNumberOfColumns);f.showNumberOfColumns=a;return f},setupColumnPicker:function(){var a=d.find(".spwidget-board-column-list-cntr"),b=a.find("div.spwidget-board-column-list"),e=a.children("div.ui-state-default:last"),g={$totalCntr:a.find("span.spwidget-board-column-total"),
setTotalSelected:function(){var a=g.getSelected().length;g.$totalCntr.html(a);return a},getSelected:function(){return b.find("a.ui-state-highlight")},showMessage:function(a){c('<div class="spwidget-board-msg ui-state-error ui-corner-all">'+a+"</div>").appendTo(e).fadeOut(8E3,function(){c(this).remove()})},setSelected:function(){var a=b.find("a");c.each(f.states,function(c,b){var d=a.filter("[data-board_col_index='"+c+"']");b.isVisible?g.selectColumn(d,!1):g.selectColumn(d,!0)});g.setTotalSelected()},
selectColumn:function(a,b){c(a).each(function(){var a=c(this),d=a.find(".ui-icon");a.hasClass("ui-state-highlight")||b?!1!==b&&(d.removeClass("ui-icon-check"),a.removeClass("ui-state-highlight")):(d.addClass("ui-icon-check"),a.addClass("ui-state-highlight"))});return a},setVisibleColumns:function(a){a||(a=g.getSelected());var b=a.length;c.each(f.states,function(c,b){a.filter("[data-board_col_index='"+c+"']").length?!1===b.isVisible&&(b.isVisible=!0,b.dataEle.css("display",""),b.headerEle.css("display",
"")):(b.isVisible=!1,b.dataEle.css("display","none"),b.headerEle.css("display","none"))});f.setBoardColumnClass(b);f.setBoardColumnHeight()}};g.setUserDefinedVisibleCol=f.setUserDefinedVisibleCol=function(a){var d=0,e="";if(!c.isArray(a)||!a.length){if(!c.isArray(a)&&"all"!==String(a).toLowerCase())return;a=[];c.each(f.states,function(c,b){a.push(b.title)})}c.each(a,function(a,b){c.each(f.states,function(a,c){if(c.title===b)return d++,1<d&&(e+=","),e+="a[data-board_col_name='"+c.name+"']",!1});if(d>=
f.maxColumnVisible)return!1});2<=d&&(g.setVisibleColumns(b.find(e)),g.triggerEvent())};g.triggerEvent=function(){var a=[];f.initDone&&(c.each(f.statesMap,function(c,b){b.isVisible&&a.push(b.title)}),f.ele.trigger("spwidget:boardColumnChange",[f.ele,a]))};a.find("button[name='apply']").button({label:f.colPickerApplyLabel,icons:{secondary:"ui-icon-circle-check"}}).on("click",function(c){c=g.getSelected();var b=c.length;b>f.maxColumnVisible?g.showMessage(f.colPickerMaxColMsg):2>b?g.showMessage(f.colPickerMinColMsg):
(a.hide(),g.setVisibleColumns(c),g.triggerEvent())});a.find("button[name='check']").attr("title",f.colPickerCheckLabel).button({text:!1,icons:{primary:"ui-icon-radio-off"}}).on("click",function(a){a=g.getSelected();a.length?g.selectColumn(a,!0):g.selectColumn(b.find("a"));g.setTotalSelected()});a.find("button[name='close']").attr("title",f.colPickerCloseLabel).button({text:!1,icons:{primary:"ui-icon-circle-close"}}).on("click",function(c){a.hide()});d.find("div.spwidget-board-settings").css("display",
"").find("div.spwidget-board-settings-columns").each(function(){var b=c(this);b.button({label:f.colPickerLabel,icons:{secondary:"ui-icon-triangle-1-s"}}).on("click.SPWidgets",function(){a.is(":visible")?a.hide():(g.setSelected(),a.show().position({my:"left top",at:"left bottom",of:b}))});return!1});b.each(function(){var a=c(this),b="";c.each(f.states,function(a,c){b+='<a href="javascript:" data-board_col_index="'+a+'" data-board_col_name="'+c.name+'"><span class="ui-icon ui-icon-minus"></span><span>'+
c.title+"</span></a>"});a.html(b);return!1}).on("click","a",function(){g.selectColumn(this);g.setTotalSelected()});a.find("span.spwidget-board-column-total-label").html(f.colPickerTotalLabel);c.isArray(f.colPickerVisible)&&f.colPickerVisible.length&&g.setUserDefinedVisibleCol(f.colPickerVisible)},setBoardColumnHeight:function(){f.headersCntr.is(":visible")&&c.SPWidgets.makeSameHeight(f.headersCntr.find("div.spwidget-board-state:visible"),0,"min-height");f.height?f.statesCntr.find("div.spwidget-board-state:visible").css({height:f.height,
"min-height":""}):f.statesCntr.is(":visible")&&c.SPWidgets.makeSameHeight(f.statesCntr.find("div.spwidget-board-state:visible").css("height",""),20,"min-height")}});if(!f.list||!f.field)return d.html("<div>SPWidgets:Board [ERROR] Missing required input parameters!</div>"),this;d.addClass("loadingSPShowBoard").data("SPShowBoardOptions",f);f.getBoardStates().then(function(){""===f.CAMLViewFields?f.CAMLViewFields='<ViewFields><FieldRef Name="ID" /><FieldRef Name="Title" /><FieldRef Name="'+f.field+'" /></ViewFields>':
0>f.CAMLViewFields.indexOf(f.field)&&(f.CAMLViewFields=f.CAMLViewFields.replace(/\<\/ViewFields\>/i,'<FieldRef Name="'+f.field+'" /></ViewFields>'));d.html(c(k.htmlTemplate).filter("div.spwidget-board"));f.tmpltHeader=c("<div/>").append(d.find("div.spwidget-board-headers-cntr div.spwidget-board-state").clone()).html();f.tmpltState=c("<div/>").append(d.find("div.spwidget-board-states-cntr div.spwidget-board-state")).html();f.states.length<=f.maxColumnVisible&&(f.showNumberOfColumns=f.states.length);
f.statesCntr=d.find("div.spwidget-board-states-cntr").addClass("spwidget-states-"+f.showNumberOfColumns).empty();f.headersCntr=d.find("div.spwidget-board-headers-cntr").addClass("spwidget-states-"+f.showNumberOfColumns).empty();c.each(f.states,function(a,b){b.headerEle=c(f.tmpltHeader).appendTo(f.headersCntr).attr("data-boardstate",b.name).attr("data-boardindex",a).find(".spwidget-board-header-title").html(b.title).end();b.dataEle=c(f.tmpltState).appendTo(f.statesCntr).attr("data-boardindex",a).attr("data-boardstate",
b.name);b.headerTotalEle=b.headerEle.find("span.spwidget-state-item-total");b.isVisible=!0;a>f.maxColumnVisible-1&&(b.headerEle.css("display","none"),b.dataEle.css("display","none"),b.isVisible=!1)});c(f.headersCntr,f.statesCntr).append('<div style="clear:both;"></div>');!0===f.showColPicker&&f.setupColumnPicker();d.on("sortreceive sortremove",function(a,b){f.updBoardHeaders();c(b.item).removeClass("ui-state-hover")}).on("sortreceive",function(a,b){var g=f.getEventObject(b.item),e=c.Deferred(),m=
"",m=c.isFunction(g.itemObj.ID)?g.itemObj.ID():g.itemObj.ID;g.updates=[];g.updatePromise=e.promise();g.updates.push([f.field,g.currentState]);if(c.isFunction(f.onPreUpdate)&&!0===f.onPreUpdate.call(b.item,a,b.item,g)||!g.updates.length)return this;c().SPServices({operation:"UpdateListItems",listName:f.list,async:!0,ID:m,valuepairs:g.updates,webURL:f.webURL,completefunc:function(f,m){if("error"===m)e.rejectWith(d,["Communications Error!",f,m]);else{var k=c(f.responseXML),n=null;k.SPMsgHasError()?e.rejectWith(d,
[k.SPGetMsgError(),f,m]):(n=c(f.responseXML).SPFilterNode("z:row").SPXmlToJson({includeAllAttrs:!0}),c(a.target).trigger("spwidget:boardchange",[b.item,g]),e.resolveWith(a.target,[n[0],g.itemObj,f]))}}})}).on("click","a.spwidgets-board-action",function(a){a=c(a.currentTarget);var b=String(a.data("spwidgets_board_action")).toLowerCase(),d="",g=c.pt.getEscapedUrl(window.location.href);switch(b){case "edit-item":d=f.getListFormUrl("EditForm");break;case "view-item":d=f.getListFormUrl("DisplayForm")}window.location.href=
d+"?ID="+a.data("spwidgets_id")+"&Source="+g;return this});null===f.template&&(f.template=c(k.htmlTemplate).filter("div.spwidget-item-template"));f._getListItems().then(function(){f.showItemsOnBoard();f.statesCntr.find("div.spwidget-board-state").each(function(){var a=c(this);a.sortable({connectWith:a.siblings(),containment:d,cursor:"move",tolerance:"pointer",opacity:".80",placeholder:"ui-state-highlight spwidget-board-placeholder",forcePlaceholderSize:!0,remove:function(a,c){f.setBoardColumnHeight()}})});
f.statesCntr.disableSelection();f.initDone=!0;f.setBoardColumnHeight();d.addClass("hasSPShowBoard").removeClass("loadingSPShowBoard");c.isFunction(f.onBoardCreate)&&f.onBoardCreate.call(d,f.getEventObject());c(d).trigger("spwidget:boardcreate",[d,f.getEventObject()])})}).fail(function(a,c,b){d.append('<div class="ui-state-error"><p>'+a+"</p></div>")});return this})};k.styleSheet="/** \n * Stylesheet for the Board widget\n * \n * BUILD: Paul:March 15, 2014 11:21 AM\n */\ndiv.spwidget-board {\n    width: 100%;\n    position: relative;\n}\n\ndiv.spwidget-board div.spwidget-board-headers,\ndiv.spwidget-board div.spwidget-board-headers-cntr,\ndiv.spwidget-board div.spwidget-board-states-cntr, \ndiv.spwidget-board div.spwidget-board-states {\n    width: 100%;\n}\n\ndiv.spwidget-board div.spwidget-board-state {\n    width: 49%;\n    float: left;\n    margin: 0% .1%;\n    padding: .2%;\n    overflow: auto;\n}\n/* Board Individual Headers */\ndiv.spwidget-board div.spwidget-board-headers-cntr div.spwidget-board-state {\n    font-weight: bold;\n    font-size: 1.1em;\n    overflow: hidden;\n    word-wrap: break-word;\n}\n/* Board Header Title */\ndiv.spwidget-board div.spwidget-board-headers-cntr .spwidget-board-header-title,\ndiv.spwidget-board div.spwidget-board-headers-cntr .spwidget-state-item-stat-cntr {\n    display: inline-block\n}\n/* Board Header Stats container*/\ndiv.spwidget-board div.spwidget-board-headers-cntr .spwidget-state-item-stat-cntr {\n    font-size: .8em;\n    float: right;\n}\ndiv.spwidget-board div.spwidget-board-headers-cntr .spwidget-item-stat {\n    display: inline-block;\n    min-width: 2em;\n    padding: 0 0.2em;\n    text-align: center;\n}\n\n/* Board column content */\ndiv.spwidget-board div.spwidget-board-states div.spwidget-board-state {\n    margin-bottom: 1em;\n    min-height: 10em;\n}\n\ndiv.spwidget-board div.spwidget-board-state div.spwidget-board-state-item {\n    padding: .2em;\n    margin: .5em .2em;\n    font-weight: normal;\n    cursor: move;\n    overflow: auto;\n}\ndiv.spwidget-board div.spwidget-board-state-item div.spwidget-board-item-actions{\n    margin-top: .2em;\n    padding: .2em .5em;\n    overflow: hidden;\n}\ndiv.spwidget-board .spwidget-board-placeholder {\n    height: 3em;\n}\n\n/** Setting container */\ndiv.spwidget-board-settings {\n    font-size: .8em;\n    margin: .2em;\n}\ndiv.spwidget-board-settings div.spwidget-board-column-list-cntr {\n    z-index: 5;\n    position: absolute;\n}\ndiv.spwidget-board-settings div.spwidget-board-column-list-cntr > div {\n    padding: .2em;\n}\ndiv.spwidget-board-settings div.spwidget-board-column-list-cntr > div:first-child,\ndiv.spwidget-board-settings div.spwidget-board-column-list-cntr > div:last-child {\n    text-align: right;\n}\ndiv.spwidget-board-settings div.spwidget-board-column-list {\n    width: 20em;\n    height: 17em;\n    overflow: auto;\n    position: relative\n}\ndiv.spwidget-board-settings div.spwidget-board-column-list-cntr .spwidget-board-msg {\n    position: absolute;\n    top: 1px;\n    left: 1px;\n    padding: .2em;\n}\ndiv.spwidget-board-settings div.ui-state-default {\n    position: relative;\n}\ndiv.spwidget-board-settings div.spwidget-board-column-list > a {\n    display: block;\n    margin: .2em;\n    padding: .2em;\n}\ndiv.spwidget-board-settings div.spwidget-board-column-list > a > span.ui-icon {\n    display: inline-block;\n}\n\n/* Number of Columns (96 % #columns)\n * Currently support 10 columns. \n */\ndiv.spwidget-board .spwidget-states-3 div.spwidget-board-state {\n    width: 32.4%;\n}\ndiv.spwidget-board .spwidget-states-4 div.spwidget-board-state {\n    width: 24%;\n}\ndiv.spwidget-board .spwidget-states-5 div.spwidget-board-state {\n    width: 19.1%;\n}\ndiv.spwidget-board .spwidget-states-6 div.spwidget-board-state {\n    width: 15.8%;\n}\ndiv.spwidget-board .spwidget-states-7 div.spwidget-board-state {\n    width: 13.4%;\n}\ndiv.spwidget-board .spwidget-states-8 div.spwidget-board-state {\n    width: 11.6%;\n}\ndiv.spwidget-board .spwidget-states-9 div.spwidget-board-state {\n    width: 10.2%;\n}\ndiv.spwidget-board .spwidget-states-10 div.spwidget-board-state {\n    width: 9.1%;\n}\n";
k.htmlTemplate='<div class="spwidget-board">\n    <div class="spwidget-board-settings" style="display:none;">\n        <div class=\'spwidget-board-settings-columns\'>Columns</div>\n        <div class="spwidget-board-column-list-cntr ui-widget-content ui-corner-all" style="display: none">\n            <div class="ui-state-default">\n                <span>\n                    <span class="spwidget-board-column-total"></span> \n                    <span class="spwidget-board-column-total-label">Selected.</span>\n                </span>\n                <button type="button" name="check" title="Check-Uncheck All">Check</button>\n                <button type="button" name="close" title="Close">Close</button>\n            </div>\n            <div class="spwidget-board-column-list">\n            </div>\n            <div class="ui-state-default">\n                <button type="button" name="apply">Apply</button>\n            </div>\n        </div>\n    </div>\n    <div class="spwidget-board-headers">\n        <div class="spwidget-board-headers-cntr">\n            <div class="spwidget-board-state ui-widget-content ui-corner-top">\n                <span class="spwidget-board-header-title"></span>\n                <span class="spwidget-state-item-stat-cntr">\n                    <span class="spwidget-item-stat ui-widget-content ui-corner-all spwidget-state-item-total">0</span>\n                </span>\n            </div>\n            <div style="clear:both;"></div>\n        </div>\n    </div>\n    <div style="clear:both;"></div>\n    <div class="spwidget-board-states">\n        <div class="spwidget-board-states-cntr">\n            <div class="spwidget-board-state ui-widget-content ui-corner-bottom"></div>\n            <div style="clear:both;"></div>\n        </div>\n    </div>\n    <div style="clear:both;"></div>\n</div>\n<div class="spwidget-item-template">\n    <div>\n        <div>#{{ID}}: {{Title}}</div>\n        <div class="ui-state-active ui-corner-all spwidget-board-item-actions">\n            <a class="spwidgets-board-action" href="javascript:" title="View Item" data-spwidgets_id="{{ID}}" data-spwidgets_board_action="view-item"><img src="/_layouts/images/icgen.gif" border="0"/></a>\n            <a class="spwidgets-board-action" href="javascript:" title="Edit Item" data-spwidgets_id="{{ID}}" data-spwidgets_board_action="edit-item"><img src="/_layouts/images/CMSEditSourceDoc.GIF" border="0"/></a>\n        </div>\n    </div>\n</div>\n'})(s);
(function(c){var k={_islookupFieldCssDone:!1,_isLookupbodyEventDone:!1};c.SPWidgets.defaults.LookupField={list:"",allowMultiples:!0,inputLabel:"",inputPlaceholder:"Type and Pick",readOnly:!1,exactMatch:!0,uiContainer:null,selectFields:["Title"],filter:"",filterFields:["Title"],filterOrderBy:"",template:'<div>{{Title}} <span class="spwidgets-item-remove">[x]</span></div>',listTemplate:"{{Title}}",listHeight:0,onItemAdd:null,onItemRemove:null,onReady:null,msgNoItems:"",maxResults:50,minLength:2,hideInput:!0,
padDelimeter:!1,showSelector:!1};c.fn.SPLookupField=function(e){k._islookupFieldCssDone||(k._islookupFieldCssDone=!0,c('<style type="text/css">\n\n'+k.styleSheet+"\n\n</style>").prependTo("head"));var b=arguments;this.each(function(){var d=c(this);if(!d.is("input")&&!d.is("textarea")||d.hasClass("hasLookupSPField")){if("string"===typeof e&&d.is("input")){var a=d.data("SPWidgetLookupFieldUI").data("SPWidgetLookupFieldOpt");if("method"===e.toLowerCase()){var d=String(b[1]||"").toLowerCase(),g=b[2];
"clear"===d?(c.isArray(g)||(g=g?[g]:[]),g.length?function(){var b=c();c.each(g,function(c,d){b=b.add(a._selectedItemsCntr.find("div.spwidgets-item-id-"+d))});k.removeItem(a,b)}():k.removeItem(a,a._selectedItemsCntr.find("div.spwidgets-item"))):"add"===d&&k.addItem(a,g)}}return this}a=c.extend({},c.SPWidgets.defaults.LookupField,e,{_ele:d.css("display","none").addClass("hasLookupSPField")});a.showSelectedItems=function(b,d){var f=a._selectedItemsCntr.css("display",""),g=[],e=!1;f.find("div.spwidgets-item").length&&
!1!==a.allowMultiples||f.empty();c.isArray(b)?g=b:g.push(b);c.each(g,function(b,g){if(!f.find("div.spwidgets-item-id-"+g.ID).length){var m=c('<div class="spwidgets-item spwidgets-item-id-'+g.ID+'" data-spid="'+g.ID+'" style="display:none">'+c.SPWidgets.fillTemplate(a.template,g)+"</div>").appendTo(f).find(".spwidgets-item-remove").on("click.SPWidgets",function(c){k.removeItem(a,this)}).end();c.isFunction(a.onItemAdd)&&!0!==d&&a.onItemAdd.call(a._ele,m,g,a._cntr);0<f.find("div.spwidgets-item-id-"+
g.ID).length&&(e=!0,m.fadeIn("slow").promise().then(function(){c(this).css("display","")}),!0!==d&&a.storeItemIDs(g.ID,a.allowMultiples),!1===a.allowMultiples&&!0===a.hideInput&&a._lookupInputEleCntr.css("display","none"))}});a.readOnly&&a._cntr.find(".spwidgets-item-remove").remove();e&&a._ele.trigger("change")};a.storeItemIDs=function(b,d){var f=c.trim(a._ele.val()),g=!1;c.isArray(b)||(b=[b]);!0!==d&&(f="");c.each(b,function(c,b){b&&(1>f.length&&(!0===a.padDelimeter&&!g)&&(f+=";#",g=!0),0<f.length&&
(f+=";#"),f+=b+";#")});a._ele.val(f)};a.showCurrentInputSelection=function(b){return c.Deferred(function(d){var f=c.extend({},{async:!0},b),g=c.SPWidgets.parseLookupFieldValue(a._ele.val());g.length?c().SPServices({operation:"GetListItems",async:f.async,listName:a.list,CAMLQuery:"<Query><Where>"+c.SPWidgets.getCamlLogical({type:"OR",values:g,onEachValue:function(a){var c="";a.id&&(c="<Eq><FieldRef Name='ID'/><Value Type='Counter'>"+a.id+"</Value></Eq>");return c}})+"</Where></Query>",CAMLViewFields:"<ViewFields>"+
a._selectFields+"</ViewFields>",CAMLRowLimit:0,completefunc:function(b,f){var g=c(b.responseXML).SPFilterNode("z:row").SPXmlToJson({includeAllAttrs:!0,removeOws:!0});a.addToAutocompleteCache(g);a.showSelectedItems(g,!0);d.resolveWith(a,[b,f])}}):d.resolveWith(a,[null,null])}).promise()};a.getItemObjectFromCache=function(b){var d=null;c.each(a._autocompleteCache,function(a,f){c.each(f,function(a,c){if(c.ID==b)return d=c,!1});if(null!==d)return!1});return d};a.addToAutocompleteCache=function(b){c.isArray(b)||
(b=[b]);c.each(b,function(c,b){a._autocompleteCache[b.ID]||(a._autocompleteCache[b.ID]=[]);a._autocompleteCache[b.ID].push(b)})};a._cntr=c(k.htmlTemplate).find(".spwidgets-lookup-cntr").clone(1);null===a.uiContainer?a._cntr.insertAfter(a._ele):a._cntr.appendTo(c(a.uiContainer));a._selectedItemsCntr=a._cntr.find("div.spwidgets-lookup-selected");a._lookupInputEleCntr=a._cntr.find("div.spwidgets-lookup-input");a._lookupInputEle=a._lookupInputEleCntr.find("input[name='spwidgetLookupInput']");a._ignoreKeywordsRegEx=
/^(of|and|a|an|to|by|the|or)$/i;a._cntr.data("SPWidgetLookupFieldOpt",a);a._ele.data("SPWidgetLookupFieldUI",a._cntr);a.showSelector?(a._selectorCntr=a._cntr.find("div.spwidget-lookup-selector-cntr"),a._queryInitDone=!1,a._cntr.find(".spwidget-lookup-selector-showhide").on("click",function(c){a._selectorCntr.is(":visible")?a._selectorCntr.css("display","none"):(a._selectorCntr.css("display","block").position({my:"left top",at:"left bottom",of:a._lookupInputEle}),a._queryInitDone||(a._queryInitDone=
!0,k.doSelectorDataInit(a)))}),a._selectorCntr.find("button[name='close']").button({text:!1,icons:{primary:"ui-icon-circle-close"}}).click(function(){a._selectorCntr.css("display","none")}),a._lookupInputEle.on("focus",function(c){a._selectorCntr.is(":visible")&&a._selectorCntr.css("display","none")})):a._cntr.find(".spwidget-lookup-selector-showhide,.spwidget-lookup-selector-cntr").remove();a.inputLabel?a._cntr.find("div.spwidgets-lookup-input label").empty().append(a.inputLabel):a._cntr.find("div.spwidgets-lookup-input label").remove();
a.inputPlaceholder&&a._lookupInputEleCntr.find("input").attr("placeholder",a.inputPlaceholder);!0===a.readOnly&&(a._lookupInputEleCntr.css("display","none"),a._cntr.find("div.spwidget-lookup").addClass("spwidget-lookup-readyonly"));a._selectFields="";c.each(a.selectFields,function(c,b){a._selectFields+="<FieldRef Name='"+b+"'/>"});a._templateTokens=String(a.template).match(/(\$\{.*?\})/g);null==a._templateTokens&&(a._templateTokens=[]);c.each(a._templateTokens,function(c,b){a._templateTokens[c]=b.replace(/[\$\{\}]/g,
"")});var f=a._autocompleteCache={};a._cntr.find("div.spwidgets-lookup-input input").autocomplete({minLength:2,appendTo:a._cntr,open:function(b,d){c(this).autocomplete("widget").each(function(){0<a.listHeight&&c(this).css("height",a.listHeight+"px");return!1})},source:function(b,d){b.term=c.trim(b.term);var g=String(c.trim(b.term)).toUpperCase();if(g in f)d(f[g]);else{f[g]=[];var e=[],k=String(b.term);if(null===k.match(/\D/)&&null!==k.match(/\d/))e.push("<Eq><FieldRef Name='ID'/><Value Type='Counter'>"+
k+"</Value></Eq>");else{k=[b.term];a.exactMatch||(k=String(b.term).split(/ /));for(var h=0,u=a.filterFields.length;h<u;h++){for(var v=[],w=0,z=k.length;w<z;w++)a._ignoreKeywordsRegEx.test(k[w])||v.push("<Contains><FieldRef Name='"+a.filterFields[h]+"'/><Value Type='Text'>"+k[w]+"</Value></Contains>");e.push(c.SPWidgets.getCamlLogical({values:v,type:"AND"}))}}e=c.SPWidgets.getCamlLogical({values:e,type:"OR"});a.filter&&(e=c.SPWidgets.getCamlLogical({values:[e,a.filter],type:"AND"}));c().SPServices({operation:"GetListItems",
listName:a.list,async:!0,CAMLQuery:"<Query><Where>"+e+"</Where>"+a.filterOrderBy+"</Query>",CAMLRowLimit:a.maxResults,CAMLViewFields:"<ViewFields>"+a._selectFields+"</ViewFields>",completefunc:function(b,e){c(b.responseXML).SPFilterNode("z:row").each(function(){var b=c(this).SPXmlToJson({includeAllAttrs:!0})[0];b.value="";b.label=c.SPWidgets.fillTemplate(a.listTemplate,b);f[g].push(b)});d(f[g])}})}},select:function(b,c){a.showSelectedItems(c.item)}}).on("keyup.SPWidgets",function(b){if(13==b.which){var d=
c(b.target).val();d&&String(d).length<a.minLength&&c(b.target).autocomplete("search",d+"    ")}});a._ele.val()?a.showCurrentInputSelection().then(function(b,d){c.isFunction(a.onReady)&&a.onReady.call(a._ele,a._cntr)}):c.isFunction(a.onReady)&&a.onReady.call(a._ele,a._cntr);return this});return this};k.removeItem=function(e,b){var d=c(b).closest("div.spwidgets-item"),a=e._selectedItemsCntr,g=[];if(c.isFunction(e.onItemRemove)){d.each(function(){g.push(e.getItemObjectFromCache(c(this).data("spid")))});
if(!1===e.onItemRemove.call(e._ele,d,g,e._cntr))return k;g=[]}d.fadeOut("fast").promise().then(function(){d.remove();!e.msgNoItems&&(!1===e.allowMultiples||!0===e.allowMultiples&&1>a.find("div.spwidgets-item").length)&&a.css("display","none");!1===e.allowMultiples&&!0===e.hideInput&&e._lookupInputEleCntr.css("display","");1>a.find("div.spwidgets-item").length&&e.msgNoItems&&a.append("<div>"+e.msgNoItems+"</div>");a.find("div.spwidgets-item").each(function(){g.push(c(this).data("spid"))});e._lookupInputEleCntr.find("input").focus();
e.storeItemIDs(g);e._ele.change()});return k};k.addItem=function(c,b){if(!b||"string"!==typeof b)return c;var d=c._ele.val();""===d&&!0===c.padDelimeter&&(d+=";#");d&&(d+=";#");c._ele.val(d+b);c.showCurrentInputSelection();return c};k.doSelectorDataInit=function(e){var b={$resultsCntr:e._selectorCntr.find("div.spwidget-lookup-selector-item-cntr"),nextPageToken:"",isLoading:!1,hasMorePages:!0,$lastPage:c(),queryXml:e.filter?"<Query><Where>"+e.filter+"</Where>"+e.filterOrderBy+"</Query>":"<Query>"+
e.filterOrderBy+"</Query>"};k._isLookupbodyEventDone||(k._isLookupbodyEventDone=!0,c("body").on("click",function(b){b=c(b.target);var a=c("div.spwidget-lookup-selector-cntr:visible"),g=null;a.length&&(g=b.closest("div.spwidget-lookup-selector-cntr"),!g.length&&b.is(".spwidget-lookup-selector-showhide")&&(g=b.parent().find("div.spwidget-lookup-selector-cntr")),a.not(g).hide())}));b.getListRows=function(){return c.Deferred(function(d){b.isLoading?d.resolveWith($lastPage,[$lastPage]):(b.isLoading=!0,
c().SPServices({operation:"GetListItems",listName:e.list,async:!0,CAMLQuery:b.queryXml,CAMLRowLimit:e.maxResults,CAMLViewFields:"<ViewFields>"+e._selectFields+"</ViewFields>",CAMLQueryOptions:function(){if(""!==b.nextPageToken)return"<QueryOptions><Paging ListItemCollectionPositionNext='"+c.SPWidgets.escapeXML(b.nextPageToken)+"'/></QueryOptions>"}(),completefunc:function(a,g){var f=c(a.responseXML),m=f.SPFilterNode("rs:data").eq(0),k=f.SPFilterNode("z:row").SPXmlToJson({includeAllAttrs:!0,removeOws:!0}),
f=c("<div/>").insertBefore(b.$nextPage),h="";b.nextPageToken=m.attr("ListItemCollectionPositionNext")||"";""===b.nextPageToken&&(b.hasMorePages=!1);c.each(k,function(a,b){e.addToAutocompleteCache(b);b.value="";b.label=c.SPWidgets.fillTemplate(e.listTemplate,b);h+='<div class="spwidget-lookup-item" data-spwidgetsindex="'+a+'">'+b.label+"</div>"});f.html(h).find("div.spwidget-lookup-item").each(function(){var a=c(this);a.hover(function(){a.addClass("ui-state-hover")},function(){a.removeClass("ui-state-hover")})}).end().on("click",
"div.spwidget-lookup-item",function(a){a=c(this).data("spwidgetsindex");e.showSelectedItems(k[a])});b.isLoading=!1;d.resolveWith(f,[f])}}))})};b.$nextPage=c('<div class="ui-state-highlight spwidget-lookup-selector-next">Next...</div>').appendTo(b.$resultsCntr.empty()).click(function(c){b.hasMorePages&&(b.$nextPage.css("display","none"),b.getListRows().then(function(a){b.hasMorePages?b.$nextPage.css("display",""):a.children().length||a.append("<div class='ui-state-highlight'>No Items Found!</div>");
b.$resultsCntr.scrollTop(a.position().top)}))});b.$nextPage.click();return e};k.styleSheet='/**\n * Stylesheet for the Lookup Field widget.\n * \n */\n\n.spwidgets-lookup-cntr {\n    position: relative;\n    display: inline-block;\n    zoom: 1; /* IE7 hack */\n    *display: inline; /* IE7 hack */\n}\n\n\n.spwidgets-lookup-cntr .spwidgets-lookup-selected {\n    -moz-appearance: textfield;\n    -webkit-appearance: textfield;\n    background-color: white;\n    background-color: -moz-field;\n    border: 1px solid  darkgray;\n    box-shadow: 1px 1px 1px 0 lightgray inset;  \n    font: -moz-field;\n    font: -webkit-small-control;\n    margin-top: 5px;\n    padding: 2px 5px; \n}\n\n.spwidgets-lookup-cntr  .spwidgets-lookup-selected .spwidgets-item {\n    display: inline-block;\n    margin-left: .5em;\n}\n.spwidgets-lookup-cntr .spwidgets-item:first-child {\n    margin-left: 0px;\n}\n.spwidgets-lookup-cntr .spwidgets-item-remove {\n    color: red;\n    font-size: xx-small;\n    vertical-align: super;\n    cursor: pointer;\n}\n\n.spwidgets-lookup-cntr .spwidgets-lookup-input {\n    margin: .2em 0em;\n    position: relative;\n}\n.spwidgets-lookup-cntr .spwidgets-lookup-input input {\n    width: 99%;\n}\n.spwidgets-lookup-cntr ul.ui-autocomplete {\n    overflow: auto;\n    z-index: 1;\n}\n\n/* Ready only display */\n.spwidgets-lookup-cntr div.spwidget-lookup-readyonly .spwidgets-lookup-selected {\n    -moz-appearance: none;\n    -webkit-appearance: none;\n    background-color: transparent;\n    border: none;\n    box-shadow: none;\n    font: inherit;\n}\n.spwidgets-lookup-cntr div.spwidget-lookup-readyonly .spwidgets-item-remove {\n    display: none;\n}\n\n/** SELECTOR */\n.spwidgets-lookup-cntr .spwidget-lookup-selector-showhide {\n    background-repeat: no-repeat;\n    background-image: url("/_layouts/images/bizdatacontentsource.gif");\n    cursor: pointer;\n    display: block;\n    position: absolute;\n    text-indent: -99999px;\n    z-index: 5;\n    height: 16px;\n    width: 16px;\n    right: 5px;\n    top: .3em;\n}\n.spwidgets-lookup-cntr div.spwidget-lookup-selector-cntr {\n    display: none;\n    position: absolute;\n    left: 0px;\n    z-index: 10;\n    padding: .2em;\n    width: 98%;\n    font-size: .8em;\n}\n.spwidgets-lookup-cntr div.spwidget-lookup-selector-cntr > .ui-state-default {\n    padding: .2em;\n    text-align: right;\n}\n\n.spwidgets-lookup-cntr div.spwidget-lookup-selector-item-cntr {\n    height: 15em;\n    overflow: auto;\n    padding: .2em;\n    font-size: 1em;\n}\n.spwidgets-lookup-cntr div.spwidget-lookup-selector-item-cntr .ui-state-highlight {\n    padding: .5em;\n    margin: 1em .2em;\n    text-align: center;\n    font-size: 1.1em;\n    font-weight: bold;\n}\n.spwidgets-lookup-cntr div.spwidget-lookup-selector-item-cntr .spwidget-lookup-selector-next {\n    cursor: pointer;\n}\n.spwidgets-lookup-cntr div.spwidget-lookup-selector-item-cntr .spwidget-lookup-item {\n    padding: .2em .5em;\n    margin: .2em;\n    cursor: pointer;\n    font-weight: normal;\n}\n\n';
k.htmlTemplate='<div>\n    <div class="spwidgets-lookup-cntr">\n        <div class="spwidget-lookup">\n            <div class="spwidgets-lookup-selected" style="display:none;">\n            </div>\n            <div class="spwidgets-lookup-input">\n                <label>Add</label>\n                <input type="text" name="spwidgetLookupInput" value="" />\n                <span class="spwidget-lookup-selector-showhide" title="Browse">Browse</span>\n                <div class="spwidget-lookup-selector-cntr ui-widget-content">\n                    <div class="ui-state-default">\n                        <button type="button" name="close" title="Close">Close</button>\n                    </div>\n                    <div class="spwidget-lookup-selector-item-cntr"></div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n\n'})(s);
(function(){h.pt.pickSPUser={_isPickSPUserCssDone:!1};h.fn.pickSPUser=function(c){h.pt.pickSPUser._isPickSPUserCssDone||(h.pt.pickSPUser._isPickSPUserCssDone=!0,h('<style type="text/css">\n\n'+h.pt.pickSPUser.styleSheet+"\n\n</style>").prependTo("head"));var k=arguments,e=this;if("string"===typeof c)return function(b){return b.is("input")&&b.hasClass("hasPickSPUser")?h.pt.pickSPUser.handleAction.apply(b,k):e}(e.eq(0));this.each(function(){var b=h(this),d=h.extend({},{allowMultiples:!0,maxSearchResults:50,
webURL:h().SPServices.SPGetCurrentSite(),type:"User",onPickUser:null,onCreate:null,onRemoveUser:null,inputPlaceholder:"Type and Pick"},c,{eleUserInput:b.css("display","none").addClass("hasPickSPUser")});d.maxSearchResults=parseInt(d.maxSearchResults)||50;var a=h(h.pt.pickSPUser.htmlTemplate).find(".pt-pickSPUser").clone(1).insertAfter(b);d.eleSelected=a.find("div.pt-pickSPUser-selected").empty().on("click",".tt-delete-icon",function(){h.pt.pickSPUser.removeUser(this)});d.elePickInput=a.find("div.pt-pickSPUser-input");
d.addPeopleToList=function(a,b){var c=(new String(a)).split(";#"),g=c.length,e,k,r;for(e=0;e<g;e++)k=c[e],e++,r=c[e],k=h.pt.pickSPUser.getUserHtmlElement(d,k,r).appendTo(d.eleSelected),function(a,b){d.getSearchResults(b).done(function(c,d,f){var g=String(b).toLowerCase();h.each(c,function(b,c){if(String(c.displayName).toLowerCase()===g)return a.data("pickspuser_object",c),!1})})}(k,r);h.pt.addHoverEffect(d.eleSelected.find("div.pt-pickSPUser-person-cntr"));!1===d.allowMultiples&&d.elePickInput.css("display",
"none");h.pt.pickSPUser.storeListOfUsers(d.eleSelected,b)};d.getSearchResults=function(a){return h.Deferred(function(b){h().SPServices({operation:"SearchPrincipals",searchText:a,maxResults:d.maxSearchResults,principalType:d.type,async:!0,webURL:d.webURL,completefunc:function(a,c){var d=[];h(a.responseXML).find("PrincipalInfo").each(function(){var a=h(this),a={displayName:a.find("DisplayName").text(),accountId:a.find("UserInfoID").text(),accountName:a.find("AccountName").text(),accountType:a.find("PrincipalType").text(),
value:a.find("DisplayName").text(),label:""};a.label+=a.displayName;d.push(a)});b.resolveWith(a,[d,a,c])}})}).promise()};!0===d.allowMultiples&&d.eleSelected.addClass("pt-pickSPUser-selected-multiple");var g={};d.elePickInput.find("input[name='pickSPUserInputField']").attr("placeholder",d.inputPlaceholder).autocomplete({minLength:3,appendTo:d.elePickInput,source:function(a,b){a.term in g?b(g[a.term]):(g[a.term]=[],d.getSearchResults(a.term).then(function(c,d,e){g[a.term].push.apply(g[a.term],c);b(g[a.term])}))},
select:function(c,g){if(!1===d.allowMultiples)d.eleSelected.empty();else if(d.eleSelected.find("div[data-pickspuserid='"+g.item.accountId+"']").length)return;h.pt.pickSPUser.getUserHtmlElement(d,g.item.accountId,g.item.displayName).appendTo(d.eleSelected).data("pickspuser_object",g.item);h.pt.pickSPUser.storeListOfUsers(a);h.pt.addHoverEffect(a.find("div.pt-pickSPUser-person-cntr"));setTimeout(function(){c.target.value=""},50);!1===d.allowMultiples&&d.elePickInput.hide();h.isFunction(d.onPickUser)&&
d.onPickUser.call(d.eleUserInput,h.extend({},g.item));b.trigger(h.Event("spwidget:peoplePickerAdd"),[d.eleUserInput,h.extend({},g.item)])}});a.data("pickSPUserContainerOpt",d);b.data("pickSPUserContainer",a);b.val()&&d.addPeopleToList(b.val(),!0);h.isFunction(d.onCreate)&&d.onCreate.call(b,b);b.trigger(h.Event("spwidget:peoplePickerCreate"),[d.eleUserInput]);return this});return this};h.pt.pickSPUser.getUserHtmlElement=function(c,k,e){c=h(h.pt.pickSPUser.htmlTemplate).find(".pt-pickSPUser-person").clone(1);
c.attr("data-pickSPUserID",k);c.find("span.pt-person-name").append(e).end().attr("data-pickSPUserNAME",e);return c};h.pt.pickSPUser.removeUser=function(c){var k=h(c).closest("div.pt-pickSPUser"),e=k.data("pickSPUserContainerOpt");c=h(c).closest("div.pt-pickSPUser-person");var b=c.data("pickspuser_object");h.isFunction(e.onRemoveUser)&&e.onRemoveUser.call(e.ele,e.ele,c,b);c.fadeOut("fast",function(){h(this).remove();h.pt.pickSPUser.storeListOfUsers(k)});!1===e.allowMultiples&&e.elePickInput.show("fast",
function(){e.elePickInput.find("input").focus()});e.eleUserInput.trigger(h.Event("spwidget:peoplePickerRemove"),[e.eleUserInput,b])};h.pt.pickSPUser.storeListOfUsers=function(c,k){var e=h(c).closest("div.pt-pickSPUser"),b=e.data("pickSPUserContainerOpt"),d="",a={};e.find("div.pt-pickSPUser-selected div.pt-pickSPUser-person").each(function(){a[h(this).attr("data-pickSPUserID")]||(a[h(this).attr("data-pickSPUserID")]=!0,d&&(d+=";#"),d+=h(this).attr("data-pickSPUserID"),d+=";#",d+=h(this).attr("data-pickSPUserNAME"))});
b.eleUserInput.val(d);k||b.eleUserInput.change()};h.pt.pickSPUser.handleAction=function(c,k,e){c=String(c).toLowerCase();k=String(k).toLowerCase();var b=h(this).data("pickSPUserContainer").data("pickSPUserContainerOpt"),d=this;if("method"===c)switch(k){case "clear":b.eleUserInput.val("");b.eleSelected.empty();!1===b.allowMultiples&&(b.eleSelected.css("display","none"),b.elePickInput.show());break;case "destroy":h(this).hasClass("hasPickSPUser")&&h(this).removeClass("hasPickSPUser").next(".pt-pickSPUser").remove().show().trigger("change");
break;case "add":b.addPeopleToList(e);break;case "remove":e&&(c=b.eleSelected.find("div[data-pickspuserid='"+e+"']"),c.length||(c=b.eleSelected.find("div[data-pickspusername='"+e+"']")),c.length&&h.pt.pickSPUser.removeUser(c));break;case "getselected":d=h.SPWidgets.parseLookupFieldValue(b.eleUserInput.val())}return d};h.pt.pickSPUser.styleSheet="/**\n * Styles for the Pick User Widget\n */\n.pt-pickSPUser .pt-pickSPUser-selected-multiple {\n    min-height: 3em;\n}\n\n.pt-pickSPUser .pt-pickSPUser-selected .pt-pickSPUser-person {\n    float: left;\n    margin-left: .2em;\n}\n.pt-pickSPUser .pt-pickSPUser-hint {\n    font-size: .9em;\n}\n\n.pt-pickSPUser div.pt-pickSPUser-input input.ui-autocomplete {\n    width: 99%;\n}\n.pt-pickSPUser div.pt-pickSPUser-input ul.ui-autocomplete {\n    z-index: 1;\n}\n\n.pt-pickSPUser .pt-pickSPUser-person-cntr {\n    margin: .2em 0em;\n    padding: .2em;\n    position: relative;\n}\n\n.pt-pickSPUser .pt-pickSPUser-person-cntr .pt-person-name {\n    padding-right: 2em;\n}\n\n/* Item action container (delete button) */\n.pt-pickSPUser .pt-pickSPUser-person-cntr .pt-pickSPUser-person-actions {\n    position: absolute;\n    right: 1px;\n    top: 1px;\n    padding: .2em;\n    display: none;\n}\n.pt-pickSPUser .pt-pickSPUser-person-cntr .pt-pickSPUser-person-actions .pt-pickSPUser-person-action-links,\n.pt-pickSPUser .pt-pickSPUser-person-cntr .pt-pickSPUser-person-actions .pt-pickSPUser-person-action-links .tt-confirm-delete {\n    float:right;\n}\n\n/* Make the action visible if we hover or we are trying to confirm a deletion */\n.pt-pickSPUser .pt-pickSPUser-person-cntr.ui-state-hover .pt-pickSPUser-person-actions,\n.pt-pickSPUser .pt-pickSPUser-person-cntr .pt-pickSPUser-person-actions.tt-confirm,\n.pt-pickSPUser .pt-pickSPUser-person-cntr .pt-pickSPUser-person-actions a {\n    display:block;\n    float: right;\n}\n\n/* autocomplete busy image */\n.ui-autocomplete-loading {\n    background: white url('/_layouts/images/loading.gif') right center no-repeat;\n}\n\n\n";
h.pt.pickSPUser.htmlTemplate='\x3c!--\n    Html Templates for the PickSPUser plugin.\n    \n    |\n    |   $Author$\n    | $Revision$\n    |     $Date$\n    |       $Id$\n    |\n--\x3e\n<div>\n    <div class="pt-pickSPUser">\n        <div class="pt-pickSPUser-selected">\n            None Selected!\n        </div>\n        <div style="clear:both"></div>\n        <div class="pt-pickSPUser-input" \n                title="Type user name above to view search results.">\n            <input name="pickSPUserInputField" value="" type="text"/>\n        </div>\n    </div>\n    \n    <div class="pt-pickSPUser-person">\n        <div class="pt-pickSPUser-person-cntr ui-state-default ui-corner-all">\n            <span class="pt-person-name"></span>\n            <div class="pt-pickSPUser-person-actions">\n                <div class="tt-record-item-action-links">\n                    <a class="tt-delete-icon" href="javascript:" onclick="jQuery.pt.pickSPUser.removeUser(this);">\n                        <img style="border: medium none; margin-right: 2px;" alt="Delete" src="/_layouts/images/delitem.gif">\n                    </a>\n                    <div style="clear:both;"></div>\n                </div>\n                <div style="clear:both;"></div>\n            </div>\n        </div>\n    </div>\n</div>\n';
h.pt.addHoverEffect=function(c){return h(c).each(function(){if(!h(this).hasClass("addHoverEffectDone")){h(this).addClass("addHoverEffectDone");var c=this;h(c).mouseenter(function(){h(c).toggleClass("ui-state-hover")});h(c).mouseleave(function(){h(c).toggleClass("ui-state-hover")})}})}})(s);(function(c){var k={isSPUploadCssDone:!1};c.SPWidgets.defaults.upload={listName:"",folderPath:"",uploadDonePage:"",onPageChange:null,onUploadDone:null,uploadUrlOpt:"",overwrite:!1,uploadPage:"",overlayClass:"",
overlayBgColor:"white",overlayMessage:"<div>Working on it</div>",selectFileMessage:"Click here to select file...",uploadDoneMessage:"Upload Successful!",fileNameErrorMessage:'A file name cannot contain any of the following characters: \\ / : * ? " &lt; &gt; | # { } % ~ &amp;',noFileErrorMessage:"No file selected!",checkInFormHeight:"25em",webURL:null,debug:!1,filenameInputSelector:"input[id$='onetidIOFile']"};c.fn.SPControlUpload=function(e){k.isSPUploadCssDone||(k.isSPUploadCssDone=!0,c('<style type="text/css">\n\n'+
k.StyleSheet+"\n\n</style>").prependTo("head"),c.SPWidgets.defaults.upload.webURL||(c.SPWidgets.defaults.upload.webURL=c().SPServices.SPGetCurrentSite()));return c(this).each(function(){var b=c.extend({},c.SPWidgets.defaults.upload,e),d;b.log=b.debug?k.log:function(){};b.showHideBusy=function(a){return c.Deferred(function(c){a?b.$busyOverlay.fadeOut("fast").promise().then(function(){c.resolve()}):b.$busyOverlay.fadeIn("slow").promise().then(function(){c.resolve()})}).promise()};b.showHideFullForm=
function(a){a?(b.$content.removeClass("spwidget-show-full-form"),b.$iframeCntr.css({overflow:"",height:""})):(b.$content.addClass("spwidget-show-full-form"),b.$iframeCntr.css({overflow:"auto",height:"auto"}));return b};b.showHideSuccess=function(a){a?b.$successCntr.stop().fadeOut().promise(function(){b.$successCntr.css("display","none")}):b.$successCntr.stop().show().promise(function(){b.$successCntr.css("display","block")});return b};b.showError=function(a){a=c.extend({},{message:"",autoHide:!0},
a);b.$errorCntrMsg.html(a.message);b.$errorCntr.stop().css("display","block");a.autoHide&&b.$errorCntr.animate({opacity:1},5E3,function(){b.clearError()});return b};b.clearError=function(){b.$errorCntr.css("display","none");return b};b.resetWidget=function(){b.ev={state:1,action:"uploading",hideOverlay:!0,pageUrl:"",page:null,isUploadDone:!1,file:{}};b.$iframe.attr("src",b.uploadPage);return b};b.getUploadedFileRow=function(){var a={};c().SPServices({operation:"GetListItems",async:!1,webURL:b.webURL,
listName:b.listName,CAMLQuery:"<Query><Where><Eq><FieldRef Name='Author' LookupId='TRUE'/><Value Type='Integer'><UserID/></Value></Eq></Where><OrderBy><FieldRef Name='Modified' Ascending='FALSE'/></OrderBy></Query>",CAMLViewFields:"<ViewFields><FieldRef Name='ID'/><FieldRef Name='EncodedAbsUrl'/><FieldRef Name='FileLeafRef' /><FieldRef Name='Author' /><FieldRef Name='Editor' /><FieldRef Name='Created' /><FieldRef Name='Modified' /></ViewFields>",CAMLRowLimit:1,CAMLQueryOptions:"<QueryOptions><ViewAttributes Scope='Recursive' /></QueryOptions>",
completefunc:function(b,d){var e=c(b.responseXML).SPFilterNode("z:row").SPXmlToJson({includeAllAttrs:!0});e.length&&(a=e[0])}});return a};b.isUploadPage=function(a){var c=!1,d=document.createElement("a"),e=null;d.href=String(a).toLowerCase();b.userUploadPage?(e=document.createElement("a"),e.href=String(b.userUploadPage).toLowerCase(),d.pathname===e.pathname&&(c=!0)):c=/upload(ex)?\.aspx$/.test(d.pathname);return c};b.listName&&0!==b.listName.indexOf("{")&&(b.listName=c.pt.getListUID(b.listName));
if(!b.listName)return c(this).html('<div class="ui-state-error">Input parameter [listName] not valid!</div>'),this;b.spVersion=c.SPWidgets.getSPVersion(!0);b.userUploadPage=b.uploadPage;b.uploadPage=String(b.uploadPage);if(b.uploadPage)-1===b.uploadPage.toLowerCase().indexOf("http")&&(d="/",0==b.uploadPage.indexOf("/")&&(d=""),b.uploadPage=b.webURL+d+b.uploadPage);else switch(b.spVersion){case "2013":b.uploadPage=b.webURL+"/_layouts/15/UploadEx.aspx";break;case "2010":b.uploadPage=b.webURL+"/_layouts/UploadEx.aspx";
break;default:b.uploadPage=b.webURL+"/_layouts/Upload.aspx"}b.uploadDonePage=String(b.uploadDonePage);b.uploadDonePage||(b.uploadDonePage=b.webURL+"/_layouts/images/STS_ListItem_43216.gif");b._iframeLoadId=1;b._uploadUrlParams="?List="+c.pt.getEscapedUrl(b.listName)+"&RootFolder="+c.pt.getEscapedUrl(b.folderPath)+"&Source="+c.pt.getEscapedUrl(b.uploadDonePage)+"&"+(new Date).getTime()+"=1&"+b.uploadUrlOpt;b.uploadPage+=b._uploadUrlParams;b._lastError="";b._reloadCount=0;b.ev={state:1,action:"uploading",
hideOverlay:!0,pageUrl:"",page:null,isUploadDone:!1,file:{}};b.$ele=c(this);d={};b.overlayBgColor&&(d["background-color"]=b.overlayBgColor);b.$cntr=c(c(k.HtmlUI).filter("div.SPControlUploadUI").clone()).appendTo(b.$ele.addClass("hasSPControlUploadUI").empty()).data("SPControlUploadOptions",b);b.$buttonCntr=b.$cntr.find("div.buttonPane").click(function(a){k.onUpload(this)});b.$content=b.$cntr.find("div.mainContainer");b.$iframeCntr=b.$cntr.find("div.iFrameWindow");b.$iframe=b.$iframeCntr.children("iframe");
b.$busyOverlay=b.$cntr.find("div.loadingOverlay");b.$busyOverlayMsg=b.$busyOverlay.find("div.loadingOverlayMsg");b.$successCntr=b.$cntr.find("div.spwidget-success-cntr");b.$errorCntr=b.$cntr.find("div.spwidget-error-cntr");b.$errorCntrMsg=b.$errorCntr.find(".spwidget-msg");b.reInvalidChr=/[\/:*?"<>|#{}%~&]/;b.$successCntr.on("click",".spwidget-close",function(a){b.showHideSuccess(!0)}).find(".spwidget-msg").html(b.uploadDoneMessage);b.$errorCntr.on("click",".spwidget-close",function(a){b.clearError()});
b.$busyOverlay.addClass(b.overlayClass).css(d);b.$busyOverlayMsg.html(b.overlayMessage);b.showHideBusy();b.$cntr.find("iframe").css("height",b.checkInFormHeight).load(function(a){k.onIframeChange(b.$ele.find(".SPControlUploadUI"))}).attr("src",b.uploadPage).end();return this})};k.onUpload=function(e){var b=c(e).closest(".SPControlUploadUI"),d=b.find("iframe").contents(),a=d.find("input[type='file']").closest("tr").siblings().find("span"),g=b.data("SPControlUploadOptions");e=g.ev;g.log("Upload.onUpload("+
g._iframeLoadId+"): Start....");a.css("display","none");if(d.find("input[type='file']").val())if(g.reInvalidChr.test(d.find("div.SPControlUploadModUIFileSelected").text()))g.showError({message:g.fileNameErrorMessage});else{e.state=2;e.action="preLoad";if(g.onPageChange&&!1===g.onPageChange.call(g.$ele,e))return!1;g.showHideFullForm(!0);g.showHideBusy().then(function(){g.log("Upload.onUpload("+g._iframeLoadId+"): Clicking the OK button on upload form.");d.find("input[type='button'][id$='btnOK']").click();
if(a.is(":visible"))return g.log("Upload.onUpload("+g._iframeLoadId+"): Error message reported! \n"+a.text()),b.find(".loadingOverlay").css("display","none").end(),!1})}else g.showError({message:g.noFileErrorMessage})};k.isSPBusyAnimation=function(c){return c.find("#GearPage").length||c.find("#ms-loading-box").length?!0:!1};k.onIframeChange=function(e){var b=c(e).closest(".SPControlUploadUI"),d=b.data("SPControlUploadOptions"),a=0,g=c(b.find("iframe").contents());if(d.debug)try{d.log("Upload.onIframeChange(): ENTERING... Document readyState: "+
g[0].readyState+" IFRAME URL: "+g[0].location.href)}catch(f){}k.isSPBusyAnimation(g)?d.log("Upload.onIframeChange(): EXITING... Gear page displyed."):2===d.ev.state&&"preLoad"===d.ev.action&&!0===g[0].spcontrolupload_init_done?(d.log("Upload.onIframeChange("+d._iframeLoadId+"): Exiting! ev.action=["+d.ev.action+"] and ev.state=["+d.ev.state+"] - Nothing to do. Action handled by onUpload(). Setting action to postLoad"),d.ev.action="postLoad"):(d._iframeLoadId++,a=d._iframeLoadId,d.log("Upload.onIframeChange("+
a+"): State=["+d.ev.state+"] Action=["+d.ev.action+"]"),setTimeout(function(){if(a!==d._iframeLoadId)d.log("Upload.onIframeChange("+a+"): not latest invokation! Existing.");else{var f=d.ev,e=g.find("form").eq(0);g=c(b.find("iframe").contents());d.log("Upload.onIframeChange("+a+"): STARTING... Executing setTimeout(). URL:"+g[0].location.href);if(!0===g.spcontrolupload_init_done)d.log("Upload.onIframeChange("+a+"): EXITING!!! Page was already processed!");else{g.spcontrolupload_init_done=!0;f.pageUrl=
g[0].location.href;f.page=g;d.$iframeCntr.scrollTop(0);g.scrollTop(0);if(d.isUploadPage(f.pageUrl)){d.log("Upload.onIframeChange("+a+"): URL is the upload page!");g.find("body").css({overflow:"hidden"});e.children(":visible").hide().end().append(c(k.HtmlUI).filter("div#SPControlUploadModUI").clone()).find("div.SPControlUploadModUIFileSelected").html(d.selectFileMessage);if(RegExp(/error/i).test(c.trim(g.find(".ms-pagetitle").text()))||RegExp(/error/i).test(c.trim(g.find("title").text()))||RegExp(/error\.aspx/i).test(c.trim(g.find("form").attr("action")))){d.log("Upload.onIframeChange("+
a+"): page displaying an error... Storing it and reloading upload form.");d._lastError=g.find("[id$='LabelMessage']").text();if(1<d._reloadCount){alert("Error encountered during upload which is causing program to loop. Last upload error was: "+d._lastError);b.find(".loadingOverlay").fadeOut();return}d._reloadCount+=1;b.find("iframe").attr("src",d.uploadPage);return}if(k.isSPBusyAnimation(g)&&!g.find("input[type='file']").length){d.log("Upload.onIframeChange("+a+"): SP processing page (GearPage)... Exiting and waiting for next page...");
return}g.find("input[type='file']").closest("table").appendTo(g.find("#SPControlUploadModUI")).removeClass("ms-authoringcontrols");var h=g.find("#SPControlUploadModUI").find("input[type='file']").closest("tr").siblings().css("display","none").end().end().siblings("tr .ms-error").css("display","").end().on("change focus click",function(a){a=c(this).val();var b="",f="/_layouts/images/urn-content-classes-smartfolder16.gif";if(a){try{b=a.substr(a.lastIndexOf(".")+1)}catch(e){b="GEN"}f="/_layouts/images/IC"+
b.toUpperCase()+".GIF";a=a.replace(/\\/g,"/").split("/").pop()||a}else a=d.selectFileMessage;g.find("#SPControlUploadModUI > div").html(a).css("background-image","url('"+f+"')")}).css({cursor:"pointer",height:"100px",position:"absolute",left:"0px",top:"0px",filter:"alpha(opacity=1)",opacity:"0.01",outline:"none","-moz-opacity":"0.01","font-size":"100px","z-index":"5"});e.on("mousemove",function(a){h.css({left:a.pageX-(h.width()-50),top:a.pageY-30}).blur()});d._lastError&&(d.showError({message:d._lastError}),
d._lastError="");d._reloadCount=0;d.overwrite?g.find("input[type='checkbox'][name$='OverwriteSingle']").prop("checked","checked"):g.find("input[type='checkbox'][name$='OverwriteSingle']").prop("checked","");f.state=1;f.action="postLoad";f.hideOverlay=!0}else{d.log("Upload.onIframeChange("+d._iframeLoadId+"): File uploaded to server! Need ["+d.uploadDonePage+"] to be done.");f.state=3;f.action="postLoad";f.hideOverlay=!0;f.file=d.getUploadedFileRow();if(k.isSameUrlPage(f.pageUrl,d.uploadDonePage))d.log("Upload.onIframeChange("+
d._iframeLoadId+"): Upload widget process DONE!"),f.isUploadDone=!0,f.hideOverlay=!1,d.showHideBusy(),d.showHideSuccess();else if(d.log("Upload.onIframeChange("+d._iframeLoadId+"): Post Upload Form being displayed! Hooking into form.onsubmit!"),e.length){var l=e.prop("onsubmit"),y=e.find(d.filenameInputSelector).eq(0);y.length&&(e.children(":visible").css("display","none").addClass("ptWasVisible"),y.closest("div[id^='WebPart']").appendTo(e).css("display","").removeClass("ptWasVisible"));e[0].onsubmit=
function(){d.log("Upload.onIframeChange("+a+"): iframe form.onsubmit triggered!");d.showHideBusy();var b=!0;c.isFunction(d.onPageChange)&&(b=d.onPageChange.call(d.$ele,c.extend({},f,{state:3,action:"preLoad"})));if(!1===b)return d.showHideBusy(!0),b;c.isFunction(l)&&(b=l());if(!1===b)return d.showHideBusy(!0),b;d.showHideFullForm(!0);return b}}c(b.find("iframe")[0].contentWindow).unload(function(a){d.log("Upload.onIframeChange("+d._iframeLoadId+"): iframe.unload() triggered!");d.showHideBusy();d.showHideFullForm(!0);
if(c.isFunction(d.onPageChange))return d.onPageChange.call(d.$ele,c.extend({},f,{state:3,action:"preLoad"}))})}d.log("Upload.onIframeChange("+d._iframeLoadId+"): iframe page setup done!");d.onPageChange&&d.onPageChange.call(d.$ele,f);if("postload"!==f.action.toLowerCase()||!0===f.hideOverlay)d.showHideBusy(!0),!1===f.isUploadDone&&3===f.state&&d.showHideFullForm();f.isUploadDone&&(d.resetWidget(),d.$successCntr.animate({opacity:1},3E3,function(){d.showHideSuccess(!0)}),c.isFunction(d.onUploadDone)&&
d.onUploadDone.call(d.$ele,f.file))}}},500))};k.isSameUrlPage=function(c,b){if(!c||!b)return!1;var d=function(a){var b=document.createElement("a");b.href=a;return unescape(b.pathname)},a=String(d(c)).toLowerCase(),d=String(d(b)).toLowerCase();return a===d};c.pt.getEscapedUrl=escapeProperly;c.pt.getUnEscapedUrl=unescapeProperly;c.pt.getListUID=function(e){if(!e)return"";var b="";if(c.pt._cache["getListUID:"+e])return b=c.pt._cache["getListUID:"+e];c().SPServices({operation:"GetList",listName:e,async:!1,
completefunc:function(d,a){b=c(d.responseXML).find("List").attr("ID")}});b&&(c.pt._cache["getListUID:"+e]=b);return b};k.log=function(){var e,b,d=1,a=0,g=!1,f=!1,k=["#FFFFFF","#F5F5F2"];"undefined"===typeof console||"undefined"===typeof console.debug?e=function(){var c,f,g="";c=0;for(f=arguments.length;c<f;c++)g+='<div style="padding: .1em .1em;background-color:'+k[a]+'"><span>['+d+"] </span>"+arguments[c]+"</div>",d++,a=1===a?0:1;g&&(b.append(g),b.dialog("isOpen")||b.dialog("open"))}:g=!0;return function(){f||
(f=!0,g||(b=c("<div><h2>SPWidgets Debug Output</h2></div>").appendTo("body").dialog({title:"Debug output",height:300})));if(g){var a,d;a=0;for(d=arguments.length;a<d;a++)console.debug(arguments[a])}else e.apply(this,arguments)}}();k.StyleSheet="/**\n * FILE: jquery.SPControlUpload.css\n * \n * \n */\n.spcontrolupload .mainContainer {\n\tposition: relative;\n\tdisplay:block;\n\theight: 4em;\n}\n\n.spcontrolupload .iFrameWindow,\n.spcontrolupload .buttonPane,\n.spcontrolupload .spwidget-success-cntr,\n.spcontrolupload .loadingOverlay {\n    position: absolute;\n    top: 0px;\n    height: 3em;\n    width: 100%;\n}\n.spcontrolupload .buttonPane {\n    left: 0px;\n    width: 10%;\n    overflow: hidden;\n    cursor: pointer;\n}\n.spcontrolupload .buttonPane .upload_button {\n    font-weight: bold;\n    font-size: 1.1em;\n    text-align: center;\n    margin-top: .8em;\n}\n\n.spcontrolupload .iFrameWindow {\n    width: 90%;\n    left: 10%;\n    overflow: hidden;\n}\n.spcontrolupload .iFrameWindow iframe {\n\toverflow: auto;\n\twidth: 100%;\n\theight: 99%;\n}\n\n.spcontrolupload .spwidget-show-full-form .iFrameWindow {\n    overflow: auto;\n    width: 100%;\n    margin: 0em;\n    left: 0px;\n    right: auto;\n    z-index: 5;\n}\n\n.spcontrolupload .loadingOverlayMsg {\n\tfont-size: 1em;\n\tbackground-position: left top;\n    background-repeat: no-repeat;\n    background-image: url('/_layouts/images/loadingcirclests16.gif');\n    margin: 0.5em;\n    padding-left: 25px;\n}\n\n.spcontrolupload .spwidget-success-cntr,\n.spcontrolupload .spwidget-error-cntr {\n    display: none;\n}\n.spcontrolupload div.spwidget-msg-cntr {\n    margin: 0.5em .5em .5em 3em;\n\tfont-size: 1em;\n\tbackground-position: left top;\n    background-repeat: no-repeat;    \n}\n.spcontrolupload .spwidget-close {\n    color: red;\n    font-size: xx-small;\n    font-weight: bold;\n    vertical-align: super;\n    cursor: pointer;\n}\n\n.spcontrolupload .spwidget-success-cntr div.spwidget-msg-cntr {\n    background-image: url('/_layouts/images/STS_ListItem_43216.gif');\n    padding-left: 30px;\n}\n\n.spcontrolupload .spwidget-error-cntr {\n    bottom: -1.5em;\n    left: 0px;\n    width: 100%;\n    position: absolute;\n}\n\n/* For debug/dev purpose. Add it to .spcontrolupload container */\n.spcontrolupload-dev-mode .iFrameWindow {\n    overflow: auto !important;\n    height: auto !important;\n    z-index: 5 !important;\n}\n.spcontrolupload-dev-mode .iFrameWindow iframe {\n    overflow: scroll !important;\n}\n\n";
k.HtmlUI='<div class="SPControlUploadUI spcontrolupload">\n    <div class="mainContainer">\n        <div class="buttonPane ui-state-default">\n            <div class="upload_button">\n                Upload\n            </div>\n        </div>\n        <div class="iFrameWindow ui-state-default">\n            <iframe name="SPControlUploadUI" frameborder="0" scrollbars="yes" scrolling="yes"></iframe>\n        </div>\n        <div class="loadingOverlay ui-widget-content">\n            <div class="loadingOverlayMsg"></div>\n        </div>\n        <div class="spwidget-success-cntr ui-widget-content">\n            <div class="spwidget-msg-cntr">\n                <span class="spwidget-msg">Upload Successful!</span> \n                <span class="spwidget-close">x</span> \n            </div>\n        </div>\n        <div class="spwidget-error-cntr ui-state-error">\n            <div class="spwidget-msg-cntr">\n                <span class="spwidget-msg">Error</span> \n                <span class="spwidget-close">x</span> \n            </div>\n        </div>\n    </div>\n</div>\n\n<div id="SPControlUploadModUI" \n    style="\n        position:   absolute;\n        width:      99.9%;\n        height:     99.9%;\n        left:       0px;\n        top:        0px;\n        padding-left:       .5em;\n        background-color:   white;">\n    <div class="SPControlUploadModUIFileSelected"\n        style="\n        background-position: left center;\n        background-repeat: no-repeat;\n        background-image: url(\'/_layouts/images/urn-content-classes-smartfolder16.gif\');\n        padding: 0.5em 2em;">Select...</div>\n</div>\n'})(s);
(function(c){var k={isInitDone:!1,evNamespace:".spwidgets.spdatefield"};c.SPWidgets.defaults.date={allowMultiples:!1,delimeter:";",remainOpen:!0,datepicker:{dateFormat:"mm/dd/yy",buttonImage:"/_layouts/images/CALENDAR.GIF",showOn:"both",buttonImageOnly:!0},dateTemplate:'{{date}} <span class="spwidgets-item-remove">[x]</span>',showTimepicker:!1,timeFormat:" {{hour}}:{{minutes}} {{ampm}}",timeUTC:!0,labelHour:"Hour",labelMinutes:"Minutes",labelAMPM:"AM|PM",labelTime:"Time",labelSet:"Set",onSelect:null};
c.fn.SPDateField=function(e){var b=arguments,d=this;k.isInitDone||(k.isInitDone=!0,""!==k.styleSheet&&c('<style type="text/css">\n\n'+k.styleSheet+"\n\n</style>").prependTo("head"),c("body").on("click"+k.evNamespace,k.onPageClick));return"string"===typeof e?function(){var a=String(b[0]).toLowerCase(),g=d;c(d).each(function(f,e){if(c(d).hasClass("hasSPDateField")){var k=c(e),h=k.data("SPDateFieldInstance");if(h&&0<k.length)switch(a){case "getdate":g=h.getDate();break;case "setdate":b[1]&&h.setDate({date:b[1],
format:b[2]||h.opt.datepicker.dateFormat});break;case "removedate":b[1]&&h.removeDate({date:b[1],format:b[2]||h.opt.datepicker.dateFormat});break;case "reset":h.reset();break;case "destroy":h.destroy()}}});return g}():this.each(function(){var a={$ele:c(this).addClass("hasSPDateField"),isInline:!1,inlineCntr:null};if(!a.$ele.is("input[type='text']")){if(a.$ele.is(":input"))return;a.isInline=!0;a.inlineCntr=c(this);a.$ele=c('<input name="spdatefieldinline" value="" type="text" style="display:none" />')}a.opt=
c.extend(!0,{},c.SPWidgets.defaults.date,e);a.$ui=c(k.htmlTemplate).filter("div.spwidget-date-cntr").clone();a.isInline?(a.$ui.appendTo(a.inlineCntr).addClass("spwidget-inline").css("display","none"),a.$ele.appendTo(a.$ui)):a.$ui.insertAfter(a.$ele).css("display","none");a.eleOrigVal=a.$ele.val();a.$ele.val("");a.$input=a.$ui.find("input[name='SPDateFieldInput']").val(a.$ele.val());a.$inputCntr=a.$input.closest(".spwidget-date-input-cntr");a.$dtCntr=a.$ui.find("div.spwidget-date-selected-cntr");a.getDate=
function(){var b={input:a.$ele.val(),dates:[]};b.input&&(a.opt.allowMultiples?b.dates=b.input.split(a.opt.delimeter):b.dates.push(b.input));return b};a.reset=function(){a.$input.val("").datepicker("hide");a.$ele.val("").change();a.$dtCntr.empty();return a};a.setDate=function(b){var d=c.extend({},{date:"",time:"",format:a.opt.datepicker.dateFormat,setDatepicker:!0,triggerEvent:!0},b),e=a.$ele.val(),k="",h;if(!d.date)return a;c.isArray(d.date)||(d.date=[d.date]);c.each(d.date,function(b,g){var r=g,
u="",v="";if(!(r instanceof Date))if(r=String(r),-1<r.indexOf("T"))r=c.SPWidgets.parseDateString(r);else try{r=c.datepicker.parseDate(d.format,g)}catch(w){return a}h=r;u=c.datepicker.formatDate("yy-mm-dd",r);v=c.datepicker.formatDate(a.opt.datepicker.dateFormat,r);a.opt.showTimepicker&&(u=c.SPWidgets.SPGetDateString(r,a.opt._timeFmt),v+=a.$timepicker.formatTime(r));a.opt.allowMultiples?0>e.indexOf(u)&&(e&&(e+=a.opt.delimeter),e+=u,k+='<span class="spwidgets-item" data-spwidget_dt1="'+u+'" data-spwidget_dt2="'+
v+'">'+c.SPWidgets.fillTemplate({tmplt:a.opt.dateTemplate,data:{date:v}})+" </span>"):(e=u,k=v)});a.opt.allowMultiples?a.$dtCntr.append(k):d.setDatepicker&&(a.$input.val(k),a.isInline&&!a.opt.showTimepicker?a.$inputCntr.datepicker("setDate",h):a.isInline&&a.$timepicker.updateDateTimeWidgets(h));a.$ele.val(e);d.triggerEvent&&(a.isInline||a.$ele.change(),c.isFunction(a.opt.onSelect)&&a.opt.onSelect.call(a.isInline?a.inlineCntr:a.$ele));return a};a.removeDate=function(b){var d=c.extend({},{date:"",format:a.opt.datepicker.dateFormat},
b),e=a.getDate();if(!d.date)return a;c.isArray(d.date)||(d.date=[d.date]);c.each(d.date,function(b,g){var k=g,h="",r="";if(!(k instanceof Date))try{k=c.datepicker.parseDate(d.format,g)}catch(u){return a}h=a.opt.showTimepicker?c.SPWidgets.SPGetDateString(k,a.opt._timeFmt):c.datepicker.formatDate("yy-mm-dd",k);r=RegExp("("+a.opt.delimeter+")?"+h,"g");e.input=e.input.replace(r,"");a.opt.allowMultiples&&a.$dtCntr.find("span[data-spwidget_dt1='"+h+"']").remove()});e.input=e.input.replace(RegExp("^"+a.opt.delimeter),
"").replace(RegExp(a.opt.delimeter+"$"),"");a.$ele.val(e.input).change();return a};a.destroy=function(){a.$ele.removeData("SPDateFieldInstance");a.$ele.removeClass("hasSPDateField").css("display","");a.$ui.css("display","none");a.$input.datepicker("hide");a.$input.datepicker("destroy");a.$timepicker&&(a.$timepicker.$timePicker.off(".spdatefield"),a.$input.off(".spdatefield"));a.isInline&&a.inlineCntr.removeClass("hasSPDateField").removeData("SPDateFieldInstance");a.$ui.remove()};a.createDatePicker=
function(){var b={};if(a.opt.showTimepicker){b.$selectorCntr=c(k.htmlTemplate).filter("div.spwidget-datetime-selector").clone().appendTo(a.$inputCntr).css("display","none");b.$datePicker=b.$selectorCntr.find("div.spwidget-date-selector");b.$timePicker=b.$selectorCntr.find("div.spwidget-time-selector");b.$setButton=b.$selectorCntr.find("div.spwidget-btn-set");b.$hourSelect=b.$timePicker.find("select.spwidget-hour");b.$minSelect=b.$timePicker.find("select.spwidget-min");b.$ampmSelect=b.$timePicker.find("select.spwidget-ampm");
b.heightDone=!1;b.firstShowDone=!1;b.getTime=function(){var a={hour:b.$hourSelect.val(),minutes:b.$minSelect.val(),ampm:b.$ampmSelect.val()};a.hour24=a.hour;"PM"===a.ampm&&"12"!==a.hour?a.hour24=String(parseInt(a.hour)+12):"AM"===a.ampm&&"12"===a.hour&&(a.hour24="0");return a};b.formatTime=function(d){var e=d,k="";d instanceof Date?(e={hour:d.getHours(),hour24:String(d.getHours()),minutes:String(d.getMinutes()),ampm:"AM"},12<e.hour?(e.hour=String(e.hour-12),e.ampm="PM"):12===e.hour&&(e.ampm="PM"),
e.hour=String(e.hour),"0"===e.hour&&(e.hour="12"),2>String(e.minutes).length&&(e.minutes="0"+e.minutes)):d||(e=b.getTime());return k=c.SPWidgets.fillTemplate(a.opt.timeFormat,e)};b.setDateTime=function(c){var d=b.getTime();c instanceof Date||(c=b.$datePicker.datepicker("getDate"),null===c&&(c=new Date));c.setHours(d.hour24);c.setMinutes(d.minutes);a.setDate({date:c,format:a.opt.datepicker.dateFormat,setDatepicker:!0});b.execUsersCallback(a.$input.val())};b.updateDateTimeWidgets=function(a){var c;
a instanceof Date||(a=new Date);c=a.getHours();0===c?c="12":12<c&&(c-=12);b.$hourSelect.val(c);for(c=a.getMinutes();c%5;)--c;10>c&&(c="0"+c);b.$minSelect.val(c);11<a.getHours()?b.$ampmSelect.val("PM"):b.$ampmSelect.val("AM");b.$datePicker.datepicker("setDate",a)};b.showPicker=function(){b.$selectorCntr.show(function(){var d;b.heightDone||(b.heightDone=!0,c.SPWidgets.makeSameHeight(b.$datePicker.find("div.ui-datepicker-inline").add(b.$timePicker)));b.firstShowDone||(b.firstShowDone=!0,d=a.getDate(),
d=d.dates.length?c.SPWidgets.parseDateString(d.dates[d.dates.length-1]):new Date,b.updateDateTimeWidgets(d))}).position({my:"left top",at:"left bottom",of:a.$input})};b.execUsersCallback=function(d,e){c.isFunction(a.opt.datepicker._onSelect)&&a.opt.datepicker._onSelect.call(b.$datePicker,d,e)};a.opt.datepicker.altFormat="";a.opt.datepicker.altField="";if(a.opt.datepicker.buttonImage&&!a.isInline)c('<img class="ui-datepicker-trigger" src="'+a.opt.datepicker.buttonImage+'" alt="..." title="...">').appendTo(a.$inputCntr).on("click"+
k.evNamespace,function(){b.showPicker()});if(a.opt.allowMultiples||a.isInline)b.$selectorCntr.addClass("spwidget-date-multiples-cntr"),b.$setButton.find("div.spwidget-btn").button({label:a.opt.labelSet}).on("click"+k.evNamespace,function(a){b.setDateTime();return this});b.$timePicker.find("div.ui-widget-header").html(a.opt.labelTime).end().find("div.spwidget-time-hour > label").html(a.opt.labelHour).end().find("div.spwidget-time-min > label").html(a.opt.labelMinutes).end().find("div.spwidget-time-ampm > label").html(a.opt.labelAMPM).end();
c.isFunction(a.opt.datepicker.onSelect)&&(a.opt.datepicker._onSelect=a.opt.datepicker.onSelect);a.opt.datepicker.numberOfMonths=1;a.opt.datepicker.onSelect=function(c,d){if(a.opt.allowMultiples||a.isInline)return this;b.setDateTime(new Date(d.currentYear,d.currentMonth,d.currentDay))};b.$datePicker.datepicker(a.opt.datepicker);b.$timePicker.on("change"+k.evNamespace+" keyup"+k.evNamespace,"select",function(c){c.stopPropagation();c.preventDefault();if(a.opt.allowMultiples||a.isInline)return this;b.setDateTime();
return this});a.isInline&&(a.$input.css("display","none"),b.$selectorCntr.addClass("spwidget-inline").css("display",""));if(!a.isInline)a.$input.on("focus"+k.evNamespace,function(){b.showPicker()})}else a.opt.allowMultiples&&a.opt.remainOpen&&(a.opt.datepicker.showAnim=""),c.isFunction(a.opt.datepicker.onSelect)&&(a.opt.datepicker._onSelect=a.opt.datepicker.onSelect),a.opt.datepicker.onSelect=function(b,d){a.setDate({date:b,format:d.settings.dateFormat,setDatepicker:!1});c.isFunction(a.opt.datepicker._onSelect)&&
a.opt.datepicker._onSelect.call(this,b,d);a.opt.allowMultiples&&a.$input.val("");a.opt.allowMultiples&&(a.opt.remainOpen&&!a.isInline)&&setTimeout(function(){a.$input.datepicker("show")},5)},a.isInline?(a.$inputCntr.datepicker(a.opt.datepicker),a.$input.css("display","none")):a.$input.datepicker(a.opt.datepicker);return b};a.opt._timeFmt=a.opt.timeUTC?"utc":"local";a.opt.datepicker.altFormat="yy-mm-dd";a.opt.datepicker.altField=a.$ele;a.opt.allowMultiples&&(a.opt.datepicker.altFormat="",a.opt.datepicker.altField=
"",a.$dtCntr.css("display","").on("click",".spwidgets-item-remove",function(b){b=c(b.target).closest(".spwidgets-item").data("spwidget_dt1");a.opt.allowMultiples&&(b=c.SPWidgets.parseDateString(b));a.removeDate({date:b,format:"yy-mm-dd"})}));a.$ele.css("display","none").data("SPDateFieldInstance",a);a.isInline&&a.inlineCntr.data("SPDateFieldInstance",a);a.$timepicker=a.createDatePicker();a.eleOrigVal&&a.setDate({date:a.eleOrigVal.split(a.opt.delimeter),format:"yy-mm-dd",triggerEvent:!1});a.$input.on("change",
function(b){b.stopPropagation();a.$ele.change()});a.$ui.css("display","")})};k.onPageClick=function(e){e=c(e.target);var b=c("div.spwidget-datetime-selector:visible:not('.spwidget-inline')"),d=null;if(!c.contains(document.documentElement,e[0]))return this;b.length&&(d=e.closest("div.spwidget-datetime-selector"),!d.length&&e.is("input.spwidget-date-datepicker,.ui-datepicker-trigger")&&(d=e.parent().find("div.spwidget-datetime-selector")),b.not(d).hide());return this};k.styleSheet='.spwidget-date-cntr {\n    display: inline-block;   \n    position: relative;\n}\n.spwidget-date-cntr div.spwidget-date-input-cntr {\n    position: relative;\n}\n.spwidget-date-cntr input {\n    width: 99%;\n}\n.spwidget-date-cntr img.ui-datepicker-trigger {\n    display: block;\n    position: absolute;\n    right: 2%;\n    top: .3em;\n}\n\n.spwidget-date-cntr .spwidgets-item-remove {\n    color: red;\n    font-size: xx-small;\n    vertical-align: super;\n    cursor: pointer;\n}\n/** --------------------------- Date and Time picker -- */\n.spwidget-date-cntr div.spwidget-datetime-selector {\n    padding: .5em;\n    position: absolute;\n    width: 28em;\n    z-index: 1;\n}\n.spwidget-date-cntr div.spwidget-datetime-selector div.ui-datepicker-inline {\n    width: 14em;\n}\n\n.spwidget-date-cntr div.spwidget-datetime-selector div.spwidget-date-selector,\n.spwidget-date-cntr div.spwidget-datetime-selector div.spwidget-time-selector {\n    float: left;\n}\n.spwidget-date-cntr div.spwidget-selectors:before,\n.spwidget-date-cntr div.spwidget-selectors:after {\n    content: "";\n    display: table;\n    line-height: 0;\n}\n.spwidget-date-cntr div.spwidget-selectors:after {\n    clear: both;    \n}\n.spwidget-date-cntr div.spwidget-datetime-selector select.spwidget-hour,\n.spwidget-date-cntr div.spwidget-datetime-selector select.spwidget-min,\n.spwidget-date-cntr div.spwidget-datetime-selector select.spwidget-ampm {\n    font-size: 1.2em;\n}\n/* Time selector */\n.spwidget-date-cntr div.spwidget-time-selector {\n    margin-left: .2em;\n    width: 11em;\n}\n.spwidget-date-cntr div.spwidget-time-selector-cntr {\n    padding: .2em;\n}\n.spwidget-date-cntr div.spwidget-time-selector div.ui-widget-header {\n    text-align: center;\n    line-height: 2em;\n    margin-bottom: .5em;\n}\n.spwidget-date-cntr .spwidget-time-hour,\n.spwidget-date-cntr .spwidget-time-min,\n.spwidget-date-cntr .spwidget-time-ampm {\n    margin-top: .2em;\n    padding: .2em;\n}\n.spwidget-date-cntr .spwidget-time-selector-cntr select,\n.spwidget-date-cntr .spwidget-time-selector-cntr label {\n    overflow: hidden;\n    display: inline-block;\n    font-weight: bold;\n}\n.spwidget-date-cntr .spwidget-time-selector-cntr select {\n    width: 4em;\n}\n.spwidget-date-cntr .spwidget-time-selector-cntr label {\n    width: 5em;\n    font-size: .9em;\n}\n\n/* inline mode */\n.spwidget-date-cntr .spwidget-inline div.spwidget-datetime-selector {\n    position: relative;\n    width: 26em;\n}\n\n.spwidget-btn-set {\n    display: none;\n    position: absolute;\n    right: .2em;\n    bottom: .2em;\n}\n.spwidget-date-multiples-cntr .spwidget-btn-set {\n    display: block;\n}\n';
k.htmlTemplate='<div class="spwidget-date-cntr">\n    <div class="spwidget-date-selected-cntr" style="display:none;"></div>\n    <div class="spwidget-date-input-cntr">\n        <input class="spwidget-date-datepicker" name="SPDateFieldInput" value="" />\n    </div>\n</div>\n<div class="spwidget-datetime-selector ui-widget-content ui-corner-all">\n    <div class="spwidget-selectors">\n        <div class="spwidget-date-selector"></div>\n        <div class="spwidget-time-selector ui-widget-content ui-corner-all">\n            <div class="spwidget-time-selector-cntr">\n                <div class="ui-widget-header ui-helper-clearfix ui-corner-all">\n                    Time\n                </div>\n                <div class="spwidget-time-hour">\n                    <label>Hour</label>\n                    <select name="spwidget_hour" class="spwidget-hour">\n                        <option value="1"> 1</option>\n                        <option value="2"> 2</option>\n                        <option value="3"> 3</option>\n                        <option value="4"> 4</option>\n                        <option value="5"> 5</option>\n                        <option value="6"> 6</option>\n                        <option value="7"> 7</option>\n                        <option value="8"> 8</option>\n                        <option value="9"> 9</option>\n                        <option value="10">10</option>\n                        <option value="11">11</option>\n                        <option value="12">12</option>\n                    </select>\n                </div>\n                <div class="spwidget-time-min">   \n                    <label>Minutes</label>\n                    <select name="spwidget_min" class="spwidget-min">\n                        <option value="00">00</option>\n                        <option value="05">05</option>\n                        <option value="10">10</option>\n                        <option value="15">15</option>\n                        <option value="20">20</option>\n                        <option value="25">25</option>\n                        <option value="30">30</option>\n                        <option value="35">35</option>\n                        <option value="40">40</option>\n                        <option value="45">45</option>\n                        <option value="50">50</option>\n                        <option value="55">55</option>\n                    </select>\n                </div>\n                <div class="spwidget-time-ampm">\n                    <label>AM|PM</label>\n                    <select name="spwidget_ampm" class="spwidget-ampm">\n                        <option value="AM">AM</option>\n                        <option value="PM">PM</option>\n                    </select>\n                </div>\n            </div>\n        </div>\n    </div>\n    <div class="spwidget-btn-set">\n        <div class="spwidget-btn">\n            Set\n        </div>\n    </div>\n</div>\n'})(s);
(function(c){var k={isInitDone:!1,templates:null};c.SPWidgets.defaults.filter={list:"",webURL:c().SPServices.SPGetCurrentSite(),columns:["Title"],textFieldTooltip:"Use a semicolon to delimiter multiple keywords.",definedClass:"spwidget-column-dirty",showFilterButton:!0,showFilterButtonTop:!0,filterButtonLabel:"Filter",onFilterClick:null,onReady:null,onReset:null,ignoreKeywords:/^(of|and|a|an|to|by|the|or|from)$/i,delimeter:";"};c.fn.SPFilterPanel=function(e){var b=arguments;k.isInitDone||(k.isInitDone=
!0,""!==k.styleSheet&&c('<style type="text/css">\n\n'+k.styleSheet+"\n\n</style>").prependTo("head"),k.templates=c(k.htmlTemplate));return"string"===typeof e?this.eq(0).hasClass("hasSPFilterPanel")?function(c){c=c.eq(0).find("div.spwidget-filter").data("SPFilterPanelInst");var a=e.toLowerCase(),g=c.$ele;switch(a){case "getfilter":g=k.getFilterValues(c);break;case "setfilter":k.setFilterValues(c,b[1]);break;case "reset":k.doResetFilter(c);break;case "destroy":c.$ele.removeClass("hasSPFilterPanel").empty()}return g}(this):
void 0:this.each(function(){var b=c.extend({},c.SPWidgets.defaults.filter,e),a={$ele:c(this),$ui:null,opt:b,getListDefinition:function(){return c.Deferred(function(a){c().SPServices({operation:"GetList",listName:b.list,cacheXML:!0,async:!0,webURL:b.webURL,completefunc:function(b,d){var e=c(b.responseXML);"error"===d?a.rejectWith(e,[b,d]):e.SPMsgHasError()?a.rejectWith(e,[b,d]):a.resolveWith(e,[b,d])}})}).promise()},buildWidget:function(){return c.Deferred(function(b){a.getListDefinition().then(function(d,
h){var n=this,q="",l=k.templates.filter("#filter_column").html();a.$ui=c(k.templates.filter("#filter_main_ui").html()).appendTo(a.$ele.empty().addClass("hasSPFilterPanel"));a.$list=n;c.each(a.opt.columns,function(b,d){var e=n.find("Field[DisplayName='"+d+"']"),f=l,g="",h=null;e.length||(e=n.find("Field[Name='"+d+"']"));if(e.length){h={type:null,otherFilterTypes:"",sp_type:e.attr("Type"),sp_format:e.attr("Format")};h.Name=e.attr("Name");switch(e.attr("Type")){case "Choice":case "MultiChoice":e.find("CHOICES CHOICE").each(function(a,
b){g+=c.SPWidgets.fillTemplate(k.templates.filter("#filter_choice_field").html(),{DisplayName:e.attr("DisplayName"),Name:e.attr("Name"),value:c(b).text()})});f=f.replace(/__COLUMN__UI__/,g);f=c.SPWidgets.fillTemplate(f,{DisplayName:e.attr("DisplayName"),type:"choice",Name:e.attr("Name")});break;case "Lookup":case "LookupMulti":null===h.type&&(h.type="lookup",h.list=e.attr("List"),"Self"===h.list&&(h.list=n.find("List").attr("Title")));case "User":case "UserMulti":null===h.type&&(h.type="people");
case "Counter":null===h.type&&(h.type="text",h.otherFilterTypes='<option value="Gt">Greater Than</option><option value="Lt">Less Than</option>');case "DateTime":null===h.type&&(h.type="date",h.otherFilterTypes='<option value="Gt">After</option><option value="Lt">Before</option>',h.sp_format="DateOnly"!==e.attr("Format")?"DateTime":"DateOnly");default:null===h.type&&(h.type="text"),g=k.templates.filter("#filter_text_field").html(),f=f.replace(/__COLUMN__UI__/,g).replace(/__OTHER_FILTER_TYPES__/,h.otherFilterTypes),
f=c.SPWidgets.fillTemplate(f,c.extend(h,{DisplayName:e.attr("DisplayName"),Name:e.attr("Name"),tooltip:a.opt.textFieldTooltip}))}q+=f}});a.$ele.find("div.spwidget-filter-column-cntr").html(q);a.$ele.find("div.spwidget-type-lookup input").each(function(){var a=c(this);a.SPLookupField({list:a.closest("div.spwidget-column").data("spwidget_list"),template:'<div>{{Title}} <span class="spwidgets-item-remove">[x]</span></div>',listTemplate:"{{Title}}",allowMultiples:!0,readOnly:!1,filter:"",showSelector:!0});
a.parent().find(".spwidget-tooltip").remove()});a.$ele.find("div.spwidget-type-people input").each(function(){var a=c(this),b="User";"PeopleOnly"!==n.find("Field[Name='"+a.attr("name")+"']").attr("UserSelectionMode")&&(b="All");a.pickSPUser({allowMultiple:!0,type:b});a.parent().find(".spwidget-tooltip").remove()});a.$ele.find("div.spwidget-type-date").each(function(){var a=c(this);a.find("input").SPDateField({allowMultiples:!0,showTimepicker:"DateTime"===a.data("spwidget_sp_format")?!0:!1});a.find(".spwidget-tooltip").remove();
a.find("select.spwidget-filter-type").val("Eq").find("option[value='Contains']").remove();return this});a.opt.showFilterButton||a.opt.showFilterButtonTop?a.$ui.find("div.spwidget-filter-button-cntr").each(function(){var b=c(this),d=c();a.opt.showFilterButtonTop&&(d=d.add(b.clone(!0)).prependTo(a.$ui));a.opt.showFilterButton?d=d.add(b):b.remove();d.find("button[name='filter']").button({icons:{primary:"ui-icon-search"},label:a.opt.filterButtonLabel}).on("click",k.onFilterButtonClick);d.find("button[name='reset']").button({icons:{primary:"ui-icon-arrowreturnthick-1-n"},
text:!1}).on("click",function(b){k.doResetFilter(a);return this})}):a.$ui.find("div.spwidget-filter-button-cntr").remove();a.$ui.on("change.SPWigets.SPFilterPanel","select.spwidget-filter-type",k.onFilterTypeChange);if(""!==a.opt.definedClass)a.$ui.on("change.SPWidgets.SPFilterPanel",".spwidget-filter-input",k.onFilterInputChange);a.$ui.data("SPFilterPanelInst",a);c.isFunction(a.opt.onReady)&&a.opt.onReady.call(a.$ele,e);a.$ui.fadeIn().promise().then(function(){c(this).css("display","");b.resolve()})}).fail(function(c,
d){a.$ele.html('<div class="ui-state-error">Unable to retrieve list information. '+this.SPGetMsgError()+"</div>");b.reject()})}).promise()}};a.opt.ignoreKeywords&&!a.opt.ignoreKeywords instanceof RegExp&&(a.opt.ignoreKeywords=/Inst.opt.ignoreKeywords/i);a.buildWidget();return this})};k.onFilterInputChange=function(e){var b=c(this);e=b.closest("div.spwidget-filter-value-input");var d=e.closest("div.spwidget-column"),a=d.find("div.spwidget-filter-type-cntr select.spwidget-filter-type").val(),b=b.val(),
g=e.closest("div.spwidget-filter").data("SPFilterPanelInst");d.is(".spwidget-type-choice")&&(e.find(".spwidget-filter-input:checked").length||(b=""));""!==b?d.addClass(g.opt.definedClass):"IsNull"!==a&&"IsNotNull"!==a&&d.removeClass(g.opt.definedClass);return this};k.onFilterTypeChange=function(e){var b=c(this);e=b.closest("div.spwidget-column");var d=e.find("div.spwidget-filter-type-cntr select.spwidget-match-type"),a=e.find("div.spwidget-filter-value-cntr"),g=a.find(".spwidget-input"),f="",h=e.data("spwidget_column_type"),
k=b.val(),b=b.closest("div.spwidget-filter").data("SPFilterPanelInst");"IsNull"===k||"IsNotNull"===k?(a.addClass("spwidget-disabled"),g.attr("disabled","disabled"),d.attr("disabled","disabled"),e.addClass(b.opt.definedClass)):(a.removeClass("spwidget-disabled"),g.removeAttr("disabled","disabled"),d.removeAttr("disabled"),"choice"===h||"multichoice"===h?g.filter(":checkbox").each(function(){var a=c(this);if(a.is(":checked"))return f+=a.val(),!1}):f+=g.val(),f||e.removeClass(b.opt.definedClass));return this};
k.onFilterButtonClick=function(e){e=c(this).closest("div.spwidget-filter").data("SPFilterPanelInst");var b=null;c.isFunction(e.opt.onFilterClick)&&(b=k.getFilterValues(e),e.opt.onFilterClick.call(e.$ele,b));return this};k.doResetFilter=function(e){if(c.isFunction(e.onReset)&&!0===e.onReset.call(e.$ele,k.getFilterValues(e)))return e;e.$ui.find("div[data-spwidget_column_type='text'] input").val("").end().find("div[data-spwidget_column_type='choice'] input").prop("checked",!1).end().find(".hasPickSPUser").pickSPUser("method",
"clear").end().find(".hasSPDateField").SPDateField("reset").end().find(".hasLookupSPField").SPLookupField("method","clear");""!==e.opt.definedClass&&e.$ui.find("."+e.opt.definedClass).removeClass(e.opt.definedClass);e.$ui.find("select.spwidget-filter-type").each(function(){var b=c(this),d=b.val();if("IsNull"===d||"IsNotNull"===d)b.val("Eq"),b.change()});return e};k.getFilterValues=function(e){function b(a){return c.SPWidgets.getCamlLogical({type:a.logicalType,values:a.values,onEachValue:function(b){return"<"+
a.matchType+"><FieldRef Name='"+a.columnName+"' /><Value Type='Text'>"+c.SPWidgets.escapeXML(b)+"</Value></"+a.matchType+">"}})}var d={CAMLQuery:"",URLParams:"",filters:{},count:0},a=[];e.$ui.find("div.spwidget-column").each(function(g,f){var h=c(f),n=h.find(".spwidget-input"),q=n.attr("name"),l=new k.ColumnFilter({columnName:q,matchType:h.find("select.spwidget-filter-type").val(),logicalType:h.find("select.spwidget-match-type").val()}),h=h.data("spwidget_column_type"),s={};if("IsNull"===l.matchType||
"IsNotNull"===l.matchType)l.CAMLQuery="<"+l.matchType+"><FieldRef Name='"+q+"' /></"+l.matchType+">",l.count+=1;else switch(h){case "choice":case "multichoice":n.each(function(){var a=c(this),b=a.val();a.is(":checked")&&l.values.push(b)});l.values.length&&(l.count=l.values.length,l.CAMLQuery=b(l));break;case "lookup":case "people":(function(){var a=[];n.each(function(){var b=c(this),b=c.SPWidgets.parseLookupFieldValue(b.val()),d,e;d=0;for(e=b.length;d<e;d++)b[d].id&&(l.values.push(b[d].id+";#"+b[d].title),
a.push(b[d].id))});l.values.length&&(l.count=l.values.length,l.CAMLQuery=c.SPWidgets.getCamlLogical({type:l.logicalType,values:a,onEachValue:function(a){return"<"+l.matchType+"><FieldRef Name='"+l.columnName+"' LookupId='True'/><Value Type='Lookup'>"+a+"</Value></"+l.matchType+">"}}))})();break;case "date":n.each(function(){var a=n.SPDateField("getDate");a.dates.length&&(l.values=a.dates,l.count=l.values.length,l.CAMLQuery=c.SPWidgets.getCamlLogical({type:l.logicalType,values:l.values,onEachValue:function(a){return"<"+
l.matchType+"><FieldRef Name='"+l.columnName+"'/><Value Type='DateTime'>"+a+"</Value></"+l.matchType+">"}}));return!1});break;case "text":String(c.trim(n.val())).length&&function(){var a=n.val().split(e.opt.delimeter),d,f,g;d=0;for(f=a.length;d<f;d++)g=c.trim(a[d]),!e.opt.ignoreKeywords.test(g)&&g&&l.values.push(g);l.CAMLQuery=b(l);l.count=l.values.length}()}0<l.count&&(a.push(l.CAMLQuery),d.count+=l.count,d.filters[q]=l,s[q]={matchType:l.matchType,logicalType:l.logicalType,values:l.values},l.URLParams=
c.param(s,!1),""!==d.URLParams&&(d.URLParams+="&"),d.URLParams+=l.URLParams)});1<d.count?d.CAMLQuery=c.SPWidgets.getCamlLogical({type:"AND",values:a}):1===d.count&&(d.CAMLQuery=a[0]);return d};k.setFilterValues=function(e,b){if("object"!==typeof b||c.isEmptyObject(b))return e;k.doResetFilter(e);c.each(b,function(b,a){var g=e.$ui.find(".spwidget-filter-input[name='"+b+"']"),f=g.closest("div.spwidget-column"),h=f.data("spwidget_column_type"),n=f.find("select[name='"+b+"_type']"),q=f.find("div.spwidget-filter-type-cntr select.spwidget-match-type"),
l=new k.ColumnFilter;c.extend(l,a);l.matchType&&n.val(l.matchType);l.logicalType&&q.val(l.logicalType);if("IsNull"!==a.matchType&&"IsNotNull"!==a.matchType)switch(h){case "text":l.values instanceof Array?g.val(l.values.join(e.opt.delimeter)):g.val(l.values);break;case "choice":case "multichoice":c.each(l.values,function(a,b){g.filter("[value='"+b+"']").prop("checked",!0)});break;case "lookup":g.SPLookupField("method","add",l.values.join(";#"));break;case "people":g.pickSPUser("method","add",l.values.join(";#"));
break;case "date":"DateTime"===f.data("spwidget_sp_format")?g.SPDateField("setDate",l.values):g.SPDateField("setDate",l.values,"yy-mm-dd")}else n.change();g.change()});return e};k.ColumnFilter=function(c){var b=new function(){};"object"!==typeof c&&(c={});b.columnName=c.columnName||"";b.matchType=c.matchType||"";b.logicalType=c.logicalType||"";b.values=c.values||[];b.CAMLQuery=c.CAMLQuery||"";b.URLParams=c.URLParams||"";b.count=c.count||0;return b};k.styleSheet='/** \n * Stylesheet for the Board widget\n * \n * BUILD: September 07, 2013 - 03:52 PM\n */\ndiv.spwidget-filter {\n    width: 100%;\n    position: relative;\n}\ndiv.spwidget-filter .spwidget-date-cntr,\ndiv.spwidget-filter .spwidgets-lookup-cntr {\n    display: block;\n}\n/* Adjust the width of the widget inputs inside the filter panel */\ndiv.spwidget-filter .spwidget-type-text input.spwidget-filter-input,\ndiv.spwidget-filter .spwidget-type-people input.ui-autocomplete-input,\ndiv.spwidget-filter div.spwidget-type-choice div.spwidget-filter-value-input {\n    width: 95%;\n}\n\ndiv.spwidget-filter .spwidgets-lookup-cntr {\n    width: 96%;\n}\ndiv.spwidget-filter .spwidget-date-cntr div.spwidget-date-input-cntr {\n    width: 97%\n}\n\ndiv.spwidget-filter div.spwidget-column {\n    padding: .5em;\n    margin: .5em;\n    position: relative;\n    border-bottom: 1px solid  darkgray;\n    box-shadow: 1px 1px 1px 0 lightgray inset;\n}\ndiv.spwidget-filter div.spwidget-filter-type-cntr {\n    right: 4%;\n    position: absolute;\n    font-size: .8em;\n    top: .6em;\n    opacity: .6;\n    filter: Alpha(opacity=60);\n}\ndiv.spwidget-filter div.spwidget-filter-type-cntr:hover {\n    opacity: 1;\n}\ndiv.spwidget-filter div.spwidget-filter-value-cntr {\n    width: 100%;\n}\n\ndiv.spwidget-filter div.spwidget-filter-value-cntr > label {\n    display: block;\n    padding: .2em;\n    font-weight: bold;\n}\ndiv.spwidget-filter div.spwidget-column-dirty div.spwidget-filter-value-cntr > label {\n    color: #FF0000;\n}\ndiv.spwidget-filter .spwidget-tooltip {\n    display: block;\n    font-size: .8em;\n    font-style: italic;\n}\n\n/* LOOKUP FIELDS */\ndiv.spwidget-filter div.spwidgets-lookup-cntr div.spwidgets-lookup-selected > div.spwidgets-item {\n    display: block;\n    margin-left: 0px;\n}\n\n/* CHOICE FIELDS */\ndiv.spwidget-filter div.spwidget-type-choice div.spwidget-filter-value-input {\n    max-height: 6em;\n    overflow: auto;\n    -moz-appearance: textfield;\n    -webkit-appearance: textfield;\n    background-color: white;\n    background-color: -moz-field;\n    border: 1px solid  darkgray;\n    box-shadow: 1px 1px 1px 0 lightgray inset;\n    font: -moz-field;\n    font: -webkit-small-control;\n    padding: 2px 5px;\n}\ndiv.spwidget-filter div.spwidget-type-choice div.spwidget-filter-value-input label {\n    display: block;\n    padding: .2em;\n}\n\n/** DISABLED COLUMN VALUE CONTAINER */\ndiv.spwidget-filter .spwidget-disabled {\n    -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=50)";\n    filter: alpha(opacity=50);\n    opacity: 0.5;\n}\n\n/** Button container */\ndiv.spwidget-filter div.spwidget-filter-button-cntr {\n    padding: .5em 4%;\n    margin-top: .5em;\n    text-align: right;\n}\n\n';
k.htmlTemplate='<div id="filter_main_ui">\n    <div class="spwidget-filter" style="display: none;">\n        <div class="spwidget-filter-column-cntr"></div>\n        <div class="spwidget-filter-button-cntr">\n            <button type="button" class="spwidget-button" name=\'reset\'>Reset</button>\n            <button type="button" class="spwidget-button" name=\'filter\'>Filter</button>\n        </div>\n    </div>\n</div>\n<div id="filter_column">\n    <div class="spwidget-column spwidget-type-{{type}}" \n            data-spwidget_column_type="{{type}}" \n            data-spwidget_list="{{list}}" \n            data-spwidget_sp_type="{{sp_type}}" \n            data-spwidget_sp_format="{{sp_format}}" >\n        <div class="spwidget-filter-value-cntr">\n            <label>{{DisplayName}}</label>\n            <div class="spwidget-filter-value-input">\n                __COLUMN__UI__\n            </div>\n        </div>\n        <div class="spwidget-filter-type-cntr" title="Match Type">\n            <select name="{{Name}}_type" class="spwidget-filter-type" tabindex="-1">\n                <option value="Contains">Contains</option>\n                <option value="Eq" selected="selected">Equal</option>\n                <option value="Neq">Not Equal</option>\n                <option value="IsNull">Is Blank</option> \n                <option value="IsNotNull">Is Not Blank</option>\n                __OTHER_FILTER_TYPES__\n            </select>\n            <select name="{{Name}}_match" class="spwidget-match-type" tabindex="-1">\n                <option value="Or" selected="selected">Any</option>\n                <option value="And">All</option>\n            </select>\n        </div>\n    </div>\n</div>\n<div id="filter_text_field">\n    <input name="{{Name}}" title="{{DisplayName}}" type="text" value="" class="spwidget-input spwidget-filter-input" />\n    <span class="spwidget-tooltip">{{tooltip}}</span>\n</div>\n<div id="filter_choice_field">\n    <label>\n        <input name="{{Name}}" title="{{DisplayName}}" type="checkbox" value="{{value}}" class="spwidget-input spwidget-filter-input" />\n        {{value}}\n    </label>\n</div>\n'})(s)})(jQuery);


//-------- END of SPWidgets plugin: inserted by build script ----------------- 
            
            // Get private version of jQuery for use by this demo only!
            SPWIDGET_DEMO.JQUERY = jQuery.noConflict(true);
            
            return SPWIDGET_DEMO.JQUERY || jQuery;
            
        })()
    ); //end: initialize all code
    
}, 2000); //end: setTimeout
    
</script>

</asp:Content>

