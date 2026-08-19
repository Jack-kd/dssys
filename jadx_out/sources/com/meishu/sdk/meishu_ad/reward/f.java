package com.meishu.sdk.meishu_ad.reward;

import android.media.MediaPlayer;
import com.meishu.sdk.core.utils.LogUtil;

/* loaded from: classes4.dex */
public class f extends com.meishu.sdk.core.safe.f {
    public f(FullScreenMediaView fullScreenMediaView) {
    }

    @Override // com.meishu.sdk.core.safe.f
    public boolean a(MediaPlayer mediaPlayer, int i2, int i3) {
        LogUtil.e("FullScreenMediaView", "MediaPlayer onError: " + i2 + " " + i3);
        return false;
    }
}
