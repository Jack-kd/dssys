package com.byazt.av;

import android.graphics.PointF;
import android.util.JsonReader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_HANDLE_AUDIO_EXTRADATA, 670})
/* loaded from: classes2.dex */
public class d implements kg<PointF> {
    public static final d hp = new d();

    private d() {
    }

    @Override // com.byazt.av.kg
    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
    public PointF l(JsonReader jsonReader, float f2) throws IOException {
        return ec.l(jsonReader, f2);
    }
}
