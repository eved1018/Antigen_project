delete all 
    fetch 2EC8.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 317+318+319+320+329+330+331+332+334+336+358+360+362+364+365+366+372+376+378+380+381
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['441+481+454+11+57+479+424+483+12+13+442+480+506+40+507+443+14+42+15+439+41+505+482+456+485+455+16+484+508']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/4K94/4K94_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit