<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Team.aspx.cs" Inherits="VolhardingWebapplicatie.Team1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RKVV-Volharding - Teams</title>
    <link href="../css/bootstrap.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
    <nav class="navbar navbar-default" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="../Home.aspx">Brand</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="../Home.aspx">Home</a></li>
        <li><a href="../Media.aspx">Media</a></li>
        <li class="active"><a href ="Team.aspx">Team</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="../Wedstrijdinfo.aspx">Wedstrijdinfo</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
        <br />
        <asp:Label ID="LblMateriaalToevoegen" runat="server" Text="Materiaal Toevoegen"></asp:Label>
        <br />
        <asp:Panel ID="Panel1" runat="server">
        </asp:Panel>
        <br />
        <asp:Label ID="LblSelecteerMateriaal" runat="server" Text="Selecteer Materiaal:   "></asp:Label>
        <asp:DropDownList ID="DropDownListMateriaal" runat="server">
        </asp:DropDownList>
        <asp:Label ID="Label1" runat="server" Text=" Aantal: "></asp:Label>
        <asp:TextBox ID="tbAantalMateriaal" runat="server" MaxLength="3" Width="70px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="LblSelecteerTeam" runat="server" Text="SelecteerTeam:   "></asp:Label>
        <asp:DropDownList ID="DropDownListTeam" runat="server">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Materiaal Toevoegen" OnClick="BtnMateriaalToevoegen_Click"/>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSourceMateriaal" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="NAAM" HeaderText="NAAM" SortExpression="NAAM" />
                <asp:BoundField DataField="AANTAL" HeaderText="AANTAL" SortExpression="AANTAL" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceMateriaal" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;NAAM&quot;, &quot;AANTAL&quot; FROM &quot;MATERIAAL&quot;"></asp:SqlDataSource>
    </form>
</body>
</html>
