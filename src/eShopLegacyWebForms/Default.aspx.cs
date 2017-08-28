﻿using eShopLegacyWebForms.Models;
using eShopLegacyWebForms.Services;
using eShopLegacyWebForms.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.ModelBinding;
using System.Web.Routing;

namespace eShopLegacyWebForms
{
    public partial class _Default : Page
    {
        public PaginatedItemsViewModel<CatalogItem> Model { get; set; }

        public int Size { get; set; }
        public int Index { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            var service = new CatalogServiceMock();

            if (PaginationParamsAreSet())
            {
                var size = Convert.ToInt32(Page.RouteData.Values["size"]);
                var index = Convert.ToInt32(Page.RouteData.Values["index"]);
                Model = service.GetCatalogItemsPaginated(size, index);
            }
            else
            {
                Model = service.GetCatalogItemsPaginated();
            }
            
            productList.DataSource = Model.Data;
            productList.DataBind();
            ConfigurePagination();
           
        }

        private bool PaginationParamsAreSet()
        {
            return Page.RouteData.Values.Keys.Contains("size") && Page.RouteData.Values.Keys.Contains("index");
        }

        private void ConfigurePagination()
        {
            PaginationNext.NavigateUrl = GetRouteUrl("ProductsByPageRoute", new { index = Model.ActualPage + 1, size = Model.ItemsPerPage });
            PaginationNext.Visible = Model.ActualPage < Model.TotalPages - 1;
            PaginationPrevious.NavigateUrl = GetRouteUrl("ProductsByPageRoute", new { index = Model.ActualPage - 1, size = Model.ItemsPerPage });
            PaginationPrevious.Visible = Model.ActualPage > 0;
        }
    }
}