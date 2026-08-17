package com.meishu.sdk.platform.ms.splash;

import android.text.TextUtils;
import android.view.View;
import com.google.gson.Gson;
import com.meishu.sdk.R;
import com.meishu.sdk.core.ad.AdType;
import com.meishu.sdk.core.exception.ErrorCodeUtil;
import com.meishu.sdk.core.safe.l;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.SdkHandler;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.core.utils.p1;
import com.meishu.sdk.core.utils.v0;
import com.meishu.sdk.meishu_ad.v;
import com.meishu.sdk.meishu_ad.y;
import com.qq.e.comm.pi.IReward;
import java.util.HashMap;

/* loaded from: classes4.dex */
public class g implements com.meishu.sdk.meishu_ad.splash.a {

    /* renamed from: a, reason: collision with root package name */
    public String[] f33164a;

    /* renamed from: b, reason: collision with root package name */
    public com.meishu.sdk.core.ad.splash.d f33165b;

    /* renamed from: c, reason: collision with root package name */
    public com.meishu.sdk.platform.ms.splash.a f33166c;

    /* renamed from: d, reason: collision with root package name */
    public com.meishu.sdk.platform.ms.splash.b f33167d;

    /* renamed from: e, reason: collision with root package name */
    public volatile boolean f33168e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f33169f;

    /* renamed from: g, reason: collision with root package name */
    public final v f33170g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f33171h;

    /* renamed from: i, reason: collision with root package name */
    public View f33172i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f33173j;

    /* renamed from: k, reason: collision with root package name */
    public d f33174k;

    public class a extends l {
        public a() {
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            try {
                g gVar = g.this;
                com.meishu.sdk.platform.ms.splash.a aVar = gVar.f33166c;
                if (aVar == null) {
                    try {
                        p1.b(gVar.f33164a, ErrorCodeUtil.RENDER_AD_INTERRUPTED, "adWrapper 为空");
                        return;
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        return;
                    }
                }
                v0.a(((com.meishu.sdk.meishu_ad.splash.d) aVar.f32888a).getPosId(), 3);
                String[] monitorUrl = ((com.meishu.sdk.meishu_ad.splash.d) g.this.f33166c.f32888a).getMonitorUrl();
                v vVar = g.this.f33170g;
                if (vVar != null) {
                    i0.b(monitorUrl, vVar.a());
                }
                try {
                    if (g.a(g.this) == AdType.SPLASH.value()) {
                        i0.a(monitorUrl, g.this.f33172i, (View) null);
                    } else {
                        i0.a(monitorUrl, g.this.f33172i.findViewById(R.id.activity_sdk_splash_mediaContainer), g.this.f33172i);
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
                if (monitorUrl == null) {
                    try {
                        p1.b(g.this.f33164a, ErrorCodeUtil.RENDER_AD_INTERRUPTED, "monitorUrls 为空");
                        return;
                    } catch (Exception e4) {
                        e4.printStackTrace();
                        return;
                    }
                }
                try {
                    LogUtil.d("SplashAdListenerAdapter", "send onADExposure");
                    for (String str : monitorUrl) {
                        if (!TextUtils.isEmpty(str)) {
                            a0.a(g.this.f33166c.getContext(), i0.a(i0.a(i0.a(str, ((com.meishu.sdk.meishu_ad.splash.d) g.this.f33166c.f32888a).getAct_type(), AdType.SPLASH), g.this.f33172i.getWidth(), g.this.f33172i.getHeight())), new com.meishu.sdk.core.utils.i());
                        }
                    }
                    g gVar2 = g.this;
                    com.meishu.sdk.core.ad.splash.d dVar = gVar2.f33165b;
                    if (dVar != null) {
                        dVar.onAdPresent(gVar2.f33167d);
                        g.this.f33165b.onAdExposure();
                    }
                    com.meishu.sdk.platform.ms.splash.b bVar = g.this.f33167d;
                    if (bVar != null && bVar.getInteractionListener() != null) {
                        g.this.f33167d.getInteractionListener().onAdExposure();
                    }
                    d dVar2 = g.this.f33174k;
                    if (dVar2 != null) {
                        ((y) dVar2).a();
                        return;
                    }
                    return;
                } catch (Throwable th) {
                    th.printStackTrace();
                    return;
                }
            } catch (Throwable th2) {
                p1.b(g.this.f33164a, ErrorCodeUtil.RENDER_AD_INTERRUPTED, "adWrapper 为空");
                th2.printStackTrace();
            }
            try {
                p1.b(g.this.f33164a, ErrorCodeUtil.RENDER_AD_INTERRUPTED, "adWrapper 为空");
            } catch (Exception e5) {
                e5.printStackTrace();
            }
            th2.printStackTrace();
        }
    }

    public class b extends l {
        public b() {
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            try {
                com.meishu.sdk.core.ad.splash.d dVar = g.this.f33165b;
                if (dVar != null) {
                    dVar.onAdClosed();
                }
                com.meishu.sdk.platform.ms.splash.b bVar = g.this.f33167d;
                if (bVar == null || bVar.getInteractionListener() == null) {
                    return;
                }
                g.this.f33167d.getInteractionListener().onAdClosed();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public class c extends l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f33177a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f33178b;

        public c(String str, int i2) {
            this.f33177a = str;
            this.f33178b = i2;
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            try {
                com.meishu.sdk.core.ad.splash.d dVar = g.this.f33165b;
                if (dVar != null) {
                    dVar.onAdRenderFail(this.f33177a, this.f33178b);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public interface d {
    }

    public g(com.meishu.sdk.platform.ms.splash.a aVar, com.meishu.sdk.core.ad.splash.d dVar, boolean z2, v vVar) {
        this.f33166c = aVar;
        this.f33165b = dVar;
        this.f33169f = z2;
        this.f33170g = vVar;
        try {
            this.f33164a = aVar.a().getEventUrl();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final Integer a() {
        T t2;
        com.meishu.sdk.platform.ms.splash.a aVar = this.f33166c;
        if (aVar == null || (t2 = aVar.f32888a) == 0) {
            return null;
        }
        return Integer.valueOf(((com.meishu.sdk.meishu_ad.splash.d) t2).getAdPatternType());
    }

    public void b() {
        com.meishu.sdk.platform.ms.splash.a aVar;
        ShakeUtil.getInstance().a();
        if (!this.f33171h && (aVar = this.f33166c) != null) {
            try {
                String[] closeUrl = ((com.meishu.sdk.meishu_ad.splash.d) aVar.f32888a).getCloseUrl();
                if (closeUrl != null) {
                    for (String str : closeUrl) {
                        if (!TextUtils.isEmpty(str)) {
                            a0.a(this.f33166c.getContext(), i0.a(str), new com.meishu.sdk.core.utils.i());
                        }
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        SdkHandler.getInstance().runOnUiThread(new b());
    }

    @Override // com.meishu.sdk.meishu_ad.m0
    public synchronized void onADExposure() {
        try {
            try {
                Gson gson = new Gson();
                HashMap map = new HashMap();
                map.put("stepNum", 6);
                map.put("msg", "start exposure");
                Integer numA = a();
                if (numA != null) {
                    map.put("creativeType", numA);
                }
                if (this.f33172i != null) {
                    map.put(IReward.AD_VIEW, 1);
                } else {
                    map.put(IReward.AD_VIEW, 0);
                }
                if (this.f33168e) {
                    map.put("hasExposed", 1);
                } else {
                    map.put("hasExposed", 0);
                }
                if (this.f33166c != null) {
                    map.put("adWrapper", 1);
                } else {
                    map.put("adWrapper", 0);
                }
                p1.a(this.f33164a, gson.toJson(map));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (!this.f33168e) {
                if (this.f33172i != null) {
                    this.f33168e = true;
                    this.f33172i.post(new a());
                } else {
                    try {
                        p1.b(this.f33164a, ErrorCodeUtil.RENDER_AD_INTERRUPTED, "adView 为空");
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                }
            }
        } finally {
        }
    }

    @Override // com.meishu.sdk.meishu_ad.m0
    public void onADLoaded(com.meishu.sdk.meishu_ad.splash.b bVar) {
        com.meishu.sdk.meishu_ad.splash.b bVar2 = bVar;
        com.meishu.sdk.platform.ms.splash.a aVar = this.f33166c;
        if (aVar == null) {
            return;
        }
        com.meishu.sdk.platform.ms.splash.b bVar3 = new com.meishu.sdk.platform.ms.splash.b(bVar2, aVar, this, this.f33169f);
        this.f33167d = bVar3;
        try {
            com.meishu.sdk.core.ad.splash.d dVar = this.f33165b;
            if (dVar != null) {
                dVar.onAdReady(bVar3);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.meishu_ad.m0
    public void onAdRenderFail(String str, int i2) {
        SdkHandler.getInstance().runOnUiThread(new c(str, i2));
    }

    public static int a(g gVar) {
        T t2;
        com.meishu.sdk.platform.ms.splash.a aVar = gVar.f33166c;
        if (aVar != null && (t2 = aVar.f32888a) != 0) {
            int ad_type = ((com.meishu.sdk.meishu_ad.splash.d) t2).getAd_type();
            return ad_type != 0 ? ad_type : AdType.SPLASH.value();
        }
        return AdType.SPLASH.value();
    }
}
