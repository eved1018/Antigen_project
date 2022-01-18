delete all 
    fetch 3G04.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 38+56+58+80+82+105+107+109+110+129+130+151+152+153+155+157+183+185+208+209+235+255+256
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 203+206+239+235+237+155+153+152+254+240+241+255+252+253
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 115+112+113+107+139+104+110+88+63+60+65+87+135+127
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/3G04/3G04_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit