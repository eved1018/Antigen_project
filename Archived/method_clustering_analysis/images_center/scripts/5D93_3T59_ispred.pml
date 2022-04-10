delete all 
    fetch 3T59.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 36+37+38+71+72+74+75+77+78+81+82+84+85+142+143+144+145+146+148
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['399+293+400+523+509+518+257+258+238+520+256+260+253+261+526+519+292+254+401+398+517+524+294+521+505+516+295+290+262+397+289+525+255+522+291']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/5D93/5D93_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit