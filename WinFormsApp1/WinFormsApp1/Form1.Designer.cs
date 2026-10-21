namespace WinFormsApp1
{
    partial class Form1
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
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
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            lblWelcome = new Label();
            lblLogin = new Label();
            lblPassword = new Label();
            btnLogin = new Button();
            btnGuest = new Button();
            tbPassword = new TextBox();
            tbLogin = new TextBox();
            pbLogo = new PictureBox();
            ((System.ComponentModel.ISupportInitialize)pbLogo).BeginInit();
            SuspendLayout();
            // 
            // lblWelcome
            // 
            lblWelcome.AutoSize = true;
            lblWelcome.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 204);
            lblWelcome.Location = new Point(281, 40);
            lblWelcome.Name = "lblWelcome";
            lblWelcome.Size = new Size(120, 15);
            lblWelcome.TabIndex = 0;
            lblWelcome.Text = "Добро пожаловать!";
            // 
            // lblLogin
            // 
            lblLogin.AutoSize = true;
            lblLogin.Location = new Point(317, 99);
            lblLogin.Name = "lblLogin";
            lblLogin.Size = new Size(41, 15);
            lblLogin.TabIndex = 1;
            lblLogin.Text = "Логин";
            // 
            // lblPassword
            // 
            lblPassword.AutoSize = true;
            lblPassword.Location = new Point(314, 177);
            lblPassword.Name = "lblPassword";
            lblPassword.Size = new Size(49, 15);
            lblPassword.TabIndex = 2;
            lblPassword.Text = "Пароль";
            // 
            // btnLogin
            // 
            btnLogin.Location = new Point(172, 268);
            btnLogin.Margin = new Padding(3, 2, 3, 2);
            btnLogin.Name = "btnLogin";
            btnLogin.Size = new Size(82, 22);
            btnLogin.TabIndex = 3;
            btnLogin.Text = "Вход";
            btnLogin.UseVisualStyleBackColor = true;
            btnLogin.Click += btnLogin_Click;
            // 
            // btnGuest
            // 
            btnGuest.Location = new Point(424, 268);
            btnGuest.Margin = new Padding(3, 2, 3, 2);
            btnGuest.Name = "btnGuest";
            btnGuest.Size = new Size(82, 22);
            btnGuest.TabIndex = 4;
            btnGuest.Text = "Гость";
            btnGuest.UseVisualStyleBackColor = true;
            btnGuest.Click += btnGuest_Click;
            // 
            // tbPassword
            // 
            tbPassword.Location = new Point(269, 215);
            tbPassword.Margin = new Padding(3, 2, 3, 2);
            tbPassword.Name = "tbPassword";
            tbPassword.PasswordChar = '*';
            tbPassword.Size = new Size(147, 23);
            tbPassword.TabIndex = 5;
            // 
            // tbLogin
            // 
            tbLogin.Location = new Point(269, 136);
            tbLogin.Margin = new Padding(3, 2, 3, 2);
            tbLogin.Name = "tbLogin";
            tbLogin.Size = new Size(147, 23);
            tbLogin.TabIndex = 6;
            // 
            // pbLogo
            // 
            pbLogo.Location = new Point(60, 28);
            pbLogo.Margin = new Padding(3, 2, 3, 2);
            pbLogo.Name = "pbLogo";
            pbLogo.Size = new Size(52, 46);
            pbLogo.SizeMode = PictureBoxSizeMode.Zoom;
            pbLogo.TabIndex = 7;
            pbLogo.TabStop = false;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(700, 338);
            Controls.Add(pbLogo);
            Controls.Add(tbLogin);
            Controls.Add(tbPassword);
            Controls.Add(btnGuest);
            Controls.Add(btnLogin);
            Controls.Add(lblPassword);
            Controls.Add(lblLogin);
            Controls.Add(lblWelcome);
            Margin = new Padding(3, 2, 3, 2);
            Name = "Form1";
            Text = "Form1";
            ((System.ComponentModel.ISupportInitialize)pbLogo).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label lblWelcome;
        private Label lblLogin;
        private Label lblPassword;
        private Button btnLogin;
        private Button btnGuest;
        private TextBox tbPassword;
        private TextBox tbLogin;
        private PictureBox pbLogo;
    }
}
