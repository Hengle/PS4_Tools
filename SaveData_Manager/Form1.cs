﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using PS4_Tools;
using System.IO;

namespace SaveData_Manager
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        public static void CopyDir(string sourceDirectory, string targetDirectory)
        {
            DirectoryInfo diSource = new DirectoryInfo(sourceDirectory);
            DirectoryInfo diTarget = new DirectoryInfo(targetDirectory);

            CopyAll(diSource, diTarget);
        }

        public static void CopyAll(DirectoryInfo source, DirectoryInfo target)
        {
            Directory.CreateDirectory(target.FullName);

            // Copy each file into the new directory.
            foreach (FileInfo fi in source.GetFiles())
            {
                Console.WriteLine(@"Copying {0}\{1}", target.FullName, fi.Name);
                fi.CopyTo(Path.Combine(target.FullName, fi.Name), true);
            }

            // Copy each subdirectory using recursion.
            foreach (DirectoryInfo diSourceSubDir in source.GetDirectories())
            {
                DirectoryInfo nextTargetSubDir =
                    target.CreateSubdirectory(diSourceSubDir.Name);
                CopyAll(diSourceSubDir, nextTargetSubDir);
            }
        }


        public static string LocalDB = "";

        public class SaveDataGameHolder
        {
            public string Title_ID { get; set; }
            public string SaveDataDirName { get; set; }
            public string DirName { get; set; }
            public string PathToSave { get; set; }
            public Param_SFO.PARAM_SFO paraminfo { get; set; }
            public string UserId { get; set; }

        }

        public class SaveDataDisplayHolder
        {
            public string Name { get; set; }

            public string UserId { get; set; }

            public string Title { get; set; }

            public string TitleId { get; set; }

            public string Detail { get; set; }

            public string Subdetail { get; set; }
            public Bitmap icon { get; set; }

            public SaveDataGameHolder dataholder { get; set; }

        }

        public string GetDetail(Param_SFO.PARAM_SFO psfo)
        {
            for (int i = 0; i < psfo.Tables.Count; i++)
            {
                if (psfo.Tables[i].Name == "DETAIL")
                {
                    //get the value 
                    return psfo.Tables[i].Value;
                }
            }
            return "";
        }

        public string Get_SAVEDATA_DIRECTORY(Param_SFO.PARAM_SFO psfo)
        {
            for (int i = 0; i < psfo.Tables.Count; i++)
            {
                if (psfo.Tables[i].Name == "SAVEDATA_DIRECTORY")
                {
                    //get the value 
                    return psfo.Tables[i].Value;
                }
            }
            return "";
        }
        public string Get_MAINTITLE(Param_SFO.PARAM_SFO psfo)
        {
            for (int i = 0; i < psfo.Tables.Count; i++)
            {
                if (psfo.Tables[i].Name == "MAINTITLE")
                {
                    //get the value 
                    return psfo.Tables[i].Value;
                }
            }
            return "";
        }
        public string Get_ACCOUNT_ID(Param_SFO.PARAM_SFO psfo)
        {
            for (int i = 0; i < psfo.Tables.Count; i++)
            {
                if (psfo.Tables[i].Name == "ACCOUNT_ID")
                {
                    //get the value 
                    return psfo.Tables[i].Value;
                }
            }
            return "";
        }
        public string GetSubTitle(Param_SFO.PARAM_SFO psfo)
        {
            for (int i = 0; i < psfo.Tables.Count; i++)
            {
                if (psfo.Tables[i].Name == "SUBTITLE")
                {
                    //get the value 
                    return psfo.Tables[i].Value;
                }
            }
            return "";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                var fbd = new FolderBrowserDialog();
                fbd.Description = "Select PS4 Save Data Location";
                DialogResult result = fbd.ShowDialog();
                string MainDir = @"E:\SaveData";
                if (result == DialogResult.OK && !string.IsNullOrWhiteSpace(fbd.SelectedPath))
                {
                    MainDir = fbd.SelectedPath;
                    textBox3.Text = MainDir;
                }
                else
                {
                    return;
                }

                    
                List<SaveDataGameHolder> saveholder = new List<SaveDataGameHolder>();
                var allsavedirs = System.IO.Directory.GetDirectories(MainDir, "*.*", System.IO.SearchOption.TopDirectoryOnly);
                for (int i = 0; i < allsavedirs.Length; i++)
                {
                    //savedata_10000000_CUSA00135_BAK1Save0x0sgd
                    string DirName = allsavedirs[i].ToString().Replace(MainDir + "\\", "");
                    string[] DirSplit = DirName.Split('_');
                    if (DirSplit.Length == 4)
                    {

                        //continue on 
                        if (DirSplit[0] == "savedata")
                        {
                            SaveDataGameHolder dataholder = new SaveDataGameHolder();
                            dataholder.Title_ID = DirSplit[2];
                            dataholder.SaveDataDirName = DirSplit[3];
                            dataholder.UserId = DirSplit[1];
                            dataholder.PathToSave = allsavedirs[i];
                            dataholder.DirName = DirName;
                            dataholder.paraminfo = new Param_SFO.PARAM_SFO(allsavedirs[i] + "//sce_sys//param.sfo");
                            saveholder.Add(dataholder);

                            //dataholder
                        }
                    }
                }

                List<SaveDataDisplayHolder> displayholder = new List<SaveDataDisplayHolder>();
                for (int i = 0; i < saveholder.Count; i++)
                {
                    SaveDataDisplayHolder displayitem = new SaveDataDisplayHolder();
                    displayitem.Name = Get_SAVEDATA_DIRECTORY(saveholder[i].paraminfo);
                    displayitem.Detail = GetDetail(saveholder[i].paraminfo);
                    displayitem.Subdetail = GetSubTitle(saveholder[i].paraminfo);
                    displayitem.UserId = saveholder[i].UserId;
                    displayitem.Title = Get_MAINTITLE(saveholder[i].paraminfo);
                    displayitem.TitleId = saveholder[i].Title_ID;
                    displayitem.dataholder = saveholder[i];
                    try
                    {

                        displayitem.icon = new Bitmap(saveholder[i].PathToSave + "//sce_sys//icon0.png");
                    }
                    catch(Exception ex)
                    {

                    }
                    //we want some extra info
                    displayholder.Add(displayitem);
                }
                
                dataGridView1.DataSource = displayholder;
                dataGridView1.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;

                dataGridView1.Columns["Detail"].Visible = false;
                dataGridView1.Columns["Subdetail"].Visible = false;
                dataGridView1.Columns["icon"].Visible = false;
                dataGridView1.Columns["dataholder"].Visible = false;
                
            }
            catch(Exception ex)
            {

            }
        }

        private void dataGridView1_SelectionChanged(object sender, EventArgs e)
        {
            //show the info
            try
            {
                SaveDataDisplayHolder displayitem = dataGridView1.SelectedRows[0].DataBoundItem as SaveDataDisplayHolder;
                textBox2.TextAlign = HorizontalAlignment.Left;
                textBox2.Text = "Title" + Environment.NewLine;
                textBox2.Text += displayitem.Title + Environment.NewLine;
                //textBox2.Text += "Title ID" + Environment.NewLine;
                //textBox2.Text += displayitem.TitleId + Environment.NewLine;
                //textBox2.Text += "User ID" + Environment.NewLine;
                //textBox2.Text += displayitem.UserId + Environment.NewLine;
                textBox2.Text += "Details" + Environment.NewLine;
                textBox2.Text += displayitem.Subdetail;
                textBox1.Text = displayitem.Detail;

                pictureBox1.Image = displayitem.icon;


            }
            catch(Exception ex)
            {

            }
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void saveAllGamesToLocalToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //All items need to be moved
            for (int i = 0; i < dataGridView1.Rows.Count; i++)
            {
                //copy all items to the local db
                SaveDataDisplayHolder holderitem = dataGridView1.Rows[i].DataBoundItem as SaveDataDisplayHolder;
                string saveitem = holderitem.dataholder.PathToSave;
                CopyDir(saveitem, LocalDB+ "//" + holderitem.dataholder.DirName);

            }
            MessageBox.Show("Copy completed", "Save Data Manager", MessageBoxButtons.OK, MessageBoxIcon.Information);

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrEmpty(Properties.Settings.Default.BackupLocation))
                {
                    LocalDB = Application.StartupPath + "//SaveManager";

                    if (!System.IO.Directory.Exists(LocalDB))
                    {
                        System.IO.Directory.CreateDirectory(LocalDB);
                    }
                }
                else
                {
                    LocalDB = Properties.Settings.Default.BackupLocation;

                    if (!System.IO.Directory.Exists(LocalDB))
                    {
                        System.IO.Directory.CreateDirectory(LocalDB);
                    }
                }
            }
            catch(Exception ex)
            {
                MessageBox.Show("Could not load local save location resetting to default", "Error", MessageBoxButtons.OK, MessageBoxIcon.Information);

            }
        }

        private void saveToLocalToolStripMenuItem_Click(object sender, EventArgs e)
        {
            SaveDataDisplayHolder holderitem = dataGridView1.SelectedRows[0].DataBoundItem as SaveDataDisplayHolder;
            string saveitem = holderitem.dataholder.PathToSave;
            CopyDir(saveitem, LocalDB + "//" + holderitem.dataholder.DirName);
            MessageBox.Show("Copy completed", "Save Data Manager", MessageBoxButtons.OK, MessageBoxIcon.Information);

        }

        private void showLocalItemsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //Open Local Data
            SaveDataDisplayHolder holderitem = dataGridView1.SelectedRows[0].DataBoundItem as SaveDataDisplayHolder;
            //File.Open()
            string path = LocalDB + @"\" + holderitem.dataholder.DirName;
            if (Directory.Exists(path))
            {
                System.Diagnostics.Process.Start(path);
            }
        }

        private void btnSettings_Click(object sender, EventArgs e)
        {
            frmSettings set = new frmSettings();
            set.ShowDialog();
        }
    }
}
