package com.meishu.sdk.meishu_ad.nativ;

import android.media.MediaPlayer;
import com.meishu.sdk.R;
import com.meishu.sdk.core.ad.recycler.RecylcerAdInteractionListener;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.meishu_ad.nativ.NormalMediaView;
import com.meishu.sdk.meishu_ad.v;

/* loaded from: classes4.dex */
public class o extends com.meishu.sdk.core.safe.h {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ NormalMediaView f32424a;

    public class a extends com.meishu.sdk.core.safe.l {
        public a() {
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            com.meishu.sdk.meishu_ad.nativ.a aVar;
            NormalMediaView normalMediaView = o.this.f32424a;
            if (!normalMediaView.f32320F && (aVar = normalMediaView.f32319E) != null) {
                aVar.onADExposure();
            }
            RecylcerAdInteractionListener recylcerAdInteractionListener = o.this.f32424a.f32330P;
            if (recylcerAdInteractionListener != null) {
                recylcerAdInteractionListener.onAdExposure();
            }
        }
    }

    public o(NormalMediaView normalMediaView) {
        this.f32424a = normalMediaView;
    }

    @Override // com.meishu.sdk.core.safe.h
    public void a(MediaPlayer mediaPlayer) throws IllegalStateException {
        String str = this.f32424a.f32338a;
        StringBuilder sbA = com.meishu.sdk.activity.a.a("MediaPlayer.onPrepared ");
        sbA.append(this.f32424a.f32357s);
        sbA.append(" ");
        sbA.append(this.f32424a.hashCode());
        LogUtil.d(str, sbA.toString());
        this.f32424a.f32357s = true;
        NormalMediaView normalMediaView = this.f32424a;
        if (!normalMediaView.f32356r && normalMediaView.f32352n) {
            normalMediaView.f32356r = true;
            this.f32424a.f32340b.post(new a());
        }
        mediaPlayer.setVideoScalingMode(2);
        NormalMediaView normalMediaView2 = this.f32424a;
        if (normalMediaView2.f32354p == 1) {
            mediaPlayer.start();
            this.f32424a.i();
            NormalMediaView normalMediaView3 = this.f32424a;
            if (normalMediaView3.f32317C != null && !normalMediaView3.f32335U) {
                normalMediaView3.f32335U = true;
                this.f32424a.f32317C.onVideoStart();
            }
        } else {
            try {
                normalMediaView2.a(normalMediaView2.f32342d, 0);
                normalMediaView2.a(normalMediaView2.f32343e, normalMediaView2.f32340b.getDuration());
                normalMediaView2.f32344f.setProgress(0);
                if (normalMediaView2.f32326L.hasMessages(1)) {
                    normalMediaView2.f32326L.removeMessages(1);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        this.f32424a.f32341c.b(R.id.ms_progress_loading).d(8);
        NormalMediaView.d dVar = this.f32424a.f32339a0;
        if (dVar != null) {
            v.f.a aVar = (v.f.a) dVar;
            v.this.f32584p = System.currentTimeMillis();
            f fVar = v.f.this.f32620b;
            fVar.setMonitorUrl(i0.b(fVar.getMonitorUrl(), v.this.a()));
            v.f.this.f32622d.b(true);
        }
        e eVar = this.f32424a.f32317C;
        if (eVar != null) {
            eVar.onVideoLoaded();
        }
        this.f32424a.c();
    }
}
