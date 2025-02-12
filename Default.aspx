<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="col-md-12">
  <h3>Choose Payment Mode</h3>
            <hr />
            <ul class="nav nav-tabs">
                <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#wallets">WALLETS</a></li>
                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#cards">CREDIT/DEBIT CARDS</a></li>
                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#cod">COD</a></li>
            </ul>
             <div class="tab-content">
                <div id="wallets" class="tab-pane fade show active">
                    <h3>HOME</h3>
                    <p>Some content.</p>
                    <asp:Button ID="btnPaytm"  runat="server" Text="Pay with Paytm" />
                </div>
                <div id="cards" class="tab-pane fade">
                    <h3>Menu 1</h3>
                    <p>Some content in menu 1.</p>
                </div>
                <div id="cod" class="tab-pane fade">
                    <h3>Menu 2</h3>
                    <p>Some content in menu 2.</p>
                </div>
            </div>

             <div class="tab-content">
                                <div id="PlaceNPay" class="tab-pane fade in active">
                                    <h3>Place your order and Pay using our <a href="acceptedpayments" target="_blank">Accepted Payments</a> channels, Your order will be dispatched upon receiving full payment.</h3>
                                    <asp:Button ID="BtnPlaceNPay" CssClass=" btn btn-info" Font-Size="Large" ValidationGroup="PaymentPage" runat="server" Text="Checkout &raquo;" />
                                </div>
                                <div id="EasyPaisa" class="tab-pane fade">
                                    <h3 class="center1">EasyPaisa Payment Gateway Coming Soon</h3>
                                    <h4 class="center1">Until that you can send amount @ 0311 0000193</h4>
                                    <!--  <asp:Button ID="btnEasyPaisa" CssClass=" btn btn-success" Font-Size="Large" runat="server" Text="Pay with EasyPaisa &raquo;" /> -->
                                </div>
                                <div id="JazzCash" class="tab-pane fade">
                                    <h3 class="center1">JazzCash Payment Gateway Coming Soon</h3>
                                    <h4 class="center1">Until that you can send amount @ 0300 1888193</h4>
                                    <!-- <asp:Button ID="btnJazzCash" CssClass="btn btn-danger" runat="server" Font-Size="Large" Text="Pay with JazzCash &raquo;" /> -->
                                </div>
                                <div id="Div1" class="tab-pane fade">
                                    <h3 class="center1">Cash on Delivery - Coming Soon</h3>
                                    <!-- <asp:Button ID="btnCOD" CssClass="btn btn-primary" runat="server" Text="CheckOut &raquo;" Font-Size="Large" /> -->
                                </div>
                            </div>
        </div>

    </form>
</body>
</html>
