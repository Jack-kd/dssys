package com.meishu.sdk.meishu_ad;

import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.meishu_ad.splash.SplashSkipView;
import com.meishu.sdk.platform.ms.splash.ShakeResult;
import com.meishu.sdk.platform.ms.splash.ShakeUtil;
import com.meishu.sdk.platform.ms.splash.g;

/* loaded from: classes4.dex */
public class y implements g.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean[] f32815a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.c f32816b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.a f32817c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ SplashSkipView f32818d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ v f32819e;

    public class a implements ShakeUtil.c {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ long f32820a;

        public a(long j2) {
            this.f32820a = j2;
        }

        @Override // com.meishu.sdk.platform.ms.splash.ShakeUtil.c
        public void onShake(int i2, boolean z2, int i3, ShakeResult shakeResult) {
            ShakeUtil.getInstance().a(y.this.f32819e.f32570b);
            if (y.this.f32816b.getInteractionListener() != null && y.this.f32816b.f32515b.getCbc() == 0) {
                y.this.f32816b.getInteractionListener().onAdClicked();
            }
            com.meishu.sdk.meishu_ad.splash.a aVar = y.this.f32817c;
            if (aVar != null) {
                ((com.meishu.sdk.platform.ms.splash.g) aVar).f33171h = true;
            }
            if (shakeResult != null) {
                shakeResult.setTotalTurnTime(System.currentTimeMillis() - this.f32820a);
            }
            com.meishu.sdk.meishu_ad.splash.d dVar = y.this.f32816b.f32515b;
            dVar.setClkActType(i2);
            dVar.setDynamic(z2);
            dVar.setClkPower(i3);
            dVar.setShakeResult(shakeResult);
            com.meishu.sdk.core.utils.f.a(y.this.f32816b, i3 >= 50);
            y yVar = y.this;
            v.a(yVar.f32819e, yVar.f32818d);
        }
    }

    public y(v vVar, boolean[] zArr, com.meishu.sdk.meishu_ad.splash.c cVar, com.meishu.sdk.meishu_ad.splash.a aVar, SplashSkipView splashSkipView) {
        this.f32819e = vVar;
        this.f32815a = zArr;
        this.f32816b = cVar;
        this.f32817c = aVar;
        this.f32818d = splashSkipView;
    }

    public void a() {
        boolean[] zArr = this.f32815a;
        if (zArr[0]) {
            return;
        }
        zArr[0] = true;
        com.meishu.sdk.meishu_ad.splash.c cVar = this.f32816b;
        if (cVar != null) {
            try {
                com.meishu.sdk.core.utils.w wVar = new com.meishu.sdk.core.utils.w();
                com.meishu.sdk.meishu_ad.splash.f fVar = new com.meishu.sdk.meishu_ad.splash.f(cVar, wVar);
                cVar.f32518e.addOnAttachStateChangeListener(new com.meishu.sdk.meishu_ad.splash.g(fVar, wVar));
                try {
                    if (AdSdk.adConfig() != null && AdSdk.adConfig().enableInstallBroadcast()) {
                        AdSdk.getContext().registerReceiver(wVar.f32038b, wVar.f32037a);
                        wVar.f32041e = true;
                    }
                } catch (Throwable th) {
                    LogUtil.dev("HW", th);
                }
                com.meishu.sdk.core.service.d.a(fVar);
            } catch (Exception unused) {
            }
        }
        if (com.meishu.sdk.core.utils.h.e(this.f32816b.f32515b.getAct_type()) || com.meishu.sdk.core.utils.h.d(this.f32816b.f32515b.getAct_type())) {
            com.meishu.sdk.meishu_ad.splash.d dVar = this.f32816b.f32515b;
            int i2 = dVar.f32525F;
            int power_index2 = dVar.getPower_index2();
            this.f32816b.f32515b.getClass();
            if (ShakeUtil.getInstance().indexLocal != 0 && AdSdk.adConfig().isTest()) {
                i2 = ShakeUtil.getInstance().indexLocal;
            }
            int i3 = i2;
            v vVar = this.f32819e;
            if (vVar.f32570b == 0) {
                vVar.f32570b = ShakeUtil.getInstance().b();
            }
            int iB = com.meishu.sdk.core.utils.h.b(this.f32816b.f32515b.getAct_type());
            long jCurrentTimeMillis = System.currentTimeMillis();
            ShakeUtil.getInstance().a(this.f32816b.f32515b.getPosId(), this.f32816b.f32515b.getLoadedTime(), this.f32816b.f32515b.getDclk());
            ShakeUtil.getInstance().a(power_index2, i3, iB, this.f32816b.f32515b.getPower_delay(), this.f32816b.f32515b.getPower_count(), this.f32819e.f32570b, this.f32816b.f32515b.getEcpm(), new a(jCurrentTimeMillis));
            if (com.meishu.sdk.core.utils.h.c(this.f32816b.f32515b.getAct_type())) {
                ShakeUtil.getInstance().a(true);
                ShakeUtil.getInstance().f();
            }
        }
    }
}
