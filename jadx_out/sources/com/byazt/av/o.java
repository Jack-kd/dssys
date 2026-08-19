package com.byazt.av;

import android.util.JsonReader;
import android.util.JsonToken;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_HANDLE_AUDIO_EXTRADATA, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAG_RANGE})
/* loaded from: classes2.dex */
public class o {
    public static com.byazt.dt.q hp(JsonReader jsonReader, com.byazt.na.a aVar) throws IOException {
        return new com.byazt.dt.q(aVar, sz.hp(jsonReader, aVar, com.byazt.ze.e.hp(), d.hp, jsonReader.peek() == JsonToken.BEGIN_OBJECT, false));
    }
}
