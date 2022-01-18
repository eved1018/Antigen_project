delete all 
    fetch 1JPS.T
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 152+154+156+164+165+166+167+168+169+170+171+190+192+194+197+198+199+200+201+203+204
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 176+203+165+164+199+166+167+198+195+156+209+169+168+197+119
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 61+66+5+94+95+40+83+45+92+93+44+91+30
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/1JPS/1JPS_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit