delete all 
    fetch 1M4C.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 30+32+33+34+35+37+38+41+42+43+71+72+73
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 29+116+38+72+42+40+83+41+45+85+109+23+37+26+119+30
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 129+16+103+106+12+10+126+130
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/5LQB/5LQB_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit