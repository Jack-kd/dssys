package com.byazt.gp;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.byazt.bki.zy;
import com.byazt.tgw.e;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 583, 38})
/* loaded from: classes2.dex */
public class j extends com.byazt.xd.hp {
    public static volatile j hp;
    public List<String> gu;
    public int jl;
    public int zy;

    /* renamed from: l, reason: collision with root package name */
    public final Map<String, Integer> f20543l = new HashMap();
    public final Map<String, Long> jx = new HashMap();

    /* renamed from: j, reason: collision with root package name */
    public final Map<String, com.byazt.iqm.l> f20542j = new HashMap();

    /* renamed from: w, reason: collision with root package name */
    public final Map<String, ConcurrentHashMap<String, List<eb>>> f20546w = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final Map<String, Map<String, com.byazt.dq.hp>> f20540a = new HashMap();
    public final Map<String, Boolean> eb = new HashMap();

    /* renamed from: s, reason: collision with root package name */
    public final Map<String, com.byazt.gp.l> f20545s = new HashMap();

    /* renamed from: q, reason: collision with root package name */
    public boolean f20544q = false;

    /* renamed from: e, reason: collision with root package name */
    public int f20541e = 20;

    @com.byazt.kj.hp(hp = {0, 1, 583, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_FAST_MODE})
    public class hp {

        /* renamed from: a, reason: collision with root package name */
        public final l f20554a;
        public int eb;

        /* renamed from: j, reason: collision with root package name */
        public final int f20555j;
        public final int jx;

        /* renamed from: l, reason: collision with root package name */
        public final Activity f20556l;

        /* renamed from: s, reason: collision with root package name */
        public int f20557s;

        /* renamed from: w, reason: collision with root package name */
        public final List<zy> f20558w;

        public hp(Activity activity, List<zy> list, int i2, int i3, l lVar) {
            this.f20556l = activity;
            this.f20558w = list;
            this.jx = i2;
            this.f20555j = i3;
            this.f20554a = lVar;
            this.eb = list.size();
            this.f20557s = list.size();
        }

        public static /* synthetic */ int jx(hp hpVar) {
            int i2 = hpVar.f20557s;
            hpVar.f20557s = i2 - 1;
            return i2;
        }

        public static /* synthetic */ int l(hp hpVar) {
            int i2 = hpVar.eb;
            hpVar.eb = i2 - 1;
            return i2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void hp() {
            zy zyVarRemove;
            for (int i2 = 0; i2 < this.jx; i2++) {
                if (this.f20558w.size() > 0 && (zyVarRemove = this.f20558w.remove(0)) != null) {
                    com.byazt.iqm.l lVarHp = zyVarRemove.hp();
                    String str = zyVarRemove.l().get(0);
                    if (lVarHp == null) {
                        com.byazt.aw.l.hp(MediationConstant.TAG, "预加载preload传入的GMAdSlotBase为空，广告位：".concat(String.valueOf(str)));
                    } else if (lVarHp.ec() == 1) {
                        com.byazt.aw.l.hp(MediationConstant.TAG, "预加载preload传入的GMAdSlotBase为banner类型，不支持该类型预加载，广告位: ".concat(String.valueOf(str)));
                    } else if (lVarHp.ec() == 2) {
                        com.byazt.aw.l.hp(MediationConstant.TAG, "预加载preload传入的GMAdSlotBase为插屏类型，不支持该类型预加载，广告位: ".concat(String.valueOf(str)));
                    } else if (lVarHp.ec() == 9) {
                        com.byazt.aw.l.hp(MediationConstant.TAG, "预加载preload传入的GMAdSlotBase为Draw类型，不支持该类型预加载，广告位: ".concat(String.valueOf(str)));
                    } else {
                        j.this.hp(str, lVarHp);
                        lVarHp.j(str);
                        com.byazt.tgw.l lVarHp2 = com.byazt.dl.j.hp().hp(str, 0, 101);
                        if (lVarHp2 != null) {
                            lVarHp.eb(lVarHp2.xh());
                        } else if (lVarHp.ec() == 8) {
                            lVarHp.eb(10);
                        }
                        j.this.hp(this.f20556l, str, 5, 0, new jx() { // from class: com.byazt.gp.j.hp.1
                            @Override // com.byazt.gp.j.jx
                            public void hp(String str2, boolean z2, int i3, List<com.byazt.rt.jx> list) {
                                hp.l(hp.this);
                                if (!z2) {
                                    hp.jx(hp.this);
                                }
                                com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- pendingLoadNum: " + hp.this.eb);
                                if (hp.this.eb > 0 || hp.this.f20554a == null) {
                                    return;
                                }
                                hp.this.f20554a.hp(hp.this.f20557s <= 0);
                            }
                        });
                    }
                }
            }
            if (this.f20558w.size() > 0) {
                com.byazt.aw.w.hp(new Runnable() { // from class: com.byazt.gp.j.hp.2
                    @Override // java.lang.Runnable
                    public void run() {
                        hp.this.hp();
                    }
                }, this.f20555j * 1000);
            }
        }
    }

    public interface jx {
        void hp(String str, boolean z2, int i2, List<com.byazt.rt.jx> list);
    }

    public interface l {
        void hp(boolean z2);
    }

    private j() {
    }

    private static void a(String str) {
        com.byazt.ctq.w wVarL = com.byazt.ry.j.l(com.byazt.di.hp.jl().zy(), "gm_tt_ad_mediation_sdk_sp");
        String string = wVarL.getString("preload_rit_ts", "");
        try {
            JSONObject jSONObject = TextUtils.isEmpty(string) ? new JSONObject() : new JSONObject(string);
            jSONObject.put(str, System.currentTimeMillis());
            wVarL.put("preload_rit_ts", jSONObject.toString());
        } catch (Throwable unused) {
        }
    }

    public static long w(String str) {
        String string = com.byazt.ry.j.l(com.byazt.di.hp.jl().zy(), "gm_tt_ad_mediation_sdk_sp").getString("preload_rit_ts", "");
        try {
            if (!TextUtils.isEmpty(string)) {
                return new JSONObject(string).optLong(str, -1L);
            }
        } catch (Throwable unused) {
        }
        return -1L;
    }

    public List<eb> j(String str) {
        ArrayList arrayList = new ArrayList();
        ConcurrentHashMap<String, List<eb>> concurrentHashMap = this.f20546w.get(str);
        if (concurrentHashMap != null) {
            Iterator<String> it = concurrentHashMap.keySet().iterator();
            while (it.hasNext()) {
                List<eb> list = concurrentHashMap.get(it.next());
                if (list != null && list.size() > 0) {
                    arrayList.addAll(list);
                }
            }
        }
        if (concurrentHashMap != null) {
            concurrentHashMap.clear();
        }
        Map<String, com.byazt.dq.hp> map = this.f20540a.get(str);
        if (map != null) {
            map.clear();
        }
        return arrayList;
    }

    public boolean jx(String str, int i2) {
        int iL = l(str, i2);
        return iL == 2 || iL == 3 || iL == 4;
    }

    public com.byazt.gp.l jx(String str) {
        return this.f20545s.get(str);
    }

    public int jx() {
        return this.jl;
    }

    public int l(String str, int i2) {
        Integer num;
        if (i2 == 2 || (num = this.f20543l.get(str)) == null) {
            return 0;
        }
        return num.intValue();
    }

    public static j hp() {
        if (hp == null) {
            synchronized (j.class) {
                try {
                    if (hp == null) {
                        hp = new j();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public com.byazt.iqm.l l(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.f20542j.get(str);
    }

    private void l(String str, com.byazt.iqm.l lVar) {
        ConcurrentHashMap<String, List<eb>> concurrentHashMap = this.f20546w.get(str);
        if (concurrentHashMap != null) {
            for (String str2 : concurrentHashMap.keySet()) {
                List<eb> list = concurrentHashMap.get(str2);
                if (list != null && list.size() > 0 && list.get(0) != null) {
                    eb ebVar = list.get(0);
                    if (hp(ebVar, ebVar.j(), lVar, "聚合预缓存") != -1) {
                        concurrentHashMap.remove(str2);
                    }
                }
            }
        }
    }

    public int j() {
        return this.zy;
    }

    public void hp(String str, int i2) {
        this.f20543l.put(str, Integer.valueOf(i2));
    }

    public void hp(String str, long j2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.jx.put(str, Long.valueOf(j2));
    }

    public Long hp(String str) {
        return this.jx.get(str);
    }

    public void l(final Context context, final String str, final int i2) {
        com.byazt.aw.w.hp(new Runnable() { // from class: com.byazt.gp.j.2
            @Override // java.lang.Runnable
            public void run() {
                j.this.hp(context, str, 4, i2, (jx) null);
            }
        });
    }

    public void hp(String str, com.byazt.iqm.l lVar) {
        if (lVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.f20542j.put(str, lVar);
    }

    public List<String> l() {
        return this.gu;
    }

    public void hp(String str, eb ebVar) {
        if (hp(str) == null || hp(str).longValue() == ebVar.hp()) {
            ConcurrentHashMap<String, List<eb>> concurrentHashMap = this.f20546w.get(str);
            String adNetworkSlotId = ebVar.hp.getAdNetworkSlotId();
            if (TextUtils.isEmpty(adNetworkSlotId)) {
                return;
            }
            if (concurrentHashMap == null) {
                CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
                copyOnWriteArrayList.add(ebVar);
                ConcurrentHashMap<String, List<eb>> concurrentHashMap2 = new ConcurrentHashMap<>();
                concurrentHashMap2.put(adNetworkSlotId, copyOnWriteArrayList);
                this.f20546w.put(str, concurrentHashMap2);
                return;
            }
            List<eb> list = concurrentHashMap.get(adNetworkSlotId);
            if (list == null) {
                CopyOnWriteArrayList copyOnWriteArrayList2 = new CopyOnWriteArrayList();
                copyOnWriteArrayList2.add(ebVar);
                concurrentHashMap.put(adNetworkSlotId, copyOnWriteArrayList2);
                return;
            }
            list.add(ebVar);
        }
    }

    public boolean hp(String str, com.byazt.iqm.l lVar, String str2) {
        boolean z2;
        this.eb.put(str, Boolean.FALSE);
        com.byazt.gp.l lVar2 = this.f20545s.get(str);
        if (lVar2 == null) {
            return false;
        }
        List<e> listL = lVar2.l();
        if (com.byazt.aw.l.l()) {
            for (e eVar : listL) {
                com.byazt.aw.l.hp(MediationConstant.TAG, com.byazt.aw.j.hp(str) + "waterfall: " + eVar.v() + ", loadSort: " + eVar.o() + ", showSort: " + eVar.d() + ", eCpm: " + eVar.b());
            }
        }
        boolean[] zArr = {true};
        String strHp = hp(listL, str, lVar, lVar2, zArr);
        l(str, lVar);
        ConcurrentHashMap<String, List<eb>> concurrentHashMap = this.f20546w.get(str);
        if (concurrentHashMap != null) {
            for (int i2 = 0; i2 < listL.size(); i2++) {
                List<eb> list = concurrentHashMap.get(listL.get(i2).vv());
                if (list != null && list.size() > 0) {
                    z2 = true;
                    break;
                }
            }
            z2 = false;
        } else {
            z2 = false;
        }
        if (strHp != null) {
            if (z2) {
                com.byazt.lsx.a.hp(this.f20542j.get(str), strHp);
                return z2;
            }
            lVar.l(3);
            if (zArr[0]) {
                lVar.l(1);
            }
            com.byazt.lsx.a.hp(lVar, strHp);
        }
        return z2;
    }

    private String hp(List<e> list, String str, com.byazt.iqm.l lVar, com.byazt.gp.l lVar2, boolean[] zArr) {
        List<eb> list2;
        if (list.size() <= 0) {
            return null;
        }
        ConcurrentHashMap<String, List<eb>> concurrentHashMap = this.f20546w.get(str);
        if (concurrentHashMap != null && (list2 = concurrentHashMap.get(list.get(0).vv())) != null && list2.size() > 0 && list2.get(0) != null) {
            eb ebVar = list2.get(0);
            if (hp(ebVar, ebVar.j(), lVar, "聚合预请求") == -1) {
                com.byazt.aw.l.hp(MediationConstant.TAG, com.byazt.aw.j.hp(str) + "--==-- 命中最优广告： " + ebVar.hp.getAdNetWorkName() + ", loadSort: " + ebVar.hp.getLoadSort() + ", showSort: " + ebVar.hp.getShowSort());
                return null;
            }
        }
        List<com.byazt.gp.hp> listHp = hp(list, str, concurrentHashMap, lVar, lVar2, zArr);
        if (listHp.size() > 0) {
            StringBuilder sb = new StringBuilder("[");
            for (int i2 = 0; i2 < listHp.size(); i2++) {
                sb.append(listHp.get(i2).hp());
                if (i2 == listHp.size() - 1) {
                    sb.append("]");
                } else {
                    sb.append(",");
                }
            }
            try {
                String string = new JSONArray(sb.toString()).toString();
                com.byazt.aw.l.hp(MediationConstant.TAG, com.byazt.aw.j.hp(str) + "adCannotUseInfo: " + string);
                return string;
            } catch (JSONException e2) {
                com.byazt.aw.l.hp(MediationConstant.TAG, com.byazt.aw.j.hp(str) + "adCannotUseInfo json err: " + e2.getMessage());
            }
        }
        return null;
    }

    private List<com.byazt.gp.hp> hp(List<e> list, String str, Map<String, List<eb>> map, com.byazt.iqm.l lVar, com.byazt.gp.l lVar2, boolean[] zArr) {
        com.byazt.rt.jx jxVar;
        List<eb> list2;
        ArrayList arrayList = new ArrayList();
        int iHp = lVar2.hp();
        for (int i2 = 0; i2 < list.size() && i2 < iHp; i2++) {
            String strVv = list.get(i2).vv();
            com.byazt.gp.hp hpVar = new com.byazt.gp.hp();
            hpVar.l(strVv);
            hpVar.w(list.get(i2).d());
            hpVar.j(list.get(i2).o());
            eb ebVar = (map == null || (list2 = map.get(strVv)) == null || list2.size() <= 0) ? null : list2.get(0);
            if (ebVar != null && (jxVar = ebVar.hp) != null) {
                hpVar.hp(jxVar.isHasShown() ? 1 : 0);
                zArr[0] = false;
                int iHp2 = hp(ebVar, this.f20542j.get(str), lVar, "预缓存");
                if (iHp2 != -1) {
                    hpVar.l(iHp2);
                    arrayList.add(hpVar);
                }
            } else {
                Map<String, com.byazt.dq.hp> map2 = this.f20540a.get(str);
                com.byazt.dq.hp hpVar2 = map2 != null ? map2.get(strVv) : null;
                if (hpVar2 != null) {
                    hpVar.l(3);
                    hpVar.jx(hpVar2.jx);
                    hpVar.hp(hpVar2.f19237j);
                } else {
                    hpVar.l(4);
                }
                arrayList.add(hpVar);
            }
        }
        return arrayList;
    }

    public void hp(final Context context, final String str, final int i2) {
        com.byazt.aw.w.hp(new Runnable() { // from class: com.byazt.gp.j.1
            @Override // java.lang.Runnable
            public void run() {
                j.this.hp(context, str, 2, i2, (jx) null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(Context context, String str, int i2, int i3, jx jxVar) {
        int iL = l(str, i3);
        if (!jx(str, i3)) {
            com.byazt.aw.l.hp(MediationConstant.TAG, com.byazt.aw.j.hp(str) + "--==-- 配置未开启预加载缓存，req_type: " + iL);
            if (jxVar != null) {
                jxVar.hp(str, false, 0, null);
                return;
            }
            return;
        }
        Boolean bool = this.eb.get(str);
        if (bool != null && bool.booleanValue()) {
            com.byazt.aw.l.hp(MediationConstant.TAG, com.byazt.aw.j.hp(str) + "--==-- 已发起过预缓存，还未使用掉，此次不发起");
            if (jxVar != null) {
                jxVar.hp(str, true, 0, null);
                return;
            }
            return;
        }
        com.byazt.iqm.l lVar = this.f20542j.get(str);
        if (lVar == null) {
            com.byazt.aw.l.hp(MediationConstant.TAG, com.byazt.aw.j.hp(str) + "--==-- 预缓存取消，adslot为null，rit：" + str);
            return;
        }
        com.byazt.iqm.l lVar2 = new com.byazt.iqm.l(lVar);
        com.byazt.aw.l.hp(MediationConstant.TAG, com.byazt.aw.j.hp(str) + "--==-- 预缓存开始请求, req_type: " + iL);
        com.byazt.gp.l lVarHp = w.hp(context, str, lVar2.ec());
        this.f20545s.put(str, lVarHp);
        this.eb.put(str, Boolean.TRUE);
        lVar2.j(str);
        lVar2.l(i2);
        lVar2.w(3);
        lVarHp.hp(context, lVar2, jxVar);
        a(str);
    }

    public void hp(int i2) {
        this.f20541e = i2;
    }

    public void hp(final Activity activity, final List<zy> list, final int i2, final int i3) {
        com.byazt.aw.w.hp(new Runnable() { // from class: com.byazt.gp.j.3
            @Override // java.lang.Runnable
            public void run() {
                if (j.this.f20544q) {
                    com.byazt.aw.l.hp(MediationConstant.TAG, "注意：预加载preload只能调用一次");
                    return;
                }
                if (activity == null) {
                    com.byazt.aw.l.hp(MediationConstant.TAG, "预加载preload传入的activity不能是null");
                    return;
                }
                List list2 = list;
                if (list2 == null || list2.size() <= 0) {
                    com.byazt.aw.l.hp(MediationConstant.TAG, "预加载preload传入的requestInfos不能是null或者size为0");
                    return;
                }
                j.this.f20544q = true;
                j.this.jl = i2;
                j.this.zy = i3;
                j.this.gu = new ArrayList();
                for (zy zyVar : list) {
                    if (zyVar != null && zyVar.l() != null) {
                        j.this.gu.addAll(zyVar.l());
                    }
                }
                int i4 = i2;
                int i5 = (i4 <= 0 || i4 > 20) ? 2 : i4;
                int i6 = i3;
                int i7 = (i6 <= 0 || i6 > 10) ? 2 : i6;
                List listHp = j.this.hp((List<zy>) list);
                if (listHp.isEmpty()) {
                    return;
                }
                j.this.new hp(activity, listHp, i5, i7, new l() { // from class: com.byazt.gp.j.3.1
                    @Override // com.byazt.gp.j.l
                    public void hp(boolean z2) {
                        if (z2) {
                            return;
                        }
                        com.byazt.ney.w.j().hp(j.this.f20546w);
                    }
                }).hp();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<zy> hp(List<zy> list) {
        ArrayList arrayList = new ArrayList();
        int i2 = this.f20541e;
        HashSet hashSet = new HashSet();
        for (zy zyVar : list) {
            if (arrayList.size() >= i2) {
                break;
            }
            if (zyVar != null && zyVar.l() != null) {
                for (String str : zyVar.l()) {
                    if (arrayList.size() < i2) {
                        if (!TextUtils.isEmpty(str) && !hashSet.contains(str)) {
                            hashSet.add(str);
                            ArrayList arrayList2 = new ArrayList(1);
                            arrayList2.add(str);
                            arrayList.add(new zy(zyVar.hp(), arrayList2));
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    public void hp(Context context, String str, int i2, com.byazt.iqm.l lVar, com.byazt.rt.jx jxVar, jx jxVar2) {
        com.byazt.gp.jx jxVarHp = a.hp(i2, context, str, lVar == null ? 0 : lVar.ec());
        if (jxVarHp != null) {
            com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- 预缓存补充请求发起 reqType: " + i2);
            jxVarHp.hp(lVar, jxVar, jxVar2);
        }
    }
}
