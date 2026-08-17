package com.kwad.framework.filedownloader.message;

import com.kwad.framework.filedownloader.message.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

/* loaded from: classes4.dex */
public final class g {
    private final List<a> aCB = new ArrayList();
    private final e.b aCz;

    public class a {
        private final List<Integer> aCC = new ArrayList();
        private final Executor aCD;

        public a(int i2) {
            this.aCD = com.kwad.framework.filedownloader.f.b.w(1, "Flow-" + i2);
        }

        public final void cT(int i2) {
            this.aCC.add(Integer.valueOf(i2));
        }

        public final void u(final MessageSnapshot messageSnapshot) {
            this.aCD.execute(new Runnable() { // from class: com.kwad.framework.filedownloader.message.g.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    g.this.aCz.r(messageSnapshot);
                    try {
                        a.this.aCC.remove(Integer.valueOf(messageSnapshot.getId()));
                    } catch (Exception unused) {
                    }
                }
            });
        }
    }

    public g(int i2, e.b bVar) {
        this.aCz = bVar;
        for (int i3 = 0; i3 < 5; i3++) {
            this.aCB.add(new a(i3));
        }
    }

    public final void u(MessageSnapshot messageSnapshot) {
        a aVar = null;
        try {
            synchronized (this.aCB) {
                try {
                    int id = messageSnapshot.getId();
                    Iterator<a> it = this.aCB.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        a next = it.next();
                        if (next.aCC.contains(Integer.valueOf(id))) {
                            aVar = next;
                            break;
                        }
                    }
                    if (aVar == null) {
                        Iterator<a> it2 = this.aCB.iterator();
                        int size = 0;
                        while (true) {
                            if (!it2.hasNext()) {
                                break;
                            }
                            a next2 = it2.next();
                            if (next2.aCC.size() <= 0) {
                                aVar = next2;
                                break;
                            } else if (size == 0 || next2.aCC.size() < size) {
                                size = next2.aCC.size();
                                aVar = next2;
                            }
                        }
                    }
                    if (aVar != null) {
                        aVar.cT(id);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } finally {
            if (aVar != null) {
                aVar.u(messageSnapshot);
            }
        }
    }
}
