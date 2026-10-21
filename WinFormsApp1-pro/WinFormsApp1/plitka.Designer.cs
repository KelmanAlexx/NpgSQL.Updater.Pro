namespace WinFormsApp1
{
    partial class plitka
    {
        /// <summary> 
        /// Обязательная переменная конструктора.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Освободить все используемые ресурсы.
        /// </summary>
        /// <param name="disposing">истинно, если управляемый ресурс должен быть удален; иначе ложно.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Код, автоматически созданный конструктором компонентов

        /// <summary> 
        /// Требуемый метод для поддержки конструктора — не изменяйте 
        /// содержимое этого метода с помощью редактора кода.
        /// </summary>
        private void InitializeComponent()
        {
            tableLayoutPanel1 = new TableLayoutPanel();
            flowLayoutPanel1 = new FlowLayoutPanel();
            lblCategoryName = new Label();
            lblDescription = new Label();
            lblManufacturer = new Label();
            lblSypplyer = new Label();
            lblPrice = new Label();
            lblIzmerenie = new Label();
            lblUnit = new Label();
            pbPhoto = new PictureBox();
            lblDiscount = new Label();
            tableLayoutPanel1.SuspendLayout();
            flowLayoutPanel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)pbPhoto).BeginInit();
            SuspendLayout();
            // 
            // tableLayoutPanel1
            // 
            tableLayoutPanel1.CellBorderStyle = TableLayoutPanelCellBorderStyle.Single;
            tableLayoutPanel1.ColumnCount = 3;
            tableLayoutPanel1.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 26.6483517F));
            tableLayoutPanel1.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 73.35165F));
            tableLayoutPanel1.ColumnStyles.Add(new ColumnStyle(SizeType.Absolute, 153F));
            tableLayoutPanel1.Controls.Add(flowLayoutPanel1, 1, 0);
            tableLayoutPanel1.Controls.Add(pbPhoto, 0, 0);
            tableLayoutPanel1.Controls.Add(lblDiscount, 2, 0);
            tableLayoutPanel1.Location = new Point(3, 3);
            tableLayoutPanel1.Name = "tableLayoutPanel1";
            tableLayoutPanel1.RowCount = 1;
            tableLayoutPanel1.RowStyles.Add(new RowStyle(SizeType.Percent, 50F));
            tableLayoutPanel1.Size = new Size(834, 230);
            tableLayoutPanel1.TabIndex = 0;
            // 
            // flowLayoutPanel1
            // 
            flowLayoutPanel1.BorderStyle = BorderStyle.FixedSingle;
            flowLayoutPanel1.Controls.Add(lblCategoryName);
            flowLayoutPanel1.Controls.Add(lblDescription);
            flowLayoutPanel1.Controls.Add(lblManufacturer);
            flowLayoutPanel1.Controls.Add(lblSypplyer);
            flowLayoutPanel1.Controls.Add(lblPrice);
            flowLayoutPanel1.Controls.Add(lblIzmerenie);
            flowLayoutPanel1.Controls.Add(lblUnit);
            flowLayoutPanel1.Dock = DockStyle.Fill;
            flowLayoutPanel1.FlowDirection = FlowDirection.TopDown;
            flowLayoutPanel1.Location = new Point(185, 4);
            flowLayoutPanel1.Name = "flowLayoutPanel1";
            flowLayoutPanel1.Size = new Size(490, 222);
            flowLayoutPanel1.TabIndex = 0;
            flowLayoutPanel1.WrapContents = false;
            // 
            // lblCategoryName
            // 
            lblCategoryName.AutoSize = true;
            lblCategoryName.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 204);
            lblCategoryName.Location = new Point(3, 0);
            lblCategoryName.Name = "lblCategoryName";
            lblCategoryName.Size = new Size(132, 20);
            lblCategoryName.TabIndex = 0;
            lblCategoryName.Text = "lblCategoryName";
            // 
            // lblDescription
            // 
            lblDescription.AutoSize = true;
            lblDescription.Location = new Point(3, 20);
            lblDescription.Name = "lblDescription";
            lblDescription.Size = new Size(102, 20);
            lblDescription.TabIndex = 1;
            lblDescription.Text = "lblDescription";
            // 
            // lblManufacturer
            // 
            lblManufacturer.AutoSize = true;
            lblManufacturer.Location = new Point(3, 40);
            lblManufacturer.Name = "lblManufacturer";
            lblManufacturer.Size = new Size(114, 20);
            lblManufacturer.TabIndex = 2;
            lblManufacturer.Text = "lblManufacturer";
            // 
            // lblSypplyer
            // 
            lblSypplyer.AutoSize = true;
            lblSypplyer.Location = new Point(3, 60);
            lblSypplyer.Name = "lblSypplyer";
            lblSypplyer.Size = new Size(83, 20);
            lblSypplyer.TabIndex = 3;
            lblSypplyer.Text = "lblSypplyer";
            // 
            // lblPrice
            // 
            lblPrice.AutoSize = true;
            lblPrice.Location = new Point(3, 80);
            lblPrice.Name = "lblPrice";
            lblPrice.Size = new Size(58, 20);
            lblPrice.TabIndex = 4;
            lblPrice.Text = "lblPrice";
            // 
            // lblIzmerenie
            // 
            lblIzmerenie.AutoSize = true;
            lblIzmerenie.Location = new Point(3, 100);
            lblIzmerenie.Name = "lblIzmerenie";
            lblIzmerenie.Size = new Size(91, 20);
            lblIzmerenie.TabIndex = 5;
            lblIzmerenie.Text = "lblIzmerenie";
            // 
            // lblUnit
            // 
            lblUnit.AutoSize = true;
            lblUnit.Location = new Point(3, 120);
            lblUnit.Name = "lblUnit";
            lblUnit.Size = new Size(53, 20);
            lblUnit.TabIndex = 6;
            lblUnit.Text = "lblUnit";
            // 
            // pbPhoto
            // 
            pbPhoto.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            pbPhoto.BorderStyle = BorderStyle.FixedSingle;
            pbPhoto.Location = new Point(4, 4);
            pbPhoto.Name = "pbPhoto";
            pbPhoto.Size = new Size(174, 222);
            pbPhoto.SizeMode = PictureBoxSizeMode.Zoom;
            pbPhoto.TabIndex = 1;
            pbPhoto.TabStop = false;
            pbPhoto.Click += pbPhoto_Click;
            // 
            // lblDiscount
            // 
            lblDiscount.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            lblDiscount.AutoSize = true;
            lblDiscount.BorderStyle = BorderStyle.FixedSingle;
            lblDiscount.Location = new Point(682, 1);
            lblDiscount.Name = "lblDiscount";
            lblDiscount.Size = new Size(148, 228);
            lblDiscount.TabIndex = 2;
            lblDiscount.Text = "lblDiscount";
            lblDiscount.TextAlign = ContentAlignment.MiddleCenter;
            // 
            // plitka
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            Controls.Add(tableLayoutPanel1);
            Name = "plitka";
            Size = new Size(840, 239);
            tableLayoutPanel1.ResumeLayout(false);
            tableLayoutPanel1.PerformLayout();
            flowLayoutPanel1.ResumeLayout(false);
            flowLayoutPanel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)pbPhoto).EndInit();
            ResumeLayout(false);
        }

        #endregion

        private TableLayoutPanel tableLayoutPanel1;
        private FlowLayoutPanel flowLayoutPanel1;
        private Label lblCategoryName;
        private Label lblDescription;
        private Label lblManufacturer;
        private Label lblSypplyer;
        private Label lblPrice;
        private Label lblIzmerenie;
        private Label lblUnit;
        private PictureBox pbPhoto;
        private Label lblDiscount;
    }
}
