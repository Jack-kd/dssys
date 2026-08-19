package com.byazt.av;

import android.util.JsonReader;
import android.util.JsonToken;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_HANDLE_AUDIO_EXTRADATA, MediaPlayer.MEIDA_PLAYER_OPTION_NATIVE_RENDER_ROTATION_ADAPT})
/* loaded from: classes2.dex */
public class lv implements kg<com.byazt.ch.j> {
    public static final lv hp = new lv();

    private lv() {
    }

    @Override // com.byazt.av.kg
    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
    public com.byazt.ch.j l(JsonReader jsonReader, float f2) throws IOException {
        boolean z2 = jsonReader.peek() == JsonToken.BEGIN_ARRAY;
        if (z2) {
            jsonReader.beginArray();
        }
        float fNextDouble = (float) jsonReader.nextDouble();
        float fNextDouble2 = (float) jsonReader.nextDouble();
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
        if (z2) {
            jsonReader.endArray();
        }
        return new com.byazt.ch.j((fNextDouble / 100.0f) * f2, (fNextDouble2 / 100.0f) * f2);
    }
}
