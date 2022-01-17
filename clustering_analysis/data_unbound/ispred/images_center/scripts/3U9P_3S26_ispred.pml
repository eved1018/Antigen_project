delete all 
    fetch 3S26.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 9+10+11+12+13+14+15+89+90+93+95+106+107+109+126+127+128
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 100+101+77+70+71+67+98+72+80+81+82+79+86+78+84
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 15+14+13+106+107+12+10+9+8+6+7
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/3U9P/3U9P_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit