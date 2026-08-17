package com.byazt.av;

import android.util.JsonReader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_HANDLE_AUDIO_EXTRADATA, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_VSYNC_HELPER})
/* loaded from: classes2.dex */
public class dy {
    public static com.byazt.mo.zy hp(JsonReader jsonReader, com.byazt.na.a aVar) throws IOException {
        String strNextString = null;
        com.byazt.ha.l lVarHp = null;
        boolean zNextBoolean = false;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "r":
                    lVarHp = j.hp(jsonReader, aVar, true);
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
        if (zNextBoolean) {
            return null;
        }
        return new com.byazt.mo.zy(strNextString, lVarHp);
    }
}
