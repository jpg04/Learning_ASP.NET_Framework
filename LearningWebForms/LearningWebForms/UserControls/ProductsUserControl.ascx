<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProductsUserControl.ascx.cs" Inherits="LearningWebForms.UserControls.ProductsUserControl" %>


<div class="card" style="width: 18rem;margin:20px">
  <img src="<%:ImageLink %>" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title"><%:Title %></h5>
    <p class="card-text"><%:Description %></p>
    <strong>Rs. <%:Price %></strong> <br />
      <a href="#" class="btn btn-primary">Add to Cart</a>
    <a href="#" class="btn btn-primary">But Now</a>
  </div>
</div>