package com.byazt.xob;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import com.byazt.aw.w;
import com.byazt.bki.gu;
import com.byazt.ewl.l;
import com.byazt.gp.eb;
import com.byazt.lsx.a;
import com.byazt.rt.jx;
import com.byazt.tgw.e;
import com.byazt.tgw.q;
import com.byazt.zg.hq;
import com.byazt.zg.o;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.kwad.library.solder.lib.ext.PluginError;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, PluginError.ERROR_UPD_EXTRACT, 28})
/* loaded from: classes3.dex */
public class hp extends com.byazt.xd.hp {

    /* renamed from: s, reason: collision with root package name */
    public static volatile hp f27702s;
    public final String[] hp = {MediationConstant.ADN_UNITY, MediationConstant.ADN_KS};

    /* renamed from: l, reason: collision with root package name */
    public final Map<String, Integer> f27705l = new HashMap();
    public final Map<String, Integer> jx = new HashMap();

    /* renamed from: j, reason: collision with root package name */
    public final Map<String, CopyOnWriteArrayList<eb>> f27704j = new ConcurrentHashMap();

    /* renamed from: w, reason: collision with root package name */
    public final Map<String, e> f27707w = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final Map<String, String> f27703a = new HashMap();
    public final Map<String, Integer> eb = new HashMap();

    /* renamed from: q, reason: collision with root package name */
    public final Comparator<eb> f27706q = new Comparator<eb>() { // from class: com.byazt.xob.hp.4
        @Override // java.util.Comparator
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public int compare(eb ebVar, eb ebVar2) {
            jx jxVar;
            if (ebVar == null || ebVar2 == null || (jxVar = ebVar.hp) == null || ebVar2.hp == null) {
                return 0;
            }
            return ((int) jxVar.getFillTime()) - ((int) ebVar2.hp.getFillTime());
        }
    };

    @com.byazt.kj.hp(hp = {0, 1, PluginError.ERROR_UPD_EXTRACT, 170})
    /* renamed from: com.byazt.xob.hp$hp, reason: collision with other inner class name */
    public class C0409hp implements l {

        /* renamed from: a, reason: collision with root package name */
        public q f27717a;
        public long eb = System.currentTimeMillis();
        public int hp;

        /* renamed from: j, reason: collision with root package name */
        public e f27718j;
        public final com.byazt.iqm.l jx;

        /* renamed from: w, reason: collision with root package name */
        public com.byazt.xl.l f27720w;

        public C0409hp(com.byazt.iqm.l lVar, e eVar, com.byazt.xl.l lVar2, q qVar, int i2) {
            this.jx = lVar;
            this.f27718j = eVar;
            this.f27720w = lVar2;
            this.hp = i2;
            this.f27717a = qVar;
        }

        @Override // com.byazt.ewl.l
        public void nativeDislikeClick(jx jxVar, String str) {
        }

        @Override // com.byazt.ewl.l
        public void notifyLoadFail(com.byazt.dq.hp hpVar) {
            if (hpVar != null && this.f27718j != null) {
                com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- 广告复用:show时预请求广告load失败 --- " + this.f27718j.xs() + ", " + this.f27718j.vv() + ", " + com.byazt.rt.hp.hp(this.f27718j.zy(), this.f27718j.a()) + ", errCode: " + hpVar.jx + ",msg=" + hpVar.f19237j);
                hpVar.hp("is_dex_adapter", Integer.valueOf(this.f27720w.xh() ? 1 : 0));
            }
            a.hp(hpVar, this.jx, this.f27718j, this.hp, 4, 1, hp.hp().hp(this.f27718j.vv()), System.currentTimeMillis() - this.eb, (String) null, (String) null, (String) null, 0L);
        }

        @Override // com.byazt.ewl.l
        public void notifyLoadSuccess(List<jx> list) {
            if (list == null || list.size() <= 0) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (jx jxVar : list) {
                if (jxVar != null) {
                    e eVar = this.f27718j;
                    com.byazt.mey.jx.hp(jxVar, this.jx, this.f27720w, this.f27717a, eVar != null ? hp.this.hp(eVar.vv()) : "");
                    jxVar.setFillTime(SystemClock.elapsedRealtime());
                    arrayList.add(new eb(jxVar, 0L, this.jx));
                }
            }
            if (arrayList.size() > 0) {
                jx jxVar2 = ((eb) arrayList.get(0)).hp;
                com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- 广告复用:show时预请求广告load成功 --- " + jxVar2.getAdNetWorkName() + ", adType: " + com.byazt.rt.hp.hp(jxVar2.getAdType(), jxVar2.getSubAdType()) + ", adnSlotId: " + jxVar2.getAdNetworkSlotId() + ", ad个数: " + arrayList.size());
                hp.this.hp(jxVar2.getAdNetworkSlotId(), (List<eb>) arrayList, false);
            }
            a.hp(list.get(0), 20000, "load success", System.currentTimeMillis() - this.eb, this.jx, this.hp, list.size(), 0, null, -1L, -1L);
        }

        @Override // com.byazt.ewl.l
        public void notifyVideoCache(List<jx> list, com.byazt.dq.hp hpVar) {
            if (list == null || list.size() <= 0) {
                return;
            }
            for (jx jxVar : list) {
                e eVar = this.f27718j;
                com.byazt.mey.jx.hp(jxVar, this.jx, this.f27720w, this.f27717a, eVar != null ? hp.this.hp(eVar.vv()) : "");
                jxVar.setCacheSuccess(true);
            }
            jx jxVar2 = list.get(0);
            if (jxVar2 != null) {
                com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- 广告复用:show时预请求广告cache成功 --- " + jxVar2.getAdNetWorkName() + ", adType: " + com.byazt.rt.hp.hp(jxVar2.getAdType(), jxVar2.getSubAdType()) + ", adnSlotId: " + jxVar2.getAdNetworkSlotId() + ", ad个数: " + list.size());
            }
            a.hp(this.jx, jxVar2, this.f27718j);
        }
    }

    private hp() {
    }

    public void a(String str, String str2, int i2) {
        this.jx.put(str + "_" + str2, Integer.valueOf(i2));
    }

    public boolean j(String str, String str2, int i2) {
        if (i2 == 2) {
            return false;
        }
        Integer num = this.f27705l.get(str + "_" + str2);
        return num != null && (num.intValue() == 1 || num.intValue() == 2);
    }

    public void jx(String str, String str2, int i2) {
        this.f27705l.put(str + "_" + str2, Integer.valueOf(i2));
    }

    public void l() {
        w.hp(new Runnable() { // from class: com.byazt.xob.hp.1
            @Override // java.lang.Runnable
            public void run() {
                int i2;
                int iB;
                String strSz;
                com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- 广告复用lowMemory，start clean");
                int i3 = 0;
                int i4 = 0;
                for (Map.Entry entry : hp.this.f27704j.entrySet()) {
                    List<eb> list = (List) entry.getValue();
                    if (list != null && list.size() > 0) {
                        com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- 广告复用lowMemory，adnSlotId: " + ((String) entry.getKey()) + ", 清理前, 缓存总数: " + list.size());
                        int i5 = 1;
                        int i6 = 0;
                        for (eb ebVar : list) {
                            if (ebVar != null && ebVar.hp != null) {
                                if (ebVar.j() != null) {
                                    strSz = ebVar.j().sz();
                                    iB = ebVar.j().b();
                                } else {
                                    iB = i5;
                                    strSz = "";
                                }
                                if (ebVar.hp.isHasShown() || !ebVar.hp.isReady(strSz)) {
                                    list.remove(ebVar);
                                    i6++;
                                }
                                i5 = iB;
                            }
                        }
                        if (list.size() > i5) {
                            com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- 广告复用lowMemory，adnSlotId: " + ((String) entry.getKey()) + ", 清理无效广告后仍需清理，缓存总数: " + list.size() + "，adCount: " + i5 + ", invalidCnt: " + i6);
                            i2 = 0;
                            for (eb ebVar2 : list) {
                                if (list.size() <= i5) {
                                    break;
                                }
                                list.remove(ebVar2);
                                i2++;
                            }
                        } else {
                            i2 = 0;
                        }
                        com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- 广告复用lowMemory，adnSlotId: " + ((String) entry.getKey()) + ", 清理后，缓存总数: " + list.size() + ", adCount: " + i5 + ", invalidCnt: " + i6 + ", foceCleanCnt：" + i2);
                        i3 += i6;
                        i4 += i2;
                    }
                    o.hp(i3, i4);
                }
            }
        });
    }

    public int w(String str, String str2, int i2) {
        if (i2 == 2) {
            return 0;
        }
        Integer num = this.f27705l.get(str + "_" + str2);
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, List<eb>> l(List<jx> list, String str, com.byazt.iqm.l lVar, int i2, jx jxVar) {
        HashMap map = new HashMap();
        for (jx jxVar2 : list) {
            if (jxVar2 != null && jxVar2 != jxVar) {
                jxVar2.setUseFromCache(false);
            }
            if (jxVar2 != null && jxVar2 != jxVar && w(str, jxVar2.getAdNetworkSlotId(), i2) == 2 && jxVar2.isReady(str) && !jxVar2.isHasShown()) {
                List list2 = (List) map.get(jxVar2.getAdNetworkSlotId());
                if (list2 == null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(new eb(jxVar2, 0L, lVar));
                    map.put(jxVar2.getAdNetworkSlotId(), arrayList);
                } else {
                    list2.add(new eb(jxVar2, 0L, lVar));
                }
            }
        }
        return map;
    }

    public boolean jx(String str, String str2) {
        Integer num = this.jx.get(str + "_" + str2);
        return num != null && num.intValue() == 1;
    }

    public void j(String str, String str2) {
        this.f27703a.put(str, str2);
    }

    public e w(String str, String str2) {
        return this.f27707w.get(str + "_" + str2);
    }

    public static hp hp() {
        if (f27702s == null) {
            synchronized (hp.class) {
                try {
                    if (f27702s == null) {
                        f27702s = new hp();
                    }
                } finally {
                }
            }
        }
        return f27702s;
    }

    public void jx() {
        this.f27704j.clear();
    }

    public void hp(String str, String str2, e eVar, int i2) {
        if (eVar != null) {
            this.f27707w.put(str + "_" + str2, eVar);
        }
        this.eb.put(str2, Integer.valueOf(i2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private int l(String str, com.byazt.iqm.l lVar, boolean z2) {
        boolean zHp;
        int i2;
        CopyOnWriteArrayList<eb> copyOnWriteArrayList = this.f27704j.get(str);
        if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
            String strSz = lVar != null ? lVar.sz() : "";
            ArrayList arrayList = new ArrayList();
            eb ebVar = null;
            Object[] objArr = false;
            for (eb ebVar2 : copyOnWriteArrayList) {
                Integer numIsReadyStatus = ebVar2.hp.isReadyStatus();
                int iIntValue = numIsReadyStatus != null ? numIsReadyStatus.intValue() : 0;
                if (iIntValue == 4) {
                    zHp = hp(strSz, ebVar2.hp);
                } else {
                    zHp = iIntValue != 2;
                }
                if (!zHp) {
                    if (com.byazt.xd.hp.hp(ebVar2.j(), lVar, ebVar2.hp)) {
                        com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- 广告复用:复用成功：--------" + ebVar2.hp.getAdNetWorkName() + ", adSlotId: " + str);
                        objArr = true;
                    } else {
                        com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- 广告复用:AdSlot不符合 -------: " + ebVar2.hp.getAdNetWorkName() + ", adSlotId: " + str);
                        i2 = 6;
                    }
                } else {
                    copyOnWriteArrayList.remove(ebVar2);
                    com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- 广告复用:广告过期了 -------: " + ebVar2.hp.getAdNetWorkName() + ", adSlotId: " + str);
                    i2 = 5;
                }
                if (ebVar == null) {
                    ebVar = ebVar2;
                }
                com.byazt.gp.hp hpVar = new com.byazt.gp.hp();
                hpVar.j(ebVar2.hp.getLoadSort());
                hpVar.w(ebVar2.hp.getShowSort());
                hpVar.l(ebVar2.hp.getAdNetworkSlotId());
                hpVar.l(i2);
                hpVar.hp(ebVar2.hp.isHasShown() ? 1 : 0);
                arrayList.add(hpVar);
            }
            if (objArr == true) {
                return 3;
            }
            if (z2 && ebVar != null) {
                a.hp(lVar, ebVar.hp, hp(arrayList));
            }
            return 2;
        }
        com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- 广告复用:当前没有广告缓存 -------adnSlotId: " + str);
        return 1;
    }

    public String hp(String str) {
        return this.f27703a.get(str);
    }

    public void hp(final String str, final com.byazt.iqm.l lVar, final Map<String, Object> map, final boolean z2, final gu guVar, final q qVar, final Context context) {
        w.hp(new Runnable() { // from class: com.byazt.xob.hp.2
            @Override // java.lang.Runnable
            public void run() {
                String adNetWorkName;
                String strHp;
                eb ebVar;
                List<eb> list = (List) hp.this.f27704j.get(str);
                ArrayList arrayList = new ArrayList();
                if (list != null && list.size() > 0) {
                    for (eb ebVar2 : list) {
                        if (ebVar2 != null && ebVar2.hp.isHasShown()) {
                            list.remove(ebVar2);
                            arrayList.add(ebVar2);
                        }
                    }
                }
                boolean z3 = false;
                if (com.byazt.aw.l.l()) {
                    if (arrayList.size() <= 0 || (ebVar = (eb) arrayList.get(0)) == null) {
                        adNetWorkName = "";
                        strHp = adNetWorkName;
                    } else {
                        strHp = com.byazt.rt.hp.hp(ebVar.hp.getAdType(), ebVar.hp.getSubAdType());
                        adNetWorkName = ebVar.hp.getAdNetWorkName();
                    }
                    StringBuilder sb = new StringBuilder("--==-- 广告复用:show时缓存移除 -----：");
                    sb.append(adNetWorkName);
                    sb.append(", ");
                    sb.append(strHp);
                    sb.append(", ");
                    sb.append(str);
                    sb.append(arrayList.size() > 0 ? ", size: " + arrayList.size() : "移除广告数为0");
                    com.byazt.aw.l.hp(MediationConstant.TAG, sb.toString());
                }
                com.byazt.iqm.l lVar2 = lVar;
                String strSz = lVar2 != null ? lVar2.sz() : "";
                com.byazt.iqm.l lVar3 = lVar;
                int iEc = lVar3 != null ? lVar3.ec() : 0;
                com.byazt.iqm.l lVar4 = lVar;
                boolean z4 = lVar4 == null || lVar4.ec() == 1;
                if (!com.byazt.di.l.l().hp(strSz, str, iEc) && z2) {
                    z3 = true;
                }
                if (!lVar.vq() && z3 && !z4 && hp.this.jx(strSz, str)) {
                    hp.this.hp(str, lVar, (Map<String, Object>) map, context, guVar, qVar);
                    return;
                }
                com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- 广告复用:show时预请求取消，因为：已发起waterfall预加载，或feed多广告，或未开启adn预加载，或是banner轮播 --: " + str);
            }
        });
    }

    public void hp(final List<jx> list, final String str, final com.byazt.iqm.l lVar, final int i2, final jx jxVar) {
        if (list == null || list.isEmpty() || lVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        w.hp(new Runnable() { // from class: com.byazt.xob.hp.3
            @Override // java.lang.Runnable
            public void run() {
                for (Map.Entry entry : hp.this.l(list, str, lVar, i2, jxVar).entrySet()) {
                    String str2 = (String) entry.getKey();
                    List<eb> list2 = (List) entry.getValue();
                    if (!TextUtils.isEmpty(str2) && list2 != null && list2.size() > 0) {
                        hp.this.hp(str2, list2, true);
                        com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- 广告复用，show后放回复用池：adnSlotId:" + str2 + ", 个数：" + list2.size());
                    }
                }
            }
        });
    }

    public void hp(String str, List<eb> list, boolean z2) {
        if (list == null || list.size() <= 0) {
            return;
        }
        CopyOnWriteArrayList<eb> copyOnWriteArrayList = this.f27704j.get(str);
        if (copyOnWriteArrayList != null) {
            for (eb ebVar : list) {
                if (!hp(copyOnWriteArrayList, ebVar)) {
                    copyOnWriteArrayList.add(ebVar);
                }
            }
        } else {
            this.f27704j.put(str, new CopyOnWriteArrayList<>(list));
        }
        if (z2) {
            hq.hp(this.f27704j.get(str), this.f27706q);
        }
    }

    private boolean hp(List<eb> list, eb ebVar) {
        for (eb ebVar2 : list) {
            if (ebVar2 != null && ebVar != null && ebVar2.hp == ebVar.hp) {
                return true;
            }
        }
        return false;
    }

    public synchronized List<eb> hp(String str, com.byazt.iqm.l lVar, int i2) {
        try {
            CopyOnWriteArrayList<eb> copyOnWriteArrayList = this.f27704j.get(str);
            if (copyOnWriteArrayList == null) {
                return null;
            }
            int iB = lVar != null ? lVar.b() : 1;
            ArrayList arrayList = new ArrayList();
            String strSz = "";
            if (lVar != null) {
                strSz = lVar.sz();
            }
            int iW = w(strSz, str, i2);
            int i3 = 0;
            if (iW == 1) {
                for (int i4 = 0; arrayList.size() < iB && i4 < copyOnWriteArrayList.size(); i4++) {
                    if (!copyOnWriteArrayList.get(i4).jx() && com.byazt.xd.hp.hp(copyOnWriteArrayList.get(i4).j(), lVar, copyOnWriteArrayList.get(i4).hp)) {
                        arrayList.add(copyOnWriteArrayList.get(i4));
                    }
                }
                for (int i5 = 0; arrayList.size() < iB && i5 < copyOnWriteArrayList.size(); i5++) {
                    if (copyOnWriteArrayList.get(i5).jx() && com.byazt.xd.hp.hp(copyOnWriteArrayList.get(i5).j(), lVar, copyOnWriteArrayList.get(i5).hp)) {
                        arrayList.add(copyOnWriteArrayList.get(i5));
                    }
                }
                int size = arrayList.size();
                int i6 = 0;
                while (i6 < size) {
                    Object obj = arrayList.get(i6);
                    i6++;
                    ((eb) obj).hp(true);
                }
                com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- 复用模式1，不从复用池移除，获取缓存: " + str + ", " + arrayList.size());
            } else if (iW == 2) {
                for (eb ebVar : copyOnWriteArrayList) {
                    if (arrayList.size() >= iB) {
                        break;
                    }
                    if (ebVar.eb() && ebVar.hp != null) {
                        com.byazt.aw.l.l(MediationConstant.TAG, "--==-- 复用模式2，广告：" + ebVar.l() + "  adnName:" + ebVar.hp.getAdnName() + " showSort:" + ebVar.hp.getShowSort() + " 暂不可用， 已经被使用中...");
                    }
                    if (com.byazt.xd.hp.hp(ebVar.j(), lVar, ebVar.hp) && !ebVar.eb()) {
                        copyOnWriteArrayList.remove(ebVar);
                        arrayList.add(ebVar);
                    }
                }
                com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- 复用模式2，从复用池移除，获取缓存: " + str + ", " + arrayList.size());
            }
            int size2 = arrayList.size();
            while (i3 < size2) {
                Object obj2 = arrayList.get(i3);
                i3++;
                ((eb) obj2).l(true);
            }
            return arrayList;
        } catch (Throwable th) {
            throw th;
        }
    }

    public int l(String str) {
        CopyOnWriteArrayList<eb> copyOnWriteArrayList = this.f27704j.get(str);
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
            return 0;
        }
        return copyOnWriteArrayList.size();
    }

    public synchronized int hp(String str, com.byazt.iqm.l lVar, boolean z2) {
        String strSz;
        if (lVar != null) {
            try {
                strSz = lVar.sz();
            } catch (Throwable th) {
                throw th;
            }
        } else {
            strSz = "";
        }
        if (l(strSz, str) == 0) {
            return l(str, lVar, z2);
        }
        CopyOnWriteArrayList<eb> copyOnWriteArrayList = this.f27704j.get(str);
        if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
            eb ebVar = null;
            ArrayList arrayList = z2 ? new ArrayList() : null;
            boolean z3 = false;
            for (eb ebVar2 : copyOnWriteArrayList) {
                int iHp = hp(ebVar2, ebVar2.j(), lVar, "广告复用");
                if (iHp == -1) {
                    z3 = true;
                } else {
                    if (iHp != 6) {
                        copyOnWriteArrayList.remove(ebVar2);
                    }
                    if (z2) {
                        if (ebVar == null) {
                            ebVar = ebVar2;
                        }
                        com.byazt.gp.hp hpVar = new com.byazt.gp.hp();
                        hpVar.j(ebVar2.hp.getLoadSort());
                        hpVar.w(ebVar2.hp.getShowSort());
                        hpVar.l(ebVar2.hp.getAdNetworkSlotId());
                        hpVar.l(iHp);
                        hpVar.hp(ebVar2.hp.isHasShown() ? 1 : 0);
                        arrayList.add(hpVar);
                    }
                }
            }
            if (z3) {
                return 3;
            }
            if (z2 && ebVar != null) {
                a.hp(lVar, ebVar.hp, hp(arrayList));
            }
            return 2;
        }
        com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- 广告复用:当前没有广告缓存 -------adnSlotId: " + str);
        return 1;
    }

    private String hp(List<com.byazt.gp.hp> list) {
        if (list.size() > 0) {
            StringBuilder sb = new StringBuilder("[");
            for (int i2 = 0; i2 < list.size(); i2++) {
                sb.append(list.get(i2).hp());
                if (i2 == list.size() - 1) {
                    sb.append("]");
                } else {
                    sb.append(",");
                }
            }
            try {
                return new JSONArray(sb.toString()).toString();
            } catch (JSONException e2) {
                com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- 广告复用：adCannotUseInfo json err: " + e2.getMessage());
            }
        }
        return list.size() > 0 ? "json error" : HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(String str, com.byazt.iqm.l lVar, Map<String, Object> map, Context context, gu guVar, q qVar) {
        String strHp;
        if (lVar == null) {
            com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- 广告复用:show时预请求取消，adSlot为空 -------: " + str);
            return;
        }
        if (context == null) {
            com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- 广告复用:show时预请求取消，context为null -------: " + str);
            return;
        }
        e eVarW = w(lVar.sz(), str);
        if (eVarW != null) {
            try {
                strHp = com.byazt.qca.jx.hp(eVarW.eb(), com.byazt.qca.jx.hp(eVarW.v()), com.byazt.rt.hp.hp(eVarW.zy(), eVarW.a()));
            } catch (Throwable unused) {
            }
        } else {
            strHp = null;
        }
        if (!TextUtils.isEmpty(strHp) && com.byazt.qca.jx.l(strHp) && eVarW != null) {
            for (String str2 : this.hp) {
                if (TextUtils.equals(str2, eVarW.v())) {
                    com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- 广告复用:show时预请求取消，" + str2 + "为单例模式 -------: " + str);
                    return;
                }
            }
            int iIntValue = this.eb.get(str) != null ? this.eb.get(str).intValue() : -1;
            com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- 广告复用:show时预请求开始 -------: " + str);
            com.byazt.xl.l lVarHp = com.byazt.xl.l.hp(eVarW, (com.byazt.kq.hp) null);
            lVarHp.jx(4);
            lVarHp.l(1);
            int i2 = iIntValue;
            com.byazt.ewl.hp hpVarHp = com.byazt.mey.jx.hp(lVarHp, lVar, new C0409hp(lVar, eVarW, lVarHp, qVar, i2));
            if (hpVarHp != null) {
                if (!com.byazt.lyn.gu.hp().jx(lVar.sz(), eVarW.vv())) {
                    com.byazt.aw.l.hp("TMe", "adn 代码位预请求触发次数拦截............");
                    Pair<String, String> pairHp = com.byazt.lyn.gu.hp().hp(lVar.sz(), eVarW.vv());
                    if (pairHp != null) {
                        com.byazt.le.l lVar2 = new com.byazt.le.l(41041, com.byazt.dq.hp.hp(41041), (String) pairHp.second, (String) pairHp.first);
                        a.hp(eVarW, lVar, hp().hp(eVarW.vv()), true, 2, i2, 4, 1, lVar2, -1L, false, false, 0L);
                        a.hp(lVar2, lVar, eVarW, i2, 4, 1, hp().hp(eVarW.vv()), 0L, (String) null, (String) null, (String) null, 0L);
                        return;
                    }
                    return;
                }
                a.hp(eVarW, lVar, hp().hp(eVarW.vv()), lVarHp.w(), 3, lVarHp.jx(), 4, 1, null, lVarHp.j(), false, false, 0L);
                hpVarHp.adnStartLoad(context, lVarHp, lVar, com.byazt.mey.jx.hp(lVarHp, lVar, map));
                com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- 广告复用:show时预请求已发完 -------: " + str);
                return;
            }
            a.hp(eVarW, lVar, 4, 1);
            return;
        }
        com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- 广告复用:show时预请求取消，className或wfcBean为空, className: " + strHp + ", wfcBean: " + eVarW + ", adnSlotId: " + str);
    }
}
