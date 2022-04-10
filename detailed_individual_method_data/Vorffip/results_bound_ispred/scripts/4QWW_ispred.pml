delete all 
    fetch 4QWW.B
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 68+71+72+73+74+75+76+77+78+79+82+85+86+90+272+276+341+342+431
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 121+73+72+74+285+71+286+70+53+340+56+24+75+55+68+76+494+383+118+527+88+65+342+57+16+284+334+89+272+128+526+373+297+52+107
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4QWW/4QWW_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit