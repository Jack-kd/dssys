package com.anythink.core.common.m;

import android.content.Context;
import com.anythink.core.api.AdError;
import com.anythink.core.common.h.bf;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class v extends AbstractC1114b {

    /* renamed from: a, reason: collision with root package name */
    bf f5890a;

    public v(bf bfVar) {
        this.f5890a = bfVar;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Object a(Object obj) {
        return null;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String b() {
        return this.f5890a.f3908d;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Map<String, String> c() {
        String str = this.f5890a.f3907c;
        HashMap map = new HashMap();
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                map.put(next, jSONObject.optString(next));
            }
        } catch (Exception unused) {
        }
        return map;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final byte[] d() {
        return new byte[0];
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String e() {
        return null;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Context f() {
        return null;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String g() {
        return null;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Map<String, Object> h() {
        return null;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void l() {
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final boolean p() {
        return true;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void a(AdError adError) {
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final boolean a(int i2) {
        return i2 >= 200 && i2 < 300;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final int a() {
        return this.f5890a.f3906b;
    }
}
