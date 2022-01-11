delete all 
    fetch 3S26.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 9+10+11+12+13+14+15+89+90+93+95+106+107+109+126+127+128
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['180+52+78+67+68+69+176+178+177+80+71+79+72+53+77+70+81+82']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/3U9P/3U9P_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit