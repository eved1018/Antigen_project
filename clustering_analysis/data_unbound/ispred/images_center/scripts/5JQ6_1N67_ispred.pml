delete all 
    fetch 1N67.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 408+428+429+431+432+433+434+460+463+464+465+466+467+468+473+477+479+481+510+512+518
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 301+300+310+311+312+528+359+530+532+533
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 470+467+473+466+516+517+515+475+500+549+429+428+546+432+551+419+430+550+420+479+468+469
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/5JQ6/5JQ6_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit