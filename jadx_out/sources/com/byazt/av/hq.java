package com.byazt.av;

import android.graphics.PointF;
import android.util.JsonReader;
import com.byazt.mo.e;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_HANDLE_AUDIO_EXTRADATA, 158})
/* loaded from: classes2.dex */
public class hq {
    public static com.byazt.mo.e hp(JsonReader jsonReader, com.byazt.na.a aVar, int i2) throws IOException {
        boolean zNextBoolean = false;
        boolean z2 = i2 == 3;
        String strNextString = null;
        e.hp hpVarHp = null;
        com.byazt.ha.l lVarHp = null;
        com.byazt.ha.zy<PointF, PointF> zyVarL = null;
        com.byazt.ha.l lVarHp2 = null;
        com.byazt.ha.l lVarHp3 = null;
        com.byazt.ha.l lVarHp4 = null;
        com.byazt.ha.l lVarHp5 = null;
        com.byazt.ha.l lVarHp6 = null;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "d":
                    if (jsonReader.nextInt() != 3) {
                        z2 = false;
                        break;
                    } else {
                        z2 = true;
                        break;
                    }
                case "p":
                    zyVarL = hp.l(jsonReader, aVar);
                    break;
                case "r":
                    lVarHp2 = j.hp(jsonReader, aVar, false);
                    break;
                case "hd":
                    zNextBoolean = jsonReader.nextBoolean();
                    break;
                case "ir":
                    lVarHp3 = j.hp(jsonReader, aVar);
                    break;
                case "is":
                    lVarHp5 = j.hp(jsonReader, aVar, false);
                    break;
                case "nm":
                    strNextString = jsonReader.nextString();
                    break;
                case "or":
                    lVarHp4 = j.hp(jsonReader, aVar);
                    break;
                case "os":
                    lVarHp6 = j.hp(jsonReader, aVar, false);
                    break;
                case "pt":
                    lVarHp = j.hp(jsonReader, aVar, false);
                    break;
                case "sy":
                    hpVarHp = e.hp.hp(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        return new com.byazt.mo.e(strNextString, hpVarHp, lVarHp, zyVarL, lVarHp2, lVarHp3, lVarHp4, lVarHp5, lVarHp6, zNextBoolean, z2);
    }
}
