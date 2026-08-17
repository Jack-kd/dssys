package com.meishu.sdk.platform.ms.recycler;

import android.view.ViewGroup;
import com.meishu.sdk.core.ad.recycler.ExpressMediaListener;
import com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener;

/* loaded from: classes4.dex */
public class h implements RecyclerAdMediaListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f32933a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i f32934b;

    public class a extends com.meishu.sdk.core.safe.l {
        public a() {
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            if (h.this.f32933a.getVisibility() != 0) {
                h.this.f32933a.setVisibility(0);
            }
        }
    }

    public h(i iVar, ViewGroup viewGroup) {
        this.f32934b = iVar;
        this.f32933a = viewGroup;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
    public void onProgressUpdate(long j2, long j3) {
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
    public void onVideoCompleted() {
        ExpressMediaListener expressMediaListener = this.f32934b.f32946h;
        if (expressMediaListener != null) {
            expressMediaListener.onVideoCompleted();
        }
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
    public void onVideoError() {
        ExpressMediaListener expressMediaListener = this.f32934b.f32946h;
        if (expressMediaListener != null) {
            expressMediaListener.onVideoError(-1, "视频加载出错");
        }
        this.f32934b.a(-1, "视频加载出错");
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
    public void onVideoLoaded() {
        ExpressMediaListener expressMediaListener = this.f32934b.f32946h;
        if (expressMediaListener != null) {
            expressMediaListener.onVideoLoaded();
        }
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
    public void onVideoPause() {
        ExpressMediaListener expressMediaListener = this.f32934b.f32946h;
        if (expressMediaListener != null) {
            expressMediaListener.onVideoPause();
        }
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
    public void onVideoResume() {
        ExpressMediaListener expressMediaListener = this.f32934b.f32946h;
        if (expressMediaListener != null) {
            expressMediaListener.onVideoResume();
        }
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
    public void onVideoStart() {
        this.f32933a.postDelayed(new a(), 2000L);
        ExpressMediaListener expressMediaListener = this.f32934b.f32946h;
        if (expressMediaListener != null) {
            expressMediaListener.onVideoStart();
        }
    }
}
