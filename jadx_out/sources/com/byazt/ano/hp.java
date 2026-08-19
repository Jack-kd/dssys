package com.byazt.ano;

import android.text.TextUtils;
import com.byazt.gp.eb;
import com.byazt.iqm.l;
import com.byazt.jt.l;
import com.byazt.rt.jx;
import com.byazt.zg.hq;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

@com.byazt.kj.hp(hp = {0, 1, 2024, 28})
/* loaded from: classes2.dex */
public class hp {

    /* renamed from: l, reason: collision with root package name */
    public static volatile hp f18046l;
    public final Map<Integer, CopyOnWriteArrayList<eb>> hp = new ConcurrentHashMap();
    public final Comparator<eb> jx = new Comparator<eb>() { // from class: com.byazt.ano.hp.1
        @Override // java.util.Comparator
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public int compare(eb ebVar, eb ebVar2) {
            jx jxVar;
            if (ebVar != null && ebVar2 != null && (jxVar = ebVar.hp) != null && ebVar2.hp != null) {
                if (jxVar.getStrategyCpm() > ebVar2.hp.getStrategyCpm()) {
                    return -1;
                }
                if (ebVar.hp.getStrategyCpm() < ebVar2.hp.getStrategyCpm()) {
                    return 1;
                }
                if (ebVar.hp.getStrategyCpm() == ebVar2.hp.getStrategyCpm() && ebVar.hp.getAdNetworkPlatformId() == 1) {
                    return -1;
                }
            }
            return 0;
        }
    };

    private hp() {
    }

    public static hp hp() {
        if (f18046l == null) {
            synchronized (hp.class) {
                try {
                    if (f18046l == null) {
                        f18046l = new hp();
                    }
                } finally {
                }
            }
        }
        return f18046l;
    }

    private static boolean l(List<jx> list, jx jxVar) {
        for (jx jxVar2 : list) {
            if (jxVar != null && jxVar2 == jxVar) {
                return true;
            }
        }
        return false;
    }

    public boolean l(l lVar) {
        Map<String, Object> mapR;
        if (lVar == null || (mapR = lVar.r()) == null) {
            return false;
        }
        Object obj = mapR.get("request_half_screen");
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        return false;
    }

    public synchronized void hp(l lVar, List<jx> list) {
        try {
            if (com.byazt.di.l.l().s()) {
                if (lVar == null) {
                    return;
                }
                if (lVar.vq()) {
                    return;
                }
                StringBuilder sb = new StringBuilder("广告位：");
                sb.append(lVar.sz());
                sb.append("  type:");
                sb.append(lVar.ec());
                sb.append(" show后把二价广告放入公共缓存池 数量：");
                sb.append(list == null ? "没有二价" : Integer.valueOf(list.size()));
                com.byazt.aw.l.j(MediationConstant.TAG, sb.toString());
                if (list != null && !list.isEmpty()) {
                    CopyOnWriteArrayList<eb> copyOnWriteArrayList = this.hp.get(Integer.valueOf(lVar.ec()));
                    if (copyOnWriteArrayList == null) {
                        copyOnWriteArrayList = new CopyOnWriteArrayList<>();
                    }
                    for (jx jxVar : list) {
                        com.byazt.aw.l.j(MediationConstant.TAG, "广告位：" + lVar.sz() + "  代码位：" + jxVar.getAdNetworkSlotId() + "   adnName:" + jxVar.getAdnName() + "  loadSort:" + jxVar.getLoadSort() + "  showSort:" + jxVar.getShowSort() + "  ecpm:" + jxVar.getCpm());
                        if (!hp(copyOnWriteArrayList, jxVar)) {
                            copyOnWriteArrayList.add(new eb(jxVar, 0L, lVar));
                        }
                    }
                    Iterator<eb> it = copyOnWriteArrayList.iterator();
                    while (it.hasNext()) {
                        eb next = it.next();
                        if (!next.w()) {
                            copyOnWriteArrayList.remove(next);
                        }
                    }
                    hq.hp(copyOnWriteArrayList, this.jx);
                    while (3 < copyOnWriteArrayList.size()) {
                        copyOnWriteArrayList.remove(3);
                    }
                    com.byazt.aw.l.j(MediationConstant.TAG, "广告位：" + lVar.sz() + "  type:" + lVar.ec() + "  公共缓存池二价广告的数量：" + copyOnWriteArrayList.size());
                    this.hp.put(Integer.valueOf(lVar.ec()), copyOnWriteArrayList);
                }
            }
        } finally {
        }
    }

    public synchronized List<eb> hp(l lVar) {
        if (lVar == null) {
            return null;
        }
        try {
            CopyOnWriteArrayList<eb> copyOnWriteArrayList = this.hp.get(Integer.valueOf(lVar.ec()));
            if (copyOnWriteArrayList != null && !copyOnWriteArrayList.isEmpty()) {
                int iB = lVar.ec() == 5 ? lVar.b() : 1;
                ArrayList arrayList = new ArrayList();
                for (eb ebVar : copyOnWriteArrayList) {
                    if (arrayList.size() >= iB) {
                        break;
                    }
                    if (ebVar.eb() && ebVar.hp != null) {
                        com.byazt.aw.l.l(MediationConstant.TAG, "--==-- 公共缓存池，广告：" + ebVar.l() + "  adnName:" + ebVar.hp.getAdnName() + " showSort:" + ebVar.hp.getShowSort() + " 暂不可用， 已经被使用中...");
                    }
                    if (hp(lVar, ebVar.j(), ebVar.hp) && ebVar.w() && !ebVar.eb()) {
                        arrayList.add(ebVar);
                        copyOnWriteArrayList.remove(ebVar);
                    }
                }
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    ((eb) obj).l(true);
                }
                return arrayList;
            }
            return null;
        } finally {
        }
    }

    public static List<jx> hp(l lVar, List<jx> list, List<jx> list2) {
        if (!com.byazt.di.l.l().s() || lVar == null || list == null || list.isEmpty() || list2 == null || list2.isEmpty()) {
            return null;
        }
        int iB = lVar.ec() == 5 ? lVar.b() : 1;
        ArrayList arrayList = new ArrayList();
        for (jx jxVar : list2) {
            if (!l(list, jxVar)) {
                if (arrayList.size() >= iB) {
                    break;
                }
                if (!jxVar.isCustomAd() && !jxVar.isServerBiddingAd() && (!jxVar.isNormalAd() || jxVar.getStrategyCpm() > 0.0d)) {
                    arrayList.add(jxVar);
                }
            }
        }
        return arrayList;
    }

    private boolean hp(List<eb> list, jx jxVar) {
        for (eb ebVar : list) {
            if (ebVar != null && jxVar != null && ebVar.hp == jxVar) {
                return true;
            }
        }
        return false;
    }

    private boolean hp(l lVar, l lVar2, jx jxVar) {
        if (lVar == null || lVar2 == null || jxVar == null || lVar.ec() != lVar2.ec()) {
            return false;
        }
        if ((lVar.ec() == 7 || lVar.ec() == 10) && lVar.ud() == lVar2.ud()) {
            return true;
        }
        if (lVar.ec() != 3) {
            return (lVar.ec() == 1 || lVar.ec() == 5) && lVar.ns() == lVar2.ns() && lVar.cx() == lVar2.cx();
        }
        if (TextUtils.equals(MediationConstant.ADN_GDT, jxVar.getAdnName())) {
            return (l(lVar) && jxVar.getOriginType() == 2) || !(l(lVar) || jxVar.getOriginType() == 2);
        }
        return true;
    }

    public static void hp(l lVar, String str) {
        if (TextUtils.isEmpty(str) || lVar == null) {
            return;
        }
        if (TextUtils.isEmpty(lVar.e())) {
            lVar.jx(lVar.sz());
        }
        if (str.equals(lVar.sz())) {
            return;
        }
        l.hp hpVar = new l.hp(new com.byazt.jt.l(lVar.pu(), com.byazt.el.hp.l()));
        hpVar.j(str);
        lVar.hp(com.byazt.aqw.hp.hp(hpVar.hp()));
    }
}
