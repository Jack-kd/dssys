package com.byazt.av;

import android.util.JsonReader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_HANDLE_AUDIO_EXTRADATA, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w {
    public static com.byazt.mo.hp hp(JsonReader jsonReader, com.byazt.na.a aVar) throws IOException {
        com.byazt.mo.hp hpVar = null;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            if (strNextName.equals("ef")) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    com.byazt.mo.hp hpVarL = l(jsonReader, aVar);
                    if (hpVarL != null) {
                        hpVar = hpVarL;
                    }
                }
                jsonReader.endArray();
            } else {
                jsonReader.skipValue();
            }
        }
        return hpVar;
    }

    private static com.byazt.mo.hp l(JsonReader jsonReader, com.byazt.na.a aVar) throws IOException {
        jsonReader.beginObject();
        com.byazt.mo.hp hpVar = null;
        while (true) {
            boolean z2 = false;
            while (jsonReader.hasNext()) {
                String strNextName = jsonReader.nextName();
                strNextName.getClass();
                if (strNextName.equals("v")) {
                    if (z2) {
                        hpVar = new com.byazt.mo.hp(j.hp(jsonReader, aVar));
                    } else {
                        jsonReader.skipValue();
                    }
                } else if (!strNextName.equals("ty")) {
                    jsonReader.skipValue();
                } else if (jsonReader.nextInt() == 0) {
                    z2 = true;
                }
            }
            jsonReader.endObject();
            return hpVar;
        }
    }
}
