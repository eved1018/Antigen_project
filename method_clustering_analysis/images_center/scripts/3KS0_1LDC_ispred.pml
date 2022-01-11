delete all 
    fetch 1LDC.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 30+63+64+65+66+67+68+69+70+72
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['501+492+491+500+495+494+493+486+504+506+487+507+505+502+488+489+496+499+485+497+498+503+490']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/3KS0/3KS0_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit