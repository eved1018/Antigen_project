delete all 
    fetch 1ADZ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 17+18+19+20+24+26+28+30+31+33+35+38+39+40+41+43+57
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['44+25+48+29+47+45+49+24+21+23+46+27+20+22+43+26']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/4DTG/4DTG_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit