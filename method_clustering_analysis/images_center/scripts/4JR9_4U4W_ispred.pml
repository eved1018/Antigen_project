delete all 
    fetch 4U4W.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 12+15+16+17+19+24+25+27+28+29+32
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['368+454+318+307+371+321+312+316+313+310+311+453+364+367+315+317+320+309+306+372+456+455+308+314+322+319+457']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/4JR9/4JR9_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit