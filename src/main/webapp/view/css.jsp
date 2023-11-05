<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<jsp:include page="head.jsp"></jsp:include>
<body>
	<jsp:include page="header.jsp" />
	<div> ways of specifying css 
		inline
		internal css 
		external css 
		importing css @import url("../css/main.css"); this line should be always fist line in css file 
		============================================= 
		selectors
		--------------- 
		element selector
		class selector 
		contextual selector
		attribute selector 
		pseudo classes 
		
		element selector 
		p{ color: blue; }
		
		class selector 
		.row{ background-color: brown; } 
		
		contextual selector
		helps in selecting an element which is present in another element
		
		section p{ background: red; } 
		
		attibute selector: 
		
		input[type="text"]{
		color: aqua; } 
		
		pseudo classes 
		.row:hover img{ 
			backface-visibility: hidden; 
			opacity: 0.2; } 
		.row:hover text{ 
		opacity: 1; 
		}
		============================================ 
		additional css selector
		
		id selector 
		relational selector - child selector, sibling selector,	general sibling selector 
		grouping selectors 
		pseudo classes 
		pseudo  elements 
		
		ID SELECTOR 
		#main{ 
			background: red;
			 } 
		RELATIONAL selectors
		Styling only the direct child element of a parent ignoring the nested child elements can be done with the help of relative selectors 
		CHILD selector (>) 
		
		div>p{ //css is applied only to the just direct child of div and not to other child p which is child of other element which is inside of div element 
		background: red; 
		} 
		
		example 
		
		<div>...</div> child element of	div so above css applied to this only 
		<section>... SIBLING SELECTOR (+) applied
		to immediate sibling div+p{ background: red; } ... ... --> applied to
		this only ... GENERAL SIBLING SELECTOR (~) applied to all sibliing div
		~ p{ background: red; } ... ... --> applied here ... --> applied here
		GROUPING SELECTOR (,) section,div{ background: red; } ... --> applied
		here ... --> applied here ... --> applied here PSEUDO CLASSES
		Pseudoclasses are used to style HTML elements based on their state
		input:required{ background-color: red; } --> applied here other pseudo
		classes enabled disabled focus checked first-child nth-child(3)
		last-child li:first-child{ background-color: grey; } li:nth-child(3){
		background-color: lightblue; } ... --> applied here ... ... -->
		applied here PSEUDO ELEMENT (::) pseudo-elements are used to style
		certain parts of an element p::first-letter{ font-size:32px; }
		======================================================== CSS ODERING
		when multiple css is applied on same element then conflict is resolved
		using: cascade selectors precedence -> Selectors precedence is used
		when styling is applied to an element using multiple selectors
		specificity important priority -> inline > internal > external >
		default id selector > class selector > element selector SPECIFICITY
		When there are multiple styples specified using multiple selector a
		style rule, then the priority is to be decided based on the
		specificity A specificity is a 3-digit number calculated for a style
		rule based on the number of id selectors, class selectors and element
		selectors eg: section.sclass p#pid.pclass id selector ->1 class
		selector -> 2 element selector ->2 here specificity is 122 Inheritence
		-> some css property of parent is inherited by child like font family,
		colour but border and margin property is not inherited if we apply
		border:inherit; then child will inherit the parent property by
		providing !important we make it more priority than others
		====================================================================
		TYPOGRAPHY types: color text font color ------------- why typography
		apparence of the content overalltone of the website great user
		experience color: RGB/RGBA r 0 to 255 or 0 to 100% g 0 to 255 or 0 to
		100% b 0 to 255 or 0 to 100% apha 0 to 1 or or 0 to 100% Hexadecimal
		numbers (0-9,A-B) notation #RGBA <-> #RRGGBBAA #0F38 <-> #00ff3388
		HSL/HSLA hue 0-360 saturation 0-360 lightness 0-360 opacity 0-1
		hsl(150,35,0) Background is short hand property for background-color
		background-image background-repeat background-origin background-size
		background-position background-clip background-attachment background:
		url("../images/taj.jpeg") center; text ----------- most commonly used
		property is text-align: left right center justfied text-decoration:
		underline none (for hyperlink) font ---------- font-style font-size
		font-variant font-weight: normal (400) bold (700)/numberic value (100
		to 900) font-stretch line-height font-family text-transform
		text-indent: 50px ext-indent property adds an indent at the beginning
		of a paragraph text-decoration: line-through CSS UNITS --------------
		absolute unit: cm mm in px(1px=1/96th of 1 in) pt (1pt=1/72th of 1 in)
		pc (1pc = 12 pt) relative unit: em relative to the font-size ex=
		relative to x-height of the curent font rem relative to font-size vw
		relative to 1% of the width of the viewport vh relative to 1% of the
		height of viewport % relative to the parent element Color property
		-------------- covered above background ------------
		background-image:url('img1.jpg'); background-position: center;
		background-size:cover; contain -> make sure entire img is visible
		=========================================================== Box model:
		---------- content content area border, padding , margin, box-sizing,
		width height border: 2px solid grey; border is short hand for
		border-width boder-style border-color border-radius: 25px; box-sizing:
		content-box; ->default property border-box; -> child elemnt is
		shrinked inside the parent element we generally make its decleration
		at css begning with universal selector * *{ box-sizing:border-box;
		margin:0; } when parent element and child element both is given width
		property then we need to take care of the child element width as it
		may extends more than the parent and overall it get distorted. For
		this CSS introduced box-sizing:border-box; content-box vs border-box
		when using box-sizing : content-box; the content size remain same
		while border-box size grows as padding and border grow
		box-sizing:border-box; -> child element is bounded inside the parent
		element NOTE: border property is a must to specify border-radius. Both
		border and border-radius properties are shorthand properties. This
		create a solid border on all sides and a dotted border only to the
		right side of an element border: solid 3px; border-right-style:
		dotted; border: solid 3px; border-right: dotted 3px;
		=================================================== PADDING padding is
		short hand property for: padding-top padding-right padding-bottom
		padding-left if specified padding: 10px 20px; then padding-top=10px
		padding-bottom=10px; padding-right=20px padding-left=20px if specified
		padding: 10px 20px 30px; then padding-top=10px padding-bottom=30px;
		padding-right=20px padding-left=20px
		==================================================== LAYOUT layout is
		used to define structure of website to make look and feel good -what
		are layout -various properties available to create layout -understand
		the usage of css properties used to create layouts
		------------------------------- header ----------------------------
		Navigation menu ---------------------------- Content
		-------------------------- footer ---------------------------
		______________________________________________________________________
		------------------------------------- header
		------------------------------------- Navigation menu
		------------------------------------- | | | | ContentA | ContentB | |
		| | ----------------------------------- footer
		-----------------------------------
		_______________________________________________________________________
		------------------------------------------ header
		----------------------------------------- Navigation menu
		----------------------------------------- | | | | | | Side | Main
		|Side Content | Content |Content | | | | | | | |
		----------------------------------------- footer
		----------------------------------------- in order to create a layout
		CSS offers the property such as: float position flex grid FLOAT:
		-------- float:left | right |none | inherit; float css property places
		an element to the left or right of the conainer and text as inline
		element wrap aroud it this we can use to crate a website having
		multiple column layout as well POSITION: ---------- determined the
		position of the element left | right| bottom| top determines the
		position of the element. position: static | relative | absolute |
		sticky; static -> element is positioned according to document normal
		flow, the top | left | bottom | right will have no effect. static is
		default value for position property relative -> element is positioned
		according to document normal flow, the top | left | bottom | right
		will have effect relative to itself. fixed -> element is positioned
		according to window/viewport, the top | left | bottom | right will
		have effect relative to viewport. element will be there even the
		browser is scrollled absolute -> element is positioned according to
		its closest positioned ancestor, the top | left | bottom | right will
		have effect relative to closest positioned ancestor. If the absolute
		element doesnt have ancestor then position will be relative to HTML
		element and move with page scroll FLEX --------- to make the layout
		flexible (flex-box), flex-box is one dimentional layout method that
		helps in laying out items in rows or columns the flex container
		expands the items to fill available space or even shrinks the item to
		prevent the overflow display: flex; the container which is set with
		display: flex is called flex container the items is laid out as
		flexible boxes inside the flex contaner is termed as flex-items
		flex-direction: row |row-reverse | column | column-reverse; the
		direction in which items should be arranged, row is default value;
		flex-wrap: nowrap | wrap | wrap-reverse; assumed we have assigned
		fixed width of flex items, the item may overflow the container as
		default value of flex is no-wrap to wrap provide the wrap value
		justify-content: start | center | space-between | space-around |
		space-evenly; flex-grow: 1 | 2 | 0.6 | When the flex-container's main
		size is larger than the combined main size's of the flex items, the
		extra space is distributed among the flex items, with each item growth
		being their growth factor value as a proportion of the sum total of
		all the container's items' flex grow factors. This property specifies
		how much of the remaining space in the flex container should be
		assigned to the item (the flex grow factor) align-items: stretch;
		other flex properties flex-direction: center; justify-elements:
		center; justify-content: center; flex-align: center; The flex property
		is a shorthand property for: flex-grow flex-shrink flex-basis The
		flex-basis property specifies the initial length of a flexible item
		The flex-shrink property specifies how the item will shrink relative
		to the rest of the flexible items inside the same container. GRID
		------- css grid is two dimentional layout which lets us to arrange
		the items in rows and columns display:grid; grid-template-columns:
		value1 value2; <-- without this grid property doesnt apply (value
		based on the numer of columns) grid-template-columns: 20px 20px; -->
		two column per row (value based on the numer of columns) grid-gap:
		20px; gap between rows and columns .grid-container{ display: grid;
		grid-template-ares: "menu menu menu main main main" "right right right
		main main main" "right right right footer footer footer"; } .item2{
		grid-area: menu; height: 25px; } .item2{ grid-area: main; height:
		40px; } .item2{ grid-area: right; } .item2{ grid-area: footer; height:
		25px } The grid-row property is used to specify the position and size
		in a grid layout. And it is a short-hand property for grid-row-start,
		grid-column-start, grid-row-end, and grid-column-end.
		====================================================================
		Responsive web design (RWD) --------------------------- fluid layout
		flexible images media queries fluid layout ------------- a layout that
		grows and shrinks according to the viewport dimensions content width
		absolute width (px) --> relative value (%) 1024px -> 100% 960px ->
		93.75% flexible Image ---------------- property which makes images to
		grow and shrink according to container dimension relative unit for the
		div: div{ width:17.85%; max-width:150px; } to scale the background
		image we need to set the background size property media Queries
		--------------- method to write the css property individually for
		desktop laptop tablet mobile @media screen and (min-width: 376px) and
		(max-width: 768px){ /*css rules for styling the viewport less than
		768px and greater that 376*/ } if screen width= max size then css
		property is applied ========================================= font
		awsome effect ------------------ Transformation Transition Animation
		Transformation ---------------- css transformation property alter the
		shape and position of element with disturbing the normal flow
		transform: translate (120px,80px); -> accross horizontal and vertical
		transform: scale(2,1); -> scale width and height transform:
		rotate(180deg); -> simply rotate at center for provided angle
		transform: skew(50deg,10deg); -> skew across horizontal and vertical
		access .offer-usa .superSaver-image{ background: url("../someimg.jpg")
		certer; backgroud-size: cover; tansform:perspective(1000px); }
		.offer-usa .superSaver-text{ font-size:13px; line-height:25px;
		padding-top:45px; tansform:perspective(1000px) rotateY(180deg); }
		.offer-usa:hover .superSaver-image{ tansform:perspective(1000px)
		rotateY(-180deg); } .offer-usa:hover .superSaver-text{
		tansform:perspective(1000px) rotateY(0); } perspective is vanishing
		point The perspective distance used by perspective() is specified by a
		value, which represents the distance between the user and the z=0
		plane, or by none Translate method helps in moving the elements. Scale
		methods help in changing the size of the elements. The rotate method
		helps in rotating the elements. The skew method helps in tilting the
		elements transition ------------------ applied when state is changed
		eg hover transition: width 3s ease 2s; width == transistion-property
		3s == transition-duration ease== transition-timing function 2s==
		transition delay div{ background-color:blue; width:200px;
		height:100px; transition:width 3s, height 3s; } div:hover{
		background-color:green; width:300px; height:200px; } annimation
		--------------------- CSS animation allows to alter the behaviour and
		appearance of the element with transition we have initial and final
		stage but with animation we have intermediatary stage as well eg:
		image sliding on homepage To create annimation step 1: define
		annimation @keyframes myAnnimation{ 0% {color:white;background:black;}
		50% {color:white;background:blue;} --> annimation breakpoint and
		properties to be annimated in each step 100%
		{color:white;background:red;} } div{ annimation: myAnnimation 4s; }
		annimation is short hand property for annimation: myAnnim 3s
		ease-in-out 2s 2 reverse forwards paused; annimation: animation-name
		annim-dur annim-timing-function annimation-delay
		annimation-iteration-count animation-direction animation-fill-mode
		animation-play state image slide annimation: @keyframes slide-effect {
		0%{ margin-left: 0; } 20%{ margin-left: -1200px; } 40%{ margin-left:
		-2400px; } 60%{ margin-left: -3600px; } 80%{ margin-left: -4800px; }
		100%{ margin-left: -6000px; } } .slide-wrapper{ animation:
		slide-effect 18s ease infinite; width: 6000px; } .slide{ width: 600px;
		float: left; height: 375px; border: 1px solid black; }
		.slide:nth-child(1){ background-color: green; } .slide:nth-child(2){
		background-color: violet; } .slide:nth-child(3){ background-color:
		aqua; } .slide:nth-child(4){ background-color: brown; }
		.slide:nth-child(5){ background-color: pink; }
		--------------------------------- nimation-name:fordiv;
		animation-duration:5s; animation-timing-function:ease-in-out;
		animation-delay:1s; animation-direction:normal;
		animation-iteration-count:infinite; ----------------------------
		------------------------------------- a. Transitions can occur only
		during some events. b. Both transitions and animations cannot work
		without specifying the duration.
		===========================================================================
		CSS Injection: --------------- to prevent from css injection:
		================css content===========================================
	</div>
</body>
</html>