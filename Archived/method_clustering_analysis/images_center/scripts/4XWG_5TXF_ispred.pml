delete all 
    fetch 5TXF.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 48+49+50+51+53+54+58+63+65+66+68+69+70+71+75+78+238
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['384+288+333+327+269+389+391+284+386+286+335+127+224+383+270+285+225+334+282+379+385+287+329+283+332+223+337+330+289+123+388+382+328+336+268+387+331']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/4XWG/4XWG_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit