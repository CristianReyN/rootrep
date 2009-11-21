using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for boanet_safebutton
/// </summary>
public static class boanet_safebutton
{
	/// <summary>
	/// Helper method to display both the noscript and conventional versions of 
	/// buttons for BOA.
	/// </summary>
	/// <param name="id"></param>
	/// <param name="placeholderID"></param>
    public static void writeBOASafeButton(string id, PlaceHolder ph, string buttontext, EventHandler onclickserverfunction, HttpRequest request, string LinkURL)
	{
		//evaluate the browser type based on user agent and apply correct stylesheet.
		//Based on javascript in hs_safebuttons.js file.
		string cssType;
		//detecting Opera
		if ((request.UserAgent.IndexOf("Opera") != -1) || (request.UserAgent.IndexOf("Opera") != -1)) { cssType = "opera"; }
		//detecting Firefox
		else if (request.UserAgent.IndexOf("Firefox") > 0) { cssType = "saf"; }
		//detecting Safari
		else if (request.UserAgent.IndexOf("Safari") > 0) { cssType = "saf"; }
		//detecting IE
		else if (request.UserAgent.IndexOf("MSIE") > 0 && request.UserAgent.IndexOf("Opera") < 0) { cssType = "ie"; }
		//detecting newer Netscapes
		else if (request.UserAgent.IndexOf("Netscape") > 0 && request.UserAgent.IndexOf("Opera") < 0) { cssType = "ns6"; }
		//detecting older Netscapes
		else { cssType = "saf"; }

		//create the noscript tag and add a submit button
		HtmlGenericControl noscripttag = new HtmlGenericControl("noscript");
		Button btnSubmit = new Button();
		btnSubmit.ID = "btn" + id;
		btnSubmit.Text = buttontext;
        btnSubmit.ToolTip = buttontext;
		btnSubmit.CssClass = "btn";
        btnSubmit.Click += new EventHandler(onclickserverfunction);

		//add the button to the noscript tag
		noscripttag.Controls.Add(btnSubmit);

        //now lets build the "boa" button... 
		HtmlTable t = new HtmlTable();
		t.CellPadding = 0;
		t.CellSpacing = 0;
		t.Border = 0;
		t.Attributes.Add("summary", string.Empty);

		HtmlTableRow tr = new HtmlTableRow();
		HtmlTableCell td = new HtmlTableCell();
		td.Attributes.Add("class", "whitebg");
		HtmlGenericControl d = new HtmlGenericControl("div");
		d.Attributes.Add("class", cssType + "-btn");
		d.Attributes.Add("style", "display: none");
		d.ID = "d" + id;
		LinkButton l = new LinkButton();
        ///apply buttons on job detail page must be 
        
        l.Attributes.Add("class", cssType + "-btn");
        l.Attributes.Add("onfocus", "bt_rollover(this,'" + cssType + "-btn-over" + "')");
        l.Attributes.Add("onBlur", "bt_rollover(this,'" + cssType + "-btn" + "')");        
        l.ID = "lb" + id;

        if (buttontext.StartsWith("ApplyNow|*|"))
        {
            l.Text = " Apply Now <span class='auraltext'>For `" + buttontext.Replace("ApplyNow|*|", "").ToString() + "`. If you have any difficulties, refer to the above alternatives.</span> ";
            l.ToolTip = " Apply Now ";
            l.Attributes.Add("onclick", "javascript:window.open('" + LinkURL + "','ApplyNow')");
        }
        else
        {
            l.Text = buttontext;
            l.ToolTip = buttontext;
            l.Click += new EventHandler(onclickserverfunction);
        }

		d.Controls.Add(l);
		td.Controls.Add(d);
		tr.Cells.Add(td);
		t.Rows.Add(tr);


		//add the controls to the placeholder
		if (ph != null)
		{
			ph.Controls.Add(noscripttag);
			ph.Controls.Add(t);
		}


		//now lets add javascript in a literal to get the divs to display on script enabled browsers
		Literal lit = new Literal();
		lit.Text = @"<script language=""JavaScript"" type=""text/javascript"">
					document.getElementById('" + d.ClientID + @"').style.display=""inline"";
					</script>";
		if (ph != null)
		{
			ph.Controls.Add(lit);
		}

	}

}
