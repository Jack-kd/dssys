package com.byazt.av;

import android.graphics.PointF;
import android.util.JsonReader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_HANDLE_AUDIO_EXTRADATA, 54})
/* loaded from: classes2.dex */
public class a {
    public static com.byazt.mo.l hp(JsonReader jsonReader, com.byazt.na.a aVar, int i2) throws IOException {
        boolean z2 = i2 == 3;
        boolean zNextBoolean = false;
        String strNextString = null;
        com.byazt.ha.zy<PointF, PointF> zyVarL = null;
        com.byazt.ha.a aVarJx = null;
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
        return new com.byazt.mo.l(strNextString, zyVarL, aVarJx, z2, zNextBoolean);
    }
}
