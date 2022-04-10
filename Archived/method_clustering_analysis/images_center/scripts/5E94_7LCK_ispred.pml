delete all 
    fetch 7LCK.R
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 29+30+31+32+33+35+36+39+40+43+68+137+138+141+142+145
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['252+259+333+257+258+347+256+326+253+335+348+339+251+338+354+254+352+401+334+356+329+353+355+332+340+337+330+351+255+350+349+328+336+345+331']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/5E94/5E94_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit