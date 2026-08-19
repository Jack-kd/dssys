package com.smartdigimkt.j;

import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public final class h implements com.smartdigimkt.k.n {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.k.n f40789a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ u f40790b;

    public h(u uVar, com.smartdigimkt.k.n nVar) {
        this.f40790b = uVar;
        this.f40789a = nVar;
    }

    @Override // com.smartdigimkt.k.n
    public final void onCallback(com.smartdigimkt.k.r rVar) {
        ConcurrentHashMap concurrentHashMap;
        if (rVar != null && rVar.f41196s == com.smartdigimkt.k.c.LOADING && ((concurrentHashMap = this.f40790b.f40822c) == null || !concurrentHashMap.containsKey(rVar.f41192o))) {
            com.smartdigimkt.m3.c cVar = rVar.f41187j;
            if (cVar != null) {
                cVar.f41787H = 7;
            }
            rVar.f41196s = com.smartdigimkt.k.c.PAUSE;
        }
        com.smartdigimkt.k.n nVar = this.f40789a;
        if (nVar != null) {
            nVar.onCallback(rVar);
        }
    }
}
