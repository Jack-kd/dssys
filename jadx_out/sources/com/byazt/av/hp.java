package com.byazt.av;

import android.graphics.PointF;
import android.util.JsonReader;
import android.util.JsonToken;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.util.ArrayList;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_HANDLE_AUDIO_EXTRADATA, 28})
/* loaded from: classes2.dex */
public class hp {
    public static com.byazt.ha.w hp(JsonReader jsonReader, com.byazt.na.a aVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (jsonReader.peek() == JsonToken.BEGIN_ARRAY) {
            jsonReader.beginArray();
            while (jsonReader.hasNext()) {
                arrayList.add(o.hp(jsonReader, aVar));
            }
            jsonReader.endArray();
            n.hp(arrayList);
        } else {
            arrayList.add(new com.byazt.ch.hp(ec.l(jsonReader, com.byazt.ze.e.hp())));
        }
        return new com.byazt.ha.w(arrayList);
    }

    public static com.byazt.ha.zy<PointF, PointF> l(JsonReader jsonReader, com.byazt.na.a aVar) throws IOException {
        jsonReader.beginObject();
        com.byazt.ha.w wVarHp = null;
        com.byazt.ha.l lVarHp = null;
        com.byazt.ha.l lVarHp2 = null;
        boolean z2 = false;
        while (jsonReader.peek() != JsonToken.END_OBJECT) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "k":
                    wVarHp = hp(jsonReader, aVar);
                    break;
                case "x":
                    if (jsonReader.peek() != JsonToken.STRING) {
                        lVarHp = j.hp(jsonReader, aVar);
                        break;
                    } else {
                        z2 = true;
                        jsonReader.skipValue();
                        break;
                    }
                case "y":
                    if (jsonReader.peek() != JsonToken.STRING) {
                        lVarHp2 = j.hp(jsonReader, aVar);
                        break;
                    } else {
                        z2 = true;
                        jsonReader.skipValue();
                        break;
                    }
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        if (z2) {
            aVar.hp("Lottie doesn't support expressions.");
        }
        return wVarHp != null ? wVarHp : new com.byazt.ha.q(lVarHp, lVarHp2);
    }
}
