delete all 
    fetch 2NYY.A


    set cartoon_transparency,0.75


    select ann2, resi 902+917+918+919+920+921+953+954+955+956+1056+1057+1058+1059+1060+1061+1062+1063+1064+1065+1289+1292+1294
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 1266+1117+1255+1004+1150+1203+1276+1144+1147+827+1145+1000+831+917+1006+1254+1256+1005+1131+1064+1257+1267+1270+1009+955+1146+105+1202+102+504+824+1294+1273+100+956+393+1142+1269+503+1279+500+1264+387+828+1063+915+1002
    indicate bycalpha pred
    create pred_res, indicate


    show sphere, annotated2
    color pink, annotated2
    set sphere_transparency, 0.5,annotated2


    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    




    fetch 3BTA.A
    set cartoon_transparency,0.75


    select ann, resi 901+916+917+918+919+920+952+953+954+955+1055+1056+1057+1058+1059+1060+1061+1062+1063+1064+1288+1291+1293
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 1252+1265+2+104+98+1003+502+647+1005+503+101+99+1149+657+1116+886+1253+1004+1143+410+564+603+386+1145+1146+95+1144+916+392+567+507+645+648+826+1275+830+827+385+667+1266+530+1269+1202+596+684+499+565
    indicate bycalpha pres
    create pres_res, indicate


    show sphere, annotated
    color red, annotated
    set sphere_transparency, 0.5,annotated


    show sphere, pres_res
    set sphere_scale,0.5,pres_res
    color blue, pres_res
    set sphere_transparency,0,pres_res
    set cartoon_transparency,1,pres_res
    




    align 2NYY.A, 3BTA.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/2NYY_3BTA.png,width=900, height=900,dpi = 350,ray=1
    quit