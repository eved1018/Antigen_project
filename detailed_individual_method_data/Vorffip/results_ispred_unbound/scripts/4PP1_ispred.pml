delete all 
    fetch 3F5V.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 47+51+53+54+55+84+85+86+87+90+93+107+108+109+110+111+112+113+221+222
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 198+156+154+208+212+20+199+15+157+27+18+13+65+103+17+6+180+209+104+19+24+216+207+161+160+215+29+4
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4PP1/4PP1_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit