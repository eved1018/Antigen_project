delete all 
    fetch 5JQ6.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 408+428+429+431+432+433+434+460+463+464+465+466+467+468+473+477+479+481+510+512+518
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 510+467+473+506+516+502+477+515+475+514+479+518+524+453+480+456+481+520
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 539+500+360+359+220+226+540+541+219+225+334+537+332+535
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/5JQ6/5JQ6_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit