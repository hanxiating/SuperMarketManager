using SuperMarketManager.Model;
using SuperMarketManager.Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SuperMarketManager.View
{
    public partial class Supply : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);
            AddSupplierToTable(new SupplierService().GetAllSupplier());
        }

        protected void supply_add_Click(object sender, EventArgs e)
        {
            Response.Write("<script language='javascript'>window.open('" + "Dialog_add_supply.aspx" + "','','height=400,width=430, resizable=1,scrollbars=0,status=1,menubar=no,toolbar=no,location=yes,menu=no,left=" + supply_add.Style["left"] + " , top=" + supply_add.Style["top"] + "');</script>");
        }

        private void AddSupplierToTable(List<Supplier> suppliers)
        {
            TableRow row;
            supplyTable.Rows.Clear();
            foreach (Supplier supplier in suppliers)
            {
                row = new TableRow();
                row.Cells.Add(CreateCell(supplier.Name));
                row.Cells.Add(CreateCell(supplier.Address));
                row.Cells.Add(CreateCell(supplier.Phone));
                row.Cells.Add(CreateCell(supplier.Remark));
                supplyTable.Rows.Add(row);
            }

        }

        private TableCell CreateCell(String data)
        {
            TableCell cell = new TableCell();
            cell.CssClass = "table-bordered td text-center";
            Label label = new Label();
            label.Text = data;
            cell.Controls.Add(label);
            return cell;
        }

        protected void search_btn_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex == 0)
            {
                AddSupplierToTable(new SupplierService().GetAllSupplier());
            }
            else
            {
                AddSupplierToTable(new SupplierService().GetSuppliersForGoodsType(Convert.ToInt32(DropDownList1.SelectedValue)));
            }
            
        }
    }
}