<%@ Page Language="C#" AutoEventWireup="false" CodeFile="sjm.aspx.cs" ValidateRequest="false" EnableEventValidation="false" Inherits="sjm" MasterPageFile="~/BOAmaster.master" Title="BOA Social Job Matcher"%>

          

<asp:Content ID="Content1" Runat="Server" ContentPlaceHolderID="cphmain">
    <iframe src="http://jobmatcher.hodesiq.com/clients/boa/" allowtransparency="true" scrolling="auto" frameborder="0" id="sjm-iframe" style="width:100%;height:1020px;border:0;display:block;"></iframe>

    <script type="text/javascript" src="http://jobmatcher.hodesiq.com/clients/boa/js/iframeresize-client.js"></script>

    <script language='javascript1.1' type='text/javascript'>
        //<!—
        cmCreatePageviewTag('career:Tool:Job_Search;sjm', null, null, 'career:Tool:Job_Search', false, false, null, false, false, null, null, null, null, null, null, null, null, null, null, null, null);
        //-->
</script>
                        
 </asp:Content>       
    

