delete all 
    fetch 3V6O.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 465+466+467+468+469+470+471+480+481+482+484+502+504
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 472+601+502+546+506+616+549+496+473+606+471+576+602+495+555+470+528+632+476+568+468+578+505+617+604+551+474+630
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3V6O/3V6O_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit