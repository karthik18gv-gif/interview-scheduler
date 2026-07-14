 
 // ***** Popup Control *******


function check1()
{
    //var x=document.getElementsByName(frmname)
    //var y=document.getElementsByName(txtname)

        if((document.emphomefrm1.candid1.value==""))
            {
                alert("Please Enter the Canditate Id")
                document.emphomefrm1.candid1.focus()
                return false;
            }
        else
            {

            }
   return true
}
function onlyNumbers(evt)
{
    var e = event || evt; // for trans-browser compatibility
    var charCode = e.which || e.keyCode;

    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;

    return true;
}
function check2()
{
    //var x=document.getElementsByName(frmname)
    //var y=document.getElementsByName(txtname)
    
        if((document.emphomefrm2.candid2.value=="") ||( document.emphomefrm2.candid2==null))
            {
                alert("Please Enter the Canditate Id")
                document.emphomefrm2.candid2.focus()
                return false;
            }
         
        else
            {

            }
   return true
}

function check3()
{
 if(document.applicantfrm.candid3.value=="" || document.applicantfrm.candid3==null)
 {
                alert("Please Enter the Canditate Id")
                document.applicantfrm.candid3.focus()
                return false;
 }
 else
     {
         
     }
 return true
}
function isNumberKey(evt)
      {
         var charCode = (evt.which) ? evt.which : event.keyCode
         if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;

         return true;

      }
