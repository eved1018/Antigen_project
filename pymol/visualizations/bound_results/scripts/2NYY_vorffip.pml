delete all 
    fetch 2NYY.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 902+917+918+919+920+921+953+954+955+956+1056+1057+1058+1059+1060+1061+1062+1063+1064+1065+1289+1292+1294
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 1266+1117+1255+1004+1150+1203+1276+1144+1147+827+1145+1000+831+917+1006+1254+1256+1005+1131+1064+1257+1267+1270+1009+955+1146+105+1202+102+504+824+1294+1273+100+956+393+1142+1269+503+1279+500+1264+387+828+1063+915+1002
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2NYY/2NYY_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit