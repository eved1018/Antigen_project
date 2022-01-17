delete all 
    fetch 3BTA.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 901+916+917+918+919+920+952+953+954+955+1055+1056+1057+1058+1059+1060+1061+1062+1063+1064+1288+1291+1293
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 869+648+598+764+957+955+766+767+571+762+576+601+761+577+1005+1212+1004+1006+960+1003+1215+596+1216+1149+647+646+1273+645+1272+1129
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 506+502+503+688+170+394+381+531+684+486+685+283+687+686+533+483+284
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/2NYY/2NYY_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit