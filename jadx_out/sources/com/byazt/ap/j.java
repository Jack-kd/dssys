package com.byazt.ap;

import android.text.TextUtils;
import com.byazt.uhg.jl;
import com.byazt.uhg.k;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@com.byazt.kj.hp(hp = {0, 1, 1229, 38})
/* loaded from: classes2.dex */
public abstract class j {
    public Map<String, Object> hp;
    public jl jx;

    /* renamed from: l, reason: collision with root package name */
    public Object f18051l;

    /* renamed from: j, reason: collision with root package name */
    public String f18050j = null;

    /* renamed from: w, reason: collision with root package name */
    public final Map<String, String> f18052w = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public String f18049a = null;
    public boolean eb = false;

    public j(jl jlVar) {
        this.jx = jlVar;
        l(UUID.randomUUID().toString());
    }

    public abstract com.byazt.oyr.l hp();

    public void hp(String str) {
        this.f18049a = str;
    }

    public void j(Map<String, String> map) {
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                this.f18052w.put(entry.getKey(), entry.getValue());
            }
        }
    }

    public Map<String, Object> jx() {
        return this.hp;
    }

    public void l(String str, String str2) {
        this.f18052w.put(str, str2);
    }

    public void w(Map<String, Object> map) {
        this.hp = map;
    }

    public void hp(k.hp hpVar) {
        if (hpVar != null && this.f18052w.size() > 0) {
            for (Map.Entry<String, String> entry : this.f18052w.entrySet()) {
                String key = entry.getKey();
                if (!TextUtils.isEmpty(key)) {
                    String value = entry.getValue();
                    if (value == null) {
                        value = "";
                    }
                    hpVar.l(key, value);
                }
            }
        }
    }

    public void l(String str) {
        this.f18050j = str;
    }

    public Object j() {
        return this.f18051l;
    }

    public String l() {
        return this.f18050j;
    }

    public void hp(boolean z2) {
        this.eb = z2;
    }
}
