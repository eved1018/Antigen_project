delete all 
    fetch 7KNA.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 122+123+124+125+128+130+131+173+175+262
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 148+150+214+215+216+226+228+565+566+569+570+573+574+576+577+581
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 29+30+32+511+531+535+538+544+550+551+553+555+556+584+587+588+591+592+594+595
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/4F15/4F15_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit