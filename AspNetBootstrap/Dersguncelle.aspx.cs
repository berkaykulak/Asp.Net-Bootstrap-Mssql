﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetBootstrap
{
    public partial class Dersguncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id;
            if (Page.IsPostBack == false)
            {
                id = Convert.ToInt32(Request.QueryString["DERSID"].ToString());
                DataSet1TableAdapters.TBL_DERSLERTableAdapter dt = new DataSet1TableAdapters.TBL_DERSLERTableAdapter();
                TxtDersID.Text = id.ToString();
                TxtDersAD.Text = dt.DersGetir(id)[0].DERSAD;
               
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_DERSLERTableAdapter dt = new DataSet1TableAdapters.TBL_DERSLERTableAdapter();
            dt.DersGuncelle(TxtDersAD.Text, Convert.ToInt32(TxtDersID.Text));
            Response.Redirect("DersListesi.aspx");
        }
    }
}