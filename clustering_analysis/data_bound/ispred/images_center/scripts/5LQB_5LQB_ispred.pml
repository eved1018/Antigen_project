delete all 
    fetch 5LQB.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 50+52+53+54+55+57+58+61+62+63+91+92+93+94+96+97
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 129+101+62+63+61+60+58+65+57+96+51+92+53+136+133+131
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 29+107+39+150+147+146+36+32
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/5LQB/5LQB_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit