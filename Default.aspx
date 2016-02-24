<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h2>      Trang Chủ <br />
                    Đồ Uống Giải Khát Tổng Hợp </h2>
            </hgroup>
            <p>
                Chuyên sỉ các loại đồ uống xách tay từ Châu Âu&nbsp; </p>
        </div>
    </section>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Quản Lý Bán Hàng :</h3>
    <ol class="round">
        <li class="one">
            <h5>Khách Hàng</h5>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaKhacHang" DataSourceID="SqlDataSource1">
                <Fields>
                    <asp:BoundField DataField="MaKhacHang" HeaderText="MaKhacHang" ReadOnly="True" SortExpression="MaKhacHang" />
                    <asp:BoundField DataField="TenKhachHang" HeaderText="TenKhachHang" SortExpression="TenKhachHang" />
                    <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
                    <asp:BoundField DataField="SoDienThoai" HeaderText="SoDienThoai" SortExpression="SoDienThoai" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Hoangntph03809_QLBHConnectionString %>" DeleteCommand="DELETE FROM [KhachHang] WHERE [MaKhacHang] = @MaKhacHang" InsertCommand="INSERT INTO [KhachHang] ([MaKhacHang], [TenKhachHang], [DiaChi], [SoDienThoai], [Email]) VALUES (@MaKhacHang, @TenKhachHang, @DiaChi, @SoDienThoai, @Email)" SelectCommand="SELECT * FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [TenKhachHang] = @TenKhachHang, [DiaChi] = @DiaChi, [SoDienThoai] = @SoDienThoai, [Email] = @Email WHERE [MaKhacHang] = @MaKhacHang">
                <DeleteParameters>
                    <asp:Parameter Name="MaKhacHang" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaKhacHang" Type="String" />
                    <asp:Parameter Name="TenKhachHang" Type="String" />
                    <asp:Parameter Name="DiaChi" Type="String" />
                    <asp:Parameter Name="SoDienThoai" Type="Int32" />
                    <asp:Parameter Name="Email" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenKhachHang" Type="String" />
                    <asp:Parameter Name="DiaChi" Type="String" />
                    <asp:Parameter Name="SoDienThoai" Type="Int32" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="MaKhacHang" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="two">
            <h5>Sản Phẩm</h5>
            <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaSanPham" DataSourceID="SqlDataSource2">
                <Fields>
                    <asp:BoundField DataField="MaSanPham" HeaderText="MaSanPham" ReadOnly="True" SortExpression="MaSanPham" />
                    <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
                    <asp:BoundField DataField="GiaCa" HeaderText="GiaCa" SortExpression="GiaCa" />
                    <asp:BoundField DataField="MoTa" HeaderText="MoTa" SortExpression="MoTa" />
                    <asp:BoundField DataField="MaLoai" HeaderText="MaLoai" SortExpression="MaLoai" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Hoangntph03809_QLBHConnectionString %>" DeleteCommand="DELETE FROM [SanPham] WHERE [MaSanPham] = @MaSanPham" InsertCommand="INSERT INTO [SanPham] ([MaSanPham], [TenSP], [GiaCa], [MoTa], [MaLoai]) VALUES (@MaSanPham, @TenSP, @GiaCa, @MoTa, @MaLoai)" SelectCommand="SELECT * FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [TenSP] = @TenSP, [GiaCa] = @GiaCa, [MoTa] = @MoTa, [MaLoai] = @MaLoai WHERE [MaSanPham] = @MaSanPham">
                <DeleteParameters>
                    <asp:Parameter Name="MaSanPham" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaSanPham" Type="String" />
                    <asp:Parameter Name="TenSP" Type="String" />
                    <asp:Parameter Name="GiaCa" Type="Decimal" />
                    <asp:Parameter Name="MoTa" Type="String" />
                    <asp:Parameter Name="MaLoai" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenSP" Type="String" />
                    <asp:Parameter Name="GiaCa" Type="Decimal" />
                    <asp:Parameter Name="MoTa" Type="String" />
                    <asp:Parameter Name="MaLoai" Type="String" />
                    <asp:Parameter Name="MaSanPham" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="three">
            <h5>Hóa Đơn</h5>
            <asp:DetailsView ID="DetailsView3" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MahoaDon" DataSourceID="SqlDataSource3">
                <Fields>
                    <asp:BoundField DataField="MahoaDon" HeaderText="MahoaDon" ReadOnly="True" SortExpression="MahoaDon" />
                    <asp:BoundField DataField="NgayGiaoDich" HeaderText="NgayGiaoDich" SortExpression="NgayGiaoDich" />
                    <asp:BoundField DataField="MaKhacHang" HeaderText="MaKhacHang" SortExpression="MaKhacHang" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Hoangntph03809_QLBHConnectionString %>" DeleteCommand="DELETE FROM [HoaDon] WHERE [MahoaDon] = @MahoaDon" InsertCommand="INSERT INTO [HoaDon] ([MahoaDon], [NgayGiaoDich], [MaKhacHang]) VALUES (@MahoaDon, @NgayGiaoDich, @MaKhacHang)" SelectCommand="SELECT * FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [NgayGiaoDich] = @NgayGiaoDich, [MaKhacHang] = @MaKhacHang WHERE [MahoaDon] = @MahoaDon">
                <DeleteParameters>
                    <asp:Parameter Name="MahoaDon" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MahoaDon" Type="String" />
                    <asp:Parameter Name="NgayGiaoDich" Type="DateTime" />
                    <asp:Parameter Name="MaKhacHang" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="NgayGiaoDich" Type="DateTime" />
                    <asp:Parameter Name="MaKhacHang" Type="String" />
                    <asp:Parameter Name="MahoaDon" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="four">
            <h5>Loại Sane Phẩm</h5>
            <asp:DetailsView ID="DetailsView4" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaLoai" DataSourceID="SqlDataSource4">
                <Fields>
                    <asp:BoundField DataField="MaLoai" HeaderText="MaLoai" ReadOnly="True" SortExpression="MaLoai" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Hoangntph03809_QLBHConnectionString %>" DeleteCommand="DELETE FROM [LoaiSP] WHERE [MaLoai] = @MaLoai" InsertCommand="INSERT INTO [LoaiSP] ([MaLoai], [name]) VALUES (@MaLoai, @name)" SelectCommand="SELECT * FROM [LoaiSP]" UpdateCommand="UPDATE [LoaiSP] SET [name] = @name WHERE [MaLoai] = @MaLoai">
                <DeleteParameters>
                    <asp:Parameter Name="MaLoai" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaLoai" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="MaLoai" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="five">
            <h5>Chi Tiết Hóa Đơn</h5>
            <asp:DetailsView ID="DetailsView5" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource5">
                <Fields>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong" />
                    <asp:BoundField DataField="MahoaDon" HeaderText="MahoaDon" SortExpression="MahoaDon" />
                    <asp:BoundField DataField="MaSanPham" HeaderText="MaSanPham" SortExpression="MaSanPham" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:Hoangntph03809_QLBHConnectionString %>" DeleteCommand="DELETE FROM [ChiTietHoaDon] WHERE [ID] = @ID" InsertCommand="INSERT INTO [ChiTietHoaDon] ([ID], [SoLuong], [MahoaDon], [MaSanPham]) VALUES (@ID, @SoLuong, @MahoaDon, @MaSanPham)" SelectCommand="SELECT * FROM [ChiTietHoaDon]" UpdateCommand="UPDATE [ChiTietHoaDon] SET [SoLuong] = @SoLuong, [MahoaDon] = @MahoaDon, [MaSanPham] = @MaSanPham WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ID" Type="String" />
                    <asp:Parameter Name="SoLuong" Type="Int32" />
                    <asp:Parameter Name="MahoaDon" Type="String" />
                    <asp:Parameter Name="MaSanPham" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="SoLuong" Type="Int32" />
                    <asp:Parameter Name="MahoaDon" Type="String" />
                    <asp:Parameter Name="MaSanPham" Type="String" />
                    <asp:Parameter Name="ID" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
    </ol>
</asp:Content>