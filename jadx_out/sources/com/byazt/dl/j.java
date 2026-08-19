package com.byazt.dl;

import android.text.TextUtils;
import com.byazt.aw.w;
import com.byazt.lyn.gu;
import com.byazt.lyn.jl;
import com.byazt.lyn.zy;
import com.byazt.tgw.e;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 33, 38})
/* loaded from: classes2.dex */
public class j {
    public static volatile j hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile Map<Integer, com.byazt.ctq.jx> f19160l = new ConcurrentHashMap();
    public Map<String, com.byazt.tgw.l> jx = new ConcurrentHashMap();

    /* renamed from: j, reason: collision with root package name */
    public int f19159j = -1;

    private j() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        ArrayList arrayList = new ArrayList(Arrays.asList(1, 2, 3, 4, 5, 6, 7, 8, 9, 10));
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            hp(((Integer) obj).intValue()).clear();
        }
    }

    private void l(JSONArray jSONArray, boolean z2, boolean z3) throws JSONException {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return;
        }
        try {
            this.jx.clear();
            com.byazt.mey.j.f22962l.clear();
            ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                if (!z2) {
                    jSONObject.put("save_time", System.currentTimeMillis());
                }
                com.byazt.tgw.l lVarHp = com.byazt.tgw.l.hp(jSONObject, false);
                if (lVarHp != null && !TextUtils.isEmpty(lVarHp.ky())) {
                    this.jx.put(lVarHp.ky(), lVarHp);
                    concurrentHashMap.put(lVarHp.ky(), jSONObject.toString());
                }
            }
            hp(concurrentHashMap, z3);
            com.byazt.mey.j.hp();
            l(jSONArray.length());
        } catch (JSONException unused) {
        }
    }

    public boolean jx() {
        if (this.f19159j == -1) {
            this.f19159j = com.byazt.lto.hp.hp().getInt("prime_rit_count", -1);
        }
        return this.f19159j <= 0;
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

    /* JADX INFO: Access modifiers changed from: private */
    public com.byazt.ctq.jx hp(int i2) {
        com.byazt.ctq.jx jxVar = this.f19160l.get(Integer.valueOf(i2));
        if (jxVar != null) {
            return jxVar;
        }
        com.byazt.ctq.jx jxVarHp = com.byazt.lto.hp.hp(i2);
        this.f19160l.put(Integer.valueOf(i2), jxVarHp);
        return jxVarHp;
    }

    public void hp(JSONArray jSONArray, boolean z2, boolean z3) {
        l(jSONArray, z2, z3);
        hp(jSONArray);
    }

    private void hp(final JSONArray jSONArray) {
        if (jSONArray == null) {
            return;
        }
        w.j(new Runnable() { // from class: com.byazt.dl.j.2
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.fqv.l.hp().hp(jSONArray);
            }
        });
    }

    private void l(int i2) {
        this.f19159j = i2;
        if (com.byazt.di.l.l().jx()) {
            w.j(new Runnable() { // from class: com.byazt.dl.j.1
                @Override // java.lang.Runnable
                public void run() {
                    com.byazt.lto.hp.hp().put("prime_rit_count", j.this.f19159j);
                }
            });
        } else {
            com.byazt.lto.hp.hp().put("prime_rit_count", this.f19159j);
        }
    }

    public com.byazt.tgw.l hp(String str, int i2, int i3) {
        com.byazt.tgw.l lVarHp;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        com.byazt.tgw.l lVarEb = this.jx.get(str);
        if (lVarEb == null && (lVarEb = com.byazt.tgw.l.eb(hp(i2, str))) != null) {
            this.jx.put(str, lVarEb);
        }
        return (i3 == 102 || (lVarHp = com.byazt.ney.j.hp(lVarEb, i3)) == null) ? lVarEb : lVarHp;
    }

    public void l() {
        Map<String, com.byazt.tgw.l> map = this.jx;
        if (map != null) {
            map.clear();
        }
    }

    public String hp(int i2, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (i2 == 0) {
            arrayList.add(1);
            arrayList.add(2);
            arrayList.add(3);
            arrayList.add(5);
            arrayList.add(7);
            arrayList.add(8);
            arrayList.add(9);
            arrayList.add(10);
        } else {
            arrayList.add(Integer.valueOf(i2));
        }
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            String string = hp(((Integer) obj).intValue()).getString(str, "");
            if (!TextUtils.isEmpty(string)) {
                return string;
            }
        }
        return null;
    }

    private void hp(final Map<String, String> map, final boolean z2) {
        if (map == null || map.isEmpty()) {
            return;
        }
        w.j(new Runnable() { // from class: com.byazt.dl.j.3
            @Override // java.lang.Runnable
            public void run() {
                if (!z2 && !com.byazt.di.hp.jl().e()) {
                    j.this.j();
                }
                for (Map.Entry entry : map.entrySet()) {
                    try {
                        String str = (String) entry.getKey();
                        String str2 = (String) entry.getValue();
                        com.byazt.tgw.l lVar = (com.byazt.tgw.l) j.this.jx.get(str);
                        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && lVar != null) {
                            j.this.hp(lVar.xh()).put(str, str2);
                            j.this.hp(lVar);
                        }
                    } catch (Throwable unused) {
                    }
                }
                map.clear();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(com.byazt.tgw.l lVar) {
        if (lVar == null || lVar.ky() == null) {
            return;
        }
        if (lVar.zy()) {
            if (zy.hp().hp(lVar.jl())) {
                zy.hp().l(lVar.jl());
            }
            if (zy.hp().hp(lVar.gu())) {
                zy.hp().l(lVar.gu());
            }
        } else {
            zy.hp().j(lVar.ky());
            zy.hp().q(lVar.ky());
        }
        for (e eVar : lVar.rz()) {
            if (eVar.j()) {
                if (jl.hp().hp(eVar.jx())) {
                    jl.hp().l(eVar.jx());
                }
                if (gu.hp().hp(eVar.l())) {
                    gu.hp().l(eVar.l());
                }
            } else {
                jl.hp().delete(lVar.ky(), eVar.vv());
                gu.hp().delete(lVar.ky(), eVar.vv());
            }
        }
    }
}
