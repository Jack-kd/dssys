package com.ubix.ssp.ad.h;

import android.app.Activity;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import com.ubix.ssp.ad.e.a0.f;
import com.ubix.ssp.ad.e.a0.l;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.e.v.e;
import com.ubix.ssp.ad.e.y.a.a;
import com.ubix.ssp.ad.g.c;
import com.ubix.ssp.ad.g.k.e;
import com.ubix.ssp.open.AdError;
import com.ubix.ssp.open.ParamsReview;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes5.dex */
public class b extends com.ubix.ssp.ad.a implements e {

    /* renamed from: C, reason: collision with root package name */
    private com.ubix.ssp.ad.g.e f48012C;

    /* renamed from: D, reason: collision with root package name */
    private com.ubix.ssp.ad.b f48013D;

    /* renamed from: E, reason: collision with root package name */
    private Context f48014E;

    /* renamed from: F, reason: collision with root package name */
    private com.ubix.ssp.ad.d.a f48015F;

    /* renamed from: G, reason: collision with root package name */
    private l f48016G;

    /* renamed from: H, reason: collision with root package name */
    private Dialog f48017H;

    /* renamed from: I, reason: collision with root package name */
    private com.ubix.ssp.ad.d.l f48018I;

    /* renamed from: J, reason: collision with root package name */
    private boolean f48019J;

    /* renamed from: K, reason: collision with root package name */
    private boolean f48020K;

    /* renamed from: L, reason: collision with root package name */
    private boolean f48021L;

    /* renamed from: M, reason: collision with root package name */
    boolean f48022M;

    /* renamed from: N, reason: collision with root package name */
    private c f48023N;

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f48024a;

        public a(Context context) {
            this.f48024a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (b.this.f48018I.z() == 1) {
                    b bVar = b.this;
                    bVar.f48017H = com.ubix.ssp.ad.e.a0.c.a(this.f48024a, bVar.f48013D);
                    b.this.f48017H.show();
                } else {
                    b bVar2 = b.this;
                    bVar2.f48016G = new l(bVar2.f48013D, 0, 0);
                    b.this.f48016G.b(((Activity) this.f48024a).getWindow().getDecorView(), 1);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                AdError adErrorD = com.ubix.ssp.ad.e.a0.a0.a.d(5, "创建/展示Popupwindow失败");
                b.this.d(adErrorD);
                if (b.this.f48012C != null) {
                    b.this.f48012C.onAdExposeFailed(adErrorD);
                }
            }
        }
    }

    /* renamed from: com.ubix.ssp.ad.h.b$b, reason: collision with other inner class name */
    public class C0841b implements e.b {

        /* renamed from: com.ubix.ssp.ad.h.b$b$a */
        public class a implements e.b {
            public a() {
            }

            @Override // com.ubix.ssp.ad.e.v.e.b
            public void a(com.ubix.ssp.ad.e.v.e eVar, String str, String str2, boolean z2) {
            }

            @Override // com.ubix.ssp.ad.e.v.e.b
            public void a(AdError adError) {
            }
        }

        public C0841b() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.ubix.ssp.ad.e.v.e.b
        public void a(com.ubix.ssp.ad.e.v.e eVar, String str, String str2, boolean z2) {
            try {
                ((com.ubix.ssp.ad.e.v.a) eVar).c(str);
                if (eVar.b(str) == null) {
                    b.this.a(0, com.ubix.ssp.ad.e.a0.a0.a.h(5, "资源下载错误"));
                    return;
                }
                if (b.this.I()) {
                    com.ubix.ssp.ad.e.v.e.c().a(b.this.f48015F.f45759a.f47442d.f47481k.f47536b, new a());
                }
                b.this.n(0);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // com.ubix.ssp.ad.e.v.e.b
        public void a(AdError adError) {
            b.this.a(0, adError);
        }
    }

    public b(Context context, String str) {
        super(context, str);
        this.f48022M = false;
        this.f48014E = context;
        this.f45545i = 6;
    }

    private boolean E() {
        com.ubix.ssp.ad.d.l lVar;
        return this.f48015F != null && (lVar = this.f48018I) != null && lVar.l0() && System.currentTimeMillis() / 1000 > this.f48015F.f45768j;
    }

    private boolean F() {
        return this.f48020K;
    }

    private boolean G() {
        return this.f48019J;
    }

    private void K() {
        try {
            com.ubix.ssp.ad.e.v.e.b().a(I() ? this.f48015F.f45759a.f47442d.f47481k.f47537c : this.f48015F.f45759a.f47442d.f47480j[0].f47499c, new C0841b());
        } catch (Throwable th) {
            th.printStackTrace();
            a(0, com.ubix.ssp.ad.e.a0.a0.a.h(5, "资源下载错误"));
        }
    }

    private void m(com.ubix.ssp.ad.d.a aVar) {
        n(aVar);
    }

    public String B() {
        return l(6);
    }

    public ParamsReview C() {
        return super.a(this.f48015F.f45759a, this.f48018I.x0(), this.f48018I.H0());
    }

    public long D() {
        return super.g(this.f48015F);
    }

    public boolean H() {
        return (!G() || F() || E()) ? false : true;
    }

    public boolean I() {
        com.ubix.ssp.ad.d.a aVar = this.f48015F;
        if (aVar == null) {
            return false;
        }
        int i2 = aVar.f45759a.f47442d.f47489s;
        return i2 == 6012 || i2 == 6013 || i2 == 6014;
    }

    public void J() {
        super.m(6);
    }

    @Override // com.ubix.ssp.ad.a
    public void h() {
        try {
            e(0);
            com.ubix.ssp.ad.b bVar = this.f48013D;
            if (bVar != null) {
                bVar.removeAllViews();
                this.f48013D.j();
                this.f48013D = null;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ubix.ssp.ad.g.k.b
    public void i(int i2) {
        f.a(this.f48014E, this.f45541e.get(i2).f45759a.f47442d.f47454B, 0, this.f48018I, this.f45540d, null);
    }

    @Override // com.ubix.ssp.ad.a
    public AdError j(com.ubix.ssp.ad.d.a aVar) {
        int i2;
        String str;
        a.b.C0834b c0834b;
        a.b bVar = aVar.f45759a.f47442d;
        int i3 = bVar.f47489s;
        if (i3 == 6001 || i3 == 6002 || i3 == 6003 || i3 == 6004) {
            a.b.C0834b[] c0834bArr = bVar.f47480j;
            if (c0834bArr != null && c0834bArr.length != 0 && (c0834b = c0834bArr[0]) != null && !TextUtils.isEmpty(c0834b.f47499c)) {
                return null;
            }
            i2 = 10;
            str = "图片资源链接异常";
        } else if (i3 == 6013 || i3 == 6012 || i3 == 6014) {
            a.b.l lVar = bVar.f47481k;
            if (lVar == null || TextUtils.isEmpty(lVar.f47537c)) {
                i2 = 13;
                str = "封面图资源链接异常";
            } else {
                a.b.l lVar2 = aVar.f45759a.f47442d.f47481k;
                if (lVar2 != null && !TextUtils.isEmpty(lVar2.f47536b)) {
                    return null;
                }
                i2 = 12;
                str = "视频资源链接异常";
            }
        } else {
            i2 = 16;
            str = "广告模板Id异常,或资源与模板不匹配";
        }
        return com.ubix.ssp.ad.e.a0.a0.a.k(i2, str);
    }

    public void n(int i2) {
        super.w();
        super.u();
        this.f48019J = true;
        com.ubix.ssp.ad.g.e eVar = this.f48012C;
        if (eVar != null) {
            eVar.onAdLoadSucceed();
        }
    }

    @Override // com.ubix.ssp.ad.g.k.b
    public void b(int i2) {
        f.a(this.f48014E, this.f45541e.get(i2).f45759a.f47442d.f47458F, 0, this.f48018I, this.f45540d, null);
    }

    public void c(Context context) {
        AdError adErrorD;
        com.ubix.ssp.ad.g.e eVar;
        Bundle bundleA;
        Bitmap bitmapB;
        int width;
        int i2;
        x();
        if (context == null) {
            AdError adErrorB = com.ubix.ssp.ad.e.a0.a0.a.b(4, "Activity/Context为空");
            d(adErrorB);
            com.ubix.ssp.ad.g.e eVar2 = this.f48012C;
            if (eVar2 != null) {
                eVar2.onAdExposeFailed(adErrorB);
                return;
            }
            return;
        }
        int iG0 = 5;
        if (!G()) {
            AdError adErrorD2 = com.ubix.ssp.ad.e.a0.a0.a.d(5, "内容加载失败");
            d(adErrorD2);
            com.ubix.ssp.ad.g.e eVar3 = this.f48012C;
            if (eVar3 != null) {
                eVar3.onAdExposeFailed(adErrorD2);
                return;
            }
            return;
        }
        if (F()) {
            AdError adErrorC = com.ubix.ssp.ad.e.a0.a0.a.c(3, "广告重复展示");
            d(adErrorC);
            com.ubix.ssp.ad.g.e eVar4 = this.f48012C;
            if (eVar4 != null) {
                eVar4.onAdExposeFailed(adErrorC);
            }
        }
        if (E()) {
            AdError adErrorD3 = com.ubix.ssp.ad.e.a0.a0.a.d(4, "文件已经过期");
            d(adErrorD3);
            com.ubix.ssp.ad.g.e eVar5 = this.f48012C;
            if (eVar5 != null) {
                eVar5.onAdExposeFailed(adErrorD3);
                return;
            }
            return;
        }
        try {
            if (I()) {
                bundleA = a(this.f48015F.f45759a.f47442d.f47481k.f47537c);
                bundleA.putInt("VIDEO_RENDER_TYPE", this.f48018I.k0());
                bitmapB = com.ubix.ssp.ad.e.v.e.b().b(this.f48015F.f45759a.f47442d.f47481k.f47537c);
                bundleA.putString("VIDEO_URL", this.f48015F.f45759a.f47442d.f47481k.f47536b);
                bundleA.putBoolean("AUTO_MUTE", this.f48018I.K0());
                width = bitmapB.getWidth();
            } else {
                bundleA = a(this.f48015F.f45759a.f47442d.f47480j[0].f47499c);
                com.ubix.ssp.ad.e.v.e.b().c(this.f48015F.f45759a.f47442d.f47480j[0].f47499c);
                bitmapB = com.ubix.ssp.ad.e.v.e.b().b(this.f48015F.f45759a.f47442d.f47480j[0].f47499c);
                width = bitmapB.getWidth();
            }
            bundleA.putInt("AD_WIDTH", width);
            bundleA.putInt("AD_HEIGHT", bitmapB.getHeight());
            bundleA.putBoolean("IS_DOWNLOAD", com.ubix.ssp.ad.e.a0.c.a(this.f48015F.f45759a.f47442d));
            bundleA.putInt("TEMPLATE_ID", this.f48015F.f45759a.f47442d.f47489s);
            bundleA.putInt("AD_INDEX", this.f45541e.indexOf(this.f48015F));
            a.b.f fVar = this.f48015F.f45759a.f47442d.f47464L;
            if (fVar != null && (i2 = fVar.f47516b) != 0) {
                bundleA.putInt("RENDER_MODE", i2);
                bundleA.putFloat("SCALE_IGNORE_PERCENT", (this.f48015F.f45759a.f47442d.f47464L.f47517c * 1.0f) / 100.0f);
                bundleA.putInt("SCALE_HORIZONTAL_MARGIN", this.f48015F.f45759a.f47442d.f47464L.f47518d);
                bundleA.putInt("SCALE_VERTICAL_MARGIN", this.f48015F.f45759a.f47442d.f47464L.f47519e);
            }
            if (this.f48018I.b()) {
                bundleA.putString("AD_SOURCE", this.f48015F.f45759a.f47442d.f47490t);
            }
            bundleA.putBoolean("SUPPORT_FEED_BACK", this.f48015F.f45759a.f47449k);
            bundleA.putInt("SKIP_VIEW_STYLE", this.f48018I.D());
            if (this.f48018I.g0() != -1) {
                iG0 = this.f48018I.g0();
            }
            bundleA.putInt("SKIP_COUNT_TIME", iG0);
            bundleA.putBoolean("IS_UNNAMED", this.f48018I.G0());
            com.ubix.ssp.ad.b bVarA = com.ubix.ssp.ad.b.a(context, bundleA, 6, false);
            this.f48013D = bVarA;
            bVarA.setInnerListener(this);
            this.f48013D.b(bundleA);
            this.f48013D.setShowCloseBtnDelay(this.f48018I.e0());
            a.b bVar = this.f48015F.f45759a.f47442d;
            if (com.ubix.ssp.ad.e.a0.c.a(bVar)) {
                this.f48013D.a(bVar.f47477g, bVar.f47453A, bVar.f47496z, bVar.f47478h, bVar.f47460H, bVar.f47461I, bVar.f47459G);
            }
            if (this.f48013D == null) {
                AdError adErrorD4 = com.ubix.ssp.ad.e.a0.a0.a.d(9, "内容加载失败");
                d(adErrorD4);
                com.ubix.ssp.ad.g.e eVar6 = this.f48012C;
                if (eVar6 != null) {
                    eVar6.onAdExposeFailed(adErrorD4);
                    return;
                }
                return;
            }
            try {
                if (this.f45542f != null) {
                    ((Activity) context).getWindow().getDecorView().post(new a(context));
                    return;
                }
                AdError adErrorD5 = com.ubix.ssp.ad.e.a0.a0.a.d(9, "内容加载失败");
                d(adErrorD5);
                com.ubix.ssp.ad.g.e eVar7 = this.f48012C;
                if (eVar7 != null) {
                    eVar7.onAdExposeFailed(adErrorD5);
                }
            } catch (Exception unused) {
                adErrorD = com.ubix.ssp.ad.e.a0.a0.a.d(9, "Activity/Context为空");
                d(adErrorD);
                eVar = this.f48012C;
                if (eVar == null) {
                    return;
                }
                eVar.onAdExposeFailed(adErrorD);
            }
        } catch (Exception unused2) {
            adErrorD = com.ubix.ssp.ad.e.a0.a0.a.d(9, "内容加载失败");
            d(adErrorD);
            eVar = this.f48012C;
            if (eVar == null) {
            }
        }
    }

    @Override // com.ubix.ssp.ad.g.k.b
    public void e(int i2) {
        try {
            com.ubix.ssp.ad.b bVar = this.f48013D;
            if (bVar != null) {
                bVar.i();
            }
            Dialog dialog = this.f48017H;
            if (dialog != null && dialog.isShowing()) {
                this.f48017H.dismiss();
            }
            l lVar = this.f48016G;
            if (lVar != null && lVar.b()) {
                this.f48016G.a();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        com.ubix.ssp.ad.g.e eVar = this.f48012C;
        if (eVar == null || this.f48021L) {
            return;
        }
        this.f48021L = true;
        eVar.onAdClosed();
    }

    @Override // com.ubix.ssp.ad.g.k.b
    public void f(int i2) {
        f.a(this.f48014E, this.f45541e.get(i2).f45759a.f47442d.f47455C, 0, this.f48018I, this.f45540d, null);
    }

    public void h(String str) {
        if (TextUtils.isEmpty(str)) {
            b(com.ubix.ssp.ad.e.a0.a0.a.j(10, "竞价广告体为空或解析异常，请检查传入的参数是否正确"));
        } else {
            e(str);
        }
    }

    public void n(com.ubix.ssp.ad.d.a aVar) {
        super.v();
        this.f48018I = a(aVar.f45759a);
        K();
    }

    @Override // com.ubix.ssp.ad.g.k.b
    public void b(int i2, View view, HashMap<String, String> map) {
        if (map == null) {
            map = this.f48013D.getClickMap();
            map.put("__CLICK_TRIGGER__", "");
        }
        a(this.f48015F, this.f48013D, this.f48018I, map);
    }

    @Override // com.ubix.ssp.ad.a
    public void c(Context context, Intent intent, long j2, BroadcastReceiver broadcastReceiver) {
        a(3, new Object[0]);
    }

    @Override // com.ubix.ssp.ad.g.k.b
    public void a(int i2) {
        a(this.f48015F, this.f48018I);
    }

    @Override // com.ubix.ssp.ad.a
    public void b(int i2, com.ubix.ssp.ad.d.a aVar) {
        super.b(i2, aVar);
        if (i2 == 3) {
            a(2, new Object[0]);
        }
        e(0);
    }

    @Override // com.ubix.ssp.ad.g.k.e
    public void a(int i2, long j2, long j3) {
        if (j3 > 0) {
            a(this.f48015F, i2, j2, j3, 0L);
            if (i2 <= 98 || this.f48022M) {
                return;
            }
            this.f48022M = true;
            com.ubix.ssp.ad.d.a aVar = this.f48015F;
            b(aVar.f45759a, a(aVar, j2, j3, j3));
        }
    }

    @Override // com.ubix.ssp.ad.a
    public void b(AdError adError) {
        super.b(adError);
        super.a(adError);
        com.ubix.ssp.ad.g.e eVar = this.f48012C;
        if (eVar != null) {
            eVar.onAdLoadFailed(adError);
        }
    }

    @Override // com.ubix.ssp.ad.g.k.b
    public void a(int i2, Bundle bundle) {
        super.a(bundle);
    }

    public void b(HashMap<String, String> map) {
        com.ubix.ssp.ad.e.y.a.a aVar;
        com.ubix.ssp.ad.d.a aVar2 = this.f48015F;
        if (aVar2 == null || (aVar = aVar2.f45759a) == null) {
            return;
        }
        super.a(aVar, map);
    }

    @Override // com.ubix.ssp.ad.g.k.b
    public void a(int i2, View view) {
        com.ubix.ssp.ad.e.y.a.a aVar;
        a.b bVar;
        String str;
        super.y();
        this.f48020K = true;
        d(this.f48015F);
        c(this.f48015F);
        com.ubix.ssp.ad.g.e eVar = this.f48012C;
        if (eVar != null) {
            eVar.onAdExposed();
        }
        b(this.f48013D, this.f48018I);
        a(this.f48013D, this.f48018I);
        com.ubix.ssp.ad.d.a aVar2 = this.f48015F;
        if (aVar2 == null || (aVar = aVar2.f45759a) == null || (bVar = aVar.f47442d) == null || (str = bVar.f47479i) == null) {
            return;
        }
        f(str);
    }

    @Override // com.ubix.ssp.ad.a
    public boolean b(com.ubix.ssp.ad.d.a aVar, HashMap<String, String> map) {
        if (!i()) {
            super.b(aVar, map);
            com.ubix.ssp.ad.b bVar = this.f48013D;
            if (bVar != null && com.ubix.ssp.ad.d.b.f45786E == 1 && bVar.m()) {
                this.f48013D.a(this.f48018I.B(), this.f48018I.A());
            }
            int iA = a(aVar, 6, map, aVar.f45773o, this.f48018I.o() == 1, this.f48023N);
            if (iA == 4 || iA == 6) {
                a(4, new Object[0]);
            } else if (iA == 22) {
                b(this.f48013D.getContext(), aVar, map, this.f48018I.q());
            } else if (iA == 23) {
                a(this.f48013D.getContext(), aVar, map, this.f48018I.q());
                a(2, new Object[0]);
            } else if (iA == 2 || iA == 5 || iA == 31) {
                if (iA == 31) {
                    g((String) null);
                }
                a(this.f48013D.getContext(), aVar, map);
            } else if (iA == 3) {
                b(this.f48014E.getApplicationContext());
            } else if (iA == 33) {
                a(33, new Object[0]);
            } else {
                a(1, new Object[0]);
            }
            try {
                a(0, new Object[0]);
            } catch (Throwable th) {
                th.printStackTrace();
            }
            map.put("__MULTI_CLICK_KEY__", "TRUE");
            if (!this.f48018I.n0() && iA != 6 && iA != 32) {
                e(0);
            }
        }
        return true;
    }

    @Override // com.ubix.ssp.ad.a
    public void a(int i2, com.ubix.ssp.ad.d.a aVar) {
        super.a(i2, aVar);
        try {
            a(this.f48013D.getContext(), this.f48015F, this.f48013D.getClickMap());
            e(0);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void a(int i2, AdError adError) {
        super.c(adError);
        super.a(adError);
        this.f48019J = false;
        com.ubix.ssp.ad.g.e eVar = this.f48012C;
        if (eVar != null) {
            eVar.onAdLoadFailed(adError);
        }
    }

    @Override // com.ubix.ssp.ad.a
    public void a(int i2, Object... objArr) {
        if (this.f48018I.n0() && i2 != 0) {
            super.a(i2, objArr);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("runClickCallback ");
        sb.append(i2);
        sb.append(";canRun=");
        sb.append((!this.f48018I.n0() && i2 == 0) || (this.f48018I.n0() && i2 != 0));
        u.e(sb.toString());
        if (((this.f48018I.n0() || i2 != 0) && (!this.f48018I.n0() || i2 == 0)) || this.f48012C == null || this.f48018I.m0()) {
            return;
        }
        this.f48012C.onAdClicked();
        if (!this.f48018I.n0() || i2 == 4) {
            return;
        }
        e(0);
    }

    public void a(long j2) {
        com.ubix.ssp.ad.e.y.a.a aVar;
        com.ubix.ssp.ad.d.a aVar2 = this.f48015F;
        if (aVar2 == null || (aVar = aVar2.f45759a) == null) {
            return;
        }
        super.a(aVar, j2);
    }

    @Override // com.ubix.ssp.ad.a
    public void a(Context context, Intent intent, long j2, BroadcastReceiver broadcastReceiver) {
        super.a(context, intent, j2, broadcastReceiver);
        if (this.f48018I.n0()) {
            e(0);
        }
    }

    @Override // com.ubix.ssp.ad.a
    public void a(Message message) {
        int i2 = message.what;
        if (i2 != 5) {
            if (i2 != 6) {
                if (i2 != 10) {
                    if (i2 != 11) {
                        return;
                    }
                }
            }
            b((AdError) message.obj);
            return;
        }
        com.ubix.ssp.ad.d.a aVar = (com.ubix.ssp.ad.d.a) ((List) message.obj).get(0);
        this.f48015F = aVar;
        m(aVar);
    }

    @Override // com.ubix.ssp.ad.a
    public void a(com.ubix.ssp.ad.d.a aVar, HashMap<String, String> map) {
        super.a(aVar, map);
        try {
            this.f45543g = false;
            if (this.f45554r != null) {
                com.ubix.ssp.ad.e.s.c.a().a(this.f45554r, null);
            }
            com.ubix.ssp.ad.b bVar = this.f48013D;
            if (bVar != null) {
                if (com.ubix.ssp.ad.d.b.f45786E == 1 && bVar.m()) {
                    return;
                }
                this.f48013D.a((ImageView) null);
            }
        } catch (Exception unused) {
        }
    }

    public void a(com.ubix.ssp.ad.g.e eVar) {
        this.f48012C = eVar;
    }
}
