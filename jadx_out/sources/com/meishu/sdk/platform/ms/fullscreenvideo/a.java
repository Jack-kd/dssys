package com.meishu.sdk.platform.ms.fullscreenvideo;

import com.meishu.sdk.core.ad.fullscreenvideo.FullScreenVideoAdLoader;
import com.meishu.sdk.core.ad.fullscreenvideo.c;
import com.meishu.sdk.core.loader.IAdLoadListener;
import com.meishu.sdk.meishu_ad.nativ.f;
import com.meishu.sdk.meishu_ad.v;
import com.meishu.sdk.platform.ms.g;

/* loaded from: classes4.dex */
public class a extends g<f, FullScreenVideoAdLoader, c> {

    /* renamed from: b, reason: collision with root package name */
    public v f32887b;

    /* renamed from: com.meishu.sdk.platform.ms.fullscreenvideo.a$a, reason: collision with other inner class name */
    public class C0702a extends com.meishu.sdk.platform.ms.reward.a {
        public C0702a(a aVar, g gVar, IAdLoadListener iAdLoadListener, f fVar) {
            super(gVar, iAdLoadListener, fVar);
        }
    }

    public a(FullScreenVideoAdLoader fullScreenVideoAdLoader, f fVar) {
        super(fullScreenVideoAdLoader, fVar);
        this.f32887b = new v(fullScreenVideoAdLoader.getContext());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.meishu.sdk.core.loader.IAdLoadListener] */
    @Override // com.meishu.sdk.core.loader.IAdLoader
    public void loadAd() {
        if (getLoaderListener() != 0) {
            ((c) getLoaderListener()).onAdLoaded(null);
        }
        ?? loaderListener = getLoaderListener();
        f fVar = (f) this.f32888a;
        C0702a c0702a = new C0702a(this, this, loaderListener, fVar);
        v vVar = this.f32887b;
        FullScreenVideoAdLoader fullScreenVideoAdLoader = (FullScreenVideoAdLoader) getAdLoader();
        vVar.getClass();
        try {
            vVar.f32572d = fVar.getEventUrl();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        vVar.a(fVar, c0702a, fullScreenVideoAdLoader);
    }
}
