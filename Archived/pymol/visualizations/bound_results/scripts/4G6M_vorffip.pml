delete all 
    fetch 4G6M.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 72+73+74+75+81+83+84+86+89+90+92+94+96+97+98+115+116+117+118
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 150+6+7+148+11+5+149+2+4+36+46+138+151+37+33+137+34+15+131+93+105+108+120+130+24+133
    indicate bycalpha pred
    create pred_res, indicate
    show sphere, annotated
    color pink, annotated
    set sphere_transparency, 0.5,annotated
    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    remove resn hoh
    hide (het)
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4G6M/4G6M_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit