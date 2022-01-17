delete all 
    fetch 7JNY.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 20+23+24+26+27+28+29+30+48+50+61+64+65+68
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 28+74+73+54+51+79+2+20+22+19+18
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 15+14+12+10+11+9+8+6+34+35+36
    indicate bycalpha pred_2
    create pred_res_2, indicate
    




    show sphere, annotated
    color pink, annotated
    set sphere_transparency, 0.5,annotated
    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res


    show sphere, pred_res_2
    set sphere_scale,0.5,pred_res_2
    color red, pred_res_2
    set sphere_transparency,0,pred_res_2
    set cartoon_transparency,1,pred_res_2

    remove resn hoh
    hide (het)
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/5CBA/5CBA_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit