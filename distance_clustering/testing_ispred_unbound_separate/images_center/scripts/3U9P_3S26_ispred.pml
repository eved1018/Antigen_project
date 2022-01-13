delete all 
    fetch 3S26.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 9+10+11+12+13+14+15+89+90+93+95+106+107+109+126+127+128
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 100+101+106+107+67+70+71+72+77+78+79+80+81+82+84+86+98
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 10+12+13+14+15+6+7+8+9
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/3U9P/3U9P_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit