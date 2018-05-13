function AspTable() {

}
var selTr = null;
function GoSel(evt)
{
    var el = evt.srcElement?evt.srcElement:evt.target;
    if(el.tagName.toUpperCase() !="TD") return;
        var tr = el.parentNode;
             
    tr.style.backgroundColor = "lightblue";
    if(selTr !=null)
    {
        selTr.style.backgroundColor ="white";
    }
            
        selTr = tr;
        var str = tr.cells[0].innerText;
        var part = tr.cells[4].innerText;
        //alert(str);
        document.getElementById("hide").value = str;
        document.getElementById("hide_part").value = part;
    // $("#lab_test").text = tr.cells[0].innerText;
        //alert(tr.cells[0].innerText);
}