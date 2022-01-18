delete all 
    fetch 2R56.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 19+20+43+44+45+47+57+59+65+66+67+68+70+125+126+127+154+156+157+158+162
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 77+75+74+71+72+68+69+78
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 128+138+149+142+143+157+141+155+154+144+150+153+146+152+135+127+126+125
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/2R56/2R56_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit