delete all 
    fetch 3HMX.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 15+17+18+20+23+40+42+43+45+47+54+55+56+58+59+61+62+66
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 303+264+304+305+229+162+228+160+161+159+157+256+283+254+279+278+287
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 177+176+189+175+181+180+183+178+179+294+292+293+291+246+247
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/3HMX/3HMX_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit