package com.octopus.ad.internal;

import android.content.Context;
import android.text.TextUtils;
import com.octopus.ad.utils.ThreadUtils;

/* loaded from: classes4.dex */
public class m extends com.octopus.ad.internal.c.d {

    /* renamed from: a, reason: collision with root package name */
    private final String f34953a;

    public m(String str) {
        super(true);
        this.f34953a = str;
    }

    @Override // com.octopus.ad.internal.c.d
    public void a(com.octopus.ad.internal.c.e eVar) {
        Context contextL = q.a().l();
        if (eVar != null && !TextUtils.isEmpty(eVar.d())) {
            try {
                if (!"{}".equals(eVar.d())) {
                    com.octopus.ad.internal.c.o.a(contextL, "responseBody", eVar.d());
                }
                com.octopus.ad.internal.c.o.a(contextL, "lastReqTime", Long.valueOf(com.octopus.ad.d.b.i.d()));
            } catch (Exception e2) {
                com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
            }
        }
        ThreadUtils.runOnThreadPool(new com.octopus.ad.d.b.b(contextL));
    }

    @Override // com.octopus.ad.internal.c.d
    public String a() {
        return this.f34953a;
    }
}
