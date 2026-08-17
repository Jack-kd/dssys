package com.byazt.av;

import android.util.JsonReader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_HANDLE_AUDIO_EXTRADATA, 65})
/* loaded from: classes2.dex */
public class vv implements kg<Integer> {
    public static final vv hp = new vv();

    private vv() {
    }

    @Override // com.byazt.av.kg
    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
    public Integer l(JsonReader jsonReader, float f2) throws IOException {
        return Integer.valueOf(Math.round(ec.l(jsonReader) * f2));
    }
}
