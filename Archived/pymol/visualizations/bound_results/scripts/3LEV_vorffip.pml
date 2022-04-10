delete all 
    fetch 3LEV.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 107+108+109+110+111+112+113+116+244
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 256+248+260+112+252+246+220+115+247+244+187+249+190+221+253+263+266+111+245+259+257+215+267+96+224+223+219
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3LEV/3LEV_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit