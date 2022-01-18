delete all 
    fetch 5KVD.E
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 301+315+316+317+318+319+320+321+322+327+329+362+364+366+367+372+373+374+375+377
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 317+315+375+398+401+399+357+381+386+379+323+322+320+321+327
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 303+300+338+304+307+299+361+362
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/5KVD/5KVD_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit