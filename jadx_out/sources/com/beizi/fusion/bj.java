package com.beizi.fusion;

import android.content.Context;
import android.os.Handler;
import android.view.View;

/* loaded from: classes2.dex */
public class bj extends l3 {

    /* renamed from: P, reason: collision with root package name */
    private ni f13131P;

    /* renamed from: Q, reason: collision with root package name */
    private String f13132Q;

    /* renamed from: R, reason: collision with root package name */
    private pi f13133R;

    public class a implements ri {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ ri f13134a;

        public a(ri riVar) {
            this.f13134a = riVar;
        }

        @Override // com.beizi.fusion.ri
        public void onAdShown() {
            if (bj.this.f14814t) {
                bj.this.f14815u = true;
                v3.b().a(bj.this.f14812r);
            }
            ri riVar = this.f13134a;
            if (riVar != null) {
                riVar.onAdShown();
            }
        }
    }

    public class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f13136a;

        public b(int i2) {
            this.f13136a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (bj.this.f13131P != null) {
                bj.this.f13131P.onAdFailed(this.f13136a);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (bj.this.f13131P != null) {
                bj.this.f13131P.onAdFailed(3);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (bj.this.f13131P != null) {
                bj.this.f13131P.a(bj.this.f13133R);
            }
        }
    }

    public bj(Context context, String str, int i2) {
        super(context, str, wh.NATIVE);
    }

    public void g(String str) {
        this.f13132Q = str;
    }

    @Override // com.beizi.fusion.l3
    public String s() {
        return this.f13132Q;
    }

    public void a(ni niVar) {
        this.f13131P = niVar;
    }

    public void a(View view, ri riVar) {
        pi piVar = this.f13133R;
        if (piVar == null || view == null || riVar == null) {
            return;
        }
        piVar.a(view, new a(riVar));
    }

    @Override // com.beizi.fusion.l3
    public void a(int i2) {
        if (this.f13131P == null || this.f14804j || this.f14801g) {
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
        pi piVarP = rnVar.P();
        this.f13133R = piVarP;
        if (piVarP == null) {
            Handler handler = this.f14789J;
            if (handler != null) {
                handler.post(new c());
                return;
            }
            return;
        }
        e(rnVar.V());
        a(rnVar.c());
        b(rnVar.j0());
        g(this.f13133R.c());
        ((d4) this.f13133R).e(this.f14814t);
        ((d4) this.f13133R).e(this.f14806l);
        Handler handler2 = this.f14789J;
        if (handler2 != null) {
            handler2.post(new d());
        }
    }
}
