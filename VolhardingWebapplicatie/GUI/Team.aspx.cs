using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VolhardingWebapplicatie
{
    public partial class Team1 : System.Web.UI.Page
    {
        Team team = new Team();
        Manager manager = new Manager();
        Materiaal materiaal = new Materiaal();
        protected void Page_Load(object sender, EventArgs e)
        {
            Team team1 = new Team("VolhardingA1");
            team.TeamLijst.Add(team1);
            foreach (Team t in team.TeamLijst)
            {
                DropDownListTeam.Items.Add((t.Naam));
            }

            DropDownListMateriaal.DataSource = Enum.GetValues(typeof(Spullen));
            DropDownListMateriaal.DataBind();

        }

        protected void BtnMateriaalToevoegen_Click(object sender, EventArgs e)
        {
            materiaal.MateriaalToevoegen(DropDownListMateriaal.SelectedItem.ToString(), Convert.ToInt32(tbAantalMateriaal.Text), team.SelecteerTeam(DropDownListTeam.SelectedItem.Value));
        }
    }
}