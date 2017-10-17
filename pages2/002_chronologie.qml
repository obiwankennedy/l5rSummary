import QtQuick 2.0
import QtQuick.Window 2.2

SlidePage {

    id: page
    anchors.fill: parent
    logo: "qrc:/images/l5r-logo-2015.png"
    focus: true
    title: "Le résumé"


   ListModel {
       id: listSection
            ListElement {
                name: "Lions perdus"
                index:1
            }
            ListElement {
                name: "Missions pour chacun"
                index:2
            }
            ListElement {
                name: "Tournoi"
                index:3
            }
            ListElement {
                name: "Missions - Bataille de Kalani - Yoriki en fuite"
                index:4
            }
            ListElement {
                name: "Sauvetage de Tsuruchi"
                index:5
            }
            ListElement {
                name: "Asoko Yumi et le Fort"
                index:6
            }
            ListElement {
                name: "Diplomatie chez les ivindi"
                index:7
            }
            ListElement {
                name: "Préparer les mariages et enquête magistrature"
                index:8
            }
            ListElement {
                name: "Les mariages"
                index:9
            }
            ListElement {
                name: "Le fort assiégé"
                index:10
            }
            ListElement {
                name: "Chasse aux pirates"
                index:11
            }
            ListElement {
                name: "La bataille de Sunda Munzu Mura - 56"
                index:12
            }
            ListElement {
                name: "Fin des pirates - ep58 à 60"
                index:13
            }
            ListElement {
                name: "Fin du siège - ep61 à 62, missions et tournoi"
                index:14
            }
            ListElement {
                name: "Indépendance"
                index:15
            }
            ListElement {
                name: "Background Akodo"
                index:16
            }
            ListElement {
                name: "Siège de la ville"
                index:17
            }
            ListElement {
                name: "Fin"
                index:18
            }

    }

    // PJ
    ImageMouse {
        id: akodo
        y: 100
        x: parent.width * 0.05
        source : "qrc:/images/Akodo_Eiichi.jpg"
        text: "Akodo Eiichi"
        visible: false
    }
    ImageMouse {
        id: tsuruchi
        y: 300
        x: parent.width * 0.05
        source : "qrc:/images/tsuruchi.jpg"
        text: "Tsuruchi Nayu"
        visible: false
    }
    ImageMouse {
        id: zhia
        y: 500
        x: parent.width * 0.05
        source : "qrc:/images/Zhia.jpg"
        text: "Shinjo Zhia"
        visible: false
    }
    ImageMouse {
        id: takayoshi
        y: 750
        x: parent.width * 0.05
        source : "qrc:/images/Bayushi_Takayoshi.png"
        text: "Bayushi Takayoshi"
        visible: false
    }
    // jeune
    ImageMouse {
        id: kakita
        y: 0
        x: parent.width * 0.1
        source : "qrc:/images/pnj/kakita.jpg"
        text: "Kakita Murata"
        visible: false
    }
    ImageMouse {
        id: asako
        y: 300
        x: parent.width * 0.1
        source : "qrc:/images/pnj/Asako_misako.png"
        text: "Asako Kimiko"
        visible: false
    }
    ImageMouse {
        id: isawa
        y: 600
        x: parent.width * 0.1
        source : "qrc:/images/pnj/Isawa.jpg"
        text: "Isawa Tonda"
        visible: false
    }
    ImageMouse {
        id: tomoe
        y: 800
        x: parent.width * 0.1
        source : "qrc:/images/pnj/Mirumoto Tomoe.png"
        text: "Mirumoto Tomoe"
        visible: false
    }
    ImageMouse {
        id: iwekotazyme
        y: 800
        x: parent.width * 0.1
        source : "qrc:/images/pnj/Iweko_tazume.jpg"
        text: "Iweko Tazume"
        visible: false
    }


    /////////////////PNJ
    ImageMouse {
        id: isawashunsuko
        y: 800
        x: parent.width * 0.1
        source : "qrc:/images/pnj/Isawa_Shunsuko.jpg"
        text: "Isawa Shunsuko"
        visible: false
    }
    ImageMouse {
        id: sojihime
        y: 800
        x: parent.width * 0.1
        source : "qrc:/images/pnj/sojihime.jpg"
        text: "Sojihime"
        visible: false
    }
    ImageMouse {
        id: adachi
        y: 100
        x: parent.width - 200
        source : "qrc:/images/pnj/Doji_Adachi.jpg"
        text: "Doji Adachi"
        visible: false

    }
    ImageMouse {
        id: shika
        y: 200
        x: parent.width - 200
        source : "qrc:/images/pnj/Ikoma_Shika.jpg"
        text: "Ikoma Shika"
        visible: false
    }
    ImageMouse {
        id: mitohime
        y: 300
        x: parent.width - 200
        source : "qrc:/images/pnj/kakita_mitohime2.jpg"
        text: "Kakita Mitohime"
        visible: false
    }
    ImageMouse {
        id: misara
        y: 400
        x: parent.width - 200
        source : "qrc:/images/pnj/Mirumoto_Misara.jpg"
        text: "Mirumoto Misara"
        visible: false
    }
    ImageMouse {
        id: suikihime
        y: 500
        x: parent.width - 200
        source : "qrc:/images/pnj/Otomo_Suikihime.jpg"
        text: "Otomo Suikihime"
        visible: false
    }
    ImageMouse {
        id: saito
        y: 600
        x: parent.width - 200
        source : "qrc:/images/pnj/Saito.jpg"
        text: "Saito"
        visible: false
    }
    ImageMouse {
        id: karyko
        y: 700
        x: parent.width - 200
        source : "qrc:/images/pnj/Shiba_karyko.jpg"
        text: "Shiba Karyko"
        visible: false
    }
    ImageMouse {
        id: kimlee
        y: 800
        x: parent.width - 200
        source : "qrc:/images/pnj/Utaku_kimlee.jpg"
        text: "Utaku Kim-li"
        visible: false
    }
    ImageMouse {
        id: losai
        y: 200
        x: parent.width - 300
        source : "qrc:/images/pnj/Yoritomo_losai.jpg"
        text: "Yoritomo Losai"
        visible: false
    }

    ImageMouse {
        id: yumi
        y: 300
        x: parent.width - 300
        source : "qrc:/images/pnj/Asako_Yumi.jpg"
        text: "Asako Yumi"
        visible: false
    }
    ImageMouse {
        id: akio
        y: 400
        x: parent.width - 300
        source : "qrc:/images/OtomoAkio.png"
        text: "Otomo Akio"
        visible: false
    }
    ImageMouse {
        id: gohai
        y: 500
        x: parent.width - 300
        source : "qrc:/images/pnj/Kitsuki_gohai.jpg"
        text: "Kitsuki Gohai"
        visible: false
    }
    ImageMouse {
        id: maharaja
        y: 600
        x: parent.width - 300
        source : "qrc:/images/pnj/Maharaja.jpg"
        text: "Maharaja Lemkesh"
        visible: false
    }
    ImageMouse {
        id: shuuki
        y: 700
        x: parent.width - 300
        source : "qrc:/images/pnj/Daigotsu_shuuki2.jpg"
        text: "Daigotsu Shuuki"
        visible: false
    }
    ImageMouse {
        id: yukuko
        y: 800
        x: parent.width - 300
        source : "qrc:/images/pnj/Daigotsu_Yukuko.jpg"
        text: "Daigotsu Yukuko"
        visible: false
    }
    ImageMouse {
        id: akato
        y: 800
        x: parent.width - 300
        source : "qrc:/images/pnj/Ronin_akato_et_ses_fils.jpg"
        text: "Akato"
        visible: false
    }
    ImageMouse {
        id: shusuroHimiko
        y: 800
        x: parent.width - 300
        source : "qrc:/images/pnj/shosuro_himiko.jpg"
        text: "Shusuro Himiko"
        visible: false
    }
    ImageMouse {
        id: soshiHokari
        y: 800
        x: parent.width - 300
        source : "qrc:/images/pnj/soshi_hokari.jpeg"
        text: "Soshi Hokari"
        visible: false
    }
    ImageMouse {
        id: pong
        y: 800
        x: parent.width - 300
        source : "qrc:/images/pnj/yoritomo_emoto.jpg"
        text: "Yoritomo Emoto (Pong)"
        visible: false
    }
    ImageMouse {
        id: ping
        y: 800
        x: parent.width - 300
        source : "qrc:/images/pnj/moshi_junichi.jpg"
        text: "Moshi Junichi (Ping)"
        visible: false
    }
    ImageMouse {
        id: yasukiAkane
        y: 800
        x: parent.width - 300
        source : "qrc:/images/pnj/Yasuki_Akane.jpg"
        text: "Yasuki Akane"
        visible: false
    }
    ImageMouse {
        id: ideuchi
        y: 800
        x: parent.width - 300
        source : "qrc:/images/pnj/Ide_uchi.jpg"
        text: "Ide Uchi"
        visible: false
    }
    ImageMouse {
        id: tokuKahime
        y: 800
        x: parent.width * 0.1
        source : "qrc:/images/pnj/toku_kahime.jpg"
        text: "Toku Kahime"
        visible: false
    }
    ImageMouse {
        id: soshikenjiru
        y: 800
        x: parent.width * 0.1
        source : "qrc:/images/pnj/kitsu_kenjiru.jpg"
        text: "Kitsu Kenjiru"
        visible: false
    }
    ImageMouse {
        id: daigotsuShimokuro
        y: 800
        x: parent.width * 0.1
        source : "qrc:/images/pnj/Daigotsu_shuuki.jpg"
        text: "Daigotsu Shimokuro"
        visible: false
    }
    ImageMouse {
        id: kitsuneHideko
        y: 800
        x: parent.width * 0.1
        source : "qrc:/images/Kitsune_Hideko.jpg"
        text: "Kitsune Hideko"
        visible: false
    }
    ImageMouse {
        id: tomoeRonin
        y: 800
        x: parent.width * 0.1
        source : "qrc:/images/pnj/tomoe_ronin.jpg"
        text: "Tomoe"
        visible: false
    }
    ImageMouse {
        id: kitsumai
        y: 800
        x: parent.width * 0.1
        source : "qrc:/images/pnj/Kitsu_mai.jpg"
        text: "Kitsu Mai"
        visible: false
    }
    Component.onCompleted:
    {
        points = listSection
        anchors.fill = parent
    }

    Row {
        id: imagePanel
        x: Screen.width*0.2
        y: Screen.height*0.2
        width: Screen.width*0.8
        height: Screen.height*0.8

        Image {
            id: image2
            width: parent.width/2
            height: parent.height/2
            fillMode: Image.PreserveAspectFit
            opacity: 0.0
            Behavior on opacity {
                NumberAnimation {
                    duration: 1000
                }
            }
        }
        Image {
            id: image3
            width: parent.width/2
            fillMode: Image.PreserveAspectFit
            opacity: 0.0
            Behavior on opacity {
                NumberAnimation {
                    duration: 1000
                }
            }
        }
    }

    onIdStateChanged: {
        akodo.visible = false;
        tsuruchi.visible = false;
        zhia.visible = false;
        takayoshi.visible = false;
        kakita.visible = false;
        asako.visible = false;
        isawa.visible = false;
        tomoe.visible = false;
        adachi.visible = false;
        shika.visible = false;
        mitohime.visible = false;
        misara.visible = false;
        suikihime.visible = false;
        saito.visible = false;
        karyko.visible = false;
        kimlee.visible = false;
        losai.visible = false;
        yumi.visible = false;
        akio.visible = false;
        gohai.visible = false;
        maharaja.visible = false;
        shuuki.visible = false
        yukuko.visible = false
        shusuroHimiko.visible = false;
        akato.visible = false
        soshiHokari.visible = false
        iwekotazyme.visible = false
        ping.visible = false
        pong.visible = false
        yasukiAkane.visible = false
        sojihime.visible = false
        ideuchi.visible = false
        tokuKahime.visible = false
        soshikenjiru.visible = false
        tomoeRonin.visible = false
        kitsuneHideko.visible= false
        daigotsuShimokuro.visible = false
        kitsumai.visible = false
        isawashunsuko.visible = false



        if(idState == 1)
        {
            akodo.visible = true;
            tsuruchi.visible = true;
            zhia.visible = true;
            takayoshi.visible = true;
            shika.visible = true;
            saito.visible = true;
            saito.x = 545
            saito.y = 312
            shika.x = 800
            shika.y = 312

            soshiHokari.visible = true;
            soshiHokari.x = 1575
            soshiHokari.y = 312
            akodo.x = 3
            takayoshi.x = 3
            tsuruchi.x = 3
            zhia.x = 3

        }
        else if(idState == 2)//missions
        {
            akodo.visible = true;
            tsuruchi.visible = true;
            zhia.visible = true;
            takayoshi.visible = true;
            misara.visible = true;
            suikihime.visible = true;
            losai.visible = true;
            shusuroHimiko.visible = true;
            akato.visible = true
            kitsuneHideko.visible = true

            takayoshi.y = 895
            zhia.y = 273
            tsuruchi.y = 667
            losai.y = 771
            losai.x = 264

            misara.x = 299
            misara.y = 3

            akodo.x = 3
            akodo.y =3

            suikihime.x = 753
            suikihime.y = 410
            suikihime.scale = 1.5

            kitsuneHideko.x = 552
            kitsuneHideko.y = 815

            shusuroHimiko.x = 712
            shusuroHimiko.y = 5

            akato.x = 1227
            akato.y = 100
            akato.scale = 1.5

        }
        else if(idState == 3)//tournoi
        {
            akodo.visible = true;
            tsuruchi.visible = true;
            zhia.visible = true;
            takayoshi.visible = true;
            //todo les petits
            kakita.visible = true;
            tomoe.visible = true;
            asako.visible = true;
            isawa.visible = true;
            kimlee.visible = true;
            akio.visible = true;
            shuuki.visible = true
            akato.visible = true


            tomoe.x = 209
            tomoe.y = 850

            kakita.x = 210
            kakita.y = 35
            isawa.x = 156
            isawa.y = 273
            asako.x = 209
            asako.y = 610

            tomoe.scale = 0.8
            kakita.scale = 0.8
            isawa.scale = 0.8
            asako.scale = 0.8

            akio.x = 471
            akio.x = 364
            akio.scale = 1.5

            shuuki.x =692;
            shuuki.y =645;

            akato.x = 1056
            akato.y = 316

            kimlee.x =1640 ;
            kimlee.y =280 ;
            kimlee.scale = 1.5;

        }
        else if(idState == 4)//bataille et poursuite
        {
            akodo.visible = true;
            zhia.visible = true;
            takayoshi.visible = true;
            misara.visible = true;
            losai.visible = true;
            tomoe.visible = true;
            tsuruchi.visible = true;
            mitohime.visible = true

            tomoe.x = 278
            tomoe.y = 850
            tomoe.scale = 1.0

            tsuruchi.y = 887
            tsuruchi.x = 279

            losai.x = 564
            losai.y = 887

            misara.x =218
            misara.y = 40

            akodo.x = 11
            akodo.y = 39
            tomoe.x = 148
            tomoe.y = 253


        }
        else if(idState == 5)//sauvetage tsuruchi
        {
            akodo.visible = true;
            tsuruchi.visible = true;
            zhia.visible = true;
            takayoshi.visible = true;
            asako.visible = true;

            asako.x = 1393
            asako.y = 69

            tsuruchi.y = 462
            tsuruchi.x = 693
            tsuruchi.scale = 1.5

        }
        else if(idState == 6)//Asoko Yumi et le Fort
        {
            akodo.visible = true;
            zhia.visible = true;
            takayoshi.visible = true;
            yumi.visible = true;
            suikihime.visible = true;

            yumi.x = 240
            yumi.y = 40

            suikihime.x = 1034

        }
        else if(idState == 7)//diplomatie ivindi
        {
            tomoe.visible = true
            zhia.visible = true;
            takayoshi.visible = true;
            gohai.visible = true

            tomoe.x = 9
            tomoe.y = 520

            gohai.x = 791
            gohai.y = 555
            gohai.scale = 1.5

        }
        else if(idState == 8)//préparation mariage et Une affaire pour la magistrature
        {
            zhia.visible = true;
            takayoshi.visible = true;
            akodo.visible = true;
            soshiHokari.visible = true

            suikihime.visible = true;
            yumi.visible = true;


            yumi.x = 732
            yumi.y = 799

            soshiHokari.x = 1432
            soshiHokari.y = 800
            soshiHokari.scale = 1.5

            suikihime.x = 774
            suikihime.y = 275
        }
        else if(idState == 9)// Mariages
        {

            zhia.visible = true;
            takayoshi.visible = true;
            akodo.visible = true;
            iwekotazyme.visible = true;
            yukuko.visible = true;
            shika.visible = true;
            saito.visible = true;


            suikihime.visible = true;
            yumi.visible = true;

            kitsumai.visible = true;
            soshikenjiru.visible = true;

            suikihime.x = 1100
            suikihime.y = 29
            iwekotazyme.x = 1621
            iwekotazyme.y =  29

            takayoshi.x = 1100
            takayoshi.y = 200

            yukuko.x = 1621
            yukuko.y = 200

            kitsumai.x = 1100
            kitsumai.y = 370

            soshikenjiru.x = 1621
            soshikenjiru.y = 370

            shika.x = 1100
            shika.y = 560
            saito.x = 1621
            saito.y = 560


            akodo.x = 1100
            akodo.y = 780

            yumi.x = 1621
            yumi.y = 780



        }
        else if(idState == 10)// Le fort assiégé
        {
            zhia.visible = true;
            takayoshi.visible = true;
            akodo.visible = true;

            kitsuneHideko.visible = true
            kitsumai.visible = true


            takayoshi.x = 2
            takayoshi.y = 16

            akodo.x = 2
            akodo.y = 506

            kitsuneHideko.x = 800
            kitsuneHideko.y = 804

            kitsumai.x = 803
            kitsumai.y = 576
        }
        else if(idState == 11)// Chasse aux pirates
        {
            takayoshi.visible = true;
            takayoshi.text = "Zenshi"
            ping.visible = true;
            pong.visible = true;
            yasukiAkane.visible = true

            ping.x = 28
            ping.y = 228

            pong.x = 28
            pong.y = 415

            yasukiAkane.x = 400
            yasukiAkane.y = 9

        }
        else if(idState == 12)// La bataille de Sunda Munzu Mura
        {
            takayoshi.visible = true;
            takayoshi.text = "Zenshi"
            ping.visible = true;
            pong.visible = true;
            yasukiAkane.visible = true
            isawashunsuko.visible = true

            isawashunsuko.x = 773
            isawashunsuko.y = 392
            isawashunsuko.scale = 1.5
        }
        else if(idState == 13)// Fin des pirates
        {
            takayoshi.visible = true;
            takayoshi.text = "Zenshi:Bayushi"
            ping.visible = true;
            pong.visible = true;
            isawashunsuko.visible = true
            sojihime.visible = true

            sojihime.x = 773
            sojihime.y = 392
            sojihime.scale = 1.5

            isawashunsuko.x = 1112
            isawashunsuko.y = 392
            isawashunsuko.scale = 1.5
        }
        else if(idState == 14)// Fin du siège
        {
            takayoshi.visible = true;
            takayoshi.text = "Bayushi Takayoshi"
            zhia.visible = true;
            akodo.visible = true;
            adachi.visible = true

            mitohime.visible = true
            ideuchi.visible = true

            kitsumai.x = 133
            kitsumai.y = 716

            adachi.x = 649
            adachi.y = 377
            adachi.scale = 1.5

            ideuchi.x = 169
            ideuchi.y = 248


            tomoe.x = 80
            tomoe.y = 721

            tomoe.visible = true
            tomoe.opacity = 0.5
        }
        else if(idState == 15)// independance
        {
            takayoshi.visible = true;
            zhia.visible = true;
            akodo.visible = true;
            suikihime.visible = true
            mitohime.visible = true

            suikihime.x = 753
            suikihime.y = 410
            tomoe.opacity = 0.5
            mitohime.opacity = 0.5
            tomoe.visible = true
        }
        else if(idState == 16)// Bg Akodo
        {
            takayoshi.visible = true;
            zhia.visible = true;
            akodo.visible = true;
            misara.visible = true;
            karyko.visible = true;


            karyko.x = 777
            karyko.y = 414
            karyko.scale = 1.5


            misara.x = 1625
            misara.y = 528
        }
        else if(idState == 17)// Siège de la ville
        {
            takayoshi.visible = true;
            takayoshi.text = "Takayoshi"
            zhia.visible = true;
            zhia.text = "Zhia"
            akodo.text = "Eiichi"
            akodo.visible = true;
            misara.visible = true;
            misara.text = "Misara"
            tokuKahime.visible = true;
            soshikenjiru.visible = true;

            tokuKahime.x = 391
            tokuKahime.y = 50
        }
        else if(idState == 18)// FIN
        {
            zhia.visible = true;
            akodo.visible = true;
            misara.visible = true;
            maharaja.visible = true
            gohai.visible = true
            iwekotazyme.visible = true
            kitsuneHideko.visible = true
            suikihime.visible = true
            tomoeRonin.visible = true

            iwekotazyme.x = 1009
            iwekotazyme.y = 505
            iwekotazyme.scale = 1.5

            gohai.x = 622
            gohai.y = 505

            misara.x = 17
            misara.y = 27

            tomoeRonin.x = 3
            tomoeRonin.y = 690


            kitsuneHideko.x = 1
            kitsuneHideko.y = 870


            //suikihime.
            suikihime.x = 540
            suikihime.y = 26

            maharaja.x =1106
            maharaja.y =26

        }
    }
}
