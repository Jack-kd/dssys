package com.byazt.av;

import android.util.JsonReader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_HANDLE_AUDIO_EXTRADATA, 546})
/* loaded from: classes2.dex */
public class nu {
    public static com.byazt.mo.jl hp(JsonReader jsonReader, com.byazt.na.a aVar) throws IOException {
        String strNextString = null;
        com.byazt.ha.l lVarHp = null;
        com.byazt.ha.l lVarHp2 = null;
        com.byazt.ha.jl jlVarHp = null;
        boolean zNextBoolean = false;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "c":
                    lVarHp = j.hp(jsonReader, aVar, false);
                    break;
                case "o":
                    lVarHp2 = j.hp(jsonReader, aVar, false);
                    break;
                case "hd":
                    zNextBoolean = jsonReader.nextBoolean();
                    break;
                case "nm":
                    strNextString = jsonReader.nextString();
                    break;
                case "tr":
                    jlVarHp = jx.hp(jsonReader, aVar);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        return new com.byazt.mo.jl(strNextString, lVarHp, lVarHp2, jlVarHp, zNextBoolean);
    }
}
