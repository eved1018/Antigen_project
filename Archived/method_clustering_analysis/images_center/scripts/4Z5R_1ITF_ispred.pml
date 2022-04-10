delete all 
    fetch 1ITF.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 19+22+24+25+26+27+30+33+34+35+37+40+41+125+141+144+145+148+149+152+153
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['111+113+90+99+108+109+3+102+13+94+112+5+105+6+8+93+9+103+98+114+96+110+104+100+97+10+4+101+7']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/4Z5R/4Z5R_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit