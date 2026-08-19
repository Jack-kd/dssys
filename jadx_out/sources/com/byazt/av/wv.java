package com.byazt.av;

import android.graphics.PointF;
import android.util.JsonReader;
import android.util.JsonToken;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_HANDLE_AUDIO_EXTRADATA, MediaPlayer.MEDIA_PLAYER_OPTION_READ_CACHE_MODE})
/* loaded from: classes2.dex */
public class wv implements kg<PointF> {
    public static final wv hp = new wv();

    private wv() {
    }

    @Override // com.byazt.av.kg
    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
    public PointF l(JsonReader jsonReader, float f2) throws IOException {
        JsonToken jsonTokenPeek = jsonReader.peek();
        if (jsonTokenPeek == JsonToken.BEGIN_ARRAY) {
            return ec.l(jsonReader, f2);
        }
        if (jsonTokenPeek == JsonToken.BEGIN_OBJECT) {
            return ec.l(jsonReader, f2);
        }
        if (jsonTokenPeek != JsonToken.NUMBER) {
            throw new IllegalArgumentException("Cannot convert json to point. Next token is ".concat(String.valueOf(jsonTokenPeek)));
        }
        PointF pointF = new PointF(((float) jsonReader.nextDouble()) * f2, ((float) jsonReader.nextDouble()) * f2);
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
        return pointF;
    }
}
