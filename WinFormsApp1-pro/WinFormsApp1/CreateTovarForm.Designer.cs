namespace WinFormsApp2
{
    partial class CreateTovarForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            btnCreate = new Button();
            tbArt = new TextBox();
            tbName = new TextBox();
            tbIzmer = new TextBox();
            tbPrice = new TextBox();
            tbSupp = new TextBox();
            tbManu = new TextBox();
            tbCat = new TextBox();
            tbDisc = new TextBox();
            tbUnits = new TextBox();
            tbPhoto = new TextBox();
            tbDesc = new TextBox();
            lblText = new Label();
            lblArt = new Label();
            lblName = new Label();
            lblIzmer = new Label();
            lblPrice = new Label();
            lblSupp = new Label();
            lblManu = new Label();
            lblCat = new Label();
            lblDisc = new Label();
            lblUnit = new Label();
            lblPhoto = new Label();
            lblDesc = new Label();
            SuspendLayout();
            // 
            // btnCreate
            // 
            btnCreate.Location = new Point(202, 579);
            btnCreate.Name = "btnCreate";
            btnCreate.Size = new Size(92, 29);
            btnCreate.TabIndex = 0;
            btnCreate.Text = "Создать";
            btnCreate.UseVisualStyleBackColor = true;
            btnCreate.Click += btnCreate_Click;
            // 
            // tbArt
            // 
            tbArt.Location = new Point(79, 103);
            tbArt.Name = "tbArt";
            tbArt.PlaceholderText = "B302M1";
            tbArt.Size = new Size(125, 27);
            tbArt.TabIndex = 1;
            // 
            // tbName
            // 
            tbName.Location = new Point(79, 197);
            tbName.Name = "tbName";
            tbName.PlaceholderText = "Брус древесный";
            tbName.Size = new Size(125, 27);
            tbName.TabIndex = 2;
            // 
            // tbIzmer
            // 
            tbIzmer.Location = new Point(79, 290);
            tbIzmer.Name = "tbIzmer";
            tbIzmer.PlaceholderText = "шт.";
            tbIzmer.Size = new Size(125, 27);
            tbIzmer.TabIndex = 3;
            // 
            // tbPrice
            // 
            tbPrice.Location = new Point(79, 374);
            tbPrice.Name = "tbPrice";
            tbPrice.PlaceholderText = "1920";
            tbPrice.Size = new Size(125, 27);
            tbPrice.TabIndex = 4;
            // 
            // tbSupp
            // 
            tbSupp.Location = new Point(79, 457);
            tbSupp.Name = "tbSupp";
            tbSupp.PlaceholderText = "Lemana Pro";
            tbSupp.Size = new Size(125, 27);
            tbSupp.TabIndex = 5;
            // 
            // tbManu
            // 
            tbManu.Location = new Point(290, 103);
            tbManu.Name = "tbManu";
            tbManu.PlaceholderText = "NashStroy";
            tbManu.Size = new Size(125, 27);
            tbManu.TabIndex = 6;
            tbManu.TextChanged += tbManu_TextChanged;
            // 
            // tbCat
            // 
            tbCat.Location = new Point(290, 197);
            tbCat.Name = "tbCat";
            tbCat.PlaceholderText = "Доски";
            tbCat.Size = new Size(125, 27);
            tbCat.TabIndex = 7;
            // 
            // tbDisc
            // 
            tbDisc.Location = new Point(290, 290);
            tbDisc.Name = "tbDisc";
            tbDisc.PlaceholderText = "10";
            tbDisc.Size = new Size(125, 27);
            tbDisc.TabIndex = 8;
            // 
            // tbUnits
            // 
            tbUnits.Location = new Point(291, 374);
            tbUnits.Name = "tbUnits";
            tbUnits.PlaceholderText = "100";
            tbUnits.Size = new Size(125, 27);
            tbUnits.TabIndex = 9;
            // 
            // tbPhoto
            // 
            tbPhoto.Location = new Point(290, 457);
            tbPhoto.Name = "tbPhoto";
            tbPhoto.PlaceholderText = "Photo.png";
            tbPhoto.Size = new Size(125, 27);
            tbPhoto.TabIndex = 10;
            tbPhoto.TextChanged += tbPhoto_TextChanged;
            // 
            // tbDesc
            // 
            tbDesc.Location = new Point(80, 530);
            tbDesc.Name = "tbDesc";
            tbDesc.PlaceholderText = "Древесные брусья 100x30 из дуба";
            tbDesc.Size = new Size(336, 27);
            tbDesc.TabIndex = 11;
            // 
            // lblText
            // 
            lblText.AutoSize = true;
            lblText.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 204);
            lblText.Location = new Point(157, 30);
            lblText.Name = "lblText";
            lblText.Size = new Size(186, 20);
            lblText.TabIndex = 12;
            lblText.Text = "Создание нового товара";
            // 
            // lblArt
            // 
            lblArt.AutoSize = true;
            lblArt.Location = new Point(108, 80);
            lblArt.Name = "lblArt";
            lblArt.Size = new Size(65, 20);
            lblArt.TabIndex = 13;
            lblArt.Text = "Артикул";
            // 
            // lblName
            // 
            lblName.AutoSize = true;
            lblName.Location = new Point(103, 174);
            lblName.Name = "lblName";
            lblName.Size = new Size(77, 20);
            lblName.TabIndex = 14;
            lblName.Text = "Название";
            lblName.Click += label2_Click;
            // 
            // lblIzmer
            // 
            lblIzmer.AutoSize = true;
            lblIzmer.Location = new Point(89, 267);
            lblIzmer.Name = "lblIzmer";
            lblIzmer.Size = new Size(106, 20);
            lblIzmer.TabIndex = 15;
            lblIzmer.Text = "Ед.измерения";
            // 
            // lblPrice
            // 
            lblPrice.AutoSize = true;
            lblPrice.Location = new Point(117, 351);
            lblPrice.Name = "lblPrice";
            lblPrice.Size = new Size(45, 20);
            lblPrice.TabIndex = 16;
            lblPrice.Text = "Цена";
            // 
            // lblSupp
            // 
            lblSupp.AutoSize = true;
            lblSupp.Location = new Point(95, 434);
            lblSupp.Name = "lblSupp";
            lblSupp.Size = new Size(86, 20);
            lblSupp.TabIndex = 17;
            lblSupp.Text = "Поставщик";
            // 
            // lblManu
            // 
            lblManu.AutoSize = true;
            lblManu.Location = new Point(293, 80);
            lblManu.Name = "lblManu";
            lblManu.Size = new Size(118, 20);
            lblManu.TabIndex = 18;
            lblManu.Text = "Производитель";
            // 
            // lblCat
            // 
            lblCat.AutoSize = true;
            lblCat.Location = new Point(313, 174);
            lblCat.Name = "lblCat";
            lblCat.Size = new Size(81, 20);
            lblCat.TabIndex = 19;
            lblCat.Text = "Категория";
            // 
            // lblDisc
            // 
            lblDisc.AutoSize = true;
            lblDisc.Location = new Point(326, 267);
            lblDisc.Name = "lblDisc";
            lblDisc.Size = new Size(57, 20);
            lblDisc.TabIndex = 20;
            lblDisc.Text = "Скидка";
            // 
            // lblUnit
            // 
            lblUnit.AutoSize = true;
            lblUnit.Location = new Point(316, 351);
            lblUnit.Name = "lblUnit";
            lblUnit.Size = new Size(78, 20);
            lblUnit.TabIndex = 21;
            lblUnit.Text = "На складе";
            // 
            // lblPhoto
            // 
            lblPhoto.AutoSize = true;
            lblPhoto.Location = new Point(303, 434);
            lblPhoto.Name = "lblPhoto";
            lblPhoto.Size = new Size(94, 20);
            lblPhoto.TabIndex = 22;
            lblPhoto.Text = "Файл с фото";
            // 
            // lblDesc
            // 
            lblDesc.AutoSize = true;
            lblDesc.Location = new Point(184, 506);
            lblDesc.Name = "lblDesc";
            lblDesc.Size = new Size(131, 20);
            lblDesc.TabIndex = 23;
            lblDesc.Text = "Описание товара";
            // 
            // CreateTovarForm
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(503, 637);
            Controls.Add(lblDesc);
            Controls.Add(lblPhoto);
            Controls.Add(lblUnit);
            Controls.Add(lblDisc);
            Controls.Add(lblCat);
            Controls.Add(lblManu);
            Controls.Add(lblSupp);
            Controls.Add(lblPrice);
            Controls.Add(lblIzmer);
            Controls.Add(lblName);
            Controls.Add(lblArt);
            Controls.Add(lblText);
            Controls.Add(tbDesc);
            Controls.Add(tbPhoto);
            Controls.Add(tbUnits);
            Controls.Add(tbDisc);
            Controls.Add(tbCat);
            Controls.Add(tbManu);
            Controls.Add(tbSupp);
            Controls.Add(tbPrice);
            Controls.Add(tbIzmer);
            Controls.Add(tbName);
            Controls.Add(tbArt);
            Controls.Add(btnCreate);
            Name = "CreateTovarForm";
            Text = "CreateTovarForm";
            Load += CreateTovarForm_Load;
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Button btnCreate;
        private TextBox tbArt;
        private TextBox tbName;
        private TextBox tbIzmer;
        private TextBox tbPrice;
        private TextBox tbSupp;
        private TextBox tbManu;
        private TextBox tbCat;
        private TextBox tbDisc;
        private TextBox tbUnits;
        private TextBox tbPhoto;
        private TextBox tbDesc;
        private Label lblText;
        private Label lblArt;
        private Label lblName;
        private Label lblIzmer;
        private Label lblPrice;
        private Label lblSupp;
        private Label lblManu;
        private Label lblCat;
        private Label lblDisc;
        private Label lblUnit;
        private Label lblPhoto;
        private Label lblDesc;
    }
}