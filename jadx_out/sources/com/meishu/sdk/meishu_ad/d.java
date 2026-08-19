package com.meishu.sdk.meishu_ad;

import android.content.res.Resources;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.ad.BaseAdSlot;
import com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener;
import com.meishu.sdk.meishu_ad.nativ.NormalMediaView;
import com.meishu.sdk.meishu_ad.splash.SplashSkipView;

/* loaded from: classes4.dex */
public class d implements RecyclerAdMediaListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ NormalMediaView f32202a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SplashSkipView f32203b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ e f32204c;

    public d(e eVar, NormalMediaView normalMediaView, SplashSkipView splashSkipView) {
        this.f32204c = eVar;
        this.f32202a = normalMediaView;
        this.f32203b = splashSkipView;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
    public void onProgressUpdate(long j2, long j3) {
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
    public void onVideoCompleted() {
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
    public void onVideoError() {
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
    public void onVideoLoaded() throws Resources.NotFoundException {
        e eVar = this.f32204c;
        v.a(eVar.f32219f, (byte[]) null, eVar.f32217d, false, (BaseAdSlot) eVar.f32215b, eVar.f32216c, eVar.f32214a, this.f32202a);
        e eVar2 = this.f32204c;
        com.meishu.sdk.meishu_ad.splash.c cVar = eVar2.f32216c;
        NormalMediaView normalMediaView = this.f32202a;
        cVar.f32517d = normalMediaView;
        if (eVar2.f32214a != null) {
            cVar.setWidth(Integer.valueOf(normalMediaView.getMeishuVideoView().getMediaPlayer().getVideoWidth()));
            this.f32204c.f32216c.setHeight(Integer.valueOf(this.f32202a.getMeishuVideoView().getMediaPlayer().getVideoHeight()));
        }
        long jMin = Math.min(this.f32202a.getDuration(), AdSdk.adConfig().getSplashShowTime());
        if (this.f32204c.f32215b.f32527H != 1) {
            this.f32203b.setTotalTime((int) jMin);
        }
        if (this.f32204c.f32219f.f32578j) {
            try {
                this.f32202a.start();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
    public void onVideoPause() {
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
    public void onVideoResume() {
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
    public void onVideoStart() {
    }
}
