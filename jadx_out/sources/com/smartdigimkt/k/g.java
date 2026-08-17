package com.smartdigimkt.k;

import java.io.File;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public final class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Runnable f41143a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ o f41144b;

    public g(o oVar, com.smartdigimkt.j.n nVar) {
        this.f41144b = oVar;
        this.f41143a = nVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            ArrayList arrayListD = this.f41144b.f41162b.d();
            if (arrayListD.size() == 0) {
                Runnable runnable = this.f41143a;
                if (runnable != null) {
                    runnable.run();
                    return;
                }
                return;
            }
            arrayListD.size();
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < arrayListD.size(); i2++) {
                com.smartdigimkt.m3.f fVar = (com.smartdigimkt.m3.f) arrayListD.get(i2);
                String str = fVar.f42028w;
                File file = new File(str);
                if (file.exists()) {
                    arrayList.add(file);
                }
                int i3 = fVar.f42029x;
                for (int i4 = 0; i4 < i3; i4++) {
                    if (new File(com.smartdigimkt.n.c.a(i4, str)).exists()) {
                        arrayList.add(file);
                    }
                }
            }
            for (int i5 = 0; i5 < arrayList.size(); i5++) {
                File file2 = (File) arrayList.get(i5);
                file2.getName();
                file2.delete();
            }
            this.f41144b.f41162b.c();
            Runnable runnable2 = this.f41143a;
            if (runnable2 != null) {
                runnable2.run();
            }
        } catch (Throwable th) {
            th.getMessage();
            Runnable runnable3 = this.f41143a;
            if (runnable3 != null) {
                runnable3.run();
            }
        }
    }
}
