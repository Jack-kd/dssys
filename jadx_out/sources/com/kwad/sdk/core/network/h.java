package com.kwad.sdk.core.network;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes4.dex */
public class h {
    private static volatile h aTu;
    private List<a> aTt = new CopyOnWriteArrayList();

    public interface a {
        void a(f fVar, int i2);
    }

    private h() {
    }

    public static h Mg() {
        if (aTu == null) {
            synchronized (h.class) {
                try {
                    if (aTu == null) {
                        aTu = new h();
                    }
                } finally {
                }
            }
        }
        return aTu;
    }

    public final void a(a aVar) {
        this.aTt.add(aVar);
    }

    public final void b(f fVar, int i2) {
        Iterator<a> it = this.aTt.iterator();
        while (it.hasNext()) {
            it.next().a(fVar, i2);
        }
    }
}
