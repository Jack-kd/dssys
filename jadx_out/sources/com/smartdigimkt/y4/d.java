package com.smartdigimkt.y4;

import com.smartdigimkt.w4.s;
import java.util.concurrent.ExecutorService;

/* loaded from: classes5.dex */
public abstract class d {

    /* renamed from: a, reason: collision with root package name */
    public static volatile boolean f45254a = false;

    public static b a(com.smartdigimkt.v4.d dVar) {
        if (!f45254a) {
            f45254a = true;
            com.smartdigimkt.b4.b bVar = com.smartdigimkt.b4.e.a().f39591a;
            ExecutorService executorServiceD = bVar != null ? bVar.d() : null;
            if (executorServiceD != null) {
                s.f44992b = executorServiceD;
            }
            s.f44991a = new c();
        }
        return new b(dVar);
    }
}
