delete all 
    fetch 2NYY.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 902+917+918+919+920+921+953+954+955+956+1056+1057+1058+1059+1060+1061+1062+1063+1064+1065+1289+1292+1294
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 432+577+21+534+172+959+504+954+548+1007+1150+533+1213+1144+1037+763+1064+1004+612+29+836+648+385+917+422+766+749+688+1038+1289+102+395+174+602+31+489+238+381+394+1005+401+386+537+956+685+609+1147
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2NYY/2NYY_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit