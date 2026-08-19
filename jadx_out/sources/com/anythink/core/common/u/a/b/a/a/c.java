package com.anythink.core.common.u.a.b.a.a;

import com.anythink.core.common.v.n;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class c extends b {

    /* renamed from: k, reason: collision with root package name */
    private int f7765k;

    public c() {
        this.f7763f = System.currentTimeMillis();
        StringBuilder sb = new StringBuilder();
        sb.append(this.f7763f);
        this.f7758a = n.a(sb.toString());
    }

    public final JSONObject a() {
        try {
            return new JSONObject(this.f7762e);
        } catch (JSONException unused) {
            return null;
        }
    }

    public final int b() {
        return this.f7765k;
    }

    public final void a(int i2) {
        this.f7765k = i2;
    }
}
