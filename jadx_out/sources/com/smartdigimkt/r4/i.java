package com.smartdigimkt.r4;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes5.dex */
public final class i extends d {

    /* renamed from: a, reason: collision with root package name */
    public final String f43067a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f43068b;

    public i(String str, String str2, boolean z2) {
        this.f43068b = z2;
        this.f43067a = str.replaceAll("\\{req_id\\}", str2 == null ? "" : str2);
    }

    @Override // com.smartdigimkt.r4.d
    public final Map e() {
        if (!this.f43068b) {
            return null;
        }
        HashMap map = new HashMap();
        String strP = com.smartdigimkt.c5.h.p();
        if (!TextUtils.isEmpty(strP)) {
            map.put("User-Agent", strP);
        }
        return map;
    }

    @Override // com.smartdigimkt.r4.d
    public final byte[] h() {
        return new byte[0];
    }

    @Override // com.smartdigimkt.r4.d
    public final int j() {
        return 2;
    }

    @Override // com.smartdigimkt.r4.d
    public final String k() {
        return this.f43067a;
    }
}
