delete all 
    fetch 1LC1.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 36+37+58+60+61+62+96+99+100+103+104
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['78+19+79+26+80+29+46+83+17+30+82+25+15+81+28+16+72+18+27+48']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/1WEJ/1WEJ_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit