package com.byazt.fy;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.SparseArray;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.NativeModel;
import com.byazt.jz.d;
import com.byazt.jz.k;
import com.byazt.jz.lv;
import com.byazt.jz.sz;
import com.byazt.jz.xs;
import com.byazt.kfd.jx;
import com.byazt.kfd.w;
import com.byazt.la.e;
import com.byazt.pg.r;
import com.byazt.po.jx;
import com.byazt.xci.mp;
import com.byazt.yi.AdBaseConstants;
import com.byazt.ymw.hq;
import com.byazt.ymw.ud;
import com.byazt.ymw.vv;
import com.byazt.yrp.q;
import com.byazt.zn.dy;
import com.byazt.zn.hp;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.player.C;
import com.sigmob.sdk.base.n;
import com.umeng.commonsdk.framework.UMModuleRegister;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Function;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 60, 28})
/* loaded from: classes2.dex */
public abstract class hp extends j implements r.hp {
    public volatile boolean ec;
    public final String gu;
    public WeakReference<Context> hp;

    /* renamed from: j, reason: collision with root package name */
    public String f20222j;
    public mp jx;

    /* renamed from: k, reason: collision with root package name */
    public k f20223k;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.xci.w f20224l;

    /* renamed from: n, reason: collision with root package name */
    public boolean f20225n;
    public String ns;

    /* renamed from: q, reason: collision with root package name */
    public com.byazt.gog.j f20226q;

    /* renamed from: s, reason: collision with root package name */
    public HashSet<Integer> f20227s;
    public boolean sz;

    /* renamed from: u, reason: collision with root package name */
    public volatile Runnable f20228u;
    public Function<SparseArray<Object>, Object> vv;
    public volatile com.byazt.zbc.jx wv;

    /* renamed from: w, reason: collision with root package name */
    public final AtomicInteger f20230w = new AtomicInteger(1);

    /* renamed from: a, reason: collision with root package name */
    public boolean f20219a = false;
    public final AtomicBoolean eb = new AtomicBoolean(false);

    /* renamed from: e, reason: collision with root package name */
    public final ud f20221e = new ud(Looper.getMainLooper(), this);
    public boolean jl = false;
    public volatile boolean zy = false;

    /* renamed from: v, reason: collision with root package name */
    public C0246hp f20229v = new C0246hp();
    public int xs = 0;
    public List<xs> hq = new CopyOnWriteArrayList();
    public AtomicBoolean ud = new AtomicBoolean(false);
    public final com.byazt.ve.l cx = new com.byazt.ve.l() { // from class: com.byazt.fy.hp.1
        @Override // com.byazt.ve.l
        public void onDownloadActive(long j2, long j3, String str) {
            if (hp.this.ud.get()) {
                hp.this.ud.set(false);
                com.byazt.rk.hp.jx(hp.this.cx(), 2);
            }
            hp.this.f20230w.set(3);
            if (com.byazt.ton.l.hp()) {
                hp hpVar = hp.this;
                hpVar.hp("onDownloadActive", j2, j3, str, hpVar.f20224l.jx());
                return;
            }
            hp hpVar2 = hp.this;
            com.byazt.gog.j jVar = hpVar2.f20226q;
            if (jVar != null) {
                jVar.hp(j2, j3, str, hpVar2.f20224l.jx());
            }
        }

        @Override // com.byazt.ve.l
        public void onDownloadFailed(long j2, long j3, String str) {
            com.byazt.rk.hp.j(hp.this.cx(), 1);
            hp.this.f20230w.set(5);
            if (com.byazt.ton.l.hp()) {
                hp hpVar = hp.this;
                hpVar.hp("onDownloadFailed", j2, j3, str, hpVar.f20224l.jx());
                return;
            }
            hp hpVar2 = hp.this;
            com.byazt.gog.j jVar = hpVar2.f20226q;
            if (jVar != null) {
                jVar.jx(j2, j3, str, hpVar2.f20224l.jx());
            }
        }

        @Override // com.byazt.ve.l
        public void onDownloadFinished(long j2, long j3, String str) {
            com.byazt.rk.hp.w(hp.this.cx());
            hp.this.f20230w.set(6);
            if (com.byazt.ton.l.hp()) {
                hp hpVar = hp.this;
                hpVar.hp("onDownloadFinished", j2, j3, str, hpVar.f20224l.jx());
                return;
            }
            hp hpVar2 = hp.this;
            com.byazt.gog.j jVar = hpVar2.f20226q;
            if (jVar != null) {
                jVar.hp(j2, str, hpVar2.f20224l.jx());
            }
        }

        @Override // com.byazt.ve.l
        public void onDownloadPaused(long j2, long j3, String str) {
            com.byazt.rk.hp.jx(hp.this.cx());
            hp.this.ud.set(true);
            hp.this.f20230w.set(4);
            if (com.byazt.ton.l.hp()) {
                hp hpVar = hp.this;
                hpVar.hp("onDownloadPaused", j2, j3, str, hpVar.f20224l.jx());
                return;
            }
            hp hpVar2 = hp.this;
            com.byazt.gog.j jVar = hpVar2.f20226q;
            if (jVar != null) {
                jVar.l(j2, j3, str, hpVar2.f20224l.jx());
            }
        }

        @Override // com.byazt.ve.l
        public void onDownloadStart() {
            com.byazt.rk.hp.jx(hp.this.cx(), 1);
            hp.this.f20230w.set(2);
            if (com.byazt.ton.l.hp()) {
                hp.this.hp("onIdle", 0L, 0L, (String) null, (String) null);
                return;
            }
            com.byazt.gog.j jVar = hp.this.f20226q;
            if (jVar != null) {
                jVar.hp();
            }
        }

        @Override // com.byazt.yy.DownloadStatusChangeListener
        public void onIdle() {
            hp.this.f20230w.set(1);
            if (com.byazt.ton.l.hp()) {
                hp.this.hp("onIdle", 0L, 0L, (String) null, (String) null);
                return;
            }
            com.byazt.gog.j jVar = hp.this.f20226q;
            if (jVar != null) {
                jVar.hp();
            }
        }

        @Override // com.byazt.ve.l
        public void onInstalled(long j2, long j3, String str) {
            com.byazt.rk.hp.w(hp.this.cx(), 1);
            hp.this.f20230w.set(7);
            if (TextUtils.isEmpty(str)) {
                str = "";
            }
            String str2 = str;
            if (com.byazt.ton.l.hp()) {
                hp hpVar = hp.this;
                hpVar.hp("onInstalled", j2, j3, str2, hpVar.f20224l.jx());
                return;
            }
            hp hpVar2 = hp.this;
            com.byazt.gog.j jVar = hpVar2.f20226q;
            if (jVar != null) {
                jVar.hp(str2, hpVar2.f20224l.jx());
            }
        }
    };

    /* renamed from: b, reason: collision with root package name */
    public hp.l f20220b = new hp.l() { // from class: com.byazt.fy.hp.5
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
            com.byazt.rk.hp.l(hp.this.cx());
            com.byazt.jz.s.u().jx().l(hp.this.f20220b);
        }

