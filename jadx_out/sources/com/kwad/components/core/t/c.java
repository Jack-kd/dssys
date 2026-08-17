package com.kwad.components.core.t;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes4.dex */
public final class c {
    private Set<b> alq;

    public static class a {
        private static c alr = new c(0);
    }

    public interface b {
        void onPageClose();
    }

    public /* synthetic */ c(byte b3) {
        this();
    }

    public static c wG() {
        return a.alr;
    }

    public final void a(b bVar) {
        this.alq.add(bVar);
    }

    public final void b(b bVar) {
        this.alq.remove(bVar);
    }

    public final void wH() {
        if (this.alq.size() == 0) {
            return;
        }
        Iterator<b> it = this.alq.iterator();
        while (it.hasNext()) {
            it.next().onPageClose();
        }
    }

    private c() {
        this.alq = new HashSet();
    }
}
