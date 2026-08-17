package com.anythink.core.e;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class f {

    /* renamed from: b, reason: collision with root package name */
    private List<Integer> f8801b;

    /* renamed from: a, reason: collision with root package name */
    private int f8800a = 0;

    /* renamed from: c, reason: collision with root package name */
    private int f8802c = TTAdConstant.STYLE_SIZE_RADIO_3_2;

    /* renamed from: d, reason: collision with root package name */
    private int f8803d = 1;

    /* renamed from: e, reason: collision with root package name */
    private float f8804e = 1.0f;

    /* renamed from: f, reason: collision with root package name */
    private int f8805f = 1;

    private void a(int i2) {
        this.f8800a = i2;
    }

    private int f() {
        return this.f8800a;
    }

    public final int b() {
        return this.f8802c;
    }

    public final int c() {
        return this.f8803d;
    }

    public final float d() {
        return this.f8804e;
    }

    public final int e() {
        return this.f8805f;
    }

    private void b(int i2) {
        this.f8802c = i2;
    }

    private void c(int i2) {
        this.f8803d = i2;
    }

    private void d(int i2) {
        this.f8805f = i2;
    }

    public final List<Integer> a() {
        return this.f8801b;
    }

    private void a(List<Integer> list) {
        this.f8801b = list;
    }

    private void a(float f2) {
        this.f8804e = f2;
    }

    public static f a(JSONObject jSONObject) {
        try {
            f fVar = new f();
            fVar.f8800a = jSONObject.optInt("dfp_exec_mode", 0);
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("nw_firm_id");
            fVar.f8801b = new ArrayList();
            if (jSONArrayOptJSONArray != null) {
                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                    fVar.f8801b.add(Integer.valueOf(jSONArrayOptJSONArray.optInt(i2)));
                }
            }
            fVar.f8802c = jSONObject.optInt("bid_wait_window", TTAdConstant.STYLE_SIZE_RADIO_3_2);
            fVar.f8803d = jSONObject.optInt("bid_wait_min_count", 1);
            float fOptDouble = (float) jSONObject.optDouble("dfp_rate", 1.0d);
            if (fOptDouble <= 0.0f) {
                fOptDouble = 1.0f;
            }
            fVar.f8804e = fOptDouble;
            fVar.f8805f = jSONObject.optInt("dfp_fail_fallback", 1);
            if (fVar.f8800a == 1) {
                if (!fVar.f8801b.isEmpty()) {
                    return fVar;
                }
            }
        } catch (Throwable unused) {
        }
        return null;
    }
}
