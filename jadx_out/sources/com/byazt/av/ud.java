package com.byazt.av;

import android.graphics.PointF;
import android.util.JsonReader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_HANDLE_AUDIO_EXTRADATA, 591})
/* loaded from: classes2.dex */
public class ud {
    public static com.byazt.mo.gu hp(JsonReader jsonReader, com.byazt.na.a aVar) throws IOException {
        String strNextString = null;
        com.byazt.ha.zy<PointF, PointF> zyVarL = null;
        com.byazt.ha.a aVarJx = null;
        com.byazt.ha.l lVarHp = null;
        boolean zNextBoolean = false;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "p":
                    zyVarL = hp.l(jsonReader, aVar);
                    break;
                case "r":
                    lVarHp = j.hp(jsonReader, aVar);
                    break;
                case "s":
                    aVarJx = j.jx(jsonReader, aVar);
                    break;
                case "hd":
                    zNextBoolean = jsonReader.nextBoolean();
                    break;
                case "nm":
                    strNextString = jsonReader.nextString();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        return new com.byazt.mo.gu(strNextString, zyVarL, aVarJx, lVarHp, zNextBoolean);
    }
}