        @Override // com.byazt.zn.hp.l
        public void onAppStart() {
        }
    };
    public final com.byazt.yy.l di = new com.byazt.yy.l() { // from class: com.byazt.fy.hp.6
        @Override // com.byazt.yy.l
        public void hp() {
            com.byazt.rk.hp.l(hp.this.cx(), 1);
            com.byazt.jz.s.u().jx().hp(hp.this.f20220b);
        }

        @Override // com.byazt.yy.l
        public void l() {
            com.byazt.rk.hp.l(hp.this.cx(), 2);
        }
    };

    @com.byazt.kj.hp(hp = {0, 1, 60, 170})
    /* renamed from: com.byazt.fy.hp$hp, reason: collision with other inner class name */
    public class C0246hp extends com.byazt.uid.eb {
        public String hp;

        /* renamed from: j, reason: collision with root package name */
        public String f20238j;
        public long jx;

        /* renamed from: l, reason: collision with root package name */
        public long f20239l;

        /* renamed from: w, reason: collision with root package name */
        public String f20240w;

        public C0246hp() {
            super("DownloadCallbackRunnable");
        }

        public void hp(String str) {
            this.hp = str;
        }

        public void jx(String str) {
            this.f20240w = str;
        }

        public void l(long j2) {
            this.jx = j2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                hp.this.q().hp(hp.this.gu, this.hp, this.f20239l, this.jx, this.f20238j, this.f20240w);
            } catch (Throwable unused) {
            }
        }

        public void hp(long j2) {
            this.f20239l = j2;
        }

        public void l(String str) {
            this.f20238j = str;
        }

        public C0246hp(String str, long j2, long j3, String str2, String str3) {
            super("DownloadCallbackRunnable");
            this.hp = str;
            this.f20239l = j2;
            this.jx = j3;
            this.f20238j = str2;
            this.f20240w = str3;
        }
    }

    public hp(Context context, mp mpVar, String str, String str2) {
        this.ns = str2;
        this.hp = new WeakReference<>(context);
        this.jx = mpVar;
        this.f20224l = mpVar.v();
        str = TextUtils.isEmpty(str) ? ky.l(mpVar) : str;
        this.f20222j = TextUtils.isEmpty(str) ? com.byazt.ih.l.AD_TAG_FEED : str;
        this.gu = mpVar.hashCode() + mpVar.ns();
        this.vv = com.byazt.jz.s.u().xh();
        if (this.f20224l == null && TextUtils.isEmpty(this.ns)) {
            return;
        }
        if (this.f20224l == null) {
            com.byazt.xci.w wVar = new com.byazt.xci.w();
            this.f20224l = wVar;
            wVar.l(this.ns);
        }
        if (sz.getContext() == null) {
            sz.hp(context);
        }
        this.f20226q = new com.byazt.gog.j();
        hp();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String cx() {
        mp mpVar = this.jx;
        if (mpVar == null) {
            return null;
        }
        return mpVar.di();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void eb(final JSONObject jSONObject, final boolean z2) {
        HashMap map = new HashMap();
        map.put("material_meta", this.jx);
        int iHp = com.byazt.yx.l.hp().hp(this.jx, new com.byazt.nra.jx() { // from class: com.byazt.fy.hp.3
            @Override // com.byazt.nra.jx
            public void hp(int i2) {
                hp.this.s(jSONObject, z2);
            }
        }, this.f20222j, map);
        if (iHp == 1 || iHp == 2) {
            return;
        }
        s(jSONObject, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        if (com.byazt.ton.l.hp()) {
            com.byazt.uid.w.jx().execute(new Runnable() { // from class: com.byazt.fy.hp.8
                @Override // java.lang.Runnable
                public void run() {
                    k kVarHp = k.hp.hp(com.byazt.pjz.hp.hp(sz.getContext()).hp(3));
                    try {
                        synchronized (hp.this.hq) {
                            if (kVarHp != null) {
                                try {
                                    if (hp.this.hq.size() > 0) {
                                        Iterator it = hp.this.hq.iterator();
                                        while (it.hasNext()) {
                                            kVarHp.l(hp.this.gu, (xs) it.next());
                                        }
                                        hp.this.hq.clear();
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                    } catch (RemoteException unused) {
                    }
                }
            });
        }
    }

    private void ns() {
        if (this.jl) {
            return;
        }
        this.jl = true;
        hp(4, new jx.hp() { // from class: com.byazt.fy.hp.2
            @Override // com.byazt.po.jx.hp
            public boolean hp(int i2, String str, String str2, String str3, Object obj) {
                if (i2 == 4 && !TextUtils.isEmpty(str3)) {
                    str3.getClass();
                    if (!str3.equals("market_click_open") && !str3.equals("applink_click")) {
                        return true;
                    }
                    com.byazt.jz.l.hp().put("save_jump_success_time", System.currentTimeMillis());
                    com.byazt.jz.l.hp().put("save_jump_success_ad_tag", str2);
                    com.byazt.jz.l.hp().put("save_dpl_success_materialmeta", str);
                }
                return true;
            }
        });
    }

    public void a(boolean z2) {
        this.zy = z2;
    }

    public void e() {
        if (this.hp == null) {
            return;
        }
        Context context = getContext();
        Activity activity = context instanceof Activity ? (Activity) context : null;
        if (activity == null || !com.byazt.jz.s.u().hp(activity)) {
            n();
        } else {
            hp(activity);
        }
    }

    public abstract void ec();

    public void finalize() throws Throwable {
        super.finalize();
        com.byazt.rk.hp.w(cx(), 2);
    }

    public Context getContext() {
        try {
            WeakReference<Context> weakReference = this.hp;
            if (weakReference == null) {
                return sz.getContext();
            }
            Context context = weakReference.get();
            return context == null ? sz.getContext() : context;
        } catch (Throwable unused) {
            return sz.getContext();
        }
    }

    public boolean gu() throws JSONException {
        if (this.jx.k() != null) {
            String strL = this.jx.k().l();
            if (TextUtils.isEmpty(strL)) {
                jl();
            } else {
                com.byazt.xci.xs.hp((String) null);
                Uri uri = Uri.parse(strL);
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(uri);
                ky.jx(intent);
                HashMap map = new HashMap();
                map.put(n.f36449l, "AbsDMLibManager");
                map.put(NativeModel.JSON_KEY_SCHEME, ky.hp(strL));
                com.byazt.jdb.j.hp(this.jx, this.f20222j, map, this.zy);
                if (ky.hp(intent)) {
                    try {
                        ky.hp(this.zy, this.jx, this.f20222j, eb());
                        com.byazt.ymw.l.startActivity(getContext(), intent, TextUtils.equals(d.f21859s, UMModuleRegister.INNER));
                        com.byazt.jdb.j.hp(this.jx, this.f20222j, (Throwable) null, this.zy, true);
                        com.byazt.jdb.s.hp().hp(this.jx, this.f20222j, this.zy, eb(), null);
                        return true;
                    } catch (Throwable th) {
                        if (!TextUtils.isEmpty(this.jx.s())) {
                            com.byazt.jdb.j.s(this.jx, this.f20222j, "open_fallback_url", null);
                            lv.hp(getContext(), this.jx.s(), this.jx, this.f20222j, eb());
                        }
                        com.byazt.jdb.j.hp(this.jx, this.f20222j, th, this.zy, false);
                        return false;
                    }
                }
                com.byazt.jdb.j.hp(this.jx, this.f20222j, (Throwable) null, this.zy, false);
            }
        }
        return false;
    }

    public void handleMsg(Message message) {
        if (message.what != 9) {
            return;
        }
        if (com.byazt.jz.s.u() == null || com.byazt.jz.s.u().hp()) {
            w(true);
            return;
        }
        w(false);
        Object obj = message.obj;
        l(ky.cx(this.jx), obj instanceof Boolean ? ((Boolean) obj).booleanValue() : false);
    }

    @Override // com.byazt.gog.jx
    public abstract boolean j();

    public void jl() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        mp mpVar = this.jx;
        if (mpVar != null) {
            String strNs = mpVar.ns();
            String strJ = this.jx.j();
            try {
                jSONObject.putOpt("reqId", strNs);
                jSONObject.putOpt("cid", strJ);
            } catch (JSONException unused) {
            }
        }
        com.byazt.lf.k.hp().hp("deeplink_url_null", jSONObject, (Throwable) null);
    }

    public int k() {
        return this.f20230w.get();
    }

    public k q() {
        if (this.f20223k == null) {
            this.f20223k = k.hp.hp(com.byazt.pjz.hp.hp(sz.getContext()).hp(3));
        }
        return this.f20223k;
    }

    public com.byazt.zbc.jx s() {
        if (this.wv == null) {
            synchronized (this) {
                try {
                    if (this.wv == null) {
                        this.wv = new com.byazt.zbc.jx(getContext(), this.jx);
                    }
                } finally {
                }
            }
        }
        return this.wv;
    }

    public com.byazt.zbc.hp u() {
        return j() ? new com.byazt.zbc.w() : this.zy ? new com.byazt.zbc.j() : new com.byazt.zbc.l();
    }

    public boolean v() {
        if (this.vv == null || com.byazt.xci.sz.u(this.jx) == 1) {
            return true;
        }
        if (sz.l().gy()) {
            String str = "已下载%d%%，可在通知栏暂停或取消";
            try {
                str = String.format("已下载%d%%，可在通知栏暂停或取消", Integer.valueOf(this.cx.getCurrentPercent()));
            } catch (Exception unused) {
            }
            return hp(str, true);
        }
        mp mpVar = this.jx;
        if (com.byazt.xci.sz.e(mpVar)) {
            return true;
        }
        s.l(mpVar, "adm");
        return hp("应用正在下载...", false);
    }

    public abstract void vv();

    public void w(boolean z2) {
        if (z2) {
            com.byazt.jdb.j.l(this.jx, this.f20222j, "quickapp_success");
        } else {
            com.byazt.jdb.j.l(this.jx, this.f20222j, "quickapp_fail");
        }
    }

    public boolean xs() {
        mp mpVar = this.jx;
        return (mpVar == null || this.f20224l == null || com.byazt.xci.sz.a(mpVar) != 3 || this.f20224l.hp() == null) ? false : true;
    }

    public abstract void zy();

    private void a(JSONObject jSONObject, boolean z2) {
        hp(jSONObject, z2);
    }

    public void j(JSONObject jSONObject, boolean z2) {
        a(jSONObject, z2);
    }

    public boolean jx(JSONObject jSONObject, boolean z2) {
        if (this.f20230w.get() != 1) {
            if (ky.o()) {
                ky.hp(this.zy, this.jx, this.f20222j, eb());
            }
            hp(jSONObject, z2);
            return false;
        }
        if (vv.jx(getContext()) == 0) {
            try {
                hq.hp(getContext(), "\"无网络，请稍后再试\"", 0);
            } catch (Exception unused) {
            }
        } else {
            if (ky.o()) {
                ky.hp(this.zy, this.jx, this.f20222j, eb());
            }
            j(jSONObject, z2);
        }
        return true;
    }

    @Override // com.byazt.gog.jx
    public Map<String, Object> a() {
        return new HashMap();
    }

    @Override // com.byazt.gog.jx
    public void hp() {
        ec();
        vv();
    }

    public void l(final com.byazt.gog.hp hpVar) {
        if (!com.byazt.ton.l.hp() || hpVar == null) {
            return;
        }
        com.byazt.uid.w.jx().execute(new Runnable() { // from class: com.byazt.fy.hp.9
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.pjz.hp hpVarHp = com.byazt.pjz.hp.hp(sz.getContext());
                com.byazt.gd.a aVar = new com.byazt.gd.a(hpVar);
                k kVarHp = k.hp.hp(hpVarHp.hp(3));
                if (kVarHp != null) {
                    try {
                        kVarHp.hp(hp.this.gu, aVar);
                        synchronized (hp.this.hq) {
                            hp.this.hq.add(aVar);
                        }
                    } catch (RemoteException unused) {
                    }
                }
            }
        });
    }

    public void w(JSONObject jSONObject, boolean z2) {
        if (gu()) {
            return;
        }
        if (!this.zy && this.jx.v() == null && this.jx.s() != null && !this.jx.B_()) {
            lv.hp(getContext(), this.jx.s(), this.jx, this.f20222j, eb());
        } else {
            if (eb(z2) || this.jx.B_()) {
                return;
            }
            l(jSONObject, z2);
        }
    }

    @Override // com.byazt.gog.jx
    public void hp(com.byazt.gog.hp hpVar) {
        hp(hpVar, true);
    }

    public void l(JSONObject jSONObject, boolean z2) {
        com.byazt.xci.w wVar = this.f20224l;
        if (wVar == null || wVar.l() == null) {
            return;
        }
        jx(jSONObject, z2);
    }

    public boolean eb(boolean z2) {
        if (this.f20224l == null || !xs()) {
            return false;
        }
        boolean zHp = hp(getContext(), this.f20224l.hp(), this.jx, this.f20222j, this.zy);
        if (zHp) {
            Message messageObtain = Message.obtain();
            messageObtain.what = 9;
            messageObtain.obj = Boolean.valueOf(z2);
            this.f20221e.sendMessageDelayed(messageObtain, 3000L);
            com.byazt.jz.l.hp().put("save_jump_success_time", System.currentTimeMillis());
            com.byazt.jz.l.hp().put("save_jump_success_ad_tag", this.f20222j);
            com.byazt.jz.l.hp().put("save_dpl_success_materialmeta", this.jx.ij().toString());
            return zHp;
        }
        w(false);
        return zHp;
    }

    @Override // com.byazt.gog.jx
    public void hp(com.byazt.gog.hp hpVar, boolean z2) {
        if (hpVar == null) {
            return;
        }
        com.byazt.gog.j jVar = this.f20226q;
        if (jVar != null) {
            jVar.hp(hpVar);
        }
        if (z2) {
            l(hpVar);
        }
        vv();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s(final JSONObject jSONObject, final boolean z2) {
        int iJx;
        com.byazt.yx.l lVarHp = com.byazt.yx.l.hp();
        HashMap map = new HashMap(1);
        map.put("event_tag", this.f20222j);
        map.put("material_meta", this.jx);
        if (this.jx.fa() != -1001) {
            iJx = this.jx.fa();
        } else {
            iJx = com.byazt.yx.l.hp().jx();
            this.jx.gd(iJx);
        }
        map.put("saas_status_while_click", Integer.valueOf(iJx));
        if ((lVarHp.hp(getContext(), (q) this.jx, (Map<String, Object>) map) & 255) == 0) {
            com.byazt.jz.l.hp().put("save_jump_success_time", System.currentTimeMillis());
            com.byazt.jz.l.hp().put("save_jump_success_ad_tag", this.f20222j);
            com.byazt.jz.l.hp().put("save_dpl_success_materialmeta", this.jx.ij().toString());
            return;
        }
        s().hp(u(), this.jx);
        boolean zHp = com.byazt.kfd.w.hp();
        if (zHp) {
            com.byazt.kfd.w.hp(false);
        }
        if (!zHp) {
            if (new com.byazt.kfd.w(this.jx, getContext(), false).hp(this.f20222j).hp(ky.j(this.f20222j)).l(this.zy).hp(new w.hp() { // from class: com.byazt.fy.hp.4
                @Override // com.byazt.kfd.w.hp
                public void hp() {
                    com.byazt.jz.l.hp().put("save_jump_success_time", System.currentTimeMillis());
                    com.byazt.jz.l.hp().put("save_jump_success_ad_tag", hp.this.f20222j);
                    com.byazt.jz.l.hp().put("save_dpl_success_materialmeta", hp.this.jx.ij().toString());
                }

                @Override // com.byazt.kfd.w.hp
                public void hp(com.byazt.ex.hp hpVar) {
                    hp.this.w(jSONObject, z2);
                }
            })) {
                return;
            }
            w(jSONObject, z2);
            return;
        }
        w(jSONObject, z2);
    }

    @Override // com.byazt.gog.jx
    public void l() {
        if (sz.getContext() == null) {
            sz.hp(getContext());
        }
        vv();
    }

    @Override // com.byazt.gog.jx
    public void hp(int i2, jx.hp hpVar) {
        if (this.f20227s == null) {
            this.f20227s = new HashSet<>();
        }
        this.f20227s.add(Integer.valueOf(i2));
        if (this.vv != null) {
            this.vv.apply(com.byazt.wi.j.hp().hp(9).hp(Void.class).hp(0, new dy().hp("hid", Integer.valueOf(i2)).hp("id", Integer.valueOf(i2)).hp("onEventLogHandler", hpVar).hp("hashCode", Integer.valueOf(sz()))).l());
        }
    }

    @Override // com.byazt.gog.jx
    public void jx() {
        com.byazt.gog.j jVar = this.f20226q;
        if (jVar != null) {
            jVar.l();
        }
        zy();
        HashSet<Integer> hashSet = this.f20227s;
        if (hashSet != null && hashSet.size() > 0) {
            HashSet hashSet2 = new HashSet();
            hashSet2.addAll(this.f20227s);
            this.f20227s.clear();
            final Iterator it = hashSet2.iterator();
            com.byazt.dnb.s.hp(new com.byazt.uid.eb("remove_log_hanlder") { // from class: com.byazt.fy.hp.10
                @Override // java.lang.Runnable
                public void run() {
                    while (it.hasNext()) {
                        Integer num = (Integer) it.next();
                        num.intValue();
                        Function<SparseArray<Object>, Object> function = hp.this.vv;
                        if (function != null) {
                            function.apply(com.byazt.wi.j.hp().hp(3).hp(Void.class).hp(0, new dy().hp("hid", num).hp("hashCode", Integer.valueOf(hp.this.sz()))).l());
                        }
                        it.remove();
                    }
                }
            });
        }
        WeakReference<Context> weakReference = this.hp;
        if (weakReference != null) {
            weakReference.clear();
            this.hp = null;
        }
        this.wv = null;
    }

    private void hp(Activity activity) {
        com.byazt.zn.hp hpVarJx = com.byazt.jz.s.u().jx();
        if (hpVarJx != null && this.f20228u == null) {
            this.f20228u = new Runnable() { // from class: com.byazt.fy.hp.7
                @Override // java.lang.Runnable
                public void run() {
                    hp.this.n();
                    hp.this.f20228u = null;
                }
            };
            hpVarJx.hp(activity, this.f20228u);
        }
    }

    @Override // com.byazt.gog.jx
    public void jx(boolean z2) {
        this.sz = z2;
    }

    public void hp(Map<String, Object> map) {
        Function<SparseArray<Object>, Object> function = this.vv;
        if (function != null) {
            function.apply(com.byazt.wi.j.hp().hp(16).hp(Void.class).hp(0, map).l());
        }
    }

    @Override // com.byazt.fy.j, com.byazt.gog.jx
    public void hp(Activity activity, boolean z2) {
        if (activity == null) {
            return;
        }
        this.hp = new WeakReference<>(activity);
        if (z2) {
            return;
        }
        vv();
    }

    @Override // com.byazt.gog.jx
    public void hp(int i2) {
        this.xs = i2;
    }

    public void hp(String str, long j2, long j3, String str2, String str3) {
        C0246hp c0246hp = this.f20229v;
        if (c0246hp == null) {
            this.f20229v = new C0246hp(str, j2, j3, str2, str3);
        } else {
            c0246hp.hp(str);
            this.f20229v.hp(j2);
            this.f20229v.l(j3);
            this.f20229v.l(str2);
            this.f20229v.jx(str3);
        }
        com.byazt.uid.w.jx().execute(this.f20229v);
    }

    private boolean hp(final String str, final boolean z2) {
        Object objApply = this.vv.apply(com.byazt.wi.j.hp().hp(6).hp(Boolean.class).hp(0, new dy().hp("downloadUrl", this.f20224l.l()).hp("hashCode", Integer.valueOf(sz()))).l());
        if (objApply == null || !((Boolean) objApply).booleanValue()) {
            return true;
        }
        com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.fy.hp.11
            @Override // java.lang.Runnable
            public void run() {
                if (z2) {
                    hq.l(hp.this.getContext(), str, 0, 17, 0, 0);
                } else {
                    hq.hp(hp.this.getContext(), str, 0);
                }
            }
        });
        return false;
    }

    @Override // com.byazt.gog.jx
    public void hp(final mp mpVar, final boolean z2) {
        if (getContext() == null) {
            return;
        }
        this.jx = mpVar;
        ns();
        if (com.byazt.kfd.jx.hp((q) this.jx, false) && !e.w(this.jx) && !e.j(this.jx)) {
            mp mpVar2 = this.jx;
            new com.byazt.kfd.jx(mpVar2, mpVar2.ec(), getContext(), new HashMap()).hp(this.f20222j).hp(new jx.hp() { // from class: com.byazt.fy.hp.12
                @Override // com.byazt.kfd.jx.hp
                public void hp() {
                    hp.this.eb(ky.cx(mpVar), z2);
                }
            });
        } else {
            eb(ky.cx(mpVar), z2);
        }
    }

    public boolean hp(Context context, String str, mp mpVar, String str2, boolean z2) {
        if (context == null) {
            return false;
        }
        try {
            ky.hp(z2, mpVar, str2, eb());
            Uri uri = Uri.parse(str);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(uri);
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            intent.putExtra(AdBaseConstants.MARKET_OPEN_INTENT_OPEN_URL, str);
            context.startActivity(intent);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}
