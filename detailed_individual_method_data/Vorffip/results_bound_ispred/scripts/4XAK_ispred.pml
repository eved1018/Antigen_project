delete all 
    fetch 4XAK.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 502+506+510+513+535+536+538+539+540+541+542+553+555+557
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 546+536+547+549+560+537+561+535+540+562+544+548+495+550+525+509+588+542+512+539+511+401+563+510+528+493+430+576+486
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4XAK/4XAK_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit