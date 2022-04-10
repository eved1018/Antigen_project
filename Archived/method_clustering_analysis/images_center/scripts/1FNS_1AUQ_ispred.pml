delete all 
    fetch 1AUQ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 627+628+629+631+632+633+634+635+636+660+661+664
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['633+701+629+630+627+703+510+700+512+613+550+628+595+636+699+631+511+705+702+634+632+704+698']
    indicate bycalpha pred
    create pred_res, indicate
    show sphere, annotated
    color pink, annotated
    set sphere_transparency, 0.5,annotated
    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    remove resn hoh
    hide (het)
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/1FNS/1FNS_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit