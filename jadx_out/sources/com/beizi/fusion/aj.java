package com.beizi.fusion;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import com.beizi.ad.v2.activity.BeiZiNewInterstitialActivity;
import com.beizi.fusion.yp;

/* loaded from: classes2.dex */
public class aj extends l3 {

    /* renamed from: Q, reason: collision with root package name */
    public static aj f12644Q;

    /* renamed from: P, reason: collision with root package name */
    private p1 f12645P;

    public class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f12647a;

        public b(int i2) {
            this.f12647a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            aj.this.f12645P.a(this.f12647a);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            aj.this.M();
        }
    }

    public aj(Context context) {
        super(context, wh.INTERSTITIAL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M() {
        String strE;
        boolean zP0;
        String strF0;
        try {
            rn rnVar = this.f14797c;
            if (rnVar != null) {
                zP0 = rnVar.p0();
                strE = this.f14797c.E();
                strF0 = this.f14797c.f0();
            } else {
                strE = null;
                zP0 = false;
                strF0 = null;
            }
            if (zP0) {
                if (!TextUtils.isEmpty(strF0)) {
                    yp.c().a(this.f14795a, strF0, false, new a());
                    return;
                }
                p1 p1Var = this.f12645P;
                if (p1Var != null) {
                    p1Var.a(3);
                    return;
                }
                return;
            }
            if (TextUtils.isEmpty(strE)) {
                p1 p1Var2 = this.f12645P;
                if (p1Var2 != null) {
                    p1Var2.a(3);
                    return;
                }
                return;
            }
            if (this.f12645P != null) {
                this.f14801g = true;
                Log.e("BeiZisAd", "enter BeiZi ad load");
                this.f12645P.c();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void N() {
        p1 p1Var = this.f12645P;
        if (p1Var != null) {
            p1Var.a();
        }
    }

    public void O() {
        rn rnVar = this.f14797c;
        if (rnVar != null) {
            rnVar.a(false);
        }
        p1 p1Var = this.f12645P;
        if (p1Var != null) {
            p1Var.b();
        }
    }

    public void P() {
        if (this.f14814t) {
            this.f14815u = true;
            v3.b().a(this.f14812r);
        }
        if (this.f12645P != null) {
            Log.e("BeiZisAd", "enter BeiZi ad show");
            this.f12645P.d();
        }
    }

    @Override // com.beizi.fusion.l3
    public void d() {
        super.d();
        f12644Q = null;
    }

    public void g(String str) {
        p1 p1Var = this.f12645P;
        if (p1Var != null) {
            p1Var.a(str);
        }
    }

    public void a(p1 p1Var) {
        this.f12645P = p1Var;
    }

    public void a(Context context) {
        nh.c("BeiZisAd", "showInterstitial");
        f12644Q = this;
        context.startActivity(new Intent(context, (Class<?>) BeiZiNewInterstitialActivity.class));
    }

    public class a implements yp.e {
        public a() {
        }

        @Override // com.beizi.fusion.yp.e
        public void a(String str) {
            nh.a("BeiZisAd", "onVideoLoaded: 加载成功");
            if (aj.this.f12645P != null) {
                aj.this.f14801g = true;
                Log.e("BeiZisAd", "enter BeiZi ad load");
                aj.this.f12645P.c();
            }
        }

        @Override // com.beizi.fusion.yp.e
        public void a() {
            if (aj.this.f12645P != null) {
                aj.this.f12645P.a(6);
            }
        }
    }

    @Override // com.beizi.fusion.l3
    public void a(int i2) {
        if (this.f12645P == null || this.f14804j || this.f14801g) {
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
        e(rnVar.V());
        a(rnVar.c());
        b(rnVar.j0());
        Handler handler = this.f14789J;
        if (handler != null) {
            handler.post(new c());
        }
    }
}
