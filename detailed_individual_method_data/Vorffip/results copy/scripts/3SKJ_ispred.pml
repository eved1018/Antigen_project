delete all 
    fetch 3SKJ.E
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 33+42+44+46+48+49+79+83+84+85+129+132+133+135+164+166
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 49+41+89+40+85+135+88+119+39+31+36+112+86+30+111+136+113+82+32+161+137+38+16+108+14+109+132
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3SKJ/3SKJ_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit