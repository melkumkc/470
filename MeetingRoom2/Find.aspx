<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Find.aspx.cs" Inherits="MeetingRoom2.Find" %>
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
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <asp:Label ID="Label2" runat="server"></asp:Label>
                <asp:Label ID="Label3" runat="server"></asp:Label>
                <asp:Label ID="Label4" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="Label5" runat="server" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" selectText ="Details"/>
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                        <asp:BoundField DataField="ReservationID" HeaderText="ReservationID" SortExpression="ReservationID" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MeetingRoomConnectionString %>" SelectCommand="SELECT [FirstName], [LastName], [ReservationID] FROM [People2] WHERE (([FirstName] = @FirstName) AND ([LastName] = @LastName))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label1" Name="FirstName" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="Label2" Name="LastName" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" SelectText ="Location" />
                        <asp:BoundField DataField="RoomID" HeaderText="RoomID" SortExpression="RoomID" />
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
                </td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MeetingRoomConnectionString %>" SelectCommand="SELECT [RoomID], [Six], [Seven], [Eight], [Nine], [Ten], [Eleven], [Twelve], [Thirteen], [Fourteen], [Fifteen], [Sixteen], [Seventeen], [Eighteen], [Nighteen] FROM [Reservation] WHERE ([ReservationID] = @ReservationID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label4" Name="ReservationID" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
                    <Columns>
                        <asp:BoundField DataField="BuildingNumber" HeaderText="BuildingNumber" SortExpression="BuildingNumber" />
                        <asp:BoundField DataField="Rnumber" HeaderText="Rnumber" SortExpression="Rnumber" />
                        <asp:BoundField DataField="Level" HeaderText="Level" SortExpression="Level" />
                    </Columns>
                </asp:GridView>
                </td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MeetingRoomConnectionString %>" SelectCommand="SELECT [BuildingNumber], [Rnumber], [Level] FROM [Room] WHERE ([RID] = @RID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label5" Name="RID" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Finish" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
