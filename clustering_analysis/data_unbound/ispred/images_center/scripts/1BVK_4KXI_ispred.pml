delete all 
    fetch 4KXI.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 18+19+22+23+24+27+102+103+116+117+118+119+120+121+124+125+129
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 61+48+70+71+73+72+43+68+45+44+46+47
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 114+128+103+117+116+112+113+34+109+33+118+119
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/1BVK/1BVK_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit