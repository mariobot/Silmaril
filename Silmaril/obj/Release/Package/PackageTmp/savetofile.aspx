﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="savetofile.aspx.cs" Inherits="Silmaril.savetofile" %>

<%
 
       HttpFileCollection files = HttpContext.Current.Request.Files;
 
       for (int index = 0; index < files.Count; index ++)
       {
              HttpPostedFile uploadfile = files[index];
           
              // You must create “upload” sub folder under the wwwroot.
              uploadfile.SaveAs(Server.MapPath(".") + "\\upload\\" + uploadfile.FileName);
 
       }
 
       HttpContext.Current.Response.Write("Upload successfully!");
 
%>