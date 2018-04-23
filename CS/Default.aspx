<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NavBarBootstrapFont</title>
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script type="text/javascript" src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxNavBar ID="ASPxNavBar1" runat="server" ClientInstanceName="navBar" DataSourceID="XmlDataSource1"
                AllowSelectItem="True" EnableHotTrack="True" EnableAnimation="True" ShowExpandButtons="True">
				<GroupHeaderTemplate>
					<div class="<%# DataBinder.Eval(Container.Group.DataItem, "CssClass") %>"></div>
					<%# Eval("Text")%>
				</GroupHeaderTemplate>
            </dx:ASPxNavBar>
            <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/map.xml" XPath="/items/*"/>
        </div>
    </form>
</body>
</html>