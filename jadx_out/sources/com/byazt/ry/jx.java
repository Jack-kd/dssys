package com.byazt.ry;

import android.annotation.SuppressLint;
import android.util.SparseArray;
import com.byazt.ctq.a;
import com.byazt.ctq.eb;
import com.byazt.ctq.s;
import com.byazt.jkd.gu;
import com.byazt.jz.sz;
import com.byazt.ke.j;
import com.byazt.pg.ud;
import com.byazt.ym.ATSKeep;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 256, 30})
@ATSKeep
/* loaded from: classes3.dex */
public final class jx implements ud, Function {
    public static final Map<String, com.byazt.ctq.w> hp = new ConcurrentHashMap();

    /* renamed from: l, reason: collision with root package name */
    public static final Map<String, com.byazt.ctq.jx> f25393l = new ConcurrentHashMap();
    public static final Map<String, eb> jx = new ConcurrentHashMap();

    @com.byazt.kj.hp(hp = {0, 1, 256, 219})
    public static class hp {

        @SuppressLint({"StaticFieldLeak"})
        public static final j.hp hp = jx.j();

        /* renamed from: l, reason: collision with root package name */
        public static final j.hp f25394l = jx.jx();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static j.hp j() {
        gu guVarL = sz.l();
        guVarL.bx();
        return new j.hp().hp(sz.getContext()).hp(1).l(guVarL.qb());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static j.hp jx() {
        return new j.hp().hp(sz.getContext()).hp(1);
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == 1) {
            Object appContext = sparseArray.get(1);
            Object obj2 = sparseArray.get(2);
            if (appContext != null) {
                appContext = com.byazt.ym.j.getAppContext((String) appContext);
            }
            com.byazt.ctq.w layerIsolateStore = getLayerIsolateStore((com.byazt.pg.hp) appContext, (String) obj2);
            return layerIsolateStore != null ? new a(layerIsolateStore) : layerIsolateStore;
        }
        if (iIntValue == 2) {
            Object appContext2 = sparseArray.get(1);
            Object obj3 = sparseArray.get(2);
            if (appContext2 != null) {
                appContext2 = com.byazt.ym.j.getAppContext((String) appContext2);
            }
            com.byazt.ctq.jx globalStorage = getGlobalStorage((com.byazt.pg.hp) appContext2, (String) obj3);
            return globalStorage != null ? new com.byazt.ctq.j(globalStorage) : globalStorage;
        }
        if (iIntValue != 3) {
            return null;
        }
        Object appContext3 = sparseArray.get(1);
        Object obj4 = sparseArray.get(2);
        if (appContext3 != null) {
            appContext3 = com.byazt.ym.j.getAppContext((String) appContext3);
        }
        eb versionIsolateStore = getVersionIsolateStore((com.byazt.pg.hp) appContext3, (String) obj4);
        return versionIsolateStore != null ? new s(versionIsolateStore) : versionIsolateStore;
    }

    @Override // com.byazt.pg.ud
    public com.byazt.ctq.jx getGlobalStorage(com.byazt.pg.hp hpVar, String str) {
        boolean z2;
        com.byazt.ctq.jx hpVar2;
        boolean z3 = true;
        if (str == null || !str.startsWith("gm_") || str.length() <= 3) {
            z2 = false;
        } else {
            str = str.substring(3);
            z2 = true;
        }
        String strL = com.byazt.pz.hp.l(hpVar, str);
        Map<String, com.byazt.ctq.jx> map = f25393l;
        com.byazt.ctq.jx jxVar = map.get(strL);
        if (jxVar != null) {
            return jxVar;
        }
        synchronized (map) {
            try {
                hpVar2 = map.get(strL);
                if (hpVar2 == null) {
                    if (hpVar == null || !hpVar.isSupportMultiProcess()) {
                        z3 = false;
                    }
                    hpVar2 = new com.byazt.ry.hp(hp(strL, z3, z2));
                    map.put(strL, hpVar2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return hpVar2;
    }

    @Override // com.byazt.pg.ud
    public com.byazt.ctq.w getLayerIsolateStore(com.byazt.pg.hp hpVar, String str) {
        boolean z2;
        com.byazt.ctq.w lVar;
        boolean z3 = true;
        if (str == null || !str.startsWith("gm_") || str.length() <= 3) {
            z2 = false;
        } else {
            str = str.substring(3);
            z2 = true;
        }
        String strHp = com.byazt.pz.hp.hp(hpVar, str);
        Map<String, com.byazt.ctq.w> map = hp;
        com.byazt.ctq.w wVar = map.get(strHp);
        if (wVar != null) {
            return wVar;
        }
        synchronized (map) {
            try {
                lVar = map.get(strHp);
                if (lVar == null) {
                    if (hpVar == null || !hpVar.isSupportMultiProcess()) {
                        z3 = false;
                    }
                    lVar = new l(hp(strHp, z3, z2));
                    map.put(strHp, lVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return lVar;
    }

    @Override // com.byazt.pg.ud
    public eb getVersionIsolateStore(com.byazt.pg.hp hpVar, String str) {
        eb wVar;
        String strJx = com.byazt.pz.hp.jx(hpVar, str);
        Map<String, eb> map = jx;
        eb ebVar = map.get(strJx);
        if (ebVar != null) {
            return ebVar;
        }
        synchronized (map) {
            try {
                wVar = map.get(strJx);
                if (wVar == null) {
                    wVar = new w(hp(strJx, hpVar != null && hpVar.isSupportMultiProcess(), false));
                    map.put(strJx, wVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return wVar;
    }

    private static com.byazt.ow.w hp(String str, boolean z2, boolean z3) {
        return z3 ? hp.f25394l.hp(z2).hp(str).hp() : hp.hp.hp(z2).hp(str).hp();
    }
}
