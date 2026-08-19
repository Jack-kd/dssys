package com.smartdigimkt.r4;

import android.text.TextUtils;
import com.smartdigimkt.z.p;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class k extends d {

    /* renamed from: a, reason: collision with root package name */
    public final JSONObject f43073a;

    /* renamed from: b, reason: collision with root package name */
    public final int f43074b;

    /* renamed from: c, reason: collision with root package name */
    public final com.smartdigimkt.m3.k f43075c;

    public k(int i2, com.smartdigimkt.m3.k kVar, String str, LinkedHashMap linkedHashMap) {
        this.f43074b = i2;
        this.f43075c = kVar;
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.f43073a = new JSONObject(str);
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                this.f43073a.put((String) entry.getKey(), entry.getValue());
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.smartdigimkt.r4.d
    public final Map e() {
        com.smartdigimkt.m3.e eVar;
        Map mapE = super.e();
        com.smartdigimkt.m3.k kVar = this.f43075c;
        if (kVar != null && (eVar = kVar.f41832w) != null && p.a(eVar, this.f43074b)) {
            String strP = com.smartdigimkt.c5.h.p();
            if (!TextUtils.isEmpty(strP)) {
                ((HashMap) mapE).put("User-Agent", strP);
            }
        }
        return mapE;
    }

    @Override // com.smartdigimkt.r4.d
    public final byte[] h() {
        return d.a(this.f43073a.toString());
    }

    @Override // com.smartdigimkt.r4.d
    public final int j() {
        return 1;
    }

    @Override // com.smartdigimkt.r4.d
    public final String k() {
        com.smartdigimkt.n3.a aVar;
        com.smartdigimkt.a5.a aVarA = com.smartdigimkt.z4.d.c().a();
        String str = "";
        if (aVarA != null && (aVar = aVarA.f39344F) != null) {
            str = aVar.f42162c;
        }
        return TextUtils.isEmpty(str) ? "https://adx-tk-sz.statisticslinks.com/v1" : str;
    }
}
