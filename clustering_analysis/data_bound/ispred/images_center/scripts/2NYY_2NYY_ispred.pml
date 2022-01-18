delete all 
    fetch 2NYY.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 902+917+918+919+920+921+953+954+955+956+1056+1057+1058+1059+1060+1061+1062+1063+1064+1065+1289+1292+1294
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 688+956+836+1144+1150+1147+954+1037+1005+1213+1038+1004+1007+959+685+917+1064+1289
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 504+29+102+648+489+766+174+612+763+401+602+548+238+172+749+577+432+394+395+381+385+609+386+422+21+533+537+534+31
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/2NYY/2NYY_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit