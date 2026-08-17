package com.meishu.sdk.meishu_ad.nativ;

import android.media.MediaPlayer;
import com.meishu.sdk.R;
import com.meishu.sdk.core.utils.LogUtil;

/* loaded from: classes4.dex */
public class g extends com.meishu.sdk.core.safe.g {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ NormalMediaView f32416a;

    public g(NormalMediaView normalMediaView) {
        this.f32416a = normalMediaView;
    }

    @Override // com.meishu.sdk.core.safe.g
    public boolean safeOnInfo(MediaPlayer mediaPlayer, int i2, int i3) {
        NormalMediaView normalMediaView = this.f32416a;
        if (!normalMediaView.f32340b.f32693g) {
            return true;
        }
        if (i2 == 701) {
            normalMediaView.f32341c.b(R.id.ms_progress_loading).d(0);
            LogUtil.d(this.f32416a.f32338a, "MediaPlayer.MEDIA_INFO_BUFFERING_START");
        } else if (i2 == 702) {
            normalMediaView.f32341c.b(R.id.ms_progress_loading).d(8);
            LogUtil.d(this.f32416a.f32338a, "MediaPlayer.MEDIA_INFO_BUFFERING_END");
        }
        MediaPlayer.OnInfoListener onInfoListener = this.f32416a.f32318D;
        if (onInfoListener != null) {
            onInfoListener.onInfo(mediaPlayer, i2, i3);
        }
        return true;
    }
}
