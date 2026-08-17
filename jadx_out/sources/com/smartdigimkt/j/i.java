package com.smartdigimkt.j;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes5.dex */
public final class i implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ u f40791a;

    public i(u uVar) {
        this.f40791a = uVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f40791a.f40827h == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = this.f40791a.f40827h.keySet().iterator();
        while (it.hasNext()) {
            arrayList.add((com.smartdigimkt.k.r) this.f40791a.f40827h.get((String) it.next()));
        }
        com.smartdigimkt.k.p pVar = this.f40791a.f40836q;
        if (pVar != null) {
            pVar.a(arrayList);
        }
    }
}
