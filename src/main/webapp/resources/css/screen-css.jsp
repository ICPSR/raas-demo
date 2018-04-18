<%@page contentType="text/css" session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

/* begin structural code */


body {
/*	font-family: "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif; */
	font-family: 'Open Sans', sans-serif;	
	}
	
a {
	color: #004a8f; 
}

/* begin new bootstrap column widths */

.col-md-0point5, 
.col-md-11point5,
.col-md-0point25,
.col-md-11point75 {
    position: relative;
    min-height: 1px;
    padding-right: 15px;
    padding-left: 15px;
}

@media (min-width: 768px) {
    .col-md-0point5, 
    .col-md-11point5,
	.col-md-0point25,
	.col-md-11point75 {
        float: left;
    }
    .col-md-0point25 {
        width: 2.083333333%;
    }
    .col-md-11point75 {
        width: 97.916666667%;
    }
    .col-md-0point5 {
        width: 4.16666667%;
    }
    .col-md-11point5 {
        width: 95.83333333%;
    }
}

/* end new bootstrap column widths */

/* end structural code */

/* begin header */

/* end header */

/* begin nav */


.topbar {
	background: #063663;
	color: #fff;
	padding-right: 15px;
}

.topbar a {
	color: #fff;
}

.topbar li>a:hover, .topbar li>a:focus {
	background: transparent;
}

.navbar-brand {
	float: none;
}

.dropdown-menu>li>a:hover, .dropdown-menu>li>a:focus {
	text-decoration: underline;
}

#studiesNavSearch {
	margin-top: 9px;
}

.navbar-inverse {
	border-radius: 0px;
	border: 0px;
	}
	
.navbar-inverse .navbar-toggle {
	background: #063663;
}

header .navbar-inverse {
	/*background-image: linear-gradient(to bottom,#464645 0,#000000 100%);*/
	background: transparent;
	border-bottom: 1px solid #063663;
	}
	
header .navbar-inverse .nav>li>a {
	color: #004a8f; 
	font-size: 20px;
	margin-top: 30px;
	}
	
.navbar-inverse .navbar-nav>li>a {
    text-shadow:none;
}
	
header .navbar-inverse .nav li a.navbar-brand {
	padding: 5px;
	margin-top: 0;
	}

header .navbar-brand {
	height: auto;
}

header .navbar-inverse a.navbar-brand img {
	width: 100px;
	}

.navbar-inverse .navbar-form {
	margin-top: 40px;
}
	
header .navbar-inverse .nav li a:hover, 
header .navbar-inverse .nav li.dropdown ul.dropdown-menu li a:hover {
	text-decoration: underline;
	color: #004a8f; 
	}
	
header .navbar-inverse ul.nav li ul.dropdown-menu li > a:hover, 
header .navbar-inverse ul.nav li ul.dropdown-menu li > a:focus {
	background-color: #3a7224;
	background-image: none;
	}

header .navbar-inverse ul.nav li ul.dropdown-menu li > a {
	color: black;
	}
	

	
@media (min-width: 768px){
	/* this code makes the main nav menu work on hover */
	.dropdown:hover .dropdown-menu {
	    display: block;
		 }
		
	}

/* end nav */
	 
/* begin footer */
	 
footer {
	padding-top: 20px;
	margin-top: 20px;
	border-top: 1px solid #dedede;
	margin-bottom: 20px;
	}	
	
footer .footerNav {
	text-align:center;
	margin-bottom:25px;	
	}
	
footer #copyrightLine {
	text-align:center;
	}

footer #copyrightLine img {
	padding-right: 10px;
	width: 75px;
	}
	
/* end footer */	 

/* begin page styles */

article a {
	text-decoration: underline;
	}

article a.btn {
	text-decoration: none;
	}
	
article .panel-heading .panel-title a {
	text-decoration: none;
	}
	
.alert-ie {
	margin-top: 20px;
	color: #000;
}
	

h1 {

  font-size: 2em;
  color: #063663;
  }	

h2 {

  font-size: 1.7em;
   color: #063663;
  }	
	
h3 {

  font-size: 1.5em;
   color: #063663;
  }	

h4 {

  font-size: 1.2em;
   color: #063663;
  }	

.btn-primary {
     background: #004a8f;
     border: 1px solid #ccc;
    }
    
.btn-primary:hover, .btn-primary:focus {
	background: #3e806c;
}    

.btn-warning {
	color: #000;
	border: none;
}

.btn-warning:hover,
.btn-warning:focus {
    background: #3e806c;
    color: #fff;
}

div#miscProperties {
	display: none;
	}

/* skip navigation link for accessibility */

#skip a, #skip a:hover, #skip a:visited, .skipNav a, .skipNav a:hover, .skipNav a:visited  { 
	position:absolute; 
	left:0px; 
	top:-500px; 
	width:1px; 
	height:1px; 
	overflow:hidden;
} 

#skip a:active, #skip a:focus, .skipNav a:active, .skipNav a:focus {
	position:static; 
	width:auto; 
	height:auto; 
}
	
/* end skip nav */

/* end page styles */
	
/* mobile customizations */

img {
	max-width: 100%;
	}

@media (max-width: 768px) {
    .topbar {
    padding-bottom: 10px;
	}
	
	header .navbar-inverse .nav>li>a {
		margin-top: 0;
	}
	
	.text-nowrap {
		white-space: normal;
	}
}



@media (min-width: 992px) {
		 .pos-rel {
		 	position: relative;
		 }
		 
		.bottom-text-align {
			position: absolute;
			bottom: 30px;
			right: 0;
		}
	
}

@media (min-width: 1200px) {
	/* -lg */	

}

/* end mobile customizations */

/* begin search customizations */

aside h2 {
	font-size: 130%;
	}
	
aside h3 {
	font-size: 110%;
	}
	
div.searchResult:nth-child(odd) {
	background-color: #efefef;
	padding-top: 5px;
	padding-bottom: 5px;
	}
	
div.searchResult:nth-child(even)  {
	background-color: #ffffff;
	padding-top: 5px;
	padding-bottom: 5px;
	}

div.previous-next {
	background-color: #efefef;
	padding: 5px;
	font-size: 90%;
	margin-top: 10px;
	vertical-align: middle;
	}
	
div.previous-next label {
	font-weight: normal;
	}
	
div#bannerText {
	display: none;
<<<<<<< HEAD

=======
	background-color: #8dc63f; 
	padding: 5px;
>>>>>>> a1d6a40... ARCHDEV-421: Finished off getting the expiry date for the banner display.  Moved styling into the css
	}	

/* blacklight facet styles */

.list-unstyled {
    padding-left: 0;
    list-style: none;
	}
	
.facet-values {
    display: table;
    width: 100%;
	}

.facet-values li {
    display: table-row;
	}

.facet-values .facet-label {
    display: table-cell;
    padding-right: 1em;
    text-indent: -15px;
    padding-left: 15px;
    padding-bottom: 6px;
   }
   
.facet-values .facet-count {
    display: table-cell;
    vertical-align: top;
    text-align: right;
	}
	
.panel-heading.collapse-toggle .panel-title:after {
    font-family: 'Glyphicons Halflings';
    content: "\e114";
    float: right;
    color: grey;
    font-size: 0.8em;
    line-height: normal;
    }
    
.panel-heading.collapse-toggle.collapsed .panel-title:after {
  	content: "\e080";
	}   

.facet-values li.overCap {
	display: none;
	}

#viewAllButton {
	margin-left: 10px;
	}

/* end search customizations */



/* OLD STYLES
	
p a#ccLink img {
	border-width: 0;
	float: right;
	padding-left: 5px;
}

.instructions {
	vertical-align: top;
	margin-left: 10px;
	color: #666;
	}
	
cite {
	font-style: italic;
	}

}

*/

/* styles from icpsrweb external css */


img.feature-icon {
	max-height: 40px;
}

footer {margin-bottom: 10px;}

.orcid-auth {width: 350px;}

.pricing-feature-col {}

.pricing-selfdeposit-col {width: 10%;}

.pricing-professional-col {width: 10%;}

.pricing-fullarchive-col {width: 10%;}

.indent-column {	
	padding-left: 50px;
}
/* This is used by citeproc-js for the citations that are generated via javascript. */
.csl-entry {
	display: inline;
}



h1, .h1, h2, .h2, h3, .h3 {
	color: #fff;
}


* {
	text-shadow: none;
}

.panel {
	color: #000;
}

.panel a,
.panel a:hover,
.panel a:focus,
#projectTree a {
	color: #000 !important;
}

.container-fluid {
	width: 100%;
}

