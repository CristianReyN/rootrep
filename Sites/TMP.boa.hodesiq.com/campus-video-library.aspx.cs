﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class campus_video_library : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int int_how_many=0;

    }

    protected void Page_PreRender(object sender, EventArgs e)
    {
        Literal ltrlCorremetrixScripts = (Literal)Page.Master.FindControl("ltrlCorremetrixScripts");
        ltrlCorremetrixScripts.Text = "";
    }
}
