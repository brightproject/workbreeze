
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en" 
>
<head>

    

    <title>vWorker.com - VB.NET TFTP Server to be added to existing VB Program</title>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    
        
      <meta HTTP-EQUIV="Content-Type" content="text/html; charset=iso-8859-1">
    <!-- CSS -->
    <link rel="stylesheet" type="text/css" media="print" 
        href="/RentACoder/DotNet/2010Redesign/stylesheets/print.css"/>
    <!--[if lte IE 7]><link rel="stylesheet" type="text/css" media="screen" href="/RentACoder/DotNet/2010Redesign/stylesheets/ie.css"/><![endif]-->

    <style type="text/css">
    </style>
    
    <LINK REL="shortcut icon" href="/images/IconExperience/ObjectsAndPeople/ico-files/user1_monitor.ico">
<meta name="description" content="I have a VB.Net program that loads a configuration to a Cisco router using an external TFTP server program. &#160;I would like the program to be able to load this without using a 3rd party TFTP application, so it creates one&#160;integrated&#160;program.<div><br /></div><div>Also the program sends the commands via a serial port, I would like it to send them via an IP telnet connection, so I do not need to use a Serial port.</div><div><br /></div><div>All the commands are the same, except a user and password are needed to connect on TelNet.</div><div><br /></div><div>The aim is to make this application&#160;completely&#160;stand alone without the need for any 3rd party software.</div><div><br /></div><div>Just to be clear the application needs to include TFTP Server and not client.</div>">
<meta name="keywords" content="web, development, software, networking, information systems, electronics, creative arts, writing, translations, design arts, multimedia, administrative support,business services, customer service, sales and marketing, advertising, legal, paralegal">
<meta name="title" content="vWorker.com - VB.NET TFTP Server to be added to existing VB Program">
<meta NAME="Copyright" CONTENT="Copyright 2001-2010, Exhedra Solutions, Inc.">
<meta NAME="Creator" CONTENT="Exhedra Solutions, Inc">
<meta NAME="Publisher" CONTENT="Exhedra Solutions, Inc.">
<meta NAME="Distribution" CONTENT="Global">
<meta NAME="Rating" CONTENT="General">
<meta NAME="Robots" CONTENT="All"><!--Frame Buster-->
		<script language="Javascript">
		    if (top.location != self.location) 
				{
		    	top.location = self.location.href
				}
		</script>
<link rel="stylesheet" type="text/css" media="screen"  href="/RentACoder/DotNet/2010Redesign/stylesheets/screen.css" />
<script type="text/javascript" src="/CrossWeb/Javascript/javascript.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
<!-- Javascript -->
<!--[if lte IE 6]><script src="/RentACoder/DotNet/2010Redesign/javascripts/DD_belatedPNG.js" type="text/javascript"></script><![endif]-->
<script src="/RentACoder/DotNet/2010Redesign/javascripts/jquery.marquee.js" type="text/javascript"></script>
<script type="text/javascript" src="/RentACoder/DotNet/2010Redesign/javascripts/jquery-qtip-1.0.0-rc3182052/jquery.qtip-1.0.0-rc3.min.js"></script><script src="/RentACoder/DotNet/2010Redesign/javascripts/application.js" type="text/javascript"></script>


</head>


<body  >

    <div class="background">
    
    
            <div class="PostHead">
                <A HREF="#mainContent" STYLE="position: absolute; left: -1000px;">Skip Navigation</A>

            </div>


            <div class="page">
              

                    <div class="header">
                        <div class="container"><div class="container-inner">

                            <div class="logo"><a href="/RentACoder/" title="vWorker - Homepage">
                                vWorker</a></div>
                            <p class="motto"><!strong>More <a href="/RentACoder/DotNet/misc/About/default.aspx#tagline_MoreCapable">capable</a>, <a href="/RentACoder/DotNet/misc/About/default.aspx#tagline_MoreAccountable">accountable</a> and <a href="/RentACoder/DotNet/misc/About/default.aspx#MoreAffordable">affordable</a>. <a href="/RentACoder/DotNet/misc/About/default.aspx#Guaranteed">Guaranteed</a>.<!/strong></p>

                            
 <div class="tools">
 
     
          <ul class="menu">
              <li class="first-child">
                <a href="/RentACoder/authentication/Login.asp?txtReturnURL=http%3A%2F%2Fwww%2Evworker%2Ecom%2FRentACoder%2Fmisc%2FBidRequests%2FShowBidRequest%2Easp%3FlngBidRequestId%3D1496880" style="text-decoration: underline"
                    >Sign In</a> | <a href="https://www.vWorker.com/Ads/authentication/GetUserId.asp?lngWId=1&txtReturnURL=http%3A%2F%2Fwww%2Evworker%2Ecom%2FRentACoder%2Fmisc%2FBidRequests%2FShowBidRequest%2Easp%3FlngBidRequestId%3D1496880" style="text-decoration: underline"
                    >Create account</a>
          </ul>
    


</div> <!-- / #tools -->


           		
                            <div class="navigation">
                            
                               
        <ul class="main">
            <li  class="current" ><a 
                href="/RentACoder/DotNet/SoftwareBuyers/HowItWorks.aspx?intTabSelectedId=1" 
            >Employers</a></li>
            <li ><a href="/RentACoder/DotNet/SoftwareCoders/HowItWorks.aspx?intTabSelectedId=2" 
            >Workers</a></li>
            <li ><a 
                href="/RentACoder/Affiliates/Help.asp?intTabSelectedId=3">Affiliates</a></li>
            <li class="nav_help"><a href="/RentACoder/DotNet/misc/Help.aspx" title="Help">Help</a></li>
        </ul>  

    
           
        <ul class="secondary">
        
                        <li class="first-child">
                           
                            <a rel="nofollow" href="javascript:window.location.href='/RentACoder/SoftwareBuyers/NewBidRequest.asp?intTabSelectedId=1';"><img  align="AbsMiddle"   border="0" src="/images/IconExperience/ApplicationBasics/16x16/shadow/document_pinned.png" width="16" height="16" /> Post new project</a></li>
                        <li>
                            
                            <a href="/RentACoder/SoftwareBuyers/SearchCoders.asp?intTabSelectedId=1"><img  align="AbsMiddle"   border="0" src="/images/IconExperience2008/v_collections_png/business_finance_data/16x16/plain/businessman_find.png" width="16" height="16" /> Search workers</a></li>
                    
                    <li class="dropdown">
                        <a href="#"><img  align="AbsMiddle"   border="0" src="/images/IconExperience/ApplicationBasics/16x16/shadow/folder_into.png" width="16" height="16" /> My account...</a>
                        <span class="dropdown-tip"></span>
                            <ul>
                        
                                <li><a href="/RentACoder/authentication/Login.asp?txtReturnURL=http%3A%2F%2Fwww%2Evworker%2Ecom%2FRentACoder%2Fmisc%2FBidRequests%2FShowBidRequest%2Easp%3FlngBidRequestId%3D1496880">Sign in</a></li>
                        
                            <li class="dropdown">
                                
                                <a href="#"><img  align="AbsMiddle"   border="0" src="/images/IconExperience/ApplicationBasics/16x16/shadow/folder_into.png" width="16" height="16" /> Site layout...</a>
                                <span class="dropdown-tip"></span>
                                <ul>

                                    <li>
                                        
                                        <a href="/RentACoder/DotNet/2010Redesign/MoveMenu.aspx?txtReturnURL=http%3A%2F%2Fwww%2Evworker%2Ecom%2FRentACoder%2Fmisc%2FBidRequests%2FShowBidRequest%2Easp%3FlngBidRequestId%3D1496880&intTabSelectedId=1"
                                        ><img  align="AbsMiddle"   border="0" src="/images/IconExperience2008/v_collections_png/basic_foundation/16x16/plain/selection_replace.png" width="16" height="16" /> Move menu</a></li>
                                    <li>
                                        
                                        <a target="_blank" href="http://www.vworker.com/RentACoder/misc/BidRequests/ShowBidRequest.asp?lngBidRequestId=1496880&blnShowWideScreen=true&intTabSelectedId=1"
                                        ><img  align="AbsMiddle"   border="0" src="/images/IconExperience2008/v_collections_png/basic_foundation/16x16/plain/selection_replace.png" width="16" height="16" /> Wide-screen page</a></li>                                
                                </ul>
                            </li>
                        </ul>
                    </li>
                    
                        <li>
                            
                            <a href="/RentACoder/misc/Tools.asp?intTabSelectedId=1#For_Buyers"><img  align="AbsMiddle"   border="0" src="/images/IconExperience2008/v_collections_png/objects_people_industries/16x16/plain/toolbox.png" width="16" height="16" /> Tools</a></li>
                        <li>
                            
                            <a href="/RentACoder/SoftwareBuyers/Articles/default.asp?intTabSelectedId=1"><img  align="AbsMiddle"   border="0" src="/images/IconExperience2008/v_collections_png/business_finance_data/16x16/plain/briefcase_document.png" width="16" height="16" /> Articles</a></li>
                        <li>
                            
                            <a href="/RentACoder/DotNet/SoftwareBuyers/SoftwareBuyerFAQ.aspx?intTabSelectedId=1"><img  align="AbsMiddle"   border="0" src="/images/IconExperience2008/v_collections_png/business_finance_data/16x16/plain/note.png" width="16" height="16" /> FAQ</a></li>
                        <li>
                            
                            <a href="/RentACoder/DotNet/misc/News.aspx?intTabSelectedId=1"><img  align="AbsMiddle"   border="0" src="/images/IconExperience2008/v_collections_png/computer_network_security/16x16/plain/newspaper.png" width="16" height="16" /> News</a></li>
                        
                        <li>
                            
                            <a href="/RentACoder/DotNet/misc/Help.aspx?intTabSelectedId=1#Employers"><img  align="AbsMiddle"   border="0" src="/images/IconExperience2008/v_collections_png/basic_foundation/16x16/plain/Help2.png" width="16" height="16" /> Help</a></li>
                        
                    
    </ul>
               		            
        	              
                            </div> <!-- / #navigation -->          		
                        </div></div> <!-- / .container -->
                    </div> <!-- / header -->

                    
                    
                <hr />          
            
                    <div class="container container-main">
                        <div class="wrapper">  
                            <div class="content"><div class="content-inner"><a name="mainContent"></a>
                                <table class="ProtectiveTable" width="100%"><tr><td> <!-- Protective table -->
                            
                            
<script type="text/javascript">
   function HideBroadcastMessage(){
      $.get('/RentACoder/DotNet/misc/HideBroadcastMessage.aspx?txtForceRefresh=91320101152302654', function(data) {
           $('#idBroadcastMessage_Top').hide();
           });
    }
</script>
<div id="idBroadcastMessage_Top"><table width=100% class="BroadCastMessageBackground NormalText8pt"><tr><td><b>Site Wide Message:</b>&nbsp;Posted Sep 8, 2010 10:54:36 AM <a href="javascript:ShowPopupWindowWithScrollbars('/RentACoder/DotNet/docs/TimeExplanation.aspx')">EDT</a>.</td><td align="right"><a href="#" onclick="HideBroadcastMessage();return false;"><img class="BroadCastMessage_DismissImage" width="16" height="16" src="/images/IconExperience2008/v_collections_png/basic_foundation/16x16/plain/navigate_cross.png" /></a><a href="#" onclick="HideBroadcastMessage();return false;">Dismiss this message</a></td></tr><tr><td colspan="2"><div class="BroadCastMessage_Inner"><!--start msg--><table ID="Table2">
					<tr>
						
						<td  valign=top><font face=verdana color="black" size=1>A big thank you to all site users for helping us win the <a href="http://blog.vworker.com/2010/08/vworker-is-in-2010-inc-5000.html" target="_blank">2010 Inc 5000 award for fastest growing private company</a>, for the fourth year in a row!<HR>Employers and workers: two universities are interested in how and why you use vWorker.  (All information will be kept confidential and only reported in aggregate.)<ol><li>Employers: Louisiana State University wants to learn about the factors that influence your adoption of online sourcing.  Click here to <a target="_blank" rel="nofollow" href="http://lsu.qualtrics.com/SE?SID=SV_1TEolbE6hZcqMeg">take the survey</a>.</li><li>Workers:  Erasmus University wants to understand how you use the site.  Contributors will receive a final copy of the aggregated data  Click here to <a target="_blank" rel="nofollow" href="https://www.surveymonkey.com/s/JR5XPJW">take the survey</a>.</li></ol></i></font></td>
					</tr>
				</table></td></div><!--end msg--></td>
</tr>
</table></div><SCRIPT LANGUAGE=JAVASCRIPT><!--
    
    var strUniqueId = '0000'; //declare variable

$(document).ready(function () {
    //generate once per page so that it caches if clicked twice (without a refresh of page)
    strUniqueId = Math.floor(Math.random()*10001);
    //alert (strUniqueId);
});
    
    
//var strUniqueId = 88132010913115230; 


    function DownloadFile(DownloadTypeId,Integer1) {
        
        var strBaseURL = '/RentACoder/DotNet/misc/DownloadFile.aspx?lngDownloadTypeId=' + DownloadTypeId + '&lngInteger1=' + Integer1 + '&txtForceRefresh=' + strUniqueId;
        var strParms = getCookie("Person");
        
        var strURL=strBaseURL + "&" + strParms;
        //alert ('value:');
        return strURL;
    }


// Sets cookie values. Expiration date is optional
//
function setCookie(name, value, expire) {
          document.cookie = name + "=" + escape(value)
          + ((expire == null) ? "" : ("; expires=" + expire.toGMTString()))
}

function getCookie(Name) {
	var search = Name + "="
	if (document.cookie.length > 0) { // if there are any cookies
		offset = document.cookie.indexOf(search) 
		if (offset != -1) { // if cookie exists 
		offset += search.length 
		// set index of beginning of value
		end = document.cookie.indexOf(";", offset) 
		// set index of end of cookie value
		if (end == -1) 
		end = document.cookie.length
		return unescape(document.cookie.substring(offset, end))
		} 
	}
}

//--></SCRIPT>
        <style type="text/css">
        .AutoResizeImageToParent{max-width:333px;}
        </style>
        
        <script type="text/javascript">
        $(document).ready(function() {
          AdjustImage_MaxWidth ();
        });

        function AdjustImage_MaxWidth() {
            /*Adjust maxwidth of all Images to the direct parent's 
            width(which should be a TD) -4 (for margins*/
            $('.AutoResizeImageToParent').css("max-width", 
                parseFloat($('.AutoResizeImageToParent').parent().css("width"))-4
                );
            } 
        </script>
    <script language="Javascript1.2"><!-- // load htmlarea
_editor_url = "/CrossWeb/include/CustomControls/RichTextBox/HTMLArea/";                     // URL to htmlarea files
var win_ie_ver = parseFloat(navigator.appVersion.split("MSIE")[1]);
if (navigator.userAgent.indexOf('Mac')        >= 0) { win_ie_ver = 0; }
if (navigator.userAgent.indexOf('Windows CE') >= 0) { win_ie_ver = 0; }
if (navigator.userAgent.indexOf('Opera')      >= 0) { win_ie_ver = 0; }
if (win_ie_ver >= 5.5) {
  document.write('<scr' + 'ipt src="' +_editor_url + 'editor.asp"');
  document.write(' language="Javascript1.2"></scr' + 'ipt>');  
} else { document.write('<scr'+'ipt>function editor_generate() { return false; }</scr'+'ipt>'); }
// --></script>

<center><table border=0 width="90%"><tr><td><center><table border=0 cellpadding="5"><tr><td align="right" valign="top">
        <a href="javascript:ShowPopupWindowXYWithScrollbars('/RentACoder/dotnet/Docs/FindersFeeComissionSchedule.aspx',600,650)"><img   border="0" src="/images/IconExperience2008/v_collections_png/computer_network_security/128x128/plain/earth.png" width="128" height="128" /></a>
	</td><td valign="top" class="FontSize2">
	    	    <table width="100%" bgcolor="black">
					<tr>
						<td width="*"><center><font color="white">
						    
							<h1>VB.NET TFTP Server to be added to existing VB Program<br>
							<font size="1">Project Id: 1496880</font><br>
							</b>
						</td>
						<td width="187" bgcolor="white">
						    

                            <script type="text/javascript" 
                            src="http://s7.addthis.com/js/250/addthis_widget.js#username=IanIppolito">
                            </script>
                            
							<table width="187">
							    <tr>
							        <td>
							             <img src="/vb/images/new.gif" border="0"/>
							        </td>
							        <td>
							           
							            
			        



    <a href="http://www.addthis.com/bookmark.php"     
        class="addthis_button"    
            addthis:url="http://www.vworker.com/RentACoder/misc/BidRequests/ShowBidRequest.asp?lngBidRequestId=1496880"      
            addthis:title="VB.NET TFTP Server to be added to existing VB Program"      
            addthis:description="I have a VB.Net program that loads a configuration to a Cisco router using an external TFTP server program. �I would like the program to be able to load this without using a 3rd party TFTP application, so it creates one�integrated�program.<div><br /></div><div>Also the program sends the commands via a serial port, I would like it to send them via an IP telnet connection, so I do not need to use a Serial port.</div><div><br /></div><div>All the commands are the same, except a user and password are needed to connect on TelNet.</div><div><br /></div><div>The aim is to make this application�completely�stand alone without the need for any 3rd party software.</div><div><br /></div><div>Just to be clear the application needs to include TFTP Server and not client.</div>" 
        style="text-decoration:none;">
    </a>
							        </td>
							    </tr>
					    
								<tr>
									<td width="19" valign="top">
									    <a href="/RentACoder/misc/AddToDoListItem.asp?lngBidRequestId=1496880">
										<img   border="0" src="/images/IconExperience/ObjectsAndPeople/16x16/shadow/book_blue_preferences.png" width="16" height="16" /></a>
									</td>
									<td valign="top" width="*" bgcolor="white" class="FontSize1">
										Bookmark in 
										<a href="/RentACoder/misc/AddToDoListItem.asp?lngBidRequestId=1496880">my 
										'To Do' list</a>
									</td>			

								</tr>
							</table>
						</td>
					</tr>
				</table>
      
	</td></tr></table></center></td></tr></table>

	<table width="100%" border="0" cellspacing="1" cellpadding="1">			

		<tr>
			<td>
				
			</td>			
		</tr>
		<tr>
			<td colspan="2"><center>
				
				<table border="0" cellspacing="2" cellpadding="2" width="100%">
					<tr>
						
						<td valign="top" width="50%">
							<table border="0" width="100%">
								<tr>
									<td valign="top" nowrap align="right">
										<font size="1">
										<b>Posted by:</b></td>
									<td valign="top"><font size="1">
									    
										 <a href="/RentACoder/DotNet/SoftwareBuyers/ShowBuyerInfo.aspx?lngAuthorId=7300791">willcavanagh</a> <font size="1"><a href="/RentACoder/DotNet/SoftwareBuyers/ShowBuyerInfo.aspx?lngAuthorId=7300791#BuyerRating">(6 ratings)</font></a><br>
										<font size="1">(Employer rating 10<a href="javascript:ShowPopupWindowWithScrollbars('/RentACoder/DotNet/docs/RatingLegend.aspx')"><img border=0 height=18 width=19 src="/RentACoder/images/icons/Rating4.gif"></a>)<br>
										
									</td>
								</tr>
								

									
								<tr>
									<td valign="top" align="right"><font size="1">
										<b>Non-action Ratio:<!/a></b></td>
									<td valign="top"><font size="1">
										<a href="/RentACoder/DotNet/SoftwareBuyers/ShowBuyerInfo.aspx?lngAuthorId=7300791#NonActionRatio">Very Good<!/a> - 10.00%</a>
									</td>
								</tr>

								<tr>
									<td valign="top" align="right"><font size="1">
										<b>Employer Security Verifications:</b></td>
									<td valign="top"><font size="1">
										<a href="/RentACoder/DotNet/SoftwareBuyers/ShowBuyerInfo.aspx?lngAuthorId=7300791#SecurityVerifications"><img   border="0" src="/images/IconExperience/ObjectsAndPeople/16x16/shadow/user1_telephone.png" width="16" height="16" /><img   border="0" src="/images/IconExperience/ObjectsAndPeople/16x16/shadow/user1_preferences.png" width="16" height="16" />Excellent</a>
									</td>
								</tr>


								

								
								<tr>
									<td valign="top" align="right"><font size="1">
										<b>Approved on:</b></td>
									<td valign="top"><font size="1">
										Sep 13, 2010<BR>10:55:26 AM&nbsp;<a href="javascript:ShowPopupWindowWithScrollbars('/RentACoder/DotNet/docs/TimeExplanation.aspx')">EDT</a>
									</td>
								</tr>
							
								
								<tr>
									<td valign="top" align="right"><font size="1">
										<b>Bidding Closes:</b></td>
									<td valign="top"><font size="1">
										 Sep 27, 2010<BR>10:54:56 AM&nbsp;<a href="javascript:ShowPopupWindowWithScrollbars('/RentACoder/DotNet/docs/TimeExplanation.aspx')">EDT</a>
									</td>
								</tr>

								<tr>
									<td valign="top" align="right"><font size="1">
										<b>Viewed (by workers):</b></td>
									<td valign="top"><font size="1">
										 123 times
										</font>
									</td>
								</tr>

								
								
										        <tr>
											        <td valign="top" align="right"><font size="1">
												        <b>Deadline:</b></td>
											        <td valign="top"><font size="1">10 <a href="javascript:ShowPopupWindowWithScrollbars('/RentACoder/dotnet/docs/DeadlineExplanation.aspx')">days</a>.
												        </font>
											        </td>
										        </tr>
									        
							</table>
							
						</td>
						
						
						<td width="50%" valign=top>
				
							<table width="100%">
								
								<tr>
									<td valign="top" align="right"><font size="1">
										<b>Phase:</b></td>
									<td valign="top"><font size="1">
										 <a href="javascript:ShowPopupWindowXY('/RentACoder/DotNet/docs/PhaseLegend.aspx',800,575)"><img border=0 height=17 width=68 src="/RentACoder/images/StatusBar/Phase2.jpg"></a><br>
										 <a href="javascript:ShowPopupWindowXY('/RentACoder/DotNet/docs/PhaseLegend.aspx',800,575)">Bidding open</a>
										 
										 
										 
									</td>
								</tr>
                            
                                <tr>
                                    <td valign="top" align="right"><font size="1"><b><a href="/RentACoder/DotNet/docs/ProjectPaymentTypes_ForBuyers.aspx" target="_blank">Payment Model</a>:</b></font></td>
                                    <td><font size="1">Pay-for-Deliverables</font></td>
                                </tr>
								
									<tr>
										<td valign="top" align="right"><font size="1">
											<b>Max Accepted Bid:</b></td>
											
												<td valign="top"><font size="1">
													Open to fair suggestions
														
												</font></td>
												
									</tr>
									
								
								<tr>
									<td valign="top" align="right"><font size="1">
										<b>Project Type:</b></td>
									<td valign="top"><font size="1">
										 <a href="javascript:ShowPopupWindowWithScrollbars('/RentACoder/DotNet/docs/ProjectTypeLegend.aspx')">
										 Very Small Business Project: under $100(USD)
										 </a>
									</td>
								</tr>

								<tr>
									<td valign="top" align="right"><font size="1">
										<b>Bidding Type:</b></td>
									<td valign="top"><font size="1"> 
										 <a href="javascript:ShowPopupWindowXYWithScrollbars('/RentACoder/dotnet/Docs/FindersFeeComissionSchedule.aspx',600,650)"><img   border="0" src="/images/IconExperience2008/v_collections_png/computer_network_security/16x16/plain/earth.png" width="16" height="16" /></a>
										 <a href="javascript:ShowPopupWindowXYWithScrollbars('/RentACoder/dotnet/Docs/FindersFeeComissionSchedule.aspx',600,650)">Open Auction</a>
										 										 
											
									</td>
								</tr>
								
								
							     <tr>
							        <td valign="top" align="right"><font size="1">
								        <b>Accepted Bidder <a href="javascript:ShowPopupWindowWithScrollbars('/RentACoder/dotnet/Docs/EconomyType.aspx')">Economy Type(s)</a>:</b></td>
							        <td valign="top"><font size="1"> 
							            <table>
							                All
                                         </table>
						            </td>
							     </tr>
								
							     <tr>
							        <td valign="top" align="right"><font size="1">
								        <b>Accepted <a href="javascript:ShowPopupWindowWithScrollbars('/RentACoder/dotnet/Docs/EnglishFluencyType.aspx')">English fluency(ies)</a>:</b></td>
							        <td valign="top"><font size="1"> 
							            <table>
							                All
                                        </table>
						            </td>
							     </tr>

								
								<tr>
									<td valign="top" align="right"><font size="1">
										<b>ExpertRating Requirement:</b></td>
									<td valign="top"><font size="1">
										 None
									</td>
								</tr>
								
							</table>
						</td>	
								
					</tr>
					
					
					<tr>
						<td colspan="2"><center>
						
							
							<table>	
								
								
								<tr>	
										<td colspan=2><center><a name="AllTabs"></a>
										
		<table width="570" 
		class="TableBackground TableBorder" cellpadding="2" cellspacing="2"  
		 ID="Table8">
			<tr>
				<td width="110" bgcolor="#EEEEEE" valign=top align="center">
				    <font face="Verdana"><font size="1" ><b>Shortcuts</b><br><br>
					<img   border="0" src="/images/IconExperience2008/v_collections_png/computer_network_security/64x64/shadow/keyboard_key.png" width="64" height="64" />
					</font></td>
				<td valign=top>
				
					<table >
						<tr>
							<td valign=top><font size=1>
								<b>Communication</b><br>
								<br><a href="#Messagessummary"><img   border="0" src="/images/IconExperience/ApplicationBasics/16x16/shadow/document_pinned.png" width="16" height="16" />Messages summary</a><BR><a href="#Postfirstreply"><img   border="0" src="/images/IconExperience/NetworkAndSecurity/16x16/shadow/mail_forward.png" width="16" height="16" />Post first reply</a><BR><font color="#757575"><img   border="0" src="/images/IconExperience/BusinessAndData/16x16/shadow/messages.png" width="16" height="16" />Chat log</font><BR>
							</td>
							<td valign=top><font size=1>
								<b>During project work</b><br>
								<br>
								<font color="#757575"><img   border="0" src="/images/IconExperience/ApplicationBasics/16x16/shadow/history2.png" width="16" height="16" />Status reports</font><BR><font color="#757575"><img   border="0" src="/images/IconExperience/BusinessAndData/16x16/shadow/chest_into.png" width="16" height="16" />Escrow Log</font><BR><font color="#757575"><img   border="0" src="/images/IconExperience/BusinessAndData/16x16/shadow/money_envelope.png" width="16" height="16" />Work acceptance</font><BR><font color="#757575"><img   border="0" src="/images/IconExperience/BusinessAndData/16x16/shadow/briefcase.png" width="16" height="16" />Assembla Tools</font><BR><font color="#757575"><img   border="0" src="/images/IconExperience/BusinessAndData/16x16/shadow/auction_hammer.png" width="16" height="16" />Mediation / Arbitration</font><BR>
							</td>
							<td valign=top><font size=1>
								<b>Other</b><BR>
								<br>
								<font color="#757575"><img   border="0" src="/images/IconExperience/BusinessAndData/16x16/shadow/address_book3.png" width="16" height="16" />Contact info / receipts</font><BR><font color="#757575"><img   border="0" src="/images/IconExperience/ApplicationBasics/16x16/shadow/document_time.png" width="16" height="16" />Project phase log</font><BR><a href="#Ratings"><img   border="0" src="/images/IconExperience/ApplicationBasics/16x16/shadow/document_chart.png" width="16" height="16" />Ratings</a><BR>
							</td>
						</tr>
						<tr>
							<td colspan="3"><font size="1" color="black"><center><br>
							(Note:options <font color="#808080">without links</font> are not enabled for this phase.)</font></td>
						</tr>

					</table>
					</font>
				</td>
			</tr>
		</table>
									</td>
								</tr>
								
									<tr>
										<td valign="top" align="right" colspan="3">
											<a name="Chat"></a>
											<center>
											<table border="0">
												<tr>
													<td>
														<font size="1"><br>
														<center>
														
														<table>
															<tr>
																<td valign=top>
																	<a href="/RentACoder/chat/default.asp?lngBidRequestId=1496880" target="_new"><img   border="0" src="/images/IconExperience/BusinessAndData/48x48/shadow/messages.png" width="48" height="48" /></a>
																</td>
																<td valign=top><font size="2">
																	<a href="/RentACoder/chat/default.asp?lngBidRequestId=1496880" target="_new">Enter chat room</a> for this project<br>
																<font size="1">(0 active users at Sep 13, 2010 11:52:30 AM&nbsp;<a href="javascript:ShowPopupWindowWithScrollbars('/RentACoder/DotNet/docs/TimeExplanation.aspx')">EDT</a>)</font>
																</td>
															</tr>
														</table>
														
													</td>
												</tr>
											</table>
										</td>
									</tr>
									
																
								
							</table>
				
						</td>
					</tr>
				</table>
				
				

					<table width="90%">
						<tr>
							<td colspan="2">
								
								</center>
								<br>
								
								
								<font size="1">
								<b><font size="2">
									</b><b><img   border="0" src="/images/IconExperience/ApplicationBasics/16x16/shadow/document.png" width="16" height="16" /> Brief Summary:
									</b></b><br>
									<ul><font size=1><li><a name="NoWorkInAdvance"></a>vWorker.com reminder: You MAY NOT post the final solution for this (and any) project before your bid is accepted and funds are fully escrowed.  Anyone who does may have their account permanently suspended.  However, you CAN post:<ul><li>On programming projects: A prototype or functional demo...as long as source code is not provided.</li><li>On graphics projects: A watermarked and low-resolution version of the work.</li></ul></li>
</font></ul><div class="KonaBody">I have a VB.Net program that loads a configuration to a Cisco router using an external TFTP server program. &#160;I would like the program to be able to load this without using a 3rd party TFTP application, so it creates one&#160;integrated&#160;program.<div><br /></div><div>Also the program sends the commands via a serial port, I would like it to send them via an IP telnet connection, so I do not need to use a Serial port.</div><div><br /></div><div>All the commands are the same, except a user and password are needed to connect on TelNet.</div><div><br /></div><div>The aim is to make this application&#160;completely&#160;stand alone without the need for any 3rd party software.</div><div><br /></div><div>Just to be clear the application needs to include TFTP Server and not client.</div></span><br></font>
									<br>


									<font size=2><b><img   border="0" src="/images/IconExperience/ApplicationBasics/16x16/shadow/document_info.png" width="16" height="16" />
                                    Requirements Interview Answers: <img src="/vb/images/new.gif"></b></font><BR />
                                    <font size=1>
                                    
                                    To help you bid more accurately, the employer was interviewed about the requirements for this project.  Below are their answers.
                                    </font>
                                    

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head><title>
	Untitled Page
</title></head>
<body>
    <form name="form1" method="post" action="WizardOutput.aspx?lngBidRequestId=1496880" id="form1">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMzQzMDUwMzIxD2QWAgIDD2QWAgIBD2QWBAICD2QWAgIBD2QWFmYPZBYEZg8WAh4JaW5uZXJodG1sBRQ8Yj5Qcm9qZWN0IFR5cGU6PC9iPmQCAQ8WAh8ABW1XaGF0IGtpbmQgb2Ygd29yayBkbyB5b3UgbmVlZCBkb25lPzxCUj5Tb2Z0d2FyZSByZWxhdGVkIChJbmNsdWRlcyBkZXNrdG9wIGFwcGxpY2F0aW9ucyBhbmQgaW50ZXJuZXQgd2Vic2l0ZXMpZAIBD2QWBGYPFgIfAAUVPGI+UHJvamVjdCBQYXJ0czo8L2I+ZAIBDxYCHwAFNldoYXQgZG8geW91IHdhbnQgdGhlIHdvcmtlciB0byBkbyBvbiB0aGlzIHByb2plY3Q/PEJSPmQCAw9kFgRmDxYCHwAFFjxiPlJlcS4gRG9jLiBUeXBlOjwvYj5kAgEPFgIfAAXrBFdoYXQga2luZCBvZiBkb2N1bWVudGF0aW9uIGRvIHlvdSB3YW50IGZvciB0aGlzIHByb2plY3Q/PEJSPkluZm9ybWFsIGRvY3VtZW50YXRpb24gLSBBcyB0aGUgZW1wbG95ZXIgdGFsa3MgYmFjayBhbmQgZm9ydGggYWJvdXQgdGhlIHByb2plY3Qgd2l0aCB0aGUgd29ya2VyLCB0aG9zZSBjb252ZXJzYXRpb25zIGJlY29tZSB0aGUgcmVxdWlyZW1lbnRzLlJlbWVtYmVyIHRvIGNvbW11bmljYXRlIEFMTCBvZiB0aGUgZGV0YWlscyBvZiB5b3VyIHByb2plY3Qgb24gdGhlIHZXb3JrZXIuY29tIHNpdGUuICBJZiB5b3UgZG9uJ3QsIGFuZCB0aGVyZSBpcyBhIGRpc3B1dGUsIHRoZW4gaW1wb3J0YW50IGRldGFpbHMgb2YgdGhlIGNvbnRyYWN0IHdpbGwgbm90IGJlIGRvY3VtZW50ZWQgYW5kIGNhbm5vdCBiZSB0YWtlbiBpbnRvIGFjY291bnQgaW4gYXJiaXRyYXRpb24uICBJZiB5b3UgZmVlbCB5b3UgTVVTVCBnbyBvZmZzaXRlIChmb3IgZXhhbXBsZSwgdXNpbmcgdGhlIHBob25lIG9yIElNKSB0aGVuIGFmdGVyd2FyZHMgcG9zdCBldmVyeXRoaW5nIG9uc2l0ZSBhbmQgZ2V0IHRoZSBvdGhlciBwYXJ0eSB0byBwb3N0IHRoYXQgdGhleSBhZ3JlZSB0byB0aG9zZSBjb250cmFjdHVhbCB0ZXJtcy5kAgQPZBYEZg8WAh8ABRQ8Yj5Qcm9ncmFtIFR5cGU6PC9iPmQCAQ8WAh8ABbEBV2hhdCBraW5kIG9mIHNvZnR3YXJlIHNob3VsZCB0aGUgd29ya2VyIGNyZWF0ZSAoYW5kL29yIGluc3RhbGwpPzx1bD48bGk+QSBkZXNrdG9wIG9yIHNlcnZlciBwcm9ncmFtOiBUaGlzIHNvZnR3YXJlIHJ1bnMgb24gYSB1c2VyJ3Mgb3duIFBDL3dvcmtzdGF0aW9uLCBvciBvbiBhIHNlcnZlci48L2xpPjwvdWw+ZAIFD2QWAmYPFgIfAAUkPGI+RGVza3RvcCAvIHNlcnZlciBwcm9ncmFtIGluZm88L2I+ZAIGD2QWBGYPFgIfAAUbPGI+U2l6ZSBvZiBhcHBsaWNhdGlvbjo8L2I+ZAIBDxYCHwAFV0hvdyBtYW55IHNjcmVlbnMvZm9ybXMgbmVlZCB0byBiZSBjcmVhdGVkL2VkaXRlZCBpbiB0aGlzIGFwcGxpY2F0aW9uPzxCUj5JIGRvbid0IGtub3cuIGQCBw9kFgRmDxYCHwAFHDxiPlByb2dyYW1taW5nIExhbmd1YWdlOjwvYj5kAgEPFgIfAAWbAVdoYXQgcHJvZ3JhbW1pbmcgbGFuZ3VhZ2UocykgZG8geW91IHdhbnQgeW91ciBhcHBsaWNhdGlvbiB3cml0dGVuIGluPzxCUj5JIGRvIGtub3cgdGhlIGxhbmd1YWdlKHMpLjxCUj5MYW5ndWFnZXMocyk6PEJSPjx1bD48bGk+VmlzdWFsIEJhc2ljIC5OZXQ8L2xpPjwvdWw+ZAIID2QWBGYPFgIfAAUaPGI+T3BlcmF0aW5nIHN5c3RlbShzKTwvYj5kAgEPFgIfAAWqAVdoYXQgb3BlcmF0aW5nIHN5c3RlbXMocykgZG8geW91IHdhbnQgeW91ciBhcHBsaWNhdGlvbiB0byB3b3JrIG9uPzxCUj5JIGRvIGtub3cgdGhlIG9wZXJhdGluZyBzeXN0ZW0ocyk6PEJSPjxsaT5NaWNyb3NvZnQgV2luZG93cyAtLSB2ZXJzaW9uKHMpOiBYcCwgVmlzdGEgYW5kIDc8L2xpPjwvdWw+ZAIJD2QWBGYPFgIfAAUQPGI+RGF0YWJhc2U6PC9iPmQCAQ8WAh8ABUxXaWxsIHRoaXMgcHJvamVjdCBpbmNsdWRlIGEgZGF0YWJhc2U/PEJSPk5vLCBpdCBkb2VzIG5vdCBpbmNsdWRlIGEgZGF0YWJhc2UuZAIKD2QWBGYPFgIfAAUcPGI+SW5zdGFsbGF0aW9uIFByb2dyYW06PC9iPmQCAQ8WAh8ABXtEb2VzIHRoZSB3b3JrZXIgbmVlZCB0byBjcmVhdGUgYW4gaW5zdGFsbGF0aW9uIHByb2dyYW0/PEJSPlllcyBBTkQgdGhlIHByb2dyYW0gd2lsbCBiZSBpbnN0YWxsZWQgb24gb25seSBhIHNpbmdsZSBjb21wdXRlci5kAgsPZBYEZg8WAh8ABQ08Yj5MZWdhbDo8L2I+ZAIBDxYCHwAFxQoxKSBJIHJlcXVpcmUgY29tcGxldGUgYW5kIGZ1bGx5LWZ1bmN0aW9uYWwgd29ya2luZyBwcm9ncmFtKHMpIGluIGV4ZWN1dGFibGUgZm9ybSBhcyB3ZWxsIGFzIGNvbXBsZXRlIHNvdXJjZSBjb2RlIG9mIGFsbCB3b3JrIGRvbmUgKHNvIHRoYXQgSSBtYXkgbW9kaWZ5IGl0IGluIHRoZSBmdXR1cmUpLjxiciAvPjIpIERlbGl2ZXJhYmxlcyBtdXN0IGJlIGluIHJlYWR5LXRvLXJ1biBjb25kaXRpb24gYXMgZm9sbG93cyAoZGVwZW5kaW5nIG9uIHRoZSBuYXR1cmUgb2YgdGhlIGRlbGl2ZXJhYmxlcyk6PGJyIC8+MmEpIElmIHRoZXJlIGFyZSBhbnkgc2VydmVyLXNpZGUgZGVsaXZlcmFibGVzIChpbnRlbmRlZCB0byBvbmx5IGV4aXN0IGluIG9uZSBwbGFjZSBpbiB0aGUgRW1wbG95ZXIncyBlbnZpcm9ubWVudCkgdGhlbiB0aGV5IG11c3QgYmUgaW5zdGFsbGVkIGJ5IHRoZSBXb3JrZXIgaW4gcmVhZHktdG8tcnVuIGNvbmRpdGlvbiAodW5sZXNzIHNwZWNpZmllZCBlbHNld2hlcmUgYnkgdGhlIEVtcGxveWVyKS48YnIgLz4yYikgQWxsIG90aGVyIHNvZnR3YXJlIChpbmNsdWRpbmcgYnV0IG5vdCBsaW1pdGVkIHRvIGFueSBkZXNrdG9wIHNvZnR3YXJlIG9yIHNvZnR3YXJlIHRoZSBlbXBsb3llciBpbnRlbmRzIHRvIGRpc3RyaWJ1dGUpIG11c3QgaW5jbHVkZSBhIHNvZnR3YXJlIGluc3RhbGxhdGlvbiBwYWNrYWdlIHRoYXQgd2lsbCBpbnN0YWxsIHRoZSBzb2Z0d2FyZSBpbiByZWFkeS10by1ydW4gY29uZGl0aW9uIG9uIHRoZSBwbGF0Zm9ybShzKSBzcGVjaWZpZWQgaW4gdGhpcyBwcm9qZWN0ICh1bmxlc3Mgc3BlY2lmaWVkIGVsc2V3aGVyZSBieSB0aGUgRW1wbG95ZXIpLjxiciAvPjMpIEFsbCBkZWxpdmVyYWJsZXMgd2lsbCBiZSBjb25zaWRlcmVkICJ3b3JrIG1hZGUgZm9yIGhpcmUiIHVuZGVyIFUuUy4gQ29weXJpZ2h0IGxhdy4gRW1wbG95ZXIgd2lsbCByZWNlaXZlIGV4Y2x1c2l2ZSBhbmQgY29tcGxldGUgY29weXJpZ2h0cyB0byBhbGwgd29yayBwdXJjaGFzZWQuPGJyIC8+M2IpIE5vIHBhcnQgb2YgdGhlIGRlbGl2ZXJhYmxlIG1heSBjb250YWluIGFueSA8YSB0YXJnZXQ9ImJsYW5rIiBocmVmPSIvUmVudEFDb2Rlci9Tb2Z0d2FyZUNvZGVycy9GQVEuYXNwI2NvcHlyaWdodCI+Y29weXJpZ2h0IHJlc3RyaWN0ZWQgM3JkIHBhcnR5IGNvbXBvbmVudHM8L2E+IChpbmNsdWRpbmcgR1BMLCBHTlUsIENvcHlsZWZ0LCBldGMuKSB1bmxlc3MgYWxsIGNvcHlyaWdodCByYW1pZmljYXRpb25zIGFyZSBleHBsYWluZWQgQU5EIEFHUkVFRCBUTyBieSB0aGUgZW1wbG95ZXIgb24gdGhlIHNpdGUgcGVyIHRoZSB3b3JrZXIncyBXb3JrZXIgTGVnYWwgQWdyZWVtZW50LjxiciAvPmQCBA9kFgICAQ9kFgJmDw8WAh4HVmlzaWJsZWhkZGTOSt6rOpwodsegp0g6xXq3StNUoQ==" />

    <div>
        
<!--4/7/2010 12:14:25 PM:Ran Converter_NameChange v2.0.0.0 and replaced 0 out of 0 items found.-->
<!--4/7/2010 12:12:30 PM:Ran Converter_NameChange v2.0.0.0 and replaced 0 out of 0 items found.-->

<table id="UcBidRequestInterviewDetails1_pnlNormalDetails" cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td>
	
    <table id="UcBidRequestInterviewDetails1_tblInterviewResults">
		<tr class="NormalRow_Small">
			<td valign="top" align="right" nowrap=""><b>Project Type:</b></td>
			<td>What kind of work do you need done?<BR>Software related (Includes desktop applications and internet websites)</td>
		</tr>
		<tr class="NormalRow_Small">
			<td valign="top" align="right" nowrap=""><b>Project Parts:</b></td>
			<td>What do you want the worker to do on this project?<BR></td>
		</tr>
		<tr class="NormalRow_Small">
			<td valign="top" align="right" nowrap=""></td>
			<td><table>
				<tr class="NormalRow_Small">
					<td valign="top" align="right" nowrap="">Requirements:</td>
					<td>The worker will analyze the problem and propose a software-based solution to the problem.</td>
				</tr>
				<tr class="NormalRow_Small">
					<td valign="top" align="right" nowrap="">Programming:</td>
					<td>The worker will take the requirements and translate them into the language of the computer (and test it).</td>
				</tr>
				<tr class="NormalRow_Small">
					<td valign="top" align="right" nowrap="">User installation:</td>
					<td>The installer will move the software from the place it was created (which is called the development or QC environment) to where you will use it (which is called the production environment).  The installer then tests the software to make sure that the installation was done properly and completely.</td>
				</tr>
			</table>
			</td>
		</tr>
		<tr class="NormalRow_Small">
			<td valign="top" align="right" nowrap=""><b>Req. Doc. Type:</b></td>
			<td>What kind of documentation do you want for this project?<BR>Informal documentation - As the employer talks back and forth about the project with the worker, those conversations become the requirements.Remember to communicate ALL of the details of your project on the vWorker.com site.  If you don't, and there is a dispute, then important details of the contract will not be documented and cannot be taken into account in arbitration.  If you feel you MUST go offsite (for example, using the phone or IM) then afterwards post everything onsite and get the other party to post that they agree to those contractual terms.</td>
		</tr>
		<tr class="NormalRow_Small">
			<td valign="top" align="right" nowrap=""><b>Program Type:</b></td>
			<td>What kind of software should the worker create (and/or install)?<ul><li>A desktop or server program: This software runs on a user's own PC/workstation, or on a server.</li></ul></td>
		</tr>
		<tr class="NormalRow_Small">
			<td valign="top" align="right" nowrap=""><b>Desktop / server program info</b></td>
			<td></td>
		</tr>
		<tr class="NormalRow_Small">
			<td valign="top" align="right" nowrap=""><b>Size of application:</b></td>
			<td>How many screens/forms need to be created/edited in this application?<BR>I don't know. </td>
		</tr>
		<tr class="NormalRow_Small">
			<td valign="top" align="right" nowrap=""><b>Programming Language:</b></td>
			<td>What programming language(s) do you want your application written in?<BR>I do know the language(s).<BR>Languages(s):<BR><ul><li>Visual Basic .Net</li></ul></td>
		</tr>
		<tr class="NormalRow_Small">
			<td valign="top" align="right" nowrap=""><b>Operating system(s)</b></td>
			<td>What operating systems(s) do you want your application to work on?<BR>I do know the operating system(s):<BR><li>Microsoft Windows -- version(s): Xp, Vista and 7</li></ul></td>
		</tr>
		<tr class="NormalRow_Small">
			<td valign="top" align="right" nowrap=""><b>Database:</b></td>
			<td>Will this project include a database?<BR>No, it does not include a database.</td>
		</tr>
		<tr class="NormalRow_Small">
			<td valign="top" align="right" nowrap=""><b>Installation Program:</b></td>
			<td>Does the worker need to create an installation program?<BR>Yes AND the program will be installed on only a single computer.</td>
		</tr>
		<tr class="NormalRow_Small">
			<td valign="top" align="right" nowrap=""><b>Legal:</b></td>
			<td>1) I require complete and fully-functional working program(s) in executable form as well as complete source code of all work done (so that I may modify it in the future).<br />2) Deliverables must be in ready-to-run condition as follows (depending on the nature of the deliverables):<br />2a) If there are any server-side deliverables (intended to only exist in one place in the Employer's environment) then they must be installed by the Worker in ready-to-run condition (unless specified elsewhere by the Employer).<br />2b) All other software (including but not limited to any desktop software or software the employer intends to distribute) must include a software installation package that will install the software in ready-to-run condition on the platform(s) specified in this project (unless specified elsewhere by the Employer).<br />3) All deliverables will be considered "work made for hire" under U.S. Copyright law. Employer will receive exclusive and complete copyrights to all work purchased.<br />3b) No part of the deliverable may contain any <a target="blank" href="/RentACoder/SoftwareCoders/FAQ.asp#copyright">copyright restricted 3rd party components</a> (including GPL, GNU, Copyleft, etc.) unless all copyright ramifications are explained AND AGREED TO by the employer on the site per the worker's Worker Legal Agreement.<br /></td>
		</tr>
	</table>
	

</td></tr></table>




    </div>
    </form>
</body>
</html>
<img   border="0" src="/images/IconExperience/ApplicationBasics/16x16/shadow/document_connection.png" width="16" height="16" />
												<font size="2"><b>
												Other Requirements:</b><br>
												
												<div id="divDeliverables"></div></font><font size=1><ul>
								    
								        <li>
												    All deliverables must be <a href="/RentACoder/SoftwareCoders/SoftwareSellerLegal.asp#QuickResolution" target=_blank>uploaded to vWorker.com</a> before the deadline(s) for this project...with no exceptions.  If this contract makes it impossible for a competent person to do this, then <a href="/RentACoder/SoftwareCoders/SoftwareSellerLegal.asp#IllegalProjects" target=_blank>do not start this project</a>...but instead alert vWorker.com of an <a href="/RentACoder/SoftwareBuyers/BidReqestPostingPolicy.asp#Unarbitratable" target=_blank>un-arbitratable, illegal</a> project.
											</font><BR>
                                        </li>
                                        
										        <li>Remember that contacting the other party outside of the site (by email, phone, etc.) on all business projects < $500 (before the employer's money is escrowed) is a <a href="/RentACoder/misc/Legal.asp">violation</a> of both the <a href="/RentACoder/SoftwareBuyers/SoftwareBuyerLegal.asp#OutContact">employer</a> and <a href="/RentACoder/SoftwareCoders/SoftwareSellerLegal.asp#OutContact">worker</a> agreements.
vWorker.com monitors all site activity for such violations and can instantly expel transgressors on the spot, so we thank you in advance for your cooperation.  
If you notice a violation please <a href="/RentACoder/misc/Feedback.asp?lngBidRequestId=1496880&intTypeOfInquiry=6">help out the site and report it</a>. Thanks for your help.
										        </li>
									        </ul></font><b><font size="2"><img   border="0" src="/images/IconExperience/ApplicationBasics/16x16/shadow/document_info.png" width="16" height="16" />
										Categories:</b></b><br>
										 <font size=1>(Note:  Like everything else on this page, these categories are part of the original contract for this project.)
										 </font><BR>Microsoft Windows, Languages, Requirements, Operating systems / platforms, Other (Technology), Visual Basic .Net, Technology, Software Development, Desktop applications, Other (Other Technology)</font><BR>
										 <BR>
							</td>
						</tr>
						
						
					</table>
					
				
			</td>
		</tr>
		

			
	<tr>
		<td><center><font size=3><hr><table cellpadding=0 cellspacing=0 border=0>
					<tr>
						<td valign=top>
						    
						    <a style="text-decoration:none;" name="Messagessummary">&nbsp;</a>
						    <img   border="0" src="/images/IconExperience/ApplicationBasics/48x48/shadow/document_pinned.png" width="48" height="48" />
						
						</td>
						<td valign=top><center>
							<b>Messages summary</b><table  cellpadding=0 cellspacing=0 border=0>
								<tr>
									<td><font size=1>(</font></td>
									<td><font size=1><a href="#AllTabs">Back to shortcuts</a></font></td>
									
									<td><font size=1>)</font></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				
			</font>
		</td>
	</tr>
	<tr>
		<td>
			<center>
	<table ID="Table1">
	<tr>
		<td><center><font size="1">All monetary amounts on the site are in United States dollars.<br>
		vWorker.com is a closed auction, so workers can only see their own bids and comments.  Employers can view every posting made on their projects.</font></td>
	<tr>
		<td>
			<center>
			<font size="1"><br>
			
			<table border="0" ID="Table2" cellpadding=1 cellspacing=1>
				
				
								<tr>
									<td valign="top" width="19">
										<img   border="0" src="/images/IconExperience/ObjectsAndPeople/16x16/shadow/alarmclock.png" width="16" height="16" />
									</td>
									<td valign="top"><font size="2">
										<b>Bidding Closes At:</b>
									</td>
									<td valign="top"><font size="2">
										Sep 27, 2010 10:54:56 AM&nbsp;<a href="javascript:ShowPopupWindowWithScrollbars('/RentACoder/DotNet/docs/TimeExplanation.aspx')">EDT</a><br>
									</td>
								</tr>
								
				
					<tr>
						<td valign="top" width="19">
							&nbsp;
						</td>
						
						<td nowrap valign="top"><font size="2">
							<b>Max accepted bid:</b><img src="/RentACoder/images/icons/BlankIcon.gif" width=19 height=18>
						</td>
						<td valign="top"><font size="2">
							Open to fair suggestions<img src="/RentACoder/images/icons/BlankIcon.gif" width=19 height=18>
						</td>
					</tr>	
									
			</table>
			
				<font size="2">
				
							No bids have been posted yet.
							  <a href="/RentACoder/SoftwareCoders/FAQ.asp?intTabSelectedId=2#ClosedBidding">Why can't I view bids from 
                other workers who are bidding against me?</a>
					<hr width="80%">
					Bidding/comment cannot be viewed until you are logged in.<br>
						<br>
						</td></tr></table>	
	<tr>
		<td><center><font size=3><hr><table cellpadding=0 cellspacing=0 border=0>
					<tr>
						<td valign=top>
						    
						    <a style="text-decoration:none;" name="Postfirstreply">&nbsp;</a>
						    <img   border="0" src="/images/IconExperience/NetworkAndSecurity/48x48/shadow/mail_forward.png" width="48" height="48" />
						
						</td>
						<td valign=top><center>
							<b>Post first reply</b><table  cellpadding=0 cellspacing=0 border=0>
								<tr>
									<td><font size=1>(</font></td>
									<td><font size=1><a href="#AllTabs">Back to shortcuts</a></font></td>
									
									<td><font size=1>)</font></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				
			</font>
		</td>
	</tr>
	<tr>
		<td>
			<center><center><font size="2">
		Workers: To place a bid and/or to see any of your own pre-existing bids on this project, you must
		<a href="/RentACoder/authentication/Login.asp?txtReturnURL=%2FRentACoder%2Fmisc%2FBidRequests%2FShowBidRequest%2Easp%3FlngBidRequestId%3D1496880">
		login</a>.<br>
		<br>

		<font size="2">Employers: If this is your project, then you can 
		see all bids/comments, and/or accept one, by <a href="/RentACoder/authentication/Login.asp?txtReturnURL=%2FRentACoder%2Fmisc%2FBidRequests%2FShowBidRequest%2Easp%3FlngBidRequestId%3D1496880">logging in</a>.</font>
		</center>
				</center>
		</td>
	</tr>
	
		<tr>
			<td>&nbsp;</td>
		</tr>
		
	<tr>
		<td><center><font size=3><hr><table cellpadding=0 cellspacing=0 border=0>
					<tr>
						<td valign=top>
						    
						    <a style="text-decoration:none;" name="Ratings">&nbsp;</a>
						    <img   border="0" src="/images/IconExperience/ApplicationBasics/48x48/shadow/document_chart.png" width="48" height="48" />
						
						</td>
						<td valign=top><center>
							<b>Ratings</b><table  cellpadding=0 cellspacing=0 border=0>
								<tr>
									<td><font size=1>(</font></td>
									<td><font size=1><a href="#AllTabs">Back to shortcuts</a></font></td>
									
									<td><font size=1>)</font></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				
			</font>
		</td>
	</tr>
	<tr>
		<td>
			<center><br>
		<table ID="Table2">
			<tr>
				<td colspan="3">
					
		<table ID="Table15">
			<tr>
				<td colspan=4><center><font size="1">This project has no ratings yet</td>
			</tr>
		</table>
		
				</td>
				</tr>
			</tr>
		</table>
				</center>
		</td>
	</tr>
	
		<tr>
			<td>&nbsp;</td>
		</tr>
	
	</table> 


    	    
                        </td></tr></table> <!-- / Protective table -->            
                    </div></div> <!-- / #content -->      
                <hr />
            
<div class="sidebar">

            

    <div class="box box-search"><div class="box-inner">

          
        <div class="head">
            <h5><strong>Search</strong></h5>
        </div> <!-- / .head -->


                
            <div class="contents">

                    <form method="post" id="form1" name="form1" style="margin-bottom:0px" action="/RentACoder/misc/BidRequests/ShowBidRequests.asp?lngBidRequestListType=4&optSortTitle=2&cmSearch=Search&txtMaxNumberOfEntriesPerPage=10&lngSortColumn=-6&blnModeVerbose=True"> 


                  <fieldset>                    
                    <label class="hide">Search</label>
                    <input type="text" name="txtCriteria" id="txtCriteria" Class="SearchTextBox" />
                    <input type="submit" name="B3" id="btnFind" value="Find" Class="fancybutton SearchFind" />
                  </fieldset>
                    
                    </form>                        




            <ul>
                <li>
                   <a href="/RentACoder/SoftwareCoders/SearchWork.asp">Advanced Search</a>

                </li>
                <li><a href="/RentACoder/misc/BidRequests/ShowBidRequests.asp?lngBidRequestListType=3&optSortTitle=2&lngBidRequestCategoryId=-1&txtMaxNumberOfEntriesPerPage=10&optBidRequestPhase=2&lngSortColumn=-6&blnModeVerbose=True&optBiddingExpiration=1">Newest 
                    projects</a></li>
                <li><a href="/RentACoder/DotNet/misc/News.aspx">Latest news</a></li>
            </ul>

            </div> <!-- / .contents -->

            
      
    </div></div> <!-- / .box -->


   




    <div class="box box-highestranked"><div class="box-inner">
      
    
        <div class="head">
            <h5><strong>'All Workers' Competition.</strong></h5> 
        </div> <!-- / .head -->            
            
        <div class="contents">            
            <div class="TopWorker">
            <ol>
            <img   border="0" src="/images/IconExperience/ApplicationBasics/32x32/shadow/star_blue.png" width="32" height="32" /><a href="/RentACoder/dotnet/docs/AllCodersExplanation.aspx" >What is this list?</a><BR><ol><li><a href="/RentACoder/DotNet/SoftwareCoders/ShowBioInfo.aspx?lngAuthorId=1033162">cricava</a><br>
10 avg. over 
379 jobs.
</li><li><a href="/RentACoder/DotNet/SoftwareCoders/ShowBioInfo.aspx?lngAuthorId=213452">Gravity Jack, Inc.</a><br>
9.8 avg. over 
61 jobs.
</li><li><a href="/RentACoder/DotNet/SoftwareCoders/ShowBioInfo.aspx?lngAuthorId=1151754">Lisa_G</a><br>
9.9 avg. over 
1864 jobs.
</li><li><a href="/RentACoder/DotNet/SoftwareCoders/ShowBioInfo.aspx?lngAuthorId=1524214">calciustec h</a><br>
9.82 avg. over 
1544 jobs.
</li><li><a href="/RentACoder/DotNet/SoftwareCoders/ShowBioInfo.aspx?lngAuthorId=1128689">Pop Mihai Sergiu</a><br>
10 avg. over 
165 jobs.
</li><li><a href="/RentACoder/DotNet/SoftwareCoders/ShowBioInfo.aspx?lngAuthorId=391882">PSergei</a><br>
9.87 avg. over 
481 jobs.
</li><li><a href="/RentACoder/DotNet/SoftwareCoders/ShowBioInfo.aspx?lngAuthorId=1774642">DX Silverligh t Team</a><br>
9.8 avg. over 
318 jobs.
</li><li><a href="/RentACoder/DotNet/SoftwareCoders/ShowBioInfo.aspx?lngAuthorId=896918">Dali Studio</a><br>
9.83 avg. over 
181 jobs.
</li><li><a href="/RentACoder/DotNet/SoftwareCoders/ShowBioInfo.aspx?lngAuthorId=6410606">CodeAndMor e</a><br>
9.95 avg. over 
523 jobs.
</li><li><a href="/RentACoder/DotNet/SoftwareCoders/ShowBioInfo.aspx?lngAuthorId=6281468">Ing. Gervasio Marchand Cassataro</a><br>
10 avg. over 
187 jobs.
</li></ol><center><font size="1">
<BR>
<a href="/RentACoder/misc/AllCoderCompleteList.asp">...See ALL workers by ranking</a><BR>

            </ol>
            </div>
        </div> <!-- / .contents -->      
    </div></div> <!-- / .box -->
    

    <div class="box box-bidrequests"><div class="box-inner">
      
        <div class="head">
            <h5><strong>Newest 
            projects.</strong></h5>
            <a class="more" href="/RentACoder/misc/BidRequests/ShowBidRequests.asp?lngBidRequestListType=3&optSortTitle=2&lngBidRequestCategoryId=-1&txtMaxNumberOfEntriesPerPage=10&optBidRequestPhase=2&lngSortColumn=-6&blnModeVerbose=True&optBiddingExpiration=1">See ALL...</a>
        </div> <!-- / .head -->
  
        <div class="contents">

        <div class="marquee-wrapper">
                <div class="marquee-topmask"></div>
                <div class="marquee-botmask"></div>
              
                <div class="marquee-postings">
                    <marquee behavior="scroll" direction="up" scrollamount="1" height="200" width="156"
                        scrollamount="1" > <!-- not used speed="1" scrolldelay="240"-->
                        
                        
                        <div class="newsticker">
                        
                        <a name=NewestBidRequests></a><ul><li><div class="contents_disabled"><h6><a href="http://www.vWorker.com/RentACoder/misc/BidRequests/ShowBidRequest.asp?lngBidRequestId=1496893" target="_top">Design two 120x60 banner ads</a></h6>

<p>By Klemen Stirn on September 13 11:00:15 AM</p>
<p>Max Bid: Open to fair suggestions</p><p>&nbsp;</p></div></li>
<li><div class="contents_disabled"><h6><a href="http://www.vWorker.com/RentACoder/misc/BidRequests/ShowBidRequest.asp?lngBidRequestId=1496885" target="_top">CS Cart CCS and Website Skin Design</a></h6>

<p>By dnscreative on September 13 10:52:42 AM</p>
<p>Max Bid: $400.00</p><p>&nbsp;</p></div></li>
<li><div class="contents_disabled"><h6><a href="http://www.vWorker.com/RentACoder/misc/BidRequests/ShowBidRequest.asp?lngBidRequestId=1496874" target="_top">Flash banner in three versions</a></h6>

<p>By bodyarmornews on September 13 10:40:54 AM</p>
<p>Max Bid: $25.00</p><p>&nbsp;</p></div></li>
<li><div class="contents_disabled"><h6><a href="http://www.vWorker.com/RentACoder/misc/BidRequests/ShowBidRequest.asp?lngBidRequestId=1496880" target="_top">VB.NET TFTP Server to be added to existing VB Prog ...</a></h6>

<p>By willcavanagh on September 13 10:47:50 AM</p>
<p>Max Bid: Open to fair suggestions</p><p>&nbsp;</p></div></li>
<li><div class="contents_disabled"><h6><a href="http://www.vWorker.com/RentACoder/misc/BidRequests/ShowBidRequest.asp?lngBidRequestId=1496848" target="_top">Java Applet Help</a></h6>

<p>By techmann on September 13 10:20:38 AM</p>
<p>Max Bid: Open to fair suggestions</p><p>&nbsp;</p></div></li>
<li><div class="contents_disabled"><h6><a href="http://www.vWorker.com/RentACoder/misc/BidRequests/ShowBidRequest.asp?lngBidRequestId=1496875" target="_top">Translate Site English -&amp;gt; German</a></h6>

<p>By phdcom on September 13 10:43:12 AM</p>
<p>Max Bid: Open to fair suggestions</p><p>&nbsp;</p></div></li>
<li><div class="contents_disabled"><h6><a href="http://www.vWorker.com/RentACoder/misc/BidRequests/ShowBidRequest.asp?lngBidRequestId=1496881" target="_top">PSD to Ext JS Page</a></h6>

<p>By klocdev on September 13 10:47:50 AM</p>
<p>Max Bid: $200.00</p><p>&nbsp;</p></div></li>
<li><div class="contents_disabled"><h6><a href="http://www.vWorker.com/RentACoder/misc/BidRequests/ShowBidRequest.asp?lngBidRequestId=1496868" target="_top">Freshbooks to Quickbooks Export</a></h6>

<p>By Miles Gibson on September 13 10:38:42 AM</p>
<p>Max Bid: Open to fair suggestions</p><p>&nbsp;</p></div></li>
<li><div class="contents_disabled"><h6><a href="http://www.vWorker.com/RentACoder/misc/BidRequests/ShowBidRequest.asp?lngBidRequestId=1496858" target="_top">vb project curl ftp</a></h6>

<p>By Lazymoon on September 13 10:32:14 AM</p>
<p>Max Bid: $100.00</p><p>&nbsp;</p></div></li>
<li><div class="contents_disabled"><h6><a href="http://www.vWorker.com/RentACoder/misc/BidRequests/ShowBidRequest.asp?lngBidRequestId=1496604" target="_top">Website Design</a></h6>

<p>By FouadAbiad on September 13 2:28:15 AM</p>
<p>Max Bid: $500.00</p><p>&nbsp;</p></div></li>
<li><div class="contents_disabled"><h6><a href="http://www.vWorker.com/RentACoder/misc/BidRequests/ShowBidRequest.asp?lngBidRequestId=1496609" target="_top">Archive a web site from archive.org / Wayback mach ...</a></h6>

<p>By Madewell on September 13 2:35:15 AM</p>
<p>Max Bid: $20.00</p><p>&nbsp;</p></div></li>
<li><div class="contents_disabled"><h6><a href="http://www.vWorker.com/RentACoder/misc/BidRequests/ShowBidRequest.asp?lngBidRequestId=1496840" target="_top">Add a simple 'plugin' blog to a web site (topic of ...</a></h6>

<p>By dan in kaz on September 13 10:05:45 AM</p>
<p>Max Bid: $110.00</p><p>&nbsp;</p></div></li>
<li><div class="contents_disabled"><h6><a href="http://www.vWorker.com/RentACoder/misc/BidRequests/ShowBidRequest.asp?lngBidRequestId=1496843" target="_top">Help Me With Accounting Worksheet (Excel)(repost)</a></h6>

<p>By daviskp on September 13 10:12:30 AM</p>
<p>Max Bid: Open to fair suggestions</p><p>&nbsp;</p></div></li>
<li><div class="contents_disabled"><h6><a href="http://www.vWorker.com/RentACoder/misc/BidRequests/ShowBidRequest.asp?lngBidRequestId=1496578" target="_top">Replica website in PHP</a></h6>

<p>By kafayat on September 13 1:24:19 AM</p>
<p>Max Bid: $60.00</p><p>&nbsp;</p></div></li>
<li><div class="contents_disabled"><h6><a href="http://www.vWorker.com/RentACoder/misc/BidRequests/ShowBidRequest.asp?lngBidRequestId=1496577" target="_top">Modify mybb forum to make a "paid to post" section</a></h6>

<p>By mrstealth99 on September 13 1:12:12 AM</p>
<p>Max Bid: $100.00</p><p>&nbsp;</p></div></li>
</ul>
                        
                        </div> <!-- / .newsticker -->
                        
                    </marquee>
                </div> <!-- / .marquee-postings -->
                
                
                
                
            </div> <!-- / .marquee-wrapper -->
    		 
    		 <center>
  		    <p>Click here to put this ticker <a href="/RentACoder/misc/LinkToUs/FreeDynamicContent.asp?blnHideChannelSubscribe=true&blnLaunchLinkInNewWindow=true#ScrollingCodeTicker"
  		    >on your own site</a> and/or get <a href="/RentACoder/misc/LinkToUs/FreeDynamicContent.asp?blnHideChannelSubscribe=true&blnLaunchLinkInNewWindow=true#NewsFeeds">live RSS newsfeeds</a>.</p>
                  </center>   



        </div> <!-- / .contents -->
      
    </div></div> <!-- / .box -->

</div> <!-- / #sidebar -->

    

                </div> <!-- / #wrapper -->	
            </div> <!-- / .container -->	
        </div> <!-- / #page -->
        
      
    
            <hr />
            <div class="footer">              
                <div class="container">                
                    <div class="nav">
                      <ul>
                        <li class="first-child"><a href="/RentACoder/DotNet/misc/News.aspx">Latest News</a>
                          </li>
                        <li><a href="/RentACoder/DotNet/misc/About/default.aspx">About Us</a></li>
                        <li><a href="/RentACoder/DotNet/SoftwareBuyers/BuyerKudos.aspx">Kudos</a></li>
                        <li><a href="/RentACoder/misc/Feedback.asp">Feedback/Contact</a></li>
                        <li><a href="/RentACoder/Affiliates/Help.asp">Affiliates</a></li>
                        <li><a href="/RentACoder/misc/Legal.asp">Legal</a></li>
                        <li><a target="_blank" href="http://blog.vWorker.com/">Blog</a></li>
                      </ul>
                    </div> <!-- / .nav -->
                
                    <div class="copyright">Copyright � 2001-2010 <a target=_blank href="http://www.exhedra.com"> Exhedra Solutions, Inc.</a> All rights reserved. <!br>
By using this site you agree to its <a href="/RentACoder/misc/TermsAndConditions.asp">Terms and Conditions</a>.<!br> 
<a target=_blank href="/RentACoder/DotNet/Default.aspx">vWorker.com</a>�,  &quot;<a href="/RentACoder/DotNet/Docs/SGD.aspx">Expert Guarantee</a>&quot;�  <a href="/RentACoder/DotNet/misc/TimeCard/DesktopApp/Overview.aspx">AccuTimeCard�</a> and &quot;More capable, accountable and affordable. Guaranteed.&quot;�<!BR> are trademarks of <a target=_blank href="http://www.exhedra.com"> Exhedra Solutions, Inc.</a>.  Page generated by IISPROD01 at 9/13/2010 11:52:31 AM</div>
        		
                </div> <!-- / container -->	
            
                

            </div> <!-- / footer -->

        

    </div> <!-- / background-->

</body>
</html>


<!--Google analytics-->
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-1238797-1']);
  _gaq.push(['_setDomainName', '.vworker.com']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>

<!--sitewit analytics-->
<script type="text/javascript">
var loc = (("https:" == document.location.protocol) ? "https://analytics." : "http://analytics.");
document.write(unescape("%3Cscript src='" + loc + "sitewit.com/sw.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
var sw = new _sw_analytics();
sw.id='95';
sw.register_page_view();
</script>


<!--Performable tracking code-->
<!-- Performable Code for Tracking Page Views and Visitors --> 
<script type="text/javascript"> 
  var _paq = _paq || []; 
  _paq.push(["setAccount", "585JVw"]); 
  _paq.push(["trackPageView"]); 
  (function() { 
    var pa = document.createElement('script'); pa.type = 
'text/javascript'; pa.async = true; 
    pa.src = '//analytics.performable.com/pax.js'; 
    var s = document.getElementsByTagName('script')[0]; 
s.parentNode.insertBefore(pa, s); 
  })(); 
</script>
