delete all 
    fetch 4GSX.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 310+313+314+315+316+317+321+352+354+364+368
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 262+16+301+12+265+267+266+161+398+401+373+400+399+211+57+383+209+54+193+346+52+392+386+20+297+132+278+131
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 101+110+76+77+73+98+235
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/4AL8/4AL8_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit