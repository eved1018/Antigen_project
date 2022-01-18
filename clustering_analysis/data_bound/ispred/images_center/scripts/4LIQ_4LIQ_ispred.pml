delete all 
    fetch 4LIQ.E
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 314+315+316+317+318+319+320+367+369+370+372+373+375+401+402+439+493
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 289+262+249+248+260+176+60+206+205+208+181+180+209+390+231+257+245+132+244+250+252+247
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 471+473+449+448+407+410+411+405+414+408+409+450+447+496
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/4LIQ/4LIQ_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit