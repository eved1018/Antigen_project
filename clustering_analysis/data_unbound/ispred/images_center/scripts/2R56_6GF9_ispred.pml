delete all 
    fetch 6GF9.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 19+20+43+44+45+47+57+59+65+66+67+68+70+125+126+127+154+156+157+158+162
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 63+148+149+64+70+65+68+155+154+69+150+153+152
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 114+112+113+111+110+76+77+8+142+4+6+144+146
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/2R56/2R56_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit