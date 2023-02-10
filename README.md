# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


<!--<h1> Showing article details </h1>
<p><strong>Title:</strong> <%= @article.title %> </p>
<p><strong>Description:</strong> <%= @article.description %></p>


<h2> Comments </h2>

<%= render @article.comments  %>
<% @article.comments.each do | comment | %>
<p>
    <b>Commenter:<b> <%= comment.commenter %><p>
    <b>Comment:<b> <%= comment.body %>
</p> 
</p>

<% end %> 
<h2>Add a comment</h2>
<%= render 'comments/form' %>   

<%= link_to 'Edit', edit_article_path(@article) %> | 
<%= link_to 'Delete', article_path(@article), method: :delete, data: { confirm: "Are you sure?"}%> |
<%= link_to 'Back to articles listing', articles_path %> -->