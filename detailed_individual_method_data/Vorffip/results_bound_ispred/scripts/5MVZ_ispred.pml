delete all 
    fetch 5MVZ.U
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 20+21+22+23+24+25+27+64+65+66+67+74+81+82+84+85+86+87
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 147+150+151+149+133+119+56+145+106+142+73+152+91+88+118+55+72+131+130+111+135+127+126+66+120
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5MVZ/5MVZ_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit