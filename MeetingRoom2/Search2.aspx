<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Search2.aspx.cs" Inherits="MeetingRoom2.Search2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        height: 24px;
    }
    .auto-style3 {
        height: 7px;
    }
    .auto-style5 {
        width: 286px;
    }
    .auto-style6 {
        height: 7px;
        width: 286px;
    }
    .auto-style13 {
        width: 212px;
        height: 6px;
    }
    .auto-style14 {
        width: 523px;
        height: 6px;
    }
    .auto-style18 {
        height: 98px;
    }
    .auto-style20 {
        margin-top: 0px;
    }
    .auto-style21 {
        height: 6px;
    }
    .auto-style22 {
        height: 6px;
        width: 286px;
    }
    .auto-style26 {
        width: 286px;
        height: 98px;
    }
    .auto-style27 {
        height: 7px;
        width: 519px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style21"></td>
        <td class="auto-style14">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td class="auto-style13"></td>
        <td class="auto-style22" colspan="2">
            <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style3" colspan="3">
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Find" Width="90px" />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style20" DataKeyNames="RID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="RID" HeaderText="RID" InsertVisible="False" ReadOnly="True" SortExpression="RID" />
                    <asp:BoundField DataField="MaxCapacity" HeaderText="MaxCapacity" SortExpression="MaxCapacity" />
                    <asp:BoundField DataField="BuildingNumber" HeaderText="BuildingNumber" SortExpression="BuildingNumber" />
                    <asp:BoundField DataField="Rnumber" HeaderText="Rnumber" SortExpression="Rnumber" />
                    <asp:BoundField DataField="Level" HeaderText="Level" SortExpression="Level" />
                    <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                </Columns>
            </asp:GridView>
        </td>
        <td class="auto-style27">
            <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True" Visible="False" Width="220px">
                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                <OtherMonthDayStyle ForeColor="#CC9966" />
                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                <SelectorStyle BackColor="#FFCC66" />
                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
            </asp:Calendar>
        </td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3" colspan="3">
            <asp:Label ID="Label4" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="Label5" runat="server" Visible="False"></asp:Label>
        </td>
        <td class="auto-style6" colspan="2" rowspan="4">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MeetingRoomConnectionString %>" SelectCommand="SELECT * FROM [Room] WHERE (([MaxCapacity] &gt;= @MaxCapacity) AND ([MaxCapacity] &lt;= @MaxCapacity2))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="MaxCapacity" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="Label3" Name="MaxCapacity2" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:Label ID="Label6" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="Label7" runat="server" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:Label ID="Label8" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="Label9" runat="server" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style3" colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3" colspan="3">&nbsp;</td>
        <td class="auto-style5" colspan="2" rowspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="3"></td>
    </tr>
    <tr>
        <td class="auto-style18" colspan="3">&nbsp;</td>
        <td class="auto-style26" colspan="2"></td>
    </tr>
    <tr>
        <td colspan="3">&nbsp;</td>
        <td class="auto-style5" colspan="2">&nbsp;</td>
    </tr>
</table>
</asp:Content>
