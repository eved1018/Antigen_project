delete all 
    fetch 5R8B.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 72+73+74+75+81+83+84+86+89+90+92+94+96+97+98+115+116+117+118
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 106+150+151+152+4+41+5+55+6+64+7+70+79
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 11+128+129+13+130+131+133+20+21+22+30+35+36
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/4G6M/4G6M_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit