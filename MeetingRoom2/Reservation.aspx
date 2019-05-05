<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Reservation.aspx.cs" Inherits="MeetingRoom2.Reservation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            width: 826px;
        }
        .auto-style6 {
            width: 64px;
        }
        .auto-style7 {
            width: 60px;
        }
        .auto-style8 {
            width: 64px;
            height: 26px;
        }
        .auto-style9 {
            width: 60px;
            height: 26px;
        }
        .auto-style10 {
            width: 826px;
            height: 26px;
        }
        .auto-style11 {
            width: 521px;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3">
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td class="auto-style5" colspan="3">
                <asp:Label ID="Label22" runat="server"></asp:Label>
                <asp:Label ID="Label7" runat="server"></asp:Label>
                <asp:Label ID="Label8" runat="server"></asp:Label>
                <asp:Label ID="Label9" runat="server"></asp:Label>
                <asp:Label ID="Label10" runat="server"></asp:Label>
                <asp:Label ID="Label11" runat="server"></asp:Label>
                <asp:Label ID="Label12" runat="server"></asp:Label>
                <asp:Label ID="Label13" runat="server"></asp:Label>
                <asp:Label ID="Label14" runat="server"></asp:Label>
                <asp:Label ID="Label15" runat="server"></asp:Label>
                <asp:Label ID="Label16" runat="server"></asp:Label>
                <asp:Label ID="Label17" runat="server"></asp:Label>
                <asp:Label ID="Label18" runat="server"></asp:Label>
                <asp:Label ID="Label19" runat="server"></asp:Label>
                <asp:Label ID="Label20" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="Label21" runat="server"></asp:Label>
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="OK" Visible="False" />
                <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Reserve" Visible="False" />
                <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Cancel" Visible="False" />
                <asp:Button ID="Button9" runat="server" Text="Finish" Visible="False" OnClick="Button9_Click" Width="77px" />
                <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
                <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
                <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="Enter" Visible="False" />
                <asp:Button ID="Button11" runat="server" OnClick="Button11_Click" Text="Enter" Visible="False" />
                <asp:Button ID="Button12" runat="server" OnClick="Button12_Click" Text="Enter" Visible="False" />
            </td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
            <td class="auto-style5" colspan="3">&nbsp;</td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label23" runat="server"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:Label ID="Label24" runat="server"></asp:Label>
            </td>
            <td class="auto-style5" colspan="3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label25" runat="server"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:Label ID="Label26" runat="server"></asp:Label>
                <asp:Label ID="Label27" runat="server"></asp:Label>
            </td>
            <td class="auto-style5" colspan="3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label28" runat="server"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:Label ID="Label29" runat="server"></asp:Label>
            </td>
            <td class="auto-style5" colspan="3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label30" runat="server" Visible="False"></asp:Label>
            </td>
            <td class="auto-style7"></td>
            <td class="auto-style5" colspan="3">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MeetingRoomConnectionString %>" SelectCommand="SELECT [Six], [Seven], [Eight], [Ten], [Nine], [Eleven], [Tweleve], [Thirteen], [Fourteen], [Fifteen], [Sixteen], [Seventeen], [Eighteen], [Ninteen] FROM [Available] WHERE (([Date] = @Date) AND ([RoomID] = @RoomID) AND ([Eight] IS NULL) AND ([Eleven] IS NULL) AND ([Eighteen] IS NULL) AND ([Fifteen] IS NULL) AND ([Fourteen] IS NULL))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label3" DbType="Date" Name="Date" PropertyName="Text" />
                        <asp:ControlParameter ControlID="Label1" Name="RoomID" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style4" colspan="5">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" Width="97px" />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="CheckAvailability" />
            </td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style4" colspan="5">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox8" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Six" HeaderText="600 to 700" SortExpression="Six" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox9" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Seven" HeaderText="700 to 800" SortExpression="Seven" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox10" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Eight" HeaderText="800 to 900" SortExpression="Eight" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox11" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Nine" HeaderText="900 to 1000" SortExpression="Nine" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox12" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Ten" HeaderText="1000 to 1100" SortExpression="Ten" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox13" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Eleven" HeaderText="1100 to 1200" SortExpression="Eleven" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox14" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Tweleve" HeaderText="1200 to 1300" SortExpression="Tweleve" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox15" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Thirteen" HeaderText="1300 to 1400" SortExpression="Thirteen" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox16" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Fourteen" HeaderText="1400 to 1500" SortExpression="Fourteen" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox17" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Fifteen" HeaderText="1500 to 1600" SortExpression="Fifteen" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox18" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Sixteen" HeaderText="1600 to 1700" SortExpression="Sixteen" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox19" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Seventeen" HeaderText="1700 to 1800" SortExpression="Seventeen" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox20" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Eighteen" HeaderText="1800 to 1900" SortExpression="Eighteen" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox21" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Ninteen" HeaderText="1900 to 2000" SortExpression="Ninteen" />
                        
                        
                        
                        
                        
                        
                        
                        <asp:TemplateField></asp:TemplateField>
                        
                        
                        
                        
                        
                        
                        
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MeetingRoomConnectionString %>" SelectCommand="SELECT [Six], [Seven], [Eight], [Nine], [Ten], [Eleven], [Tweleve], [Thirteen], [Fourteen], [Fifteen], [Sixteen], [Seventeen], [Eighteen], [Ninteen] FROM [Available] WHERE (([Date] = @Date) AND ([RoomID] = @RoomID))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label3" DbType="Date" Name="Date" PropertyName="Text" />
                        <asp:ControlParameter ControlID="Label1" Name="RoomID" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style4" colspan="5">
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Add" Visible="False" Width="96px" />
                <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Finish" Visible="False" />
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4" colspan="5">
                &nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
