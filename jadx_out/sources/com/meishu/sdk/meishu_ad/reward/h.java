package com.meishu.sdk.meishu_ad.reward;

import android.media.MediaPlayer;
import com.meishu.sdk.meishu_ad.n0;
import java.util.Iterator;

/* loaded from: classes4.dex */
public class h extends com.meishu.sdk.core.safe.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FullScreenMediaView f32480a;

    public h(FullScreenMediaView fullScreenMediaView) {
        this.f32480a = fullScreenMediaView;
    }

    @Override // com.meishu.sdk.core.safe.e
    public void a(MediaPlayer mediaPlayer) {
        n0.b bVar;
        FullScreenMediaView fullScreenMediaView = this.f32480a;
        fullScreenMediaView.f32471p = false;
        fullScreenMediaView.f32458c.setVisibility(8);
        fullScreenMediaView.d();
        if (fullScreenMediaView.f32461f <= 0 && (bVar = fullScreenMediaView.f32460e) != null) {
            bVar.onKeepTimeFinished();
        }
        Iterator<n0.a> it = fullScreenMediaView.f32472q.iterator();
        while (it.hasNext()) {
            it.next().onCompleted();
        }
        com.meishu.sdk.meishu_ad.nativ.e eVar = fullScreenMediaView.f32462g;
        if (eVar != null) {
            eVar.onVideoComplete();
        }
    }
}
