﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VolhardingWebapplicatie
{
    public class Competitie
    {
        public int CompetitieNR { get; set; }
        public Manager Manager { get; set; }
        public int Stand { get; set; }
        public Team Team { get; set; }
        public int GS { get; set; }
        public int WN { get; set; }
        public int GL { get; set; }
        public int VL { get; set; }
        public int PT { get; set; }
        public int TG { get; set; }
        public int PM { get; set; }
        public List<Competitie> CompetitieLijst { get; set; }

        public Competitie(int stand, Team team, int gs, int wn, 
            int gl, int vl, int pt, int tg,int pm)
        { }

        public void StandUpdaten(Wedstrijd wedstrijd)
        { }

        public void CompetitieToevoegen(Competitie competitie)
        { }

    }
}