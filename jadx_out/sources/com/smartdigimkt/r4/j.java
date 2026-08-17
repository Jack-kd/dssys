package com.smartdigimkt.r4;

import android.text.TextUtils;
import com.smartdigimkt.z.p;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes5.dex */
public final class j extends d {

    /* renamed from: a, reason: collision with root package name */
    public final int f43069a;

    /* renamed from: b, reason: collision with root package name */
    public String f43070b;

    /* renamed from: c, reason: collision with root package name */
    public final com.smartdigimkt.m3.k f43071c;

    /* renamed from: d, reason: collision with root package name */
    public final Map f43072d;

    public j(int i2, com.smartdigimkt.m3.k kVar, String str, LinkedHashMap linkedHashMap) {
        this.f43069a = i2;
        this.f43070b = str;
        this.f43071c = kVar;
        this.f43072d = linkedHashMap;
    }

    @Override // com.smartdigimkt.r4.d
    public final Map e() {
        if (this.f43071c == null) {
            return null;
        }
        HashMap map = new HashMap();
        com.smartdigimkt.m3.e eVar = this.f43071c.f41832w;
        if (eVar != null && p.a(eVar, this.f43069a)) {
            String strP = com.smartdigimkt.c5.h.p();
            if (!TextUtils.isEmpty(strP)) {
                map.put("User-Agent", strP);
            }
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
        if (this.f43072d != null && !TextUtils.isEmpty(this.f43070b)) {
            try {
                for (Map.Entry entry : this.f43072d.entrySet()) {
                    String str = (String) entry.getKey();
                    this.f43070b = this.f43070b.replaceAll("\\{" + str + "\\}", (String) entry.getValue());
                }
            } catch (Throwable unused) {
            }
        }
        return this.f43070b;
    }

    public final boolean l() {
        com.smartdigimkt.m3.k kVar;
        com.smartdigimkt.m3.e eVar;
        int i2;
        boolean z2 = true;
        try {
            kVar = this.f43071c;
        } catch (Throwable unused) {
        }
        if (kVar == null || (eVar = kVar.f41832w) == null) {
            return true;
        }
        int i3 = this.f43069a;
        if (i3 == 8) {
            int i4 = eVar.f41910Y;
            if (i4 != 1 && i4 == 2) {
                z2 = false;
            }
        } else if (i3 == 9 && (i2 = eVar.f41907X) != 1 && i2 == 2) {
            z2 = false;
        }
        return z2;
    }
}
