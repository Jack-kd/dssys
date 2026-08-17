package com.byazt.av;

import android.util.JsonReader;
import com.byazt.mo.ec;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_HANDLE_AUDIO_EXTRADATA, 693})
/* loaded from: classes2.dex */
public class as {
    public static com.byazt.mo.ec hp(JsonReader jsonReader, com.byazt.na.a aVar) throws IOException {
        String strNextString = null;
        ec.hp hpVarHp = null;
        com.byazt.ha.l lVarHp = null;
        com.byazt.ha.l lVarHp2 = null;
        com.byazt.ha.l lVarHp3 = null;
        boolean zNextBoolean = false;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "e":
                    lVarHp2 = j.hp(jsonReader, aVar, false);
                    break;
                case "m":
                    hpVarHp = ec.hp.hp(jsonReader.nextInt());
                    break;
                case "o":
                    lVarHp3 = j.hp(jsonReader, aVar, false);
                    break;
                case "s":
                    lVarHp = j.hp(jsonReader, aVar, false);
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
        return new com.byazt.mo.ec(strNextString, hpVarHp, lVarHp, lVarHp2, lVarHp3, zNextBoolean);
    }
}
