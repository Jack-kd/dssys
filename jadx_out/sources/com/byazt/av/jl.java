package com.byazt.av;

import android.util.JsonReader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_HANDLE_AUDIO_EXTRADATA, 19})
/* loaded from: classes2.dex */
public class jl implements kg<Float> {
    public static final jl hp = new jl();

    private jl() {
    }

    @Override // com.byazt.av.kg
    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
    public Float l(JsonReader jsonReader, float f2) throws IOException {
        return Float.valueOf(ec.l(jsonReader) * f2);
    }
}
