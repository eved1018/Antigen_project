delete all 
    fetch 1ITF.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 2+53+54+57+58+61+64+65+68+86+89+90+92+93+96+97+99+100+101+111+113+116+120
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 42+114+152+145+86+13+125+163+120+41+30+113+12+25+20+110+62+105+124+100+161+37+7+23+68+82
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4YPG/4YPG_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit