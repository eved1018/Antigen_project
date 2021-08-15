delete all 
    fetch 3NFP.K
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 1+2+4+5+6+25+27+42+43+118+120+149+152+153+154
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 134+137+63+133+64+113+136+135+112+108+60+37+12+39+62+36+109+143+114+43+15+115+116+111
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3NFP/3NFP_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit