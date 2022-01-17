delete all 
    fetch 7KNA.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 122+123+124+125+128+130+131+173+175+262
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 538+29+511+588+591+553+584+592+551+544+550+587+555+594+595+581+531+32+30+535
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 573+215+228+214+566+216+570+148+565+574+576+577+226+150+569+556
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/4F15/4F15_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit