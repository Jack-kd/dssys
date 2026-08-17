package com.byazt.ktq;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import com.byazt.aw.w;
import com.byazt.bki.gu;
import com.byazt.gp.j;
import com.byazt.lsx.a;
import com.byazt.rt.jx;
import com.byazt.tgw.e;
import com.byazt.tgw.q;
import com.byazt.zg.d;
import com.byazt.zg.jl;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 913, 34})
/* loaded from: classes.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    public jx f22198a;
    public com.byazt.iqm.l gu;
    public SoftReference<Context> hp;
    public gu jl;

    /* renamed from: k, reason: collision with root package name */
    public hp f22204k;
    public Handler ns;

    /* renamed from: u, reason: collision with root package name */
    public com.byazt.wij.hp f22213u;
    public long ud;

    /* renamed from: v, reason: collision with root package name */
    public String f22214v;
    public j.jx wv;
    public com.byazt.tgw.l zy;

    /* renamed from: l, reason: collision with root package name */
    public CopyOnWriteArrayList<jx> f22205l = new CopyOnWriteArrayList<>();
    public CopyOnWriteArrayList<jx> jx = new CopyOnWriteArrayList<>();

    /* renamed from: j, reason: collision with root package name */
    public CopyOnWriteArrayList<jx> f22203j = new CopyOnWriteArrayList<>();

    /* renamed from: w, reason: collision with root package name */
    public CopyOnWriteArrayList<jx> f22215w = new CopyOnWriteArrayList<>();
    public final AtomicBoolean xs = new AtomicBoolean(false);
    public final AtomicBoolean vv = new AtomicBoolean(false);
    public final AtomicBoolean ec = new AtomicBoolean(false);
    public final AtomicBoolean sz = new AtomicBoolean(false);

    /* renamed from: n, reason: collision with root package name */
    public volatile boolean f22208n = false;
    public Map<String, com.byazt.ewl.hp> eb = new ConcurrentHashMap();

    /* renamed from: s, reason: collision with root package name */
    public long f22212s = 0;
    public long cx = 0;

    /* renamed from: b, reason: collision with root package name */
    public AtomicBoolean f22199b = new AtomicBoolean(false);
    public boolean di = false;

    /* renamed from: o, reason: collision with root package name */
    public boolean f22209o = false;

    /* renamed from: d, reason: collision with root package name */
    public boolean f22200d = false;
    public final AtomicInteger hq = new AtomicInteger(0);

    /* renamed from: q, reason: collision with root package name */
    public Map<String, Object> f22210q = new ConcurrentHashMap();

    /* renamed from: e, reason: collision with root package name */
    public q f22201e = new q();
    public int nu = 0;
    public String dy = null;
    public final AtomicBoolean lv = new AtomicBoolean(false);

    /* renamed from: r, reason: collision with root package name */
    public ConcurrentHashMap<String, com.byazt.dq.l> f22211r = new ConcurrentHashMap<>();
    public final JSONObject pu = new JSONObject();
    public final AtomicInteger ky = new AtomicInteger(0);
    public final AtomicInteger xh = new AtomicInteger(0);

    /* renamed from: ms, reason: collision with root package name */
    public final AtomicInteger f22207ms = new AtomicInteger(0);
    public final AtomicInteger as = new AtomicInteger(0);
    public final AtomicInteger kg = new AtomicInteger(0);
    public final AtomicInteger mp = new AtomicInteger(0);

    /* renamed from: m, reason: collision with root package name */
    public final AtomicInteger f22206m = new AtomicInteger(0);

    /* renamed from: f, reason: collision with root package name */
    public final AtomicInteger f22202f = new AtomicInteger(0);
    public final AtomicInteger yr = new AtomicInteger(0);
    public final AtomicInteger rz = new AtomicInteger(0);
    public final AtomicInteger nd = new AtomicInteger(0);
    public final AtomicInteger hd = new AtomicInteger(0);
    public final AtomicInteger zx = new AtomicInteger(0);

    private l() {
    }

    private boolean f() {
        if (gu() != null) {
            Iterator<jx> it = gu().iterator();
            while (it.hasNext()) {
                if (it.next().isCacheSuccess()) {
                    return true;
                }
            }
        }
        if (k() != null) {
            Iterator<jx> it2 = k().iterator();
            while (it2.hasNext()) {
                if (it2.next().isCacheSuccess()) {
                    return true;
                }
            }
        }
        if (jl() == null) {
            return false;
        }
        Iterator<jx> it3 = jl().iterator();
        while (it3.hasNext()) {
            if (it3.next().isCacheSuccess()) {
                return true;
            }
        }
        return false;
    }

    private boolean kg() {
        return !this.zy.dy() || this.f22204k.w(0) || this.f22204k.eb();
    }

    private void m() {
        if (o() || w() || a()) {
            return;
        }
        if (j() || this.sz.get()) {
            if (f()) {
                q();
            } else {
                final long jHp = com.byazt.di.l.l().hp(this.gu.ec(), this.gu.sz());
                w.hp(new Runnable() { // from class: com.byazt.ktq.l.8
                    @Override // java.lang.Runnable
                    public void run() {
                        com.byazt.aw.l.jx(MediationConstant.TAG, com.byazt.aw.j.hp(l.this.zy) + "m-sdk----设置 cacheTimeout 已到时间【" + jHp + "】，给外部invokeAdVideoCache ...");
                        l.this.q();
                    }
                }, jHp);
            }
        }
    }

    private int mp() {
        List<e> list;
        com.byazt.tgw.l lVar = this.zy;
        int size = 0;
        if (lVar == null) {
            return 0;
        }
        Map<Integer, List<e>> mapWv = lVar.wv();
        if (mapWv != null && mapWv.size() != 0) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(mapWv.keySet());
            int size2 = arrayList.size();
            int i2 = 0;
            while (i2 < size2) {
                Object obj = arrayList.get(i2);
                i2++;
                Integer num = (Integer) obj;
                if (this.f22204k.jx(num.intValue()) && (list = mapWv.get(num)) != null) {
                    size += list.size();
                }
            }
        }
        return size;
    }

    public void as() {
        w.hp(new Runnable() { // from class: com.byazt.ktq.l.7
            @Override // java.lang.Runnable
            public void run() {
                l.this.f22208n = true;
                CopyOnWriteArrayList<jx> copyOnWriteArrayList = l.this.f22205l;
                if (copyOnWriteArrayList != null) {
                    copyOnWriteArrayList.clear();
                }
                CopyOnWriteArrayList<jx> copyOnWriteArrayList2 = l.this.jx;
                if (copyOnWriteArrayList2 != null) {
                    copyOnWriteArrayList2.clear();
                }
                CopyOnWriteArrayList<jx> copyOnWriteArrayList3 = l.this.f22203j;
                if (copyOnWriteArrayList3 != null) {
                    copyOnWriteArrayList3.clear();
                }
                CopyOnWriteArrayList<jx> copyOnWriteArrayList4 = l.this.f22215w;
                if (copyOnWriteArrayList4 != null) {
                    copyOnWriteArrayList4.clear();
                }
                if (l.this.ns != null) {
                    l.this.ns.removeCallbacksAndMessages(null);
                }
                l.this.f22204k.jl();
                l.this.jl = null;
                if (l.this.vv.get() || l.this.xs.get()) {
                    return;
                }
                l.this.hp(new com.byazt.le.hp(41044, com.byazt.dq.hp.hp(41044)));
            }
        });
    }

    public Map<String, com.byazt.ewl.hp> b() {
        return this.eb;
    }

    public com.byazt.iqm.l cx() {
        return this.gu;
    }

    public ConcurrentHashMap<String, com.byazt.dq.l> d() {
        return this.f22211r;
    }

    public boolean di() {
        return this.f22200d;
    }

    public Map<String, Object> dy() {
        return this.f22210q;
    }

    public boolean e() {
        return this.f22208n;
    }

    public boolean ec() {
        int size = this.f22215w.size() + this.f22205l.size();
        com.byazt.iqm.l lVar = this.gu;
        return size >= (lVar != null ? lVar.b() : 1);
    }

    public Context getContext() {
        return this.hp.get();
    }

    public CopyOnWriteArrayList<jx> gu() {
        return this.f22215w;
    }

    public int hq() {
        return this.hq.get();
    }

    public CopyOnWriteArrayList<jx> jl() {
        return this.f22205l;
    }

    public CopyOnWriteArrayList<jx> k() {
        return this.f22203j;
    }

    public boolean ky() {
        return this.f22199b.get();
    }

    public gu lv() {
        return this.jl;
    }

    public String ms() {
        return this.f22214v;
    }

    public boolean n() {
        return !this.zy.lv() || this.f22204k.w(-100) || this.f22204k.a();
    }

    public boolean ns() {
        return n() && kg();
    }

    public long nu() {
        return this.ud;
    }

    public boolean o() {
        return this.di;
    }

    public long pu() {
        return this.cx;
    }

    public void q() {
        if (o() || w() || a()) {
            return;
        }
        if (j() || this.sz.get()) {
            com.byazt.iqm.l lVar = this.gu;
            if (lVar != null && (lVar.ec() == 7 || this.gu.ec() == 8 || this.gu.ec() == 10)) {
                com.byazt.aw.l.jx(MediationConstant.TAG, com.byazt.aw.j.hp(this.zy) + "广告缓存成功！给外部回调：invokeAdVideoCacheOnMainUI........");
                a.hp(this.gu, v(), SystemClock.elapsedRealtime() - pu());
            }
            this.ec.set(true);
            w.jx(new Runnable() { // from class: com.byazt.ktq.l.5
                @Override // java.lang.Runnable
                public void run() {
                    if (l.this.f22213u != null) {
                        l.this.f22213u.s();
                    }
                }
            });
        }
    }

    public long r() {
        return this.f22212s;
    }

    public boolean sz() {
        int size = this.f22215w.size() + this.f22205l.size() + this.f22203j.size();
        com.byazt.iqm.l lVar = this.gu;
        return size >= (lVar != null ? lVar.b() : 1);
    }

    public com.byazt.tgw.l u() {
        return this.zy;
    }

    public void ud() {
        this.hq.incrementAndGet();
    }

    public jx v() {
        return this.f22198a;
    }

    public boolean vv() {
        int size = this.f22215w.size();
        com.byazt.iqm.l lVar = this.gu;
        return size >= (lVar != null ? lVar.b() : 1);
    }

    public List<com.byazt.dq.l> wv() {
        com.byazt.dq.l value;
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, com.byazt.dq.l> entry : d().entrySet()) {
            if (entry != null && (value = entry.getValue()) != null && !TextUtils.equals("广告加载成功", value.a()) && !TextUtils.equals("广告请求中", value.a())) {
                arrayList.add(value);
            }
        }
        return arrayList;
    }

    public q xh() {
        return this.f22201e;
    }

    public hp xs() {
        return this.f22204k;
    }

    public CopyOnWriteArrayList<jx> zy() {
        return this.jx;
    }

    public boolean a() {
        return this.ec.get();
    }

    public boolean eb() {
        com.byazt.tgw.l lVar = this.zy;
        return lVar != null && lVar.hp() == 1;
    }

    public boolean j() {
        return this.xs.get();
    }

    public String jx(jx jxVar) {
        if (jxVar == null) {
            return "fa_" + this.mp.incrementAndGet();
        }
        if (jxVar.isNormalAd()) {
            return "fa_" + this.mp.incrementAndGet();
        }
        if (jxVar.isPAd()) {
            return "p_fa_" + this.f22207ms.incrementAndGet();
        }
        if (jxVar.isServerBiddingAd()) {
            return "sb_fa_" + this.hd.incrementAndGet();
        }
        if (jxVar.isClientBiddingAd()) {
            return "cb_fa_" + this.yr.incrementAndGet();
        }
        return "fa_" + this.mp.incrementAndGet();
    }

    public String l(jx jxVar) {
        if (jxVar == null) {
            return "f_" + this.kg.incrementAndGet();
        }
        if (jxVar.isNormalAd()) {
            return "f_" + this.kg.incrementAndGet();
        }
        if (jxVar.isPAd()) {
            return "p_f_" + this.xh.incrementAndGet();
        }
        if (jxVar.isServerBiddingAd()) {
            return "sb_f_" + this.nd.incrementAndGet();
        }
        if (jxVar.isClientBiddingAd()) {
            return "cb_f_" + this.f22202f.incrementAndGet();
        }
        return "f_" + this.kg.incrementAndGet();
    }

    public void s() throws NumberFormatException {
        Map<String, Object> map;
        com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(this.zy) + " v2 load done..........s:" + j() + "  f:" + w() + "     p.size" + gu().size() + "   bidding.size:" + k().size() + "   normal.size:" + jl().size() + "   underNormal.size:" + zy().size());
        if (j() || w()) {
            return;
        }
        this.xs.set(true);
        Handler handler = this.ns;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        List<jx> listHp = hp(false);
        jx(listHp);
        if (!this.gu.vq() && !this.f22209o) {
            com.byazt.ney.j.hp(this.zy, !d.l(listHp) ? listHp.get(0).getCpm() : 0.0d, this.gu.sz(), this.gu.ec());
        }
        if (o()) {
            a(true);
            return;
        }
        if (this.sz.get()) {
            return;
        }
        int iB = listHp.size() > this.gu.b() ? this.gu.b() : listHp.size();
        com.byazt.tgw.l lVar = this.zy;
        if (lVar != null) {
            Map<String, Object> mapS = lVar.s();
            mapS.put("has_serverBidding", Boolean.valueOf(this.zy.dy()));
            map = mapS;
        } else {
            map = null;
        }
        if (!di()) {
            com.byazt.iqm.l lVar2 = this.gu;
            jx jxVar = this.f22198a;
            long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f22212s;
            int iMp = mp();
            int iL = l(this.f22204k.gu());
            com.byazt.tgw.l lVar3 = this.zy;
            a.hp(map, lVar2, jxVar, jElapsedRealtime, iMp, iL, 0, lVar3 != null ? lVar3.nd() : null, iB, this.nu, this.zy, this.pu);
        }
        com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(this.zy) + "广告加载成功！给外部回调：invokeAdLoadSuccessOnMainUI........P.size:" + gu().size() + "   bidding.size:" + k().size() + "   normal.size:" + jl().size());
        w.jx(new Runnable() { // from class: com.byazt.ktq.l.3
            @Override // java.lang.Runnable
            public void run() {
                if (l.this.f22213u != null) {
                    l.this.f22213u.eb();
                }
            }
        });
        m();
    }

    public boolean w() {
        return this.vv.get();
    }

    private void a(final boolean z2) {
        w.hp(new Runnable() { // from class: com.byazt.ktq.l.9
            @Override // java.lang.Runnable
            public void run() {
                if (l.this.wv != null) {
                    l.this.wv.hp(l.this.gu.sz(), z2, 0, null);
                }
            }
        });
    }

    public void j(e eVar) throws NumberFormatException {
        Map<String, Object> mapS;
        if (this.sz.get()) {
            return;
        }
        List<jx> listHp = hp(true);
        if (listHp.size() < this.gu.b()) {
            return;
        }
        this.sz.set(true);
        if (eVar != null) {
            this.dy = eVar.vv();
        }
        int iB = listHp.size() > this.gu.b() ? this.gu.b() : listHp.size();
        com.byazt.tgw.l lVar = this.zy;
        if (lVar != null) {
            mapS = lVar.s();
            mapS.put("has_serverBidding", Boolean.valueOf(this.zy.dy()));
        } else {
            mapS = null;
        }
        com.byazt.iqm.l lVar2 = this.gu;
        jx jxVar = this.f22198a;
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f22212s;
        int iMp = mp();
        int iL = l(this.f22204k.gu());
        com.byazt.tgw.l lVar3 = this.zy;
        a.hp(mapS, lVar2, jxVar, jElapsedRealtime, iMp, iL, 0, lVar3 != null ? lVar3.nd() : null, iB, this.nu, this.zy, this.pu);
        com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(this.zy) + "广告加载成功！给外部回调：invokeAdQuickLoadSuccessOnMainUI........P.size:" + gu().size() + "   bidding.size:" + k().size() + "   normal.size:" + jl().size());
        w.jx(new Runnable() { // from class: com.byazt.ktq.l.2
            @Override // java.lang.Runnable
            public void run() {
                if (l.this.f22213u != null) {
                    l.this.f22213u.eb();
                }
            }
        });
        m();
    }

    public void w(boolean z2) {
        this.f22199b.set(z2);
    }

    public static l hp(SoftReference<Context> softReference, com.byazt.iqm.l lVar, com.byazt.wij.hp hpVar) {
        l lVar2 = new l();
        com.byazt.tgw.l lVarHp = com.byazt.di.l.l().hp(lVar.sz(), lVar.ec(), 100);
        lVar.hp(lVarHp);
        lVar2.gu = lVar;
        lVar2.zy = lVarHp;
        if (lVarHp != null) {
            lVar2.f22210q.put("render_control", Integer.valueOf(lVarHp.j()));
        }
        lVar2.gu.j(com.byazt.di.l.l().vq());
        lVar2.gu.l(com.byazt.di.l.l().zy());
        lVar2.gu.hp(com.byazt.qca.jx.a());
        lVar2.gu.hp(com.byazt.qca.jx.w());
        lVar2.gu.jx(j.hp().l(lVar2.gu.sz(), com.byazt.di.l.l().vq()));
        lVar2.f22201e.jx = com.byazt.di.l.l().zy();
        lVar2.hp = softReference;
        lVar2.f22213u = hpVar;
        lVar2.f22204k = new hp();
        return lVar2;
    }

    public String jx(e eVar) {
        if (eVar == null) {
            return "fa_" + this.mp.incrementAndGet();
        }
        if (eVar.xh()) {
            return "fa_" + this.mp.incrementAndGet();
        }
        if (eVar.r()) {
            return "p_fa_" + this.f22207ms.incrementAndGet();
        }
        if (eVar.dy()) {
            return "sb_fa_" + this.hd.incrementAndGet();
        }
        if (eVar.lv()) {
            return "cb_fa_" + this.yr.incrementAndGet();
        }
        return "fa_" + this.mp.incrementAndGet();
    }

    public String l(e eVar) {
        if (eVar == null) {
            return "f_" + this.kg.incrementAndGet();
        }
        if (eVar.xh()) {
            return "f_" + this.kg.incrementAndGet();
        }
        if (eVar.r()) {
            return "p_f_" + this.xh.incrementAndGet();
        }
        if (eVar.dy()) {
            return "sb_f_" + this.nd.incrementAndGet();
        }
        if (eVar.lv()) {
            return "cb_f_" + this.f22202f.incrementAndGet();
        }
        return "f_" + this.kg.incrementAndGet();
    }

    public String hp(jx jxVar) {
        if (jxVar == null) {
            return "r_" + this.as.incrementAndGet();
        }
        if (jxVar.isNormalAd()) {
            return "r_" + this.as.incrementAndGet();
        }
        if (jxVar.isPAd()) {
            return "p_r_" + this.ky.incrementAndGet();
        }
        if (jxVar.isServerBiddingAd()) {
            return "sb_r_" + this.rz.incrementAndGet();
        }
        if (jxVar.isClientBiddingAd()) {
            return "cb_r_" + this.f22206m.incrementAndGet();
        }
        return "r_" + this.as.incrementAndGet();
    }

    public void j(jx jxVar) {
        this.f22198a = jxVar;
    }

    public void j(boolean z2) {
        this.f22209o = z2;
    }

    public JSONObject jx() {
        return this.pu;
    }

    public String l() {
        return this.dy;
    }

    private void jx(List<jx> list) {
        ArrayList arrayList;
        if (this.lv.get()) {
            return;
        }
        this.lv.set(true);
        if ((!o() && (o() || this.f22209o)) || this.zy == null || this.gu.vq()) {
            return;
        }
        if (this.zy.dy() || this.zy.lv()) {
            ArrayList arrayList2 = null;
            jx jxVar = list.size() > 0 ? list.get(0) : null;
            int iB = this.gu.b();
            if (iB > 1) {
                ArrayList arrayList3 = new ArrayList();
                for (int i2 = 1; i2 < iB; i2++) {
                    if (i2 < list.size()) {
                        arrayList3.add(list.get(i2));
                    }
                }
                if (list.size() > iB) {
                    arrayList2 = new ArrayList();
                    while (iB < list.size()) {
                        jx jxVar2 = list.get(iB);
                        if (jxVar2 != null && jxVar2.isServerBiddingAd()) {
                            arrayList2.add(jxVar2);
                        }
                        iB++;
                    }
                }
                arrayList = arrayList2;
                arrayList2 = arrayList3;
            } else {
                arrayList = null;
            }
            a.hp(jxVar, this.gu, arrayList2, arrayList);
        }
    }

    public void l(List<jx> list) {
        jx jxVar;
        if (d.hp(list) || (jxVar = list.get(0)) == null) {
            return;
        }
        if (jxVar.isPAd()) {
            this.f22215w.addAll(list);
            return;
        }
        if (jxVar.isNormalAd()) {
            this.f22205l.addAll(list);
        } else if (jxVar.isServerBiddingAd() || jxVar.isClientBiddingAd() || jxVar.isMultiBiddingAd()) {
            this.f22203j.addAll(list);
        }
    }

    public String hp(e eVar) {
        if (eVar == null) {
            return "r_" + this.as.incrementAndGet();
        }
        if (eVar.xh()) {
            return "r_" + this.as.incrementAndGet();
        }
        if (eVar.r()) {
            return "p_r_" + this.ky.incrementAndGet();
        }
        if (eVar.dy()) {
            return "sb_r_" + this.rz.incrementAndGet();
        }
        if (eVar.lv()) {
            return "cb_r_" + this.f22206m.incrementAndGet();
        }
        return "r_" + this.as.incrementAndGet();
    }

    public void l(boolean z2) {
        this.f22200d = z2;
    }

    public void l(long j2) {
        this.f22212s = j2;
    }

    public void l(String str) {
        this.f22214v = str;
    }

    public int l(int i2) {
        if (this.f22204k.hp() == null) {
            return -1;
        }
        return this.f22204k.hp().indexOf(Integer.valueOf(i2)) + 1;
    }

    public AtomicInteger hp() {
        return this.zx;
    }

    public void hp(int i2) {
        this.nu = i2;
    }

    public void hp(final String str) {
        w.j(new Runnable() { // from class: com.byazt.ktq.l.1
            @Override // java.lang.Runnable
            public void run() {
                if (l.this.f22213u != null) {
                    l.this.f22213u.hp(str);
                }
            }
        });
    }

    public void jx(boolean z2) {
        this.di = z2;
    }

    public void hp(List<jx> list) {
        if (eb() && this.sz.get()) {
            jx(list);
        }
    }

    public void jx(long j2) {
        this.cx = j2;
    }

    public void hp(com.byazt.dq.hp hpVar) {
        Handler handler;
        if (hpVar == null) {
            hpVar = new com.byazt.dq.hp(20005, com.byazt.dq.hp.hp(20005));
        }
        if ((!com.byazt.ge.hp.hp(this.zy) || hpVar.hp != 10003) && (handler = this.ns) != null) {
            handler.removeCallbacksAndMessages(null);
        }
        if (j() || w() || this.sz.get()) {
            return;
        }
        this.vv.set(true);
        xh().f25865w = true;
        if (!di()) {
            a.hp(this.gu, hpVar, this.f22201e.hp);
        }
        if (o()) {
            a(false);
            return;
        }
        com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(this.zy) + "广告加载失败！给外部回调：invokeAdLoadFailCallbackOnMainUI...... error Code = " + hpVar.hp + " error Message = " + hpVar.f19238l);
        final com.byazt.dq.hp hpVarHp = jl.hp(this.gu, hpVar, wv());
        w.jx(new Runnable() { // from class: com.byazt.ktq.l.4
            @Override // java.lang.Runnable
            public void run() {
                if (l.this.f22213u != null) {
                    l.this.f22213u.l(hpVarHp);
                }
            }
        });
    }

    public void hp(final List<jx> list, final com.byazt.dq.hp hpVar) {
        com.byazt.tgw.l lVar = this.zy;
        if (lVar == null || !lVar.v()) {
            return;
        }
        if (e()) {
            hpVar = new com.byazt.dq.hp(41044, com.byazt.dq.hp.hp(41044));
            list = null;
        }
        if (o()) {
            return;
        }
        if (!d.hp(list)) {
            com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(this.zy) + "单个广告加载完成！给外部回调：invokeSingleAdLoadCallbackUI......");
            for (jx jxVar : list) {
                com.byazt.aw.l.l(MediationConstant.TAG, com.byazt.aw.j.hp(this.gu.sz(), "fill") + "AdNetWorkName[" + jxVar.getAdNetWorkName() + "] AdUnitId[" + jxVar.getAdNetworkSlotId() + "]  请求成功 (loadSort=" + jxVar.getLoadSort() + ",showSort=" + jxVar.getShowSort() + ")");
            }
        }
        if (hpVar != null) {
            com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(this.zy) + "单个广告加载失败！给外部回调：invokeSingleAdLoadCallbackUI...... errorCode:" + hpVar.hp + "  errorMsg:" + hpVar.f19238l);
        }
        w.jx(new Runnable() { // from class: com.byazt.ktq.l.6
            @Override // java.lang.Runnable
            public void run() {
                if (l.this.f22213u != null) {
                    l.this.f22213u.hp(list, hpVar);
                }
            }
        });
    }

    public void hp(com.byazt.tgw.l lVar) {
        this.zy = lVar;
    }

    public List<jx> hp(boolean z2) throws NumberFormatException {
        ArrayList arrayList = new ArrayList();
        if (!d.hp(this.f22205l)) {
            arrayList.addAll(this.f22205l);
        }
        if (!d.hp(this.f22203j)) {
            arrayList.addAll(this.f22203j);
        }
        com.byazt.qca.jx.hp(arrayList, z2 ? com.byazt.qca.jx.l() : com.byazt.qca.jx.hp());
        if (!d.hp(this.f22215w)) {
            com.byazt.qca.jx.hp(this.f22215w, (Comparator<jx>) null);
            arrayList.addAll(0, this.f22215w);
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            jx jxVar = (jx) arrayList.get(i2);
            jxVar.getCpm();
            jxVar.getStrategyCpm();
        }
        return arrayList;
    }

    public void hp(ConcurrentHashMap<String, com.byazt.dq.l> concurrentHashMap) {
        this.f22211r = concurrentHashMap;
    }

    public void hp(j.jx jxVar) {
        this.wv = jxVar;
    }

    public void hp(long j2) {
        this.ud = j2;
    }

    public void hp(gu guVar) {
        this.jl = guVar;
    }

    public void hp(Handler handler) {
        this.ns = handler;
    }

    public void hp(q qVar) {
        this.f22201e = qVar;
    }
}
