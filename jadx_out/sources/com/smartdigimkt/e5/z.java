package com.smartdigimkt.e5;

import android.text.TextUtils;
import com.smartdigimkt.sdk.api.format.SDMLossInfo;
import java.util.Map;

/* loaded from: classes5.dex */
public final class z implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.j1.f f40117a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SDMLossInfo f40118b;

    public z(com.smartdigimkt.j1.f fVar, SDMLossInfo sDMLossInfo) {
        this.f40117a = fVar;
        this.f40118b = sDMLossInfo;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.smartdigimkt.j1.f fVar = this.f40117a;
        c0 c0Var = new c0(fVar);
        SDMLossInfo sDMLossInfo = this.f40118b;
        sDMLossInfo.getExtraMap();
        if (!c0Var.a()) {
            try {
                com.smartdigimkt.f5.a aVarA = c0.a(false, fVar, null, sDMLossInfo);
                if (TextUtils.isEmpty(aVarA.f40280f)) {
                    c0.a(aVarA);
                } else {
                    new com.smartdigimkt.q4.h(aVarA.f40276b ? aVarA.f40279e : aVarA.f40280f).a(0, (com.smartdigimkt.l4.b) new a0(aVarA));
                }
            } catch (Throwable unused) {
            }
        }
        com.smartdigimkt.j1.f fVar2 = c0Var.f40080a;
        try {
            com.smartdigimkt.m3.b bVar = fVar2.f41069e;
            com.smartdigimkt.i0.l lVar = new com.smartdigimkt.i0.l(fVar2.f41067c, "");
            Map<String, Object> extraMap = sDMLossInfo.getExtraMap();
            if (!c0Var.a()) {
                extraMap = c0.a(fVar2, sDMLossInfo, (com.smartdigimkt.f5.a) null);
            }
            lVar.f40679o = extraMap;
            com.smartdigimkt.z.p.a(36, bVar, lVar);
        } catch (Throwable unused2) {
        }
    }
}
