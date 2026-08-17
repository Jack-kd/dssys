package com.meishu.sdk.meishu_ad.nativ;

import android.media.MediaPlayer;
import com.meishu.sdk.core.utils.LogUtil;

/* loaded from: classes4.dex */
public class n extends com.meishu.sdk.core.safe.f {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ NormalMediaView f32423a;

    public n(NormalMediaView normalMediaView) {
        this.f32423a = normalMediaView;
    }

    @Override // com.meishu.sdk.core.safe.f
    public boolean a(MediaPlayer mediaPlayer, int i2, int i3) {
        LogUtil.e(this.f32423a.f32338a, "MediaPlayer onError" + i2 + " " + i3);
        e eVar = this.f32423a.f32317C;
        if (eVar != null) {
            eVar.onVideoError();
        }
        a aVar = this.f32423a.f32319E;
        if (aVar != null) {
            aVar.onAdRenderFail("MediaPlayer onError", i2);
        }
        this.f32423a.d();
        return true;
    }
}
