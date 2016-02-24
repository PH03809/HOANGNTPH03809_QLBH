<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h2> Tổng Công Ty FPT Polytecnic <br />
            Giới Thiệu
        </h2>
    </hgroup>

    <article>
        <p>        
            * Công Ty được thành lập năm 1999 với hơn 20 nhân viên</p>

        <p>        
            * Là Công Ty chuyên các sản phẩm đồ uống từ Châu Âu</p>

        <p>        
            * Luôn đi đầu trong việc đưa các loại đồ uống ngon và tốt với sức khỏe về Việt Nam sớm nhất</p>
    </article>

    <aside>
        <h3>Thông Tin</h3>
        <p>        
            Tổng Giám Đốc : Nguyễn Thái Hoàng</p>
        <ul>
            <li><a id="A1" runat="server" href="~/">Trang Chủ</a></li>
            <li><a id="A2" runat="server" href="~/About.aspx">Giới Thiệu</a></li>
            <li><a id="A3" runat="server" href="~/Contact.aspx">Liên Hệ</a></li>
        </ul>
</asp:Content>