package com.byazt.sr;

import android.text.TextUtils;
import android.util.LruCache;
import com.byazt.gy.j;
import com.byazt.jkd.q;
import com.byazt.jz.hq;
import com.byazt.jz.vv;
import com.byazt.qt.k;
import com.byazt.uid.eb;
import com.byazt.xci.f;
import com.byazt.xci.mp;
import com.byazt.ymw.u;
import com.byazt.zn.ky;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicReference;

@com.byazt.kj.hp(hp = {0, 1, 21, 28})
/* loaded from: classes3.dex */
public abstract class hp<T, V> {
    public com.byazt.pc.j hp = new com.byazt.pc.j(hp());

    /* renamed from: l, reason: collision with root package name */
    public static LruCache<String, Integer> f25515l = new LruCache<>(20);
    public static LruCache<String, Integer> jx = new LruCache<>(20);

    /* JADX INFO: Access modifiers changed from: private */
    public com.byazt.kt.l j() {
        return (com.byazt.kt.l) com.byazt.gy.w.hp(0);
    }

    public static LruCache<String, Integer> jx() {
        return jx;
    }

    public static LruCache<String, Integer> l() {
        return f25515l;
    }

    public abstract int hp();

    public abstract List<String> hp(V v2);

    public abstract void hp(T t2, int i2, String str);

    public abstract void hp(T t2, V v2);

    public abstract String l(V v2);

    public void l(String str) {
        j().hp(str, com.byazt.np.l.REQED);
    }

    public f hp(boolean z2, boolean z3, long j2, int i2, com.byazt.jt.l lVar, com.byazt.vv.j jVar) {
        f fVar = new f();
        fVar.f27274q = j2;
        if (z2) {
            fVar.hp = 2;
        }
        if (z3) {
            fVar.eb = 2;
        }
        if (jVar != null && jVar.w()) {
            fVar.xs = jVar.jx();
            fVar.vv = jVar.j();
            fVar.sz = true;
        }
        if (lVar != null) {
            fVar.hp(i2, lVar.j(), lVar.jl(), lVar);
            return fVar;
        }
        fVar.hp(i2, "", 1, lVar);
        return fVar;
    }

    public String l(List<k> list) {
        Map<String, Object> mediaExtraInfo;
        if (list == null || list.isEmpty() || (mediaExtraInfo = list.get(0).getMediaExtraInfo()) == null || mediaExtraInfo.get("request_id") == null) {
            return null;
        }
        return (String) mediaExtraInfo.get("request_id");
    }

    public void hp(int i2, final com.byazt.jt.l lVar, final T t2) {
        final String str;
        final String string = UUID.randomUUID().toString();
        if (lVar == null || !TextUtils.isEmpty(lVar.n())) {
            str = null;
        } else {
            String string2 = UUID.randomUUID().toString();
            hp(string2, lVar, i2);
            str = string2;
        }
        hp(str);
        if (!q.hp()) {
            hp(str, null, false, new com.byazt.kd.jx(1000, "广告请求开关已关闭,请联系穿山甲管理员"));
            hp((hp<T, V>) t2, 1000, "广告请求开关已关闭,请联系穿山甲管理员");
            return;
        }
        final long jCurrentTimeMillis = System.currentTimeMillis();
        String str2 = "loadNativeAd";
        if (i2 != 1) {
            if (i2 == 5) {
                str2 = "loadFeedAd";
            } else if (i2 == 9) {
                str2 = "loadDrawFeedAd";
            } else if (i2 == 6) {
                str2 = "loadStream";
            }
        }
        final String str3 = str2;
        com.byazt.ktd.l.hp(lVar, true, string);
        eb ebVar = new eb(str3) { // from class: com.byazt.sr.hp.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                try {
                    hp.this.hp(lVar, (com.byazt.jt.l) t2, jCurrentTimeMillis, (com.byazt.vv.j) null, str, string);
                } catch (Throwable th) {
                    hp.this.hp(str, null, false, new com.byazt.kd.jx(TTAdConstant.INIT_LOCAL_FAIL_CODE, " msg = " + th.getMessage()));
                    hp.this.hp((hp) t2, TTAdConstant.INIT_LOCAL_FAIL_CODE, " msg = " + th.getMessage());
                    u.hp("BaseLoadManager", str3 + " Error msg = ", th.getMessage());
                }
            }
        };
        if (!vv.hp) {
            u.l("BaseLoadManager", hq.NOT_INIT_TIPS_MSG);
            hp(str, null, false, new com.byazt.kd.jx(10000, hq.NOT_INIT_TIPS_MSG));
            hp((hp<T, V>) t2, 10000, hq.NOT_INIT_TIPS_MSG);
        } else {
            hq.execLoadAd(ebVar, i2);
            com.byazt.evz.hp.hp().hp(i2, lVar.j());
        }
    }

    public void hp(com.byazt.jt.l lVar, com.byazt.vv.j jVar, T t2) {
        hp(lVar, (com.byazt.jt.l) t2, System.currentTimeMillis(), jVar, (String) null, (String) null);
        com.byazt.vv.jx.hp(jVar.hp(), true, jVar.jx(), 0);
    }

    public void hp(final com.byazt.jt.l lVar, final T t2, long j2, final com.byazt.vv.j jVar, final String str, final String str2) {
        l(str);
        final f fVarHp = hp(false, false, j2, hp(), lVar, jVar);
        fVarHp.ec = str2;
        lVar.j();
        if (this.hp != null) {
            final AtomicReference atomicReference = new AtomicReference(str);
            this.hp.hp(lVar, fVarHp, new com.byazt.pc.w<V>() { // from class: com.byazt.sr.hp.2
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.byazt.pc.w
                public void hp(V v2, boolean z2, mp mpVar) {
                    String strL = (String) atomicReference.get();
                    if (TextUtils.isEmpty(strL) && !TextUtils.isEmpty(lVar.n())) {
                        strL = hp.this.j().l(hp.this.l((hp) v2));
                        atomicReference.set(strL);
                    }
                    hp.this.hp(strL, true);
                    fVarHp.hp(v2, z2 ? 3 : 2);
                    lVar.j();
                    hp hpVar = hp.this;
                    hpVar.hp(strL, hpVar.hp((hp) v2), true, null);
                    com.byazt.vv.j jVar2 = jVar;
                    if (jVar2 != null && jVar2.w()) {
                        jVar.l(mpVar);
                    }
                    hp.this.hp((hp) t2, (Object) v2);
                    if (mpVar == null || TextUtils.isEmpty(str2)) {
                        return;
                    }
                    mpVar.hp(str2);
                    com.byazt.ktd.l.hp(mpVar, ky.l(hp.this.hp()));
                }

                @Override // com.byazt.pc.w
                public void hp(V v2) {
                    lVar.j();
                    String strL = (String) atomicReference.get();
                    if (TextUtils.isEmpty(strL) && !TextUtils.isEmpty(lVar.n())) {
                        strL = hp.this.j().l(hp.this.l((hp) v2));
                        atomicReference.set(strL);
                    }
                    if (!com.byazt.un.a.hp().hp(hp.this.hp()) || TextUtils.isEmpty(strL)) {
                        return;
                    }
                    com.byazt.un.a.hp().l(strL, System.currentTimeMillis());
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.byazt.pc.w
                public void hp(int i2, String str3) {
                    hp.this.hp(str, false);
                    fVarHp.hp((Object) null, 1);
                    lVar.j();
                    hp.this.hp(str, null, false, new com.byazt.kd.jx(i2, str3));
                    hp.this.hp((hp) t2, i2, str3);
                }
            });
        }
    }

    public void hp(int i2, final com.byazt.jt.l lVar, final com.byazt.p000if.a aVar) {
        final String str;
        String str2;
        final String string = UUID.randomUUID().toString();
        if (lVar == null || !TextUtils.isEmpty(lVar.n())) {
            str = null;
        } else {
            String string2 = UUID.randomUUID().toString();
            hp(string2, lVar, i2);
            str = string2;
        }
        hp(str);
        if (!q.hp()) {
            hp(str, null, false, new com.byazt.kd.jx(1000, "广告请求开关已关闭,请联系穿山甲管理员"));
            aVar.hp(1000, "广告请求开关已关闭,请联系穿山甲管理员");
            return;
        }
        if (i2 == 1) {
            str2 = "loadBannerExpressAd";
        } else if (i2 == 5) {
            str2 = "loadNativeExpressAd";
        } else if (i2 == 9) {
            str2 = "loadExpressDrawFeedAd";
        } else {
            str2 = "loadExpressAd";
        }
        final String str3 = str2;
        final long jCurrentTimeMillis = System.currentTimeMillis();
        com.byazt.ktd.l.hp(lVar, true, string);
        eb ebVar = new eb(str3) { // from class: com.byazt.sr.hp.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (hq.checkExpressAdParamValid(lVar, false)) {
                        hp.this.hp(lVar, aVar, jCurrentTimeMillis, str, string);
                    } else {
                        hp.this.hp(str, null, false, new com.byazt.kd.jx(110, com.byazt.jz.eb.hp(110)));
                        aVar.hp(110, com.byazt.jz.eb.hp(110));
                    }
                } catch (Throwable th) {
                    hp.this.hp(str, null, false, new com.byazt.kd.jx(TTAdConstant.INIT_LOCAL_FAIL_CODE, " msg = " + th.getMessage()));
                    aVar.hp(TTAdConstant.INIT_LOCAL_FAIL_CODE, " msg = " + th.getMessage());
                    u.hp("BaseLoadManager", str3 + " error, pls check", th);
                }
            }
        };
        if (!vv.hp) {
            u.l("BaseLoadManager", hq.NOT_INIT_TIPS_MSG);
            hp(str, null, false, new com.byazt.kd.jx(10000, hq.NOT_INIT_TIPS_MSG));
            aVar.hp(10000, hq.NOT_INIT_TIPS_MSG);
        } else {
            hq.execLoadAd(ebVar, i2);
            com.byazt.evz.hp.hp().hp(i2, lVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final com.byazt.jt.l lVar, final com.byazt.p000if.a aVar, long j2, final String str, final String str2) {
        final f fVarHp = hp(false, true, j2, hp(), lVar, (com.byazt.vv.j) null);
        fVarHp.ec = str2;
        lVar.j();
        l(str);
        com.byazt.pc.j jVar = this.hp;
        if (jVar != null) {
            jVar.hp(lVar, fVarHp, new com.byazt.pc.w<List<k>>() { // from class: com.byazt.sr.hp.4
                @Override // com.byazt.pc.w
                public void hp(List<k> list, boolean z2, mp mpVar) {
                    com.byazt.jt.l lVar2;
                    String strL = str;
                    if (TextUtils.isEmpty(strL) && (lVar2 = lVar) != null && !TextUtils.isEmpty(lVar2.n())) {
                        strL = hp.this.j().l(hp.this.l(list));
                    }
                    hp.this.hp(strL, true);
                    fVarHp.hp(list, z2 ? 3 : 2);
                    lVar.j();
                    hp hpVar = hp.this;
                    hpVar.hp(strL, hpVar.hp(list), true, null);
                    com.byazt.p000if.a aVar2 = aVar;
                    if (aVar2 != null) {
                        aVar2.hp(list);
                    }
                    if (mpVar == null || TextUtils.isEmpty(str2)) {
                        return;
                    }
                    mpVar.hp(str2);
                    com.byazt.ktd.l.hp(mpVar, ky.l(hp.this.hp()));
                }

                @Override // com.byazt.pc.w
                public void hp(List<k> list) {
                    lVar.j();
                }

                @Override // com.byazt.pc.w
                public void hp(int i2, String str3) {
                    hp.this.hp(str, false);
                    fVarHp.hp((Object) null, 1);
                    lVar.j();
                    hp.this.hp(str, null, false, new com.byazt.kd.jx(i2, str3));
                    com.byazt.p000if.a aVar2 = aVar;
                    if (aVar2 != null) {
                        aVar2.hp(i2, str3);
                    }
                }
            });
        }
    }

    public static hp hp(int i2) {
        if (i2 == 1) {
            return com.byazt.hl.hp.j();
        }
        if (i2 == 9) {
            return com.byazt.jl.hp.j();
        }
        if (i2 == 5) {
            return com.byazt.hp.hp.j();
        }
        if (i2 != 6) {
            return null;
        }
        return com.byazt.zwl.hp.j();
    }

    public void hp(mp mpVar) {
        com.byazt.pc.j jVar = this.hp;
        if (jVar != null) {
            jVar.l().hp(mpVar);
        }
    }

    public static void hp(int i2, mp mpVar) {
        hp hpVarHp = hp(i2);
        if (hpVarHp != null) {
            hpVarHp.hp(mpVar);
        }
    }

    private void hp(String str, final com.byazt.jt.l lVar, final int i2) {
        com.byazt.kt.l lVar2 = (com.byazt.kt.l) com.byazt.gy.w.hp(0);
        lVar2.l(str, lVar.lv());
        lVar2.hp(str, new com.byazt.tb.jx());
        if (com.byazt.un.a.hp().hp(i2)) {
            lVar2.hp(str, new com.byazt.un.jx());
        }
        lVar2.hp(str, new j.hp() { // from class: com.byazt.sr.hp.5
            @Override // com.byazt.gy.j.hp
            public void hp(com.byazt.gy.l lVar3) {
                if (lVar3 instanceof com.byazt.kf.l) {
                    com.byazt.kf.l lVar4 = (com.byazt.kf.l) lVar3;
                    com.byazt.jt.l lVar5 = lVar;
                    lVar4.hp = lVar5;
                    lVar4.eb = i2;
                    if (lVar5 != null) {
                        lVar4.f20630s = lVar5.j();
                    }
                }
            }
        });
    }

    public void hp(String str) {
        j().hp(str, com.byazt.np.l.STARTED);
    }

    public void hp(String str, final boolean z2) {
        j().hp(str, new j.hp() { // from class: com.byazt.sr.hp.6
            @Override // com.byazt.gy.j.hp
            public void hp(com.byazt.gy.l lVar) {
                if (lVar instanceof com.byazt.kf.l) {
                    ((com.byazt.kf.l) lVar).f22025l = z2;
                }
            }
        });
        j().hp(str, com.byazt.np.l.RECEIVED);
    }

    public void hp(final String str, final List<String> list, final boolean z2, final com.byazt.kd.jx jxVar) {
        j().hp(str, new j.hp() { // from class: com.byazt.sr.hp.7
            @Override // com.byazt.gy.j.hp
            public void hp(com.byazt.gy.l lVar) {
                if (lVar instanceof com.byazt.kf.l) {
                    com.byazt.kf.l lVar2 = (com.byazt.kf.l) lVar;
                    lVar2.jx = z2;
                    lVar2.f22024j = jxVar;
                    List list2 = list;
                    if (list2 != null) {
                        lVar2.f22026w.addAll(list2);
                    }
                }
            }
        });
        com.byazt.kt.jx jxVar2 = (com.byazt.kt.jx) com.byazt.gy.w.hp(1);
        if (list != null) {
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                jxVar2.hp(it.next(), new j.hp() { // from class: com.byazt.sr.hp.8
                    @Override // com.byazt.gy.j.hp
                    public void hp(com.byazt.gy.l lVar) {
                        if (lVar instanceof com.byazt.kf.jx) {
                            ((com.byazt.kf.jx) lVar).hp = str;
                        }
                    }
                });
            }
        }
        j().hp(str, com.byazt.np.l.LOADED);
    }

    public List<String> hp(List<k> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<k> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getLifecycleId());
        }
        return arrayList;
    }
}
