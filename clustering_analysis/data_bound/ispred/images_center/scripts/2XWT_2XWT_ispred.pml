delete all 
    fetch 2XWT.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 36+38+42+55+58+60+61+80+82+84+85+104+105+107+109+110+129+130+134+151+152+153+155+157+181+183+203
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 206+239+235+237+254+240+255+252+253
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 129+115+112+38+88+63+49+148+74+60+58+155+151+87+85+153+152+127+130+119
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/2XWT/2XWT_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit