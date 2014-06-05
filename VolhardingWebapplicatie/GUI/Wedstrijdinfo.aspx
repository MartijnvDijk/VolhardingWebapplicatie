<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Wedstrijdinfo.aspx.cs" Inherits="VolhardingWebapplicatie.Wedstrijdinfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RKVV-Volharding - Wedstrijdinfo</title>
    <link href="../Layout/bootstrap.css" rel="stylesheet" type="text/css"/>
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
      <a class="navbar-brand" href="Home.aspx">Volharding</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="Home.aspx">Home</a></li>
        <li><a href="Media.aspx">Media</a></li>
        <li><a href ="Team.aspx">Team</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li class="active"><a href="Wedstrijdinfo.aspx">Wedstrijdinfo</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceProgramma">
            <Columns>
                <asp:BoundField DataField="DATUM" HeaderText="DATUM" SortExpression="DATUM" />
                <asp:BoundField DataField="AANVANG" HeaderText="AANVANG" SortExpression="AANVANG" />
                <asp:BoundField DataField="VERTREK" HeaderText="VERTREK" SortExpression="VERTREK" />
                <asp:BoundField DataField="TEAMTHUIS" HeaderText="TEAMTHUIS" SortExpression="TEAMTHUIS" />
                <asp:BoundField DataField="TEAMUIT" HeaderText="TEAMUIT" SortExpression="TEAMUIT" />
                <asp:BoundField DataField="SCHEIDSINFO" HeaderText="SCHEIDSINFO" SortExpression="SCHEIDSINFO" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceProgramma" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;DATUM&quot;, &quot;AANVANG&quot;, &quot;VERTREK&quot;, &quot;TEAMTHUIS&quot;, &quot;TEAMUIT&quot;, &quot;SCHEIDSINFO&quot; FROM &quot;PROGRAMMA&quot;"></asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceProgramma">
            <Columns>
                <asp:BoundField DataField="DATUM" HeaderText="DATUM" SortExpression="DATUM" />
                <asp:BoundField DataField="AANVANG" HeaderText="AANVANG" SortExpression="AANVANG" />
                <asp:BoundField DataField="VERTREK" HeaderText="VERTREK" SortExpression="VERTREK" />
                <asp:BoundField DataField="TEAMTHUIS" HeaderText="TEAMTHUIS" SortExpression="TEAMTHUIS" />
                <asp:BoundField DataField="TEAMUIT" HeaderText="TEAMUIT" SortExpression="TEAMUIT" />
                <asp:BoundField DataField="SCHEIDSINFO" HeaderText="SCHEIDSINFO" SortExpression="SCHEIDSINFO" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
