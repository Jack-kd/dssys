package com.anythink.core.common.m.d.a;

import com.anythink.core.common.m.d.f;

/* loaded from: classes2.dex */
public class a extends d {

    /* renamed from: a, reason: collision with root package name */
    private static final String f5696a = "a";

    /* renamed from: c, reason: collision with root package name */
    private static final int f5697c = 1;

    @Override // com.anythink.core.common.m.d.a.d
    public final synchronized void a(f fVar, f.a aVar) {
        int iA = a(this.f5703b.getInputStream());
        if (iA != 1) {
            throw new Exception("Response Error Code:".concat(String.valueOf(iA)));
        }
        if (aVar != null) {
            aVar.a(fVar);
        }
    }
}
