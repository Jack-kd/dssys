package com.byazt.sm;

import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import com.anythink.core.common.f.f;
import com.byazt.pg.ns;
import com.byazt.ym.gu;
import com.byazt.ym.q;
import com.byazt.ymw.u;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1728, 38})
/* loaded from: classes3.dex */
public class j {
    public volatile ns hp;

    /* renamed from: l, reason: collision with root package name */
    public q f25481l;

    private ns l() {
        if (this.hp == null) {
            this.hp = (ns) com.byazt.ym.j.getService("m_d_s");
        }
        return this.hp;
    }

    public void hp(q qVar) {
        this.f25481l = qVar;
    }

    public Map<String, Object> hp() {
        ns nsVarL = l();
        if (nsVarL == null) {
            u.l(com.byazt.ym.j.TAG, "provideMemoryService: memoryDataService is null");
            return null;
        }
        synchronized (nsVarL) {
            try {
                Object data = nsVarL.getData(-1);
                if (data == null) {
                    ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
                    nsVarL.setData(-1, concurrentHashMap);
                    return concurrentHashMap;
                }
                if (data instanceof Map) {
                    return (Map) data;
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private Object hp(gu guVar) {
        Map<String, Object> mapHp = hp();
        if (mapHp == null) {
            return null;
        }
        String str = guVar.f28046a;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return mapHp.get(str);
    }

    public Pair<Function, Object> hp(gu guVar, com.byazt.pg.hp hpVar) {
        Object objHp = hp(guVar);
        if (objHp == null) {
            return null;
        }
        if (guVar.eb && hpVar != null) {
            if (objHp instanceof Map) {
                Map map = (Map) objHp;
                if (map.isEmpty() || TextUtils.isEmpty(hpVar.getAppId())) {
                    return null;
                }
                return (Pair) map.get(hpVar.getAppId());
            }
            return null;
        }
        if (objHp instanceof Pair) {
            return (Pair) objHp;
        }
        u.l(com.byazt.ym.j.TAG, "provideMemoryService:noContextService serviceObj is not Pair, key: " + guVar.f28046a);
        return null;
    }

    public void hp(gu guVar, com.byazt.pg.hp hpVar, Object obj, Function function) throws JSONException {
        Map map;
        Map<String, Object> mapHp = hp();
        if (mapHp == null) {
            return;
        }
        String str = guVar.f28046a;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (!guVar.hp.isAssignableFrom(obj.getClass())) {
            if (this.f25481l != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.putOpt(f.a.f3242b, str);
                    jSONObject.putOpt(LiveConfigKey.ORIGIN, obj.getClass().getName());
                    jSONObject.putOpt("apiClazz", guVar.hp.getName());
                } catch (JSONException unused) {
                }
                this.f25481l.hp(6, jSONObject.toString(), new RuntimeException("newService is not assignable to apiClazz"));
                return;
            }
            return;
        }
        Object obj2 = mapHp.get(str);
        if (guVar.eb && hpVar != null) {
            String appId = hpVar.getAppId();
            if (obj2 instanceof Map) {
                map = (Map) obj2;
                Pair pair = (Pair) map.get(appId);
                if (pair != null) {
                    hp(guVar, pair.second, obj);
                }
            } else {
                map = new HashMap();
                mapHp.put(str, map);
            }
            map.put(appId, new Pair(function, obj));
            return;
        }
        if (obj2 instanceof Pair) {
            hp(guVar, ((Pair) obj2).second, obj);
        }
        mapHp.put(str, new Pair(function, obj));
    }

    public void hp(gu guVar, com.byazt.ym.hp hpVar) {
        Map map;
        Pair<Function, Object> pairHp;
        Map<String, Object> mapHp = hp();
        if (mapHp == null) {
            return;
        }
        String str = guVar.f28046a;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Object obj = mapHp.get(str);
        if (!guVar.eb) {
            if (obj instanceof Pair) {
                Pair pair = (Pair) obj;
                if (com.byazt.glv.hp.hp((Function) pair.first, guVar.f28046a) >= guVar.jx || (pairHp = hpVar.jx().hp(guVar, null, false)) == null) {
                    return;
                }
                hp(guVar, pair.second, pairHp.second);
                mapHp.put(str, pairHp);
                hpVar.j().hp(guVar, null, pairHp.second, (Function) pairHp.first, true);
                return;
            }
            return;
        }
        if (!(obj instanceof Map) || (map = (Map) obj) == null || map.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList(map.entrySet());
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            int i3 = i2 + 1;
            Map.Entry entry = (Map.Entry) arrayList.get(i2);
            Pair pair2 = (Pair) entry.getValue();
            if (com.byazt.glv.hp.hp((Function) pair2.first, guVar.f28046a) < guVar.jx) {
                hp hpVarJx = hpVar.jx();
                com.byazt.pg.hp hpVarHp = hpVar.hp((String) entry.getKey());
                Pair<Function, Object> pairHp2 = hpVarJx.hp(guVar, hpVarHp, false);
                if (pairHp2 != null) {
                    hp(guVar, pair2.second, pairHp2.second);
                    map.put(entry.getKey(), pairHp2);
                    hpVar.j().hp(guVar, hpVarHp, pairHp2.second, (Function) pairHp2.first, true);
                }
            }
            i2 = i3;
        }
    }

    private void hp(gu guVar, Object obj, Object obj2) {
        Object objHp;
        int[] iArr = guVar.f28052s;
        if (iArr == null || iArr.length <= 0 || (objHp = hp((Function) obj)) == null) {
            return;
        }
        hp((Function) obj2, objHp);
    }

    private void hp(Function function, Object obj) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, -3);
        sparseArray.put(1, obj);
        function.apply(sparseArray);
    }

    private Object hp(Function function) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, -2);
        return function.apply(sparseArray);
    }
}
