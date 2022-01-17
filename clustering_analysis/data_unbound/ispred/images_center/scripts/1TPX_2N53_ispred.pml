delete all 
    fetch 2N53.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 127+128+156+158+159+185+188+189+191+192+193+194+195+196+197+198+199+200
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 128+129+139+138+228+171+170+172+169+224+135+134+122+136+123+127+132+126+130+124+125
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 101+102+98+99+97+96
    indicate bycalpha pred_2
    create pred_res_2, indicate
    




    show sphere, annotated
    color pink, annotated
    set sphere_transparency, 0.5,annotated
    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res


    show sphere, pred_res_2
    set sphere_scale,0.5,pred_res_2
    color red, pred_res_2
    set sphere_transparency,0,pred_res_2
    set cartoon_transparency,1,pred_res_2

    remove resn hoh
    hide (het)
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/1TPX/1TPX_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit