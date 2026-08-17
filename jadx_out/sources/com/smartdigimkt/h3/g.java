package com.smartdigimkt.h3;

import com.smartdigimkt.sdk.core.SDKContext;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public final class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ m f40559a;

    public g(m mVar) {
        this.f40559a = mVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        m mVar = this.f40559a;
        String str = mVar.f40576a;
        synchronized (mVar.f40581f) {
            try {
                if (!this.f40559a.f40584i) {
                    com.smartdigimkt.k3.k kVarA = com.smartdigimkt.k3.k.a(com.smartdigimkt.k3.d.a(SDKContext.getInstance().d()));
                    String str2 = this.f40559a.f40576a;
                    kVarA.c();
                    ArrayList arrayListD = kVarA.d();
                    if (arrayListD != null) {
                        int size = arrayListD.size();
                        int i2 = 0;
                        while (i2 < size) {
                            Object obj = arrayListD.get(i2);
                            i2++;
                            com.smartdigimkt.l3.b bVar = (com.smartdigimkt.l3.b) obj;
                            if (!this.f40559a.f40580e.containsKey(bVar.f41650a)) {
                                ConcurrentHashMap concurrentHashMap = this.f40559a.f40580e;
                                String str3 = bVar.f41650a;
                                String strA = com.smartdigimkt.c5.d.a(bVar.f41651b);
                                String str4 = bVar.f41650a;
                                long j2 = bVar.f41653d;
                                boolean z2 = true;
                                if (bVar.f41652c != 1) {
                                    z2 = false;
                                }
                                concurrentHashMap.put(str3, new b(strA, str4, false, j2, z2, null));
                                String str5 = this.f40559a.f40576a;
                                Thread.currentThread().getName();
                                ((b) this.f40559a.f40580e.get(bVar.f41650a)).toString();
                            }
                        }
                    }
                }
            } finally {
            }
        }
    }
}
