namespace WinFormsApp1
{
    partial class MainForm
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
            pictureBox1 = new PictureBox();
            lblWelcome = new Label();
            lblName = new Label();
            flowLayoutPanel1 = new FlowLayoutPanel();
            btnManager = new Button();
            btnAdmin = new Button();
            cbSort = new ComboBox();
            btnBack = new Button();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).BeginInit();
            SuspendLayout();
            // 
            // pictureBox1
            // 
            pictureBox1.Location = new Point(8, 5);
            pictureBox1.Name = "pictureBox1";
            pictureBox1.Size = new Size(38, 40);
            pictureBox1.SizeMode = PictureBoxSizeMode.Zoom;
            pictureBox1.TabIndex = 0;
            pictureBox1.TabStop = false;
            pictureBox1.Click += pictureBox1_Click;
            // 
            // lblWelcome
            // 
            lblWelcome.AutoSize = true;
            lblWelcome.Location = new Point(64, 5);
            lblWelcome.Name = "lblWelcome";
            lblWelcome.Size = new Size(251, 20);
            lblWelcome.TabIndex = 1;
            lblWelcome.Text = "Добро пожаловать в \"Наш декор\"!";
            // 
            // lblName
            // 
            lblName.AutoSize = true;
            lblName.Location = new Point(64, 25);
            lblName.Name = "lblName";
            lblName.Size = new Size(66, 20);
            lblName.TabIndex = 2;
            lblName.Text = "lblName";
            // 
            // flowLayoutPanel1
            // 
            flowLayoutPanel1.AutoScroll = true;
            flowLayoutPanel1.FlowDirection = FlowDirection.TopDown;
            flowLayoutPanel1.Location = new Point(8, 51);
            flowLayoutPanel1.Name = "flowLayoutPanel1";
            flowLayoutPanel1.Size = new Size(870, 661);
            flowLayoutPanel1.TabIndex = 3;
            flowLayoutPanel1.WrapContents = false;
            // 
            // btnManager
            // 
            btnManager.Location = new Point(632, 11);
            btnManager.Name = "btnManager";
            btnManager.Size = new Size(94, 29);
            btnManager.TabIndex = 4;
            btnManager.Text = "Заказы";
            btnManager.UseVisualStyleBackColor = true;
            btnManager.Click += btnManager_Click_1;
            // 
            // btnAdmin
            // 
            btnAdmin.Location = new Point(737, 11);
            btnAdmin.Name = "btnAdmin";
            btnAdmin.Size = new Size(94, 29);
            btnAdmin.TabIndex = 5;
            btnAdmin.Text = "+Товары";
            btnAdmin.UseVisualStyleBackColor = true;
            btnAdmin.Click += btnAdmin_Click;
            // 
            // cbSort
            // 
            cbSort.FormattingEnabled = true;
            cbSort.Items.AddRange(new object[] { "id", "name", "price", "discount" });
            cbSort.Location = new Point(507, 11);
            cbSort.Name = "cbSort";
            cbSort.Size = new Size(114, 28);
            cbSort.TabIndex = 6;
            cbSort.Text = "id";
            cbSort.SelectedIndexChanged += cbSort_SelectedIndexChanged;
            // 
            // btnBack
            // 
            btnBack.Location = new Point(838, 11);
            btnBack.Margin = new Padding(3, 4, 3, 4);
            btnBack.Name = "btnBack";
            btnBack.Size = new Size(37, 31);
            btnBack.TabIndex = 7;
            btnBack.Text = "X";
            btnBack.UseVisualStyleBackColor = true;
            btnBack.Click += btnBack_Click;
            // 
            // MainForm
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(890, 724);
            Controls.Add(btnBack);
            Controls.Add(cbSort);
            Controls.Add(btnAdmin);
            Controls.Add(btnManager);
            Controls.Add(flowLayoutPanel1);
            Controls.Add(lblName);
            Controls.Add(lblWelcome);
            Controls.Add(pictureBox1);
            Name = "MainForm";
            Text = "MainForm";
            ((System.ComponentModel.ISupportInitialize)pictureBox1).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private PictureBox pictureBox1;
        private Label lblWelcome;
        private Label lblName;
        private FlowLayoutPanel flowLayoutPanel1;
        private Button btnManager;
        private Button btnAdmin;
        private ComboBox cbSort;
        private Button btnBack;
    }
}