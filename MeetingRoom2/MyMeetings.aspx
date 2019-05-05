<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="MyMeetings.aspx.cs" Inherits="MeetingRoom2.MyMeetings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="ReservationID" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="ReservationID" HeaderText="ReservationID" SortExpression="ReservationID" InsertVisible="False" ReadOnly="True" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="MeetingName" HeaderText="MeetingName" SortExpression="MeetingName" />
                        <asp:BoundField DataField="Six" HeaderText="6:00-7:00" SortExpression="Six" />
                        <asp:BoundField DataField="Seven" HeaderText="7:00-8:00" SortExpression="Seven" />
                        <asp:BoundField DataField="Eight" HeaderText="8:00-9:00" SortExpression="Eight" />
                        <asp:BoundField DataField="Nine" HeaderText="9:00-10:00" SortExpression="Nine" />
                        <asp:BoundField DataField="Ten" HeaderText="10:00-11:00" SortExpression="Ten" />
                        <asp:BoundField DataField="Eleven" HeaderText="11:00-12:00" SortExpression="Eleven" />
                        <asp:BoundField DataField="Twelve" HeaderText="12:00-1:00" SortExpression="Twelve" />
                        <asp:BoundField DataField="Thirteen" HeaderText="1:00-2:00" SortExpression="Thirteen" />
                        <asp:BoundField DataField="Fourteen" HeaderText="2:00-3:00" SortExpression="Fourteen" />
                        <asp:BoundField DataField="Fifteen" HeaderText="3:00-4:00" SortExpression="Fifteen" />
                        <asp:BoundField DataField="Sixteen" HeaderText="4:00-5:00" SortExpression="Sixteen" />
                        <asp:BoundField DataField="Seventeen" HeaderText="5:00-6:00" SortExpression="Seventeen" />
                        <asp:BoundField DataField="Eighteen" HeaderText="6:00-7:00" SortExpression="Eighteen" />
                        
                        <asp:BoundField DataField="Nighteen" HeaderText="7:00-8:00" SortExpression="Nighteen" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MeetingRoomConnectionString %>" SelectCommand="SELECT [ReservationID], [Date], [MeetingName], [Six], [Seven], [Eight], [Nine], [Ten], [Eleven], [Twelve], [Thirteen], [Fourteen], [Fifteen], [Sixteen], [Seventeen], [Eighteen], [Nighteen] FROM [Reservation] WHERE ([UserName] = @UserName)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label1" Name="UserName" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
