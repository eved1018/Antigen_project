delete all 
    fetch 3WE1.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 592+593+594+595+596+598+600+602+631+632+647+649
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['633+637+611+630+610+579+578+609+613+612+647+635+581+636+577+631+646+638+634+632+580+645']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/4BZ1/4BZ1_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit