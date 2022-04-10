delete all 
    fetch 4WAT.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 193+202+205+209+212+213+328+331+335+338+339+341+342+344
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['501+399+400+509+500+495+245+248+246+504+250+506+507+244+505+502+496+499+249+497+498+396+508+503+247']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/4U0R/4U0R_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit