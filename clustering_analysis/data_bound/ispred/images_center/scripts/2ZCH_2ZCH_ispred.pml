delete all 
    fetch 2ZCH.P
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 91+92+93+94+98+101+125+175+178+179+233+234+235+236+237+239
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 128+129+110+98+99+94+95+97+92+93+87+90+109+125
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 215+188+216+148+217+222+187+193+144+150+192+186+218+137
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/2ZCH/2ZCH_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit