delete all 
    fetch 1AUQ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 627+628+629+631+632+633+634+635+636+660+661+664
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 529+676+639+604+599+603+629+627+633+632+636+635+678+679+655+643
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 504+505+507+705+704+700+701+703+702+573+571
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/1FNS/1FNS_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit