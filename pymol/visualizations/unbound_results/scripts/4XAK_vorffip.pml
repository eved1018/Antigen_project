delete all 
    fetch 7C02.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 502+510+513+535+536+538+539+540+541+542+553+555+557
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 535+553+542+536+540+539+541+544+547+403+548+507+511+506+510+496+546+381+538+579+543+552+531+513+384+581+508+522
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