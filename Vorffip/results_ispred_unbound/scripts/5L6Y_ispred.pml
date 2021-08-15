delete all 
    fetch 1IK0.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 14+18+21+101+104+105+107+108+109+110+112
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 24+6+28+27+61+84+68+65+110+42+73+23+15+109+11+108+82+85+70+105+87+81+26+89
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5L6Y/5L6Y_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit