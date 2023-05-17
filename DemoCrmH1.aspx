<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DemoCrmH1.aspx.cs" Inherits="DemoCrmH.DemoCrmH" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <title></title>
    <style>
        .error{
            background-color:red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <div>
                 <asp:Label ID="LabCommaError1" runat="server" CssClass="error" Text=""></asp:Label>
               </div>
                <div>
                <asp:Label ID="LabSmallLetters" runat="server" Text=""></asp:Label>
                </div>
                  <asp:Label ID="Lab1" runat="server" Text=""></asp:Label>
             
                <br />
                <asp:Label ID="Lab2" runat="server" Text=""></asp:Label>
                <br />
                Start date:
                <asp:TextBox ID="txtStartDate" runat="server" TextMode="Date"></asp:TextBox>
                End Date:
                 <asp:TextBox ID="txtEndDate" runat="server" TextMode="Date"></asp:TextBox>
                 <%--<asp:DropDownList OnSelectedIndexChanged="DDlSite_SelectedIndexChanged" ID="ddlSite" runat="server">
                    <asp:ListItem Value="fortrade">fortrade</asp:ListItem>
                    <asp:ListItem Value="gcmasia">gcmasia</asp:ListItem>
                    <asp:ListItem Value="kapitalRS">kapitalrs</asp:ListItem>
                    <asp:ListItem Value="gcmforex">gcmforex</asp:ListItem>
                </asp:DropDownList>--%>
                <asp:DropDownList OnSelectedIndexChanged="Unnamed_SelectedIndexChanged1" ID="ddlSite1" runat="server">
                     <asp:ListItem Value="fortrade">fortrade</asp:ListItem>
                    <asp:ListItem Value="gcmasia">gcmasia</asp:ListItem>
                    <asp:ListItem Value="kapitalRS">kapitalrs</asp:ListItem>
                    <asp:ListItem Value="gcmforex">gcmforex</asp:ListItem>




                </asp:DropDownList>
              

                <asp:Button ID="BtnSearch" runat="server" Text="Submit" OnClick="BtnSearch_Click"></asp:Button>
                <asp:Button ID="fireLinks" runat="server"  Text="Fire Links" />
                <input type="button" id="btnShow" value="Show Links" />
                 <%--  <asp:CheckBox ID="CheckBox1" runat="server" />--%> 
                <br />
                <asp:Label ID="lbFire" runat="server" Text=""></asp:Label>
                <br />
                   <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                
                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                
            </div>
        </div>
    
    </form>
  <script>

        


        $(document).ready(function () {
        


    var secondDay = new Date();
    secondDay.setDate(secondDay.getDate());
    var m = secondDay.getDay();
    if (m=="0") {
                 $("#txtStartDate").val( new Date(Date.now() - 3 * 86400000 - new Date().getTimezoneOffset() * 60000).toISOString().split('T')[0]);
                }
    else {
            $("#txtStartDate").val( new Date(Date.now() - 1 * 86400000 - new Date().getTimezoneOffset() * 60000).toISOString().split('T')[0]);
        }

   $("#txtEndDate").val( new Date(Date.now() - 0 * 86400000 - new Date().getTimezoneOffset() * 60000).toISOString().split('T')[0]);




    
 // $('#Label1').find('a').trigger('click');
             $(document).on('click', 'a.ck', function () {
                console.log(this);
                this.click();
                this.remove();
            });


        //    ////open links by tab
             $("#fireLinks").on("click", function () {
            $('.ck').click(function () {
                $('.ck').attr('target', '_blank');
                window.open = $(this).attr('href');
                this.remove();
            }).click();
        });

              

      
           
            $("#btnShow").on('click', function () {
                var obj = $(".ck");
                console.log(obj);
                for (var i = 0; i < obj.length; i++) {
                    var brand = obj[i].getAttribute("href");
                    obj[i].textContent = brand;
                   $("<br/>").insertAfter( obj[i]);
                  //  console.log(obj[i].textContent);
      
                }
            });


            //open links with no tab
      //$("#fireLinks").on("click", function () {
      //             $('a').each(function () {
      //               var wnd= $(this).attr('href');
      //                 $.get(wnd);
      //                 console.log(wnd);
      //          });
      //      });

        //    $("#fireLinks").on("click", function () {

        //        var alllinks = $('a');
        //           $('a').each(function () {
        //             var wnd= $(this).attr('href');
        //               $.get(wnd);
        //               console.log(wnd);
        //        });
        //});


             });
       

    </script>

    </body>
</html>

