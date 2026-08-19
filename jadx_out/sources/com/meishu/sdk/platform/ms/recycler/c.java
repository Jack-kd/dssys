package com.meishu.sdk.platform.ms.recycler;

import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.ad.recycler.RecyclerMixAdLoader;
import com.meishu.sdk.meishu_ad.v;

/* loaded from: classes4.dex */
public class c extends com.meishu.sdk.platform.ms.g<com.meishu.sdk.meishu_ad.nativ.f, RecyclerMixAdLoader, com.meishu.sdk.core.ad.recycler.a> {

    /* renamed from: b, reason: collision with root package name */
    public v f32918b;

    /* renamed from: c, reason: collision with root package name */
    public a f32919c;

    public c(RecyclerMixAdLoader recyclerMixAdLoader, com.meishu.sdk.meishu_ad.nativ.f fVar) {
        super(recyclerMixAdLoader, fVar);
        this.f32918b = new v(recyclerMixAdLoader.getContext());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.meishu.sdk.core.loader.IAdLoader
    public void loadAd() {
        try {
            if (getLoaderListener() != 0) {
                ((com.meishu.sdk.core.ad.recycler.a) getLoaderListener()).onAdLoaded(null);
            }
            this.f32919c = new a(this, (com.meishu.sdk.core.ad.recycler.a) getLoaderListener());
            boolean isVideoAutoPlay = ((RecyclerMixAdLoader) getAdLoader()).getIsVideoAutoPlay();
            if (AdSdk.isTestMode) {
                isVideoAutoPlay = ((com.meishu.sdk.meishu_ad.nativ.f) this.f32888a).f32414z;
            }
            boolean z2 = isVideoAutoPlay;
            v vVar = this.f32918b;
            com.meishu.sdk.meishu_ad.nativ.f fVar = (com.meishu.sdk.meishu_ad.nativ.f) this.f32888a;
            a aVar = this.f32919c;
            boolean zIsShowDetail = ((RecyclerMixAdLoader) getAdLoader()).isShowDetail();
            float fB = com.meishu.sdk.core.utils.m.b(getContext(), ((RecyclerMixAdLoader) getAdLoader()).getAccept_ad_width().intValue());
            float fB2 = com.meishu.sdk.core.utils.m.b(getContext(), ((RecyclerMixAdLoader) getAdLoader()).getAccept_ad_height().intValue());
            vVar.getClass();
            try {
                vVar.f32572d = fVar.getEventUrl();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            vVar.a(fVar, (com.meishu.sdk.meishu_ad.nativ.a) aVar, true, zIsShowDetail, z2, fB, fB2);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
