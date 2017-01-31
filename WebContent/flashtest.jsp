<SCRIPT LANGUAGE="JavaScript">

var num=1
img1 = new Image ()
img1.src = "C:\Users\Nikhil\Desktop\interstellar.jpg"
img2 = new Image ()
img2.src = "C:\Users\Nikhil\Desktop\mockingjay.jpg"
img3 = new Image ()
img3.src = "C:\Users\Nikhil\Desktop\fury.jpg"


text1 = "Interstellar"
text2 = "The Hunger Games:Mockingjay Part1"
text3 = "Fury"


function slideshowUp()
{
num=num+1
if (num==4)
{num=1}
document.mypic.src=eval("img"+num+".src")
document.joe.burns.value=eval("text"+num)
}

function slideshowBack()
{
num=num-1
if (num==0)
{num=3}
document.mypic.src=eval("img"+num+".src")
document.joe.burns.value=eval("text"+num)
}

</SCRIPT>

<!-- The Image and Form Codes are Below --> 

<CENTER>
<IMG SRC="C:\Users\Nikhil\Desktop\interstellar.jpg" NAME="mypic" BORDER=0 HEIGHT="300" WIDTH="300">

<p>

<FORM NAME="joe">
<INPUT TYPE="text" WIDTH="100" NAME="burns" VALUE="Interstellar">
</FORM>

<A HREF="JavaScript:slideshowBack()"> Back</A>

<A HREF="JavaScript:slideshowUp()"> Next</A> 

