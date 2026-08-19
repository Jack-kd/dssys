package com.anythink.core.common.m;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.AdError;
import java.security.NoSuchAlgorithmException;
import java.util.Map;

/* loaded from: classes2.dex */
public final class r extends AbstractC1114b {

    /* renamed from: a, reason: collision with root package name */
    private String f5858a;

    public r() {
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final int a() {
        return 2;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String b() throws NoSuchAlgorithmException {
        long jCurrentTimeMillis = System.currentTimeMillis();
        String strC = com.anythink.core.common.v.n.c(String.valueOf(jCurrentTimeMillis));
        if (TextUtils.isEmpty(this.f5858a)) {
            StringBuilder sb = new StringBuilder();
            com.anythink.core.common.i.a();
            sb.append(com.anythink.core.common.i.b());
            sb.append("?t=");
            sb.append(jCurrentTimeMillis);
            sb.append("&sign=");
            sb.append(strC);
            return sb.toString();
        }
        String strC2 = com.anythink.core.common.v.n.c(jCurrentTimeMillis + "_" + this.f5858a);
        StringBuilder sb2 = new StringBuilder();
        com.anythink.core.common.i.a();
        sb2.append(com.anythink.core.common.i.b());
        sb2.append("?t=");
        sb2.append(jCurrentTimeMillis);
        sb2.append("&sign=");
        sb2.append(strC2);
        sb2.append("&app_id=");
        sb2.append(this.f5858a);
        return sb2.toString();
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Map<String, String> c() {
        return null;
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
    public final boolean m() {
        return true;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final com.anythink.core.common.m.b.d o() {
        return com.anythink.core.common.m.b.d.a("eu_traffic");
    }

    public r(String str) {
        this.f5858a = str;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Object a(Object obj) {
        return obj;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void a(AdError adError) {
    }
}
