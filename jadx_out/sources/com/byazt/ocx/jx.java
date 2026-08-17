package com.byazt.ocx;

import android.text.TextUtils;
import com.byazt.fe.eb;
import com.byazt.vu.q;
import com.byazt.xci.fi;
import com.byazt.xci.mp;
import com.byazt.xci.s;
import com.byazt.zn.ky;
import java.lang.ref.PhantomReference;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

@com.byazt.kj.hp(hp = {0, 1, 81, 30})
/* loaded from: classes3.dex */
public class jx extends hp {
    public volatile eb gu;
    public static ConcurrentHashMap<String, l> eb = new ConcurrentHashMap<>();

    /* renamed from: s, reason: collision with root package name */
    public static ConcurrentHashMap<String, List<String>> f23955s = new ConcurrentHashMap<>();

    /* renamed from: q, reason: collision with root package name */
    public static ReferenceQueue<Object> f23954q = new ReferenceQueue<>();

    /* renamed from: e, reason: collision with root package name */
    public static Map<Object, l> f23953e = new ConcurrentHashMap();

    private static int a() {
        if (s.hp() == null) {
            return 1;
        }
        return s.hp().j();
    }

    private void j() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.gu = new eb(3);
        com.byazt.kl.hp.hp("lqmt", "NewCache 初始化耗时: " + (System.currentTimeMillis() - jCurrentTimeMillis));
    }

    private void w() {
        if (a() != 3) {
            return;
        }
        try {
            for (Reference<? extends Object> referencePoll = f23954q.poll(); referencePoll != null; referencePoll = f23954q.poll()) {
                l lVar = f23953e.get(referencePoll);
                if (lVar != null) {
                    hp(lVar.jx, lVar.hp);
                }
                f23953e.remove(referencePoll);
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.byazt.ocx.hp
    public void jx() {
        if (this.gu == null) {
            l();
        }
        if (this.gu != null) {
            this.gu.hp();
        }
    }

    @Override // com.byazt.ocx.hp
    public void l() {
        if (this.gu == null) {
            synchronized (this) {
                try {
                    if (this.gu == null) {
                        j();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override // com.byazt.ocx.hp
    public void hp(final fi fiVar, com.byazt.jt.l lVar, boolean z2) {
        if (lVar == null || fiVar == null || fiVar.hp() == null) {
            return;
        }
        if (this.gu == null) {
            l();
        }
        try {
            final String strJ = lVar.j();
            com.byazt.kl.hp.hp("lqmt", "saveCache start >>  rit: " + strJ + "  isUsing: " + z2);
            final mp mpVarHp = fiVar.hp();
            String strNs = mpVarHp.ns();
            String strL = l(strJ, strNs);
            if (eb.contains(strL)) {
                return;
            }
            com.byazt.kl.hp.hp("lqmt", "save-updateMemoryRecord start >>  rit: " + strJ + "  reqId: " + strNs);
            hp(strL, strJ, strNs, z2 ? 2 : 1);
            hp(new Runnable() { // from class: com.byazt.ocx.jx.1
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    jx.this.gu.hp(strJ, new eb.l(com.byazt.ymw.hp.l(fiVar.l().jx().toString()), mpVarHp.er(), 1000 * mpVarHp.xe(), mpVarHp.ns()), false, ky.ec(mpVarHp), mpVarHp.rf());
                    com.byazt.kl.hp.hp("lqmt", "saveMeta >>  rit: " + strJ + " saveDb cost: " + (System.currentTimeMillis() - jCurrentTimeMillis));
                }
            });
        } catch (Throwable unused) {
        }
    }

    private String l(String str, String str2) {
        return str + str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:56:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:63:? A[RETURN, SYNTHETIC] */
    @Override // com.byazt.ocx.hp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void hp(com.byazt.vu.eb r10, final java.lang.String r11, com.byazt.ocx.hp.InterfaceC0326hp r12, com.byazt.ocx.w r13) {
        /*
            Method dump skipped, instructions count: 326
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ocx.jx.hp(com.byazt.vu.eb, java.lang.String, com.byazt.ocx.hp$hp, com.byazt.ocx.w):void");
    }

    @Override // com.byazt.ocx.hp
    public void hp(com.byazt.cx.j<q, com.byazt.vu.eb> jVar, final mp mpVar, com.byazt.jt.l lVar, boolean z2) {
        final String strJ;
        String strNs;
        String strL;
        if (mpVar == null || lVar == null) {
            return;
        }
        if (this.gu == null) {
            l();
        }
        try {
            com.byazt.kl.hp.hp("lqmt", "removeCache>> start ");
            strJ = lVar.j();
            strNs = mpVar.ns();
            strL = l(strJ, strNs);
        } catch (Throwable unused) {
        }
        if (this.f23944w.get()) {
            com.byazt.kl.hp.hp("lqmt", "removeCache-mIsRemoveCacheAd: true");
            return;
        }
        this.f23944w.set(true);
        hp(strL, strJ, strNs, 3);
        com.byazt.kl.hp.hp("lqmt", "removeCache-updateMemoryRecord: 完成");
        hp(new Runnable() { // from class: com.byazt.ocx.jx.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    jx.this.gu.hp(strJ, mpVar.ns());
                    com.byazt.kl.hp.hp("lqmt", "removeCache-deleteCacheMeta  rit: " + strJ + "  cost: " + (System.currentTimeMillis() - jCurrentTimeMillis));
                } catch (Throwable unused2) {
                }
            }
        });
        if (jVar != null) {
            jVar.hp();
        }
    }

    @Override // com.byazt.ocx.hp
    public void hp(String str, mp mpVar) {
        if (this.gu == null) {
            l();
        }
        if (this.gu != null) {
            this.gu.hp(str, mpVar.ns());
        }
    }

    @Override // com.byazt.ocx.hp
    public void hp(String str, String str2, boolean z2, boolean z3, Object obj) {
        if (a() != 3 || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            return;
        }
        if (!z3 && z2) {
            hp(obj, str, str2);
        } else {
            hp(str, str2);
        }
    }

    private void hp(final Runnable runnable) {
        if (com.byazt.dnb.s.hp()) {
            com.byazt.uid.w.l(new com.byazt.uid.eb("") { // from class: com.byazt.ocx.jx.4
                @Override // java.lang.Runnable
                public void run() {
                    runnable.run();
                }
            });
        } else {
            runnable.run();
        }
    }

    private List<String> hp(String str) {
        List<String> list = f23955s.get(str);
        StringBuilder sb = new StringBuilder("getUsedReqIdList: list : ");
        sb.append(list == null ? 0 : list.size());
        com.byazt.kl.hp.hp("lqmt", sb.toString());
        return list;
    }

    private void hp(String str, String str2, String str3, int i2) {
        int iA = a();
        com.byazt.kl.hp.hp("lqmt", "updateMemoryRecord>> start rit: " + str2 + ", status: " + i2 + ", cacheStrategyType: " + iA);
        if (iA != 3) {
            return;
        }
        eb.put(str, new l(str3, i2, str2));
        if (i2 <= 1) {
            com.byazt.kl.hp.hp("lqmt", "updateMemoryRecord>> :status <= CACHE_STATUS_NOUSE");
            return;
        }
        List<String> copyOnWriteArrayList = f23955s.get(str2);
        StringBuilder sb = new StringBuilder("updateMemoryRecord>>: list1 : ");
        sb.append(copyOnWriteArrayList == null ? 0 : copyOnWriteArrayList.size());
        com.byazt.kl.hp.hp("lqmt", sb.toString());
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList<>();
            copyOnWriteArrayList.add(str3);
        } else if (copyOnWriteArrayList.contains(str3)) {
            return;
        } else {
            copyOnWriteArrayList.add(str3);
        }
        com.byazt.kl.hp.hp("lqmt", "updateMemoryRecord>>: list2 : " + copyOnWriteArrayList.size());
        f23955s.put(str2, copyOnWriteArrayList);
    }

    private void hp(Object obj, String str, String str2) {
        try {
            l lVar = eb.get(l(str, str2));
            if (lVar != null && obj != null) {
                PhantomReference phantomReference = new PhantomReference(obj, f23954q);
                com.byazt.kl.hp.hp("lqmt", lVar.jx + "，uuid：" + lVar.hp + " watching");
                f23953e.put(phantomReference, lVar);
            }
        } catch (Exception unused) {
        }
    }

    private void hp(String str, String str2) {
        eb.remove(l(str, str2));
        List<String> list = f23955s.get(str);
        StringBuilder sb = new StringBuilder("checkCaches>>: list1 : ");
        sb.append(list == null ? 0 : list.size());
        com.byazt.kl.hp.hp("lqmt", sb.toString());
        if (list == null) {
            return;
        }
        com.byazt.kl.hp.hp("lqmt", "checkCaches>>: rmCache : " + str2);
        list.remove(str2);
        f23955s.put(str, list);
    }
}
