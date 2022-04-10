delete all 
    fetch 3PNW.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 566+567+579+580+581+582+586+588+590+592+593+594+595+597+598+599
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 597+581+554+552+573+596+594+555+608+583+582+567+572+568+595+569+551+570+571+607
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3PNW/3PNW_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit