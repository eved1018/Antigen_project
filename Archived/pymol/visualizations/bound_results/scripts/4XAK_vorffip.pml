delete all 
    fetch 4XAK.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 502+506+510+513+535+536+538+539+540+541+542+553+555+557
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 540+507+535+553+506+590+542+548+539+588+580+536+591+510+541+403+589+505+547+579+587+408+381+544+549+511+550+474+585
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4XAK/4XAK_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit