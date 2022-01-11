delete all 
    fetch 5R8B.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 19+20+21+22+23+25+27+29+31+34+35+37+38+39+64+65+66+86+87+88+129
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['1+152+3+63+47+151+2+46+5+6+43+8+44+150+148+93+42+45+41+4+7']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/4G6J/4G6J_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit