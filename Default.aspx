<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
     <script language="javascript" type="text/javascript"> 
        function change()
        {
        //获取评论文本框中的值
            var str=document.getElementById('txtContent').value;
            //获取当前还可以输入的字符数量
            var sum=500-str.length;
            //判读是否还可以输入字符
            if(sum<=0)
            {
            //设置Label控件显示文本为红色
              document.getElementById('labCount').style.color="Red";
              //截取文本框中的字符串，从0位置开始截取，截取到500位
             document.getElementById('txtContent').value=document.getElementById('txtContent').value.substring(0,500);
             //显示可以输入的字符数量
            document.getElementById('labCount').innerHTML=sum;  
         
            }else
            {
            //显示可以输入的字符数量
                document.getElementById('labCount').innerHTML=sum;     
                //设置Label控件的文本颜色
            document.getElementById('labCount').style.color="#006FC3";    
            }           
        }  
    </script>
    <style type="text/css">
        .style1
        {
            height: 84px;
        }
        .style2
        {
            height: 31px;
            width: 262px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="537" height="88" border="1" cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="#9BD0EA">
            <tr>
              <td width="529" valign="middle" bgcolor="#FFFFFF" class="shenlancu" style="height: 28px">
                  <table border="0" cellpadding="0" cellspacing="0" style="width: 518px">
                      <tr>
                          <td style="width: 78px; height: 31px">
                              <img height="31" src="pinglun.gif" width="119" /></td>
                          <td class="style2">
                          </td>
                          <td style="width: 186px; height: 31px">
                              &nbsp; 您还可以输入<asp:Label ID="labCount" runat="server" Text="500"></asp:Label>字符</td>
                      </tr>
                  </table>
              </td>
            </tr>
            <tr>
              <td align="center" valign="top" bgcolor="#FFFFFF" class="huise1">
                    <asp:TextBox ID="txtContent" onKeyUp="change()" runat="server" Height="94px" TextMode="MultiLine" Width="500px"></asp:TextBox></td>
            </tr>
            <tr>
              <td align="center" valign="top" bgcolor="#FFFFFF" class="style1"><table width="353" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="240" class="huise1">
                      <asp:Panel ID="PanelLogin" runat="server" Height="0" Width="260px">
                          您当前是游客身份：<span class="shenhong">  <asp:LinkButton ID="lkbtnLogin" runat="server" PostBackUrl="~/login.aspx" >登　录</asp:LinkButton></span>
                       <span class="shenhong" > <asp:LinkButton ID="lkbtnRegister" runat="server" PostBackUrl="~/Register.aspx" >注　册</asp:LinkButton></span></asp:Panel>
                      </td>
                  <td width="111">
                    <asp:Button ID="btnIdea" runat="server" Text="发表评论" /></td>
                </tr>
              </table></td>
            </tr>
          </table>
    </div>
    </form>
</body>
</html>
