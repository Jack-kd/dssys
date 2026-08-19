package com.byazt.ql;

import android.content.Context;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1306, 42})
/* loaded from: classes3.dex */
public class k {
    public Context hp;

    /* renamed from: j, reason: collision with root package name */
    public Map<String, Object> f24929j;
    public JSONObject jx;

    /* renamed from: l, reason: collision with root package name */
    public JSONObject f24930l;

    public Context getContext() {
        return this.hp;
    }

    public void hp(Context context) {
        this.hp = context;
    }

    public void l(JSONObject jSONObject) {
        this.jx = jSONObject;
    }

    public void hp(JSONObject jSONObject) {
        this.f24930l = jSONObject;
    }

    public Map<String, Object> l() {
        return this.f24929j;
    }

    public JSONObject hp() {
        return this.jx;
    }

    public void hp(Map<String, Object> map) {
        this.f24929j = map;
    }
}
