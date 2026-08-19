package com.byazt.bll;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.byazt.js.j;
import com.byazt.js.jx;
import com.byazt.js.w;
import com.byazt.ymw.u;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1277, 28})
/* loaded from: classes2.dex */
public class hp {
    public static volatile hp hp;
    public final JSONObject jx = new JSONObject();

    /* renamed from: l, reason: collision with root package name */
    public final Map<String, Map<String, C0198hp>> f18612l = new ConcurrentHashMap();

    @com.byazt.kj.hp(hp = {0, 1, 1277, 170})
    /* renamed from: com.byazt.bll.hp$hp, reason: collision with other inner class name */
    public static class C0198hp {
        public String hp;

        /* renamed from: j, reason: collision with root package name */
        public List<Long> f18613j;
        public String jx;

        /* renamed from: l, reason: collision with root package name */
        public String f18614l;

        private C0198hp() {
            this.f18613j = new CopyOnWriteArrayList();
        }
    }

    private hp() {
    }

    public static hp hp() {
        if (hp == null) {
            synchronized (hp.class) {
                try {
                    if (hp == null) {
                        hp = new hp();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public JSONObject l() {
        return this.jx;
    }

    private String l(jx jxVar, JSONObject jSONObject) {
        String strJx = jxVar.jx();
        if (strJx != null && !strJx.isEmpty()) {
            try {
                Object objHp = com.byazt.nh.hp.hp(com.byazt.dfp.l.hp(strJx)).hp(jSONObject);
                return objHp != null ? objHp.toString() : "default";
            } catch (Exception e2) {
                u.l("Tmee_TTFeaCalCenter", "calculateGroupKey error:" + e2.toString());
            }
        }
        return "default";
    }

    public void hp(JSONObject jSONObject) {
        List<jx> listL = l.hp().l();
        if (listL == null || listL.isEmpty()) {
            return;
        }
        for (jx jxVar : listL) {
            if (jxVar.eb()) {
                try {
                    hp(jxVar, jSONObject);
                } catch (Throwable th) {
                    u.l("Tmee_TTFeaCalCenter", "processEvent error:" + th.toString());
                }
            }
        }
    }

    private void l(jx jxVar, com.byazt.js.hp hpVar, String str, JSONObject jSONObject) {
        if (jxVar == null || hpVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        long jOptLong = jSONObject.optLong("ts");
        String strHp = jxVar.hp();
        Map<String, C0198hp> concurrentHashMap = this.f18612l.get(strHp);
        if (concurrentHashMap == null) {
            concurrentHashMap = new ConcurrentHashMap<>();
            this.f18612l.put(strHp, concurrentHashMap);
        }
        String str2 = hpVar.l() + "_" + str;
        C0198hp c0198hp = concurrentHashMap.get(str2);
        if (c0198hp == null) {
            c0198hp = new C0198hp();
            c0198hp.hp = "count";
            c0198hp.f18614l = str;
            c0198hp.jx = hpVar.l();
            concurrentHashMap.put(str2, c0198hp);
        }
        c0198hp.f18613j.add(Long.valueOf(jOptLong));
        hp(jxVar, concurrentHashMap);
    }

    private void hp(jx jxVar, JSONObject jSONObject) {
        if (jxVar.hp(jSONObject)) {
            hp(jxVar, l(jxVar, jSONObject), jSONObject);
            hp(jxVar);
        }
    }

    private void hp(jx jxVar, String str, JSONObject jSONObject) {
        List<com.byazt.js.hp> listW = jxVar.w();
        if (listW != null) {
            Iterator<com.byazt.js.hp> it = listW.iterator();
            while (it.hasNext()) {
                hp(jxVar, it.next(), str, jSONObject);
            }
        }
    }

    private void hp(jx jxVar, com.byazt.js.hp hpVar, String str, JSONObject jSONObject) {
        j jVarJx = hpVar.jx();
        if ((jVarJx == null || hp(jVarJx, jSONObject)) && hpVar.hp(jSONObject)) {
            String strHp = hpVar.hp();
            if (TextUtils.isEmpty(strHp)) {
                return;
            }
            strHp.getClass();
            if (strHp.equals("count")) {
                l(jxVar, hpVar, str, jSONObject);
            }
        }
    }

    private void hp(jx jxVar, Map<String, C0198hp> map) {
        w wVarJ;
        if (map == null || map.isEmpty() || (wVarJ = jxVar.j()) == null || !"time".equals(wVarJ.getType())) {
            return;
        }
        long jHp = wVarJ.hp() * 1000;
        for (C0198hp c0198hp : map.values()) {
            for (Long l2 : c0198hp.f18613j) {
                if (l2.longValue() < System.currentTimeMillis() - jHp) {
                    c0198hp.f18613j.remove(l2);
                }
            }
        }
    }

    public void hp(String str) {
        Map<String, C0198hp> map;
        jx jxVarHp;
        w wVarJ;
        if (TextUtils.isEmpty(str) || (map = this.f18612l.get(str)) == null || map.isEmpty() || (jxVarHp = l.hp().hp(str)) == null || (wVarJ = jxVarHp.j()) == null) {
            return;
        }
        long jHp = wVarJ.hp() * 1000;
        for (C0198hp c0198hp : map.values()) {
            for (Long l2 : c0198hp.f18613j) {
                if (l2.longValue() < System.currentTimeMillis() - jHp) {
                    c0198hp.f18613j.remove(l2);
                }
            }
        }
        hp(jxVarHp);
    }

    private boolean hp(j jVar, JSONObject jSONObject) {
        String type = jVar.getType();
        String strHp = jVar.hp();
        if (NotificationCompat.CATEGORY_EVENT.equals(type)) {
            Object objOpt = jSONObject.opt("type");
            if (strHp != null && objOpt != null && strHp.equals(objOpt.toString())) {
                return true;
            }
        }
        return false;
    }

    private void hp(jx jxVar) {
        try {
            Map<String, C0198hp> map = this.f18612l.get(jxVar.hp());
            if (map != null && !map.isEmpty()) {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                for (C0198hp c0198hp : map.values()) {
                    JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject(c0198hp.f18614l);
                    if (jSONObjectOptJSONObject == null) {
                        jSONObjectOptJSONObject = new JSONObject();
                    }
                    jSONObjectOptJSONObject.putOpt(c0198hp.jx, Integer.valueOf(c0198hp.f18613j.size()));
                    jSONObject2.putOpt(c0198hp.f18614l, jSONObjectOptJSONObject);
                }
                jSONObject.putOpt("results", jSONObject2);
                List<com.byazt.js.l> listA = jxVar.a();
                if (listA != null) {
                    for (com.byazt.js.l lVar : listA) {
                        Object objHp = hp(lVar, jSONObject);
                        if (objHp != null) {
                            this.jx.put(lVar.l(), objHp);
                        }
                    }
                }
            }
        } catch (Throwable th) {
            u.l("Tmee_TTFeaCalCenter", "generateOutputs error:" + th.toString());
        }
    }

    private Object hp(com.byazt.js.l lVar, JSONObject jSONObject) {
        String strHp = lVar.hp();
        if (strHp != null && !strHp.isEmpty()) {
            try {
                return com.byazt.nh.hp.hp(com.byazt.dfp.l.hp(strHp)).hp(jSONObject);
            } catch (Throwable th) {
                u.l("Tmee_TTFeaCalCenter", "calculateOutput error:" + th.toString());
            }
        }
        return null;
    }
}
