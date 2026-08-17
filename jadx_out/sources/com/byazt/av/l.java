package com.byazt.av;

import android.util.JsonReader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_HANDLE_AUDIO_EXTRADATA, 34})
/* loaded from: classes2.dex */
public class l {
    public static com.byazt.ha.gu hp(JsonReader jsonReader, com.byazt.na.a aVar) throws IOException {
        jsonReader.beginObject();
        com.byazt.ha.gu guVarL = null;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            if (strNextName.equals("a")) {
                guVarL = l(jsonReader, aVar);
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return guVarL == null ? new com.byazt.ha.gu(null, null, null, null) : guVarL;
    }

    private static com.byazt.ha.gu l(JsonReader jsonReader, com.byazt.na.a aVar) throws IOException {
        jsonReader.beginObject();
        com.byazt.ha.hp hpVarEb = null;
        com.byazt.ha.hp hpVarEb2 = null;
        com.byazt.ha.l lVarHp = null;
        com.byazt.ha.l lVarHp2 = null;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "t":
                    lVarHp2 = j.hp(jsonReader, aVar);
                    break;
                case "fc":
                    hpVarEb = j.eb(jsonReader, aVar);
                    break;
                case "sc":
                    hpVarEb2 = j.eb(jsonReader, aVar);
                    break;
                case "sw":
                    lVarHp = j.hp(jsonReader, aVar);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return new com.byazt.ha.gu(hpVarEb, hpVarEb2, lVarHp, lVarHp2);
    }
}
