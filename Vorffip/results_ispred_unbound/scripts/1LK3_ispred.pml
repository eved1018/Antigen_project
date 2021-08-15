delete all 
    fetch 1INR.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 71+74+75+78+79+82+83+125+128+129+130+131+132+133+134+136+137
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 114+86+151+36+72+128+121+23+48+60+30+137+52+133+56+139+53+141+144+154+142+136+31+156+27+148
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1LK3/1LK3_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit