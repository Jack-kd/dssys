package com.byazt.het;

import android.content.Context;
import androidx.annotation.NonNull;
import com.byazt.xs.jx;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DECODER_START_TIME, 28})
/* loaded from: classes2.dex */
public class hp extends jx<CycleSkipView> {
    public hp(@NonNull Context context) {
        super(context);
    }

    @Override // com.byazt.xs.jx
    /* renamed from: eb, reason: merged with bridge method [inline-methods] */
    public CycleSkipView hp() {
        return new CycleSkipView(this.f27777l);
    }

    @Override // com.byazt.xs.jx
    public void l() throws JSONException {
        super.l();
    }

    public void l(int i2, int i3) {
        T t2 = this.f27788w;
        if (t2 != 0) {
            ((CycleSkipView) t2).hp(i2, i3);
        }
    }
}
