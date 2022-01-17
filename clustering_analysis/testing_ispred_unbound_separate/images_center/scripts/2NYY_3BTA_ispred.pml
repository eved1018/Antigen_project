delete all 
    fetch 3BTA.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 901+916+917+918+919+920+952+953+954+955+1055+1056+1057+1058+1059+1060+1061+1062+1063+1064+1288+1291+1293
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 1003+1004+1005+1006+1129+1149+1212+1215+1216+1272+1273+571+576+577+596+598+601+645+646+647+648+761+762+764+766+767+869+955+957+960
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 170+283+284+381+394+483+486+502+503+506+531+533+684+685+686+687+688
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/2NYY/2NYY_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit