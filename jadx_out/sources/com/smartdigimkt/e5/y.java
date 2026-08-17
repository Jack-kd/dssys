package com.smartdigimkt.e5;

import android.text.TextUtils;
import com.smartdigimkt.sdk.api.format.SDMWinInfo;
import com.smartdigimkt.sdk.core.SDKContext;
import java.util.Map;

/* loaded from: classes5.dex */
public final class y implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.j1.f f40115a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SDMWinInfo f40116b;

    public y(com.smartdigimkt.j1.f fVar, SDMWinInfo sDMWinInfo) {
        this.f40115a = fVar;
        this.f40116b = sDMWinInfo;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.smartdigimkt.j1.f fVar = this.f40115a;
        c0 c0Var = new c0(fVar);
        SDMWinInfo sDMWinInfo = this.f40116b;
        com.smartdigimkt.l3.a aVar = fVar.f41067c;
        sDMWinInfo.getExtraMap();
        if (!c0Var.a()) {
            try {
                com.smartdigimkt.f5.a aVarA = c0.a(true, fVar, sDMWinInfo, null);
                if (TextUtils.isEmpty(aVarA.f40279e)) {
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
            Map<String, Object> extraMap = sDMWinInfo.getExtraMap();
            if (!c0Var.a()) {
                extraMap = c0.a(fVar2, sDMWinInfo, (com.smartdigimkt.f5.a) null);
            }
            lVar.f40679o = extraMap;
            com.smartdigimkt.z.p.a(10, bVar, lVar);
            com.smartdigimkt.f3.f fVarA = com.smartdigimkt.f3.f.a();
            SDKContext.getInstance().d();
            fVarA.getClass();
        } catch (Throwable unused2) {
        }
    }
}
