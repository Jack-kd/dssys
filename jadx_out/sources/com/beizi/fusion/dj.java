package com.beizi.fusion;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity;
import com.beizi.fusion.yp;
import java.util.Map;

/* loaded from: classes2.dex */
public class dj extends l3 {

    /* renamed from: S, reason: collision with root package name */
    public static dj f13480S;

    /* renamed from: P, reason: collision with root package name */
    private ej f13481P;

    /* renamed from: Q, reason: collision with root package name */
    private boolean f13482Q;

    /* renamed from: R, reason: collision with root package name */
    private String f13483R;

    public class a implements yp.e {
        public a() {
        }

        @Override // com.beizi.fusion.yp.e
        public void a() {
        }

        @Override // com.beizi.fusion.yp.e
        public void a(String str) {
            nh.a("BeiZisAd", "onVideoLoaded: 加载成功");
            dj.this.f13483R = str;
            if (dj.this.f13481P != null) {
                dj.this.f13482Q = true;
                dj.this.f13481P.a();
            }
        }
    }

    public class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f13485a;

        public b(int i2) {
            this.f13485a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            dj.this.f13481P.onAdFailedToLoad(this.f13485a);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            dj.this.N();
        }
    }

    public dj(Context context) {
        super(context, wh.REWARDEDVIDEO);
        this.f13482Q = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N() {
        String strH;
        boolean zP0;
        String strF0;
        try {
            rn rnVar = this.f14797c;
            if (rnVar != null) {
                zP0 = rnVar.p0();
                strH = this.f14797c.H();
                strF0 = this.f14797c.f0();
            } else {
                strH = null;
                zP0 = false;
                strF0 = null;
            }
            if (zP0) {
                if (TextUtils.isEmpty(strF0)) {
                    ej ejVar = this.f13481P;
                    if (ejVar != null) {
                        ejVar.onAdFailedToLoad(3);
                        return;
                    }
                    return;
                }
                if (this.f13481P != null) {
                    Log.e("BeiZisAd", "enter BeiZi ad load");
                    this.f14801g = true;
                    this.f13481P.onAdLoaded();
                }
                yp.c().a(this.f14795a, strF0, false, new a());
                return;
            }
            if (TextUtils.isEmpty(strH)) {
                ej ejVar2 = this.f13481P;
                if (ejVar2 != null) {
                    ejVar2.onAdFailedToLoad(3);
                    return;
                }
                return;
            }
            if (this.f13481P != null) {
                this.f14801g = true;
                Log.e("BeiZisAd", "enter BeiZi ad load");
                this.f13481P.onAdLoaded();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public String M() {
        return this.f13483R;
    }

    public boolean O() {
        return this.f13482Q;
    }

    public void P() {
        ej ejVar = this.f13481P;
        if (ejVar != null) {
            ejVar.onAdClicked();
        }
    }

    public void Q() {
        rn rnVar = this.f14797c;
        if (rnVar != null) {
            rnVar.a(false);
        }
        ej ejVar = this.f13481P;
        if (ejVar != null) {
            ejVar.onAdClosed();
        }
    }

    public void R() {
        ej ejVar = this.f13481P;
        if (ejVar != null) {
            ejVar.b();
        }
    }

    public void S() {
        ej ejVar = this.f13481P;
        if (ejVar != null) {
            ejVar.d();
        }
    }

    public void T() {
        if (this.f14814t) {
            this.f14815u = true;
            v3.b().a(this.f14812r);
        }
        if (this.f13481P != null) {
            Log.e("BeiZisAd", "enter BeiZi ad show");
            this.f13481P.onAdShown();
        }
    }

    @Override // com.beizi.fusion.l3
    public void d() {
        super.d();
        f13480S = null;
    }

    public void g(String str) {
        ej ejVar = this.f13481P;
        if (ejVar != null) {
            ejVar.a(str);
        }
    }

    public void a(ej ejVar) {
        this.f13481P = ejVar;
    }

    public void a(Context context) {
        nh.c("BeiZisAd", "showRewardVideo");
        f13480S = this;
        context.startActivity(new Intent(context, (Class<?>) BeiZiNewRewardVideoActivity.class));
    }

    public void a(String str, int i2) {
        ej ejVar = this.f13481P;
        if (ejVar != null) {
            ejVar.a((Map) null);
        }
    }

    @Override // com.beizi.fusion.l3
    public void a(int i2) {
        if (this.f13481P == null || this.f14804j || this.f14801g) {
            return;
        }
        this.f14804j = true;
        Handler handler = this.f14789J;
        if (handler != null) {
            handler.post(new b(i2));
        }
    }

    @Override // com.beizi.fusion.l3
    public void a(rn rnVar) {
        if (rnVar == null) {
            ej ejVar = this.f13481P;
            if (ejVar != null) {
                ejVar.onAdFailedToLoad(3);
                return;
            }
            return;
        }
        e(rnVar.V());
        a(rnVar.c());
        b(rnVar.j0());
        Handler handler = this.f14789J;
        if (handler != null) {
            handler.post(new c());
        }
    }
}
