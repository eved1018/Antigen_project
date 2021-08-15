delete all 
    fetch 3RKD.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 476+477+479+484+485+496+497+499+510+512+513+514+515+534+573+574+575+576+577+578
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 544+506+510+561+584+564+559+470+505+468+548+557+563+550+598+552+562+540+542+600+466+565+504+503+585
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3RKD/3RKD_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit