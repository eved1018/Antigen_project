delete all 
    fetch 4GSX.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 310+313+314+315+316+317+321+352+354+364+368
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 12+131+132+16+161+193+20+209+211+235+262+265+266+267+278+297+301+346+373+383+386+392+398+399+400+401+52+54+57
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 101+110+73+76+77+98
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/4AL8/4AL8_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit