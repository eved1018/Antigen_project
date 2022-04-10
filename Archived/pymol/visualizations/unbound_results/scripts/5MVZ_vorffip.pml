delete all 
    fetch 5R8B.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 20+21+22+23+24+25+27+64+65+66+67+74+81+82+84+85+86+87
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 6+4+150+149+46+7+148+151+11+5+152+2+15+32+1+103+108+33+53+36+39+23+3+56+34+110
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5MVZ/5MVZ_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit