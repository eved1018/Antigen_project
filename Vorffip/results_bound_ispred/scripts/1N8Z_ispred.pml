delete all 
    fetch 1N8Z.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 557+558+560+561+569+570+571+572+573+591+593+596+598+600+602+603+604
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 332+316+260+89+477+176+327+296+252+319+603+490+529+186+451+250+527+488+502+480+594+175+456+257+547+202+568+161+483+427+241+179+245+567+367+187+602+169
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1N8Z/1N8Z_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit