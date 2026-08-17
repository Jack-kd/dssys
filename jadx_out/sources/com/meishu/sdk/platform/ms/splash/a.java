package com.meishu.sdk.platform.ms.splash;

import android.view.View;
import com.google.gson.Gson;
import com.meishu.sdk.core.ad.splash.SplashAdLoader;
import com.meishu.sdk.core.safe.l;
import com.meishu.sdk.core.utils.SdkHandler;
import com.meishu.sdk.core.utils.p1;
import com.meishu.sdk.meishu_ad.v;
import java.util.HashMap;

/* loaded from: classes4.dex */
public class a extends com.meishu.sdk.platform.ms.g<com.meishu.sdk.meishu_ad.splash.d, SplashAdLoader, com.meishu.sdk.core.ad.splash.d> {

    /* renamed from: b, reason: collision with root package name */
    public v f33125b;

    /* renamed from: c, reason: collision with root package name */
    public com.meishu.sdk.meishu_ad.splash.a f33126c;

    /* renamed from: com.meishu.sdk.platform.ms.splash.a$a, reason: collision with other inner class name */
    public class C0706a extends l {
        public C0706a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            try {
                a.this.f33125b = new v(((SplashAdLoader) a.this.adLoader).getContext());
                View view = null;
                ((com.meishu.sdk.core.ad.splash.d) a.this.getLoaderListener()).onAdLoaded(null);
                boolean zBooleanValue = ((Boolean) a.this.localParams.get(SplashAdLoader.KEY_AUTO_SHOW)).booleanValue();
                a aVar = a.this;
                aVar.f33126c = new g(aVar, (com.meishu.sdk.core.ad.splash.d) aVar.getLoaderListener(), zBooleanValue, a.this.f33125b);
                if (zBooleanValue && ((SplashAdLoader) a.this.getAdLoader()).getAdContainer() == null) {
                    ((g) a.this.f33126c).onAdRenderFail("未指定广告容器", -1);
                    return;
                }
                Object obj = a.this.localParams.get(SplashAdLoader.KEY_SKIP_BUTTON);
                if (obj != null && (obj instanceof View)) {
                    view = (View) obj;
                    view.setVisibility(4);
                }
                a aVar2 = a.this;
                aVar2.f33125b.a((com.meishu.sdk.meishu_ad.splash.d) aVar2.f32888a, aVar2.f33126c, aVar2, view, zBooleanValue);
            } catch (Throwable th) {
                com.meishu.sdk.meishu_ad.splash.a aVar3 = a.this.f33126c;
                if (aVar3 != null) {
                    ((g) aVar3).onAdRenderFail("加载异常", -1);
                }
                th.printStackTrace();
            }
        }
    }

    public a(SplashAdLoader splashAdLoader, com.meishu.sdk.meishu_ad.splash.d dVar) {
        super(splashAdLoader, dVar);
    }

    @Override // com.meishu.sdk.platform.ms.g, com.meishu.sdk.platform.BasePlatformLoader, com.meishu.sdk.core.loader.IAdLoader
    public void destroy() {
        this.f33125b = null;
        com.meishu.sdk.meishu_ad.splash.a aVar = this.f33126c;
        if (aVar != null) {
            g gVar = (g) aVar;
            try {
                Gson gson = new Gson();
                HashMap map = new HashMap();
                map.put("stepNum", -1);
                map.put("msg", "destroy invoke");
                Integer numA = gVar.a();
                if (numA != null) {
                    map.put("creativeType", numA);
                }
                p1.a(gVar.f33164a, gson.toJson(map));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            gVar.f33166c = null;
            gVar.f33172i = null;
            gVar.f33165b = null;
            this.f33126c = null;
        }
    }

    @Override // com.meishu.sdk.core.loader.IAdLoader
    public void loadAd() {
        SdkHandler.runOnMainThread(new C0706a());
    }
}
