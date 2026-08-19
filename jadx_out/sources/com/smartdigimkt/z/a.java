package com.smartdigimkt.z;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes5.dex */
public final class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f45263a = "1";

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.v1.p f45264b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d f45265c;

    public a(d dVar, com.smartdigimkt.v1.p pVar) {
        this.f45265c = dVar;
        this.f45264b = pVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f45265c) {
            try {
                List arrayList = (List) this.f45265c.f45274a.get(this.f45263a);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    this.f45265c.f45274a.put(this.f45263a, arrayList);
                }
                arrayList.add(this.f45264b);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
