delete all 
    fetch 4F37.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 1+2+3+4+5+6+7+8+10
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 29+76+75+74+71+65+72+68
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 15+14+16+13+12+10+11+48+9+8+5+6+7+45+44+19
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/4F37/4F37_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit