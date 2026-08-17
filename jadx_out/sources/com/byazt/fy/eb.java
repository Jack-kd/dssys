package com.byazt.fy;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.ff.q;
import com.byazt.jz.d;
import com.byazt.jz.sz;
import com.byazt.po.jx;
import com.byazt.pu.TTDownloadField;
import com.byazt.xci.mp;
import com.byazt.xci.xs;
import com.byazt.ymw.hq;
import com.byazt.zn.dy;
import com.byazt.zn.hp;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.player.C;
import com.umeng.analytics.pro.cl;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Function;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 60, 94})
/* loaded from: classes2.dex */
public class eb extends j {

    /* renamed from: a, reason: collision with root package name */
    public final mp f20207a;

    /* renamed from: e, reason: collision with root package name */
    public volatile com.byazt.zbc.jx f20208e;
    public String eb;
    public volatile boolean gu;

    /* renamed from: j, reason: collision with root package name */
    public WeakReference<Context> f20209j;

    /* renamed from: w, reason: collision with root package name */
    public String f20214w;

    /* renamed from: q, reason: collision with root package name */
    public int f20212q = 0;
    public boolean jl = false;
    public boolean zy = false;

    /* renamed from: k, reason: collision with root package name */
    public AtomicBoolean f20210k = new AtomicBoolean(false);
    public final com.byazt.ve.l hp = new com.byazt.ve.l() { // from class: com.byazt.fy.eb.7
        @Override // com.byazt.ve.l
        public void onDownloadActive(long j2, long j3, String str) {
            if (eb.this.f20210k.get()) {
                eb.this.f20210k.set(false);
                com.byazt.rk.hp.jx(eb.this.cx(), 2);
            }
        }

        @Override // com.byazt.ve.l
        public void onDownloadFailed(long j2, long j3, String str) {
            com.byazt.rk.hp.j(eb.this.cx(), 1);
        }

        @Override // com.byazt.ve.l
        public void onDownloadFinished(long j2, long j3, String str) {
            com.byazt.rk.hp.w(eb.this.cx());
        }

        @Override // com.byazt.ve.l
        public void onDownloadPaused(long j2, long j3, String str) {
            com.byazt.rk.hp.jx(eb.this.cx());
            eb.this.f20210k.set(true);
        }

        @Override // com.byazt.ve.l
        public void onDownloadStart() {
            com.byazt.rk.hp.jx(eb.this.cx(), 1);
        }

        @Override // com.byazt.yy.DownloadStatusChangeListener
        public void onIdle() {
        }

        @Override // com.byazt.ve.l
        public void onInstalled(long j2, long j3, String str) {
            com.byazt.rk.hp.w(eb.this.cx(), 1);
        }
    };

    /* renamed from: l, reason: collision with root package name */
    public hp.l f20211l = new hp.l() { // from class: com.byazt.fy.eb.8
        @Override // com.byazt.zn.hp.l
        public void onAppBackground() {
        }

        @Override // com.byazt.zn.hp.l
        public void onAppExit() {
        }

        @Override // com.byazt.zn.hp.l
        public void onAppForeground() {
            if (com.byazt.jz.s.u().nu()) {
                return;
            }
            com.byazt.rk.hp.l(eb.this.cx());
            com.byazt.jz.s.u().jx().l(eb.this.f20211l);
        }

        @Override // com.byazt.zn.hp.l
        public void onAppStart() {
        }
    };
    public final com.byazt.yy.l jx = new com.byazt.yy.l() { // from class: com.byazt.fy.eb.9
        @Override // com.byazt.yy.l
        public void hp() {
            com.byazt.rk.hp.l(eb.this.cx(), 1);
            com.byazt.jz.s.u().jx().hp(eb.this.f20211l);
        }

        @Override // com.byazt.yy.l
        public void l() {
            com.byazt.rk.hp.l(eb.this.cx(), 2);
        }
    };

    /* renamed from: s, reason: collision with root package name */
    public Function<SparseArray<Object>, Object> f20213s = com.byazt.jz.s.u().xh();

    public eb(Context context, String str, mp mpVar, String str2) {
        this.f20209j = new WeakReference<>(context);
        this.f20207a = mpVar;
        this.eb = str2;
        this.f20214w = str;
        hp();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String cx() {
        mp mpVar = this.f20207a;
        if (mpVar == null) {
            return null;
        }
        return mpVar.di();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ec() {
        final Map<String, Object> mapN = n();
        if (!j()) {
            hp(16, mapN);
        } else {
            com.byazt.hy.jx.hp(mapN, new com.byazt.ve.hp() { // from class: com.byazt.fy.eb.4
                @Override // com.byazt.b.IDownloadButtonClickListener
                public void handleComplianceDialog(boolean z2) {
                }

                @Override // com.byazt.b.IDownloadButtonClickListener
                public void handleMarketFailedComplianceDialog() {
                    if (mapN == null) {
                        return;
                    }
                    com.byazt.hy.jx.hp(0, eb.this.sz());
                    eb.this.s().hp(eb.this.q());
                    mapN.remove("downloadButtonClickListener");
                    if (eb.this.zy()) {
                        return;
                    }
                    eb.this.hp((com.byazt.xci.j) null);
                }
            });
            hp(mapN);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Context getContext() {
        try {
            WeakReference<Context> weakReference = this.f20209j;
            if (weakReference == null) {
                return sz.getContext();
            }
            Context context = weakReference.get();
            return context == null ? sz.getContext() : context;
        } catch (Throwable unused) {
            return sz.getContext();
        }
    }

    private synchronized void gu() {
        if (this.f20213s == null) {
            return;
        }
        if (!jl()) {
            this.f20213s.apply(com.byazt.wi.j.hp().hp(5).hp(Void.class).hp(0, new dy().hp("hashCode", Integer.valueOf(sz())).hp("downloadStatusChangeListener", this.hp).hp("marketStatusChangeListener", this.jx)).l());
            return;
        }
        dy dyVar = new dy();
        dyVar.hp("hashCode", Integer.valueOf(sz()));
        Object objApply = this.f20213s.apply(com.byazt.wi.j.hp().hp(19).hp(Boolean.class).hp(0, dyVar).l());
        if (objApply != null && ((Boolean) objApply).booleanValue()) {
            this.f20213s.apply(com.byazt.wi.j.hp().hp(14).hp(Boolean.class).hp(0, new dy().hp("hashCode", Integer.valueOf(sz()))).l());
        }
    }

    private boolean jl() {
        mp mpVar = this.f20207a;
        if (mpVar != null) {
            return com.byazt.xci.sz.hp(mpVar);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean k() {
        return u() || v();
    }

    private Map<String, Object> n() {
        long jLongValue = Double.valueOf(this.f20207a.j()).longValue();
        return jl() ? new dy().hp("userAgent", null).hp("isDisableDialog", Boolean.TRUE).hp("downloadStatusChangeListener", null).hp("action_type_button", 2).hp("id", Long.valueOf(jLongValue)).hp(TTDownloadField.TT_ACTIVITY, getContext()).hp("open_market_in_app", Boolean.valueOf(com.byazt.xci.sz.ec(this.f20207a))).hp("hashCode", Integer.valueOf(sz())) : new dy().hp("downloadUrl", this.f20214w).hp("hashCode", Integer.valueOf(sz())).hp("id", Long.valueOf(jLongValue)).hp(TTDownloadField.TT_ACTIVITY, getContext()).hp("open_market_in_app", Boolean.valueOf(com.byazt.xci.sz.ec(this.f20207a))).hp("action_type_button", 2);
    }

    private void ns() {
        if (j() && !this.gu) {
            com.byazt.hy.jx.hp(false, (com.byazt.ve.jx) null, sz());
        }
    }

    private boolean u() {
        mp mpVar = this.f20207a;
        if (mpVar != null && mpVar.k() != null) {
            String strL = this.f20207a.k().l();
            if (TextUtils.isEmpty(strL)) {
                return false;
            }
            xs.hp((String) null);
            Uri uri = Uri.parse(strL);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(uri);
            if (ky.hp(intent)) {
                if (!(getContext() instanceof Activity)) {
                    intent.addFlags(C.ENCODING_PCM_MU_LAW);
                }
                try {
                    getContext().startActivity(intent);
                    return true;
                } catch (Throwable unused) {
                }
            }
        }
        return false;
    }

    private boolean v() {
        mp mpVar = this.f20207a;
        com.byazt.xci.a aVarVv = mpVar != null ? mpVar.vv() : null;
        String strZy = aVarVv != null ? aVarVv.zy() : "";
        Intent intentL = TextUtils.isEmpty(strZy) ? null : ky.l(getContext(), strZy);
        if (intentL == null || !ky.l(strZy)) {
            return false;
        }
        try {
            getContext().startActivity(intentL);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private boolean vv() {
        if (this.f20213s == null) {
            return false;
        }
        Object objApply = this.f20213s.apply(com.byazt.wi.j.hp().hp(6).hp(Boolean.class).hp(0, new dy().hp("downloadUrl", this.f20214w).hp("hashCode", Integer.valueOf(sz()))).l());
        return objApply != null && ((Boolean) objApply).booleanValue();
    }

    private boolean xs() {
        if (this.f20213s == null || com.byazt.xci.sz.u(this.f20207a) == 1) {
            return true;
        }
        if (sz.l().gy()) {
            return hp("正在下载，可在通知栏暂停或取消", true);
        }
        mp mpVar = this.f20207a;
        if (com.byazt.xci.sz.e(mpVar)) {
            return true;
        }
        s.l(mpVar, "dmb");
        return hp("应用正在下载...", false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean zy() {
        int i2 = this.f20212q;
        if (i2 != 1) {
            if (i2 != 2) {
                return false;
            }
            com.byazt.uid.w.l(new com.byazt.uid.eb("tt_download_check") { // from class: com.byazt.fy.eb.1
                @Override // java.lang.Runnable
                public void run() {
                    com.byazt.xci.j jVarHp = sz.hp().hp(eb.this.f20207a, eb.this.f20214w);
                    if (jVarHp == null || !jVarHp.eb()) {
                        s.hp(sz.getContext(), eb.this.f20207a, "web_2");
                        return;
                    }
                    com.byazt.xci.a aVarHp = s.hp(jVarHp.s());
                    com.byazt.xci.a aVarVv = eb.this.f20207a.vv();
                    if (aVarVv == null) {
                        eb.this.f20207a.hp(aVarHp);
                    } else {
                        aVarVv.e(aVarHp.k());
                        aVarVv.l(aVarHp.w());
                        aVarVv.j(aVarHp.eb());
                        aVarVv.l(aVarHp.jl());
                        aVarVv.w(aVarHp.s());
                        aVarVv.q(aVarHp.zy());
                        aVarVv.jx(aVarHp.a());
                        aVarVv.a(aVarHp.q());
                        aVarVv.eb(aVarHp.e());
                        aVarVv.s(aVarHp.gu());
                        aVarHp = aVarVv;
                    }
                    if (eb.this.k()) {
                        return;
                    }
                    eb.this.hp(aVarHp.a(), aVarHp.k(), aVarHp.zy());
                    eb.this.hp(jVarHp);
                }
            });
            return true;
        }
        if (k()) {
            return true;
        }
        s.hp(sz.getContext(), this.f20207a, "web_1");
        return true;
    }

    public void finalize() throws Throwable {
        super.finalize();
        com.byazt.rk.hp.w(cx(), 2);
    }

    @Override // com.byazt.gog.jx
    public void hp(int i2, jx.hp hpVar) {
    }

    private synchronized void e() {
        try {
            if (this.f20213s == null) {
                return;
            }
            if (d.f21856j >= 6400 && !d.s()) {
                com.byazt.hy.jx.hp((com.byazt.ve.jx) null, sz());
            }
            if (jl()) {
                this.f20213s.apply(com.byazt.wi.j.hp().hp(18).hp(Boolean.class).hp(0, new dy().hp("hashCode", Integer.valueOf(sz()))).l());
            } else {
                this.f20213s.apply(com.byazt.wi.j.hp().hp(4).hp(Void.class).hp(0, new dy().hp("hashCode", Integer.valueOf(sz()))).l());
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.byazt.zbc.hp q() {
        return j() ? new com.byazt.zbc.w() : new com.byazt.zbc.j();
    }

    @Override // com.byazt.gog.jx
    public Map<String, Object> a() {
        return new HashMap();
    }

    @Override // com.byazt.gog.jx
    public boolean eb() {
        return this.zy;
    }

    @Override // com.byazt.gog.jx
    public void hp(com.byazt.gog.hp hpVar) {
    }

    @Override // com.byazt.gog.jx
    public boolean j() {
        Function<SparseArray<Object>, Object> function = this.f20213s;
        return function != null && com.byazt.hy.jx.hp(function, sz()) == 2;
    }

    @Override // com.byazt.gog.jx
    public void jx() {
        e();
        WeakReference<Context> weakReference = this.f20209j;
        if (weakReference != null) {
            weakReference.clear();
            this.f20209j = null;
        }
        this.f20208e = null;
    }

    @Override // com.byazt.gog.jx
    public void l() {
        gu();
    }

    public com.byazt.zbc.jx s() {
        if (this.f20208e == null) {
            synchronized (this) {
                try {
                    if (this.f20208e == null) {
                        this.f20208e = new com.byazt.zbc.jx(getContext(), this.f20207a);
                    }
                } finally {
                }
            }
        }
        return this.f20208e;
    }

    @Override // com.byazt.gog.jx
    public void w() {
        com.byazt.rk.hp.j(cx());
        Function<SparseArray<Object>, Object> function = this.f20213s;
        if (function != null) {
            function.apply(com.byazt.wi.j.hp().hp(8).hp(Void.class).hp(0, new dy().hp("force", Boolean.TRUE).hp("hashCode", Integer.valueOf(sz()))).l());
        }
    }

    private boolean l(com.byazt.xci.j jVar) {
        com.byazt.zbc.jx jxVarS = s();
        if (!jxVarS.j(false) || eb() || vv()) {
            return false;
        }
        if (hp(getContext(), this.f20207a, this.eb)) {
            return true;
        }
        jxVarS.hp(jVar, this.eb, this.f20214w, new com.byazt.cb.l() { // from class: com.byazt.fy.eb.2
            @Override // com.byazt.cb.l
            public void hp() {
                eb.this.ec();
                eb.this.l(true);
            }
        });
        return true;
    }

    @Override // com.byazt.gog.jx
    public void hp(com.byazt.gog.hp hpVar, boolean z2) {
    }

    @Override // com.byazt.gog.jx
    public void hp(mp mpVar, boolean z2) {
    }

    @Override // com.byazt.gog.jx
    public void j(boolean z2) {
        this.zy = z2;
    }

    @Override // com.byazt.gog.jx
    public void jx(boolean z2) {
        this.jl = z2;
    }

    @Override // com.byazt.gog.jx
    public void l(boolean z2) {
        if (z2) {
            this.gu = true;
            if (j()) {
                com.byazt.hy.jx.hp(true, com.byazt.hy.jx.hp(this.f20207a, this.jl), sz());
            }
        }
    }

    @Override // com.byazt.gog.jx
    public void hp() {
        com.byazt.hy.jx.hp(this.f20214w, this.eb, this.f20207a, (JSONObject) null, sz());
        com.byazt.hy.jx.hp(this.f20207a, sz(), ky.d(this.f20207a));
        com.byazt.hy.jx.hp(this.eb, sz());
        gu();
    }

    @Override // com.byazt.gog.jx
    public void hp(JSONObject jSONObject, boolean z2) {
        if (this.f20207a != null) {
            com.byazt.rk.hp.hp(this.f20207a.di(), j() ? 1 : 2);
        }
        s().hp(q());
        if (xs()) {
            if (j() || !zy()) {
                hp((com.byazt.xci.j) null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(String str, String str2, String str3) {
        if (this.f20213s == null) {
            return;
        }
        this.f20213s.apply(com.byazt.wi.j.hp().hp(24).hp(Boolean.class).hp(0, new dy().hp("appIcon", str).hp(cl.f49061p, str2).hp("hashCode", Integer.valueOf(sz())).hp("packageName", str3)).l());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(com.byazt.xci.j jVar) {
        ns();
        if (l(jVar)) {
            return;
        }
        ec();
    }

    private boolean hp(final String str, final boolean z2) {
        if (!vv()) {
            return true;
        }
        com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.fy.eb.3
            @Override // java.lang.Runnable
            public void run() {
                if (z2) {
                    hq.l(eb.this.getContext(), str, 0, 17, 0, 0);
                } else {
                    hq.hp(eb.this.getContext(), str, 0);
                }
            }
        });
        return false;
    }

    private void hp(final Map<String, Object> map) {
        q.hp(new Runnable() { // from class: com.byazt.fy.eb.5
            @Override // java.lang.Runnable
            public void run() {
                eb.this.hp(17, (Map<String, Object>) map);
            }
        }, this.f20207a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final int i2, final Map<String, Object> map) {
        try {
            if (this.f20213s == null) {
                return;
            }
            if (jl()) {
                this.f20213s.apply(com.byazt.wi.j.hp().hp(13).hp(Void.class).hp(0, map).l());
                this.gu = false;
            } else {
                map.put("itemClickListener", new com.byazt.ve.j() { // from class: com.byazt.fy.eb.6
                    @Override // com.byazt.ve.j
                    public void onItemClick() {
                        com.byazt.hy.jx.l(1, eb.this.sz());
                        map.remove("itemClickListener");
                        eb.this.f20213s.apply(com.byazt.wi.j.hp().hp(i2).hp(Void.class).hp(0, map).l());
                    }
                });
                this.f20213s.apply(com.byazt.wi.j.hp().hp(i2).hp(Void.class).hp(0, map).l());
                this.gu = false;
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.gog.jx
    public void hp(int i2) {
        this.f20212q = i2;
    }
}
