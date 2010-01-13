﻿<%@ Control Language="C#" Inherits="Orchard.Mvc.ViewUserControl<ContentItemViewModel<Blog>>" %>
<%@ Import Namespace="Orchard.Mvc.ViewModels"%>
<%@ Import Namespace="Orchard.Blogs.Extensions"%>
<%@ Import Namespace="Orchard.Blogs.Models"%>
<h1 class="withActions">
    <a href="<%=Url.BlogForAdmin(Model.Item.Slug) %>"><%=Html.TitleForPage(Model.Item.Name) %></a>
</h1>
<ul class="actions">
    <li class="construct">
        <a href="<%=Url.BlogEdit(Model.Item.Slug) %>" class="ibutton edit"><%=_Encoded("Edit Blog") %></a>
    </li>
    <li class="destruct">
        <% using (Html.BeginFormAntiForgeryPost(Url.BlogDelete(Model.Item.Slug))) { %>
            <fieldset>
                <input type="image" src="<%=Html.ThemePath("/styles/images/remove.png") %>" alt="<%=_Encoded("Remove Blog") %>" title="<%=_Encoded("Remove Blog") %>" class="ibutton image remove" />
            </fieldset><%
        } %>
    </li>
</ul>
<p><%=Html.Encode(Model.Item.Description) %></p>
<div class="actions"><a href="<%=Url.BlogPostCreate(Model.Item.Slug) %>" class="add button"><%=_Encoded("New Post")%></a></div>
<% Html.Zone("primary");
   Html.ZonesAny(); %>