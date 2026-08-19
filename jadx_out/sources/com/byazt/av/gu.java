package com.byazt.av;

import android.util.JsonReader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_HANDLE_AUDIO_EXTRADATA, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes2.dex */
public class gu {
    public com.byazt.ha.hp hp;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.ha.l f18320j;
    public com.byazt.ha.l jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.ha.l f18321l;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.ha.l f18322w;

    private void l(JsonReader jsonReader, com.byazt.na.a aVar) throws IOException {
        jsonReader.beginObject();
        String strNextString = "";
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            if (strNextName.equals("v")) {
                strNextString.getClass();
                switch (strNextString) {
                    case "Distance":
                        this.f18320j = j.hp(jsonReader, aVar);
                        break;
                    case "Opacity":
                        this.f18321l = j.hp(jsonReader, aVar, false);
                        break;
                    case "Direction":
                        this.jx = j.hp(jsonReader, aVar, false);
                        break;
                    case "Shadow Color":
                        this.hp = j.eb(jsonReader, aVar);
                        break;
                    case "Softness":
                        this.f18322w = j.hp(jsonReader, aVar);
                        break;
                    default:
                        jsonReader.skipValue();
                        break;
                }
            } else if (strNextName.equals("nm")) {
                strNextString = jsonReader.nextString();
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
    }

    public e hp(JsonReader jsonReader, com.byazt.na.a aVar) throws IOException {
        com.byazt.ha.l lVar;
        com.byazt.ha.l lVar2;
        com.byazt.ha.l lVar3;
        com.byazt.ha.l lVar4;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            if (strNextName.equals("ef")) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    l(jsonReader, aVar);
                }
                jsonReader.endArray();
            } else {
                jsonReader.skipValue();
            }
        }
        com.byazt.ha.hp hpVar = this.hp;
        if (hpVar == null || (lVar = this.f18321l) == null || (lVar2 = this.jx) == null || (lVar3 = this.f18320j) == null || (lVar4 = this.f18322w) == null) {
            return null;
        }
        return new e(hpVar, lVar, lVar2, lVar3, lVar4);
    }
}
