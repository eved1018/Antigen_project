delete all 
    fetch 3D85.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 82+86+87+88+91+92+93+94+95+106+133+134+135+136+137+139+140
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 145+29+19+26+51+32+141+30+133+95+53+107+118+23+94+110+98+59+69+111+97+65+159+167+136
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3D85/3D85_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit