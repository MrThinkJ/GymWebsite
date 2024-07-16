using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Website_Gym
{
    public partial class admin_instructor : System.Web.UI.Page
    {
        Connect connect;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
                return;
            connect = new Connect();
            string sql = "select * from instructor";
            DataTable dt = connect.getData(sql);
            foreach(DataRow row in dt.Rows)
            {
                TableRow tableRow = new TableRow();
                tableRow.Cells.Add(CreateTableCellWithHyperLink(row["ImagePath"].ToString(), row["Name"].ToString()));
                tableRow.Cells.Add(CreateTableCellWithHyperLink("javascript:;", row["Email"].ToString()));
                tableRow.Cells.Add(new TableCell { Text = row["Phone"].ToString() });
                tableRow.Cells.Add(new TableCell { Text = row["Class"].ToString() });    
                tableRow.Cells.Add(new TableCell { Text = row["Address"].ToString() });               
                tableRow.Cells.Add(new TableCell { Text = row["Day"].ToString() });               
                tableRow.Cells.Add(CreateActionCell(row["ID"].ToString()));                         
                StudentTable.Rows.Add(tableRow);
            }
        }

        private TableCell CreateTableCellWithHyperLink(string imageUrl, string text)
        {
            TableCell cell = new TableCell();
            HyperLink link = new HyperLink
            {
                NavigateUrl = "javascript:;",
                CssClass = "d-flex align-items-center gap-3"
            };

            Image image = new Image
            {
                ImageUrl = imageUrl,
                CssClass = "rounded-circle",
                Width = 40,
                Height = 40
            };

            Label label = new Label
            {
                Text = text,
                CssClass = "mb-0 customer-name fw-bold"
            };

            link.Controls.Add(image);
            link.Controls.Add(label);
            cell.Controls.Add(link);

            return cell;
        }

        private TableCell CreateActionCell(string id)
        {
            TableCell cell = new TableCell();
            Button deleteBtn = new Button();
            deleteBtn.Text = "Delete";
            deleteBtn.CssClass = "btn btn-grd-primary px-1";

            return cell;
        }
    }
}