delete all 
    fetch 5KVG.E
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 309+310+311+312+313+314+331+333+334+335+336+337+368+370+371+393+394+395+396+397
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 303+338+304+305+298+307+361+366+392+393
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 315+375+401+403+382+357+381+386+379+322+320+321+327
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/5KVG/5KVG_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit