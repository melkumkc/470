<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Search3.aspx.cs" Inherits="MeetingRoom2.Search3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 179px;
    }
    .auto-style4 {
        width: 732px;
    }
        .auto-style7 {
            width: 57px;
            height: 16px;
        }
        .auto-style8 {
            height: 16px;
        }
        .auto-style9 {
            width: 60px;
            height: 16px;
        }
        .auto-style10 {
            width: 61px;
            height: 16px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style4">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td colspan="7">
            <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style4" rowspan="2">
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Find" Width="60px" />
        </td>
        <td class="auto-style7">
            <asp:Label ID="Label4" runat="server" Visible="False"></asp:Label>
        </td>
        <td class="auto-style8">
            <asp:Label ID="Label5" runat="server" Visible="False"></asp:Label>
        </td>
        <td class="auto-style9">
            <asp:Label ID="Label6" runat="server"></asp:Label>
        </td>
        <td class="auto-style10">
            <asp:Label ID="Label7" runat="server"></asp:Label>
        </td>
        <td class="auto-style8">
            <asp:Label ID="Label8" runat="server"></asp:Label>
        </td>
        <td class="auto-style8">
            <asp:Label ID="Label9" runat="server"></asp:Label>
        </td>
        <td class="auto-style8">
        </td>
    </tr>
    <tr>
        <td class="auto-style7">
            &nbsp;</td>
        <td class="auto-style8" colspan="6">
            <asp:Button ID="Button2" runat="server" Text="Check Availability" Visible="False" Width="134px" OnClick="Button2_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MeetingRoomConnectionString %>" SelectCommand="SELECT * FROM [Room] WHERE (([MaxCapacity] &gt;= @MaxCapacity) AND ([MaxCapacity] &lt;= @MaxCapacity2))">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox1" Name="MaxCapacity" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="Label3" Name="MaxCapacity2" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:Label ID="Label10" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="82px" ShowGridLines="True" Visible="False" Width="220px" OnSelectionChanged="Calendar1_SelectionChanged">
                            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                            <OtherMonthDayStyle ForeColor="#CC9966" />
                            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                            <SelectorStyle BackColor="#FFCC66" />
                            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                        </asp:Calendar>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </td>
        <td colspan="7">&nbsp;</td>
    </tr>
</table>
</asp:Content>
