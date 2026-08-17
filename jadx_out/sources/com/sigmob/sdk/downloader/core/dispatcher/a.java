package com.sigmob.sdk.downloader.core.dispatcher;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.sigmob.sdk.downloader.c;
import com.sigmob.sdk.downloader.d;
import com.sigmob.sdk.downloader.f;
import com.sigmob.sdk.downloader.g;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f37411a = "CallbackDispatcher";

    /* renamed from: b, reason: collision with root package name */
    private final c f37412b;

    /* renamed from: c, reason: collision with root package name */
    private final Handler f37413c;

    /* renamed from: com.sigmob.sdk.downloader.core.dispatcher.a$a, reason: collision with other inner class name */
    public static class C0771a implements c {

        /* renamed from: a, reason: collision with root package name */
        private final Handler f37423a;

        public C0771a(Handler handler) {
            this.f37423a = handler;
        }

        @Override // com.sigmob.sdk.downloader.c
        public void a(final f fVar, final int i2, final int i3, final Map<String, List<String>> map) {
            com.sigmob.sdk.downloader.core.c.b(a.f37411a, "<----- finish connection task(" + fVar.c() + ") block(" + i2 + ") code[" + i3 + "]" + map);
            if (fVar.s()) {
                this.f37423a.post(new Runnable() { // from class: com.sigmob.sdk.downloader.core.dispatcher.a.a.9
                    @Override // java.lang.Runnable
                    public void run() {
                        c cVarF = fVar.F();
                        if (cVarF != null) {
                            cVarF.a(fVar, i2, i3, map);
                        }
                    }
                });
                return;
            }
            c cVarF = fVar.F();
            if (cVarF != null) {
                cVarF.a(fVar, i2, i3, map);
            }
        }

        @Override // com.sigmob.sdk.downloader.c
        public void a_(final f fVar) {
            com.sigmob.sdk.downloader.core.c.b(a.f37411a, "taskStart: " + fVar.c());
            b(fVar);
            if (fVar.s()) {
                this.f37423a.post(new Runnable() { // from class: com.sigmob.sdk.downloader.core.dispatcher.a.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        c cVarF = fVar.F();
                        if (cVarF != null) {
                            cVarF.a_(fVar);
                        }
                    }
                });
                return;
            }
            c cVarF = fVar.F();
            if (cVarF != null) {
                cVarF.a_(fVar);
            }
        }

        public void b(f fVar) {
            d dVarI = g.j().i();
            if (dVarI != null) {
                dVarI.a(fVar);
            }
        }

        @Override // com.sigmob.sdk.downloader.c
        public void c(final f fVar, final int i2, final long j2) {
            com.sigmob.sdk.downloader.core.c.b(a.f37411a, "fetchEnd: " + fVar.c());
            if (fVar.s()) {
                this.f37423a.post(new Runnable() { // from class: com.sigmob.sdk.downloader.core.dispatcher.a.a.2
                    @Override // java.lang.Runnable
                    public void run() {
                        c cVarF = fVar.F();
                        if (cVarF != null) {
                            cVarF.c(fVar, i2, j2);
                        }
                    }
                });
                return;
            }
            c cVarF = fVar.F();
            if (cVarF != null) {
                cVarF.c(fVar, i2, j2);
            }
        }

        @Override // com.sigmob.sdk.downloader.c
        public void a(final f fVar, final int i2, final long j2) {
            com.sigmob.sdk.downloader.core.c.b(a.f37411a, "fetchStart: " + fVar.c());
            if (fVar.s()) {
                this.f37423a.post(new Runnable() { // from class: com.sigmob.sdk.downloader.core.dispatcher.a.a.10
                    @Override // java.lang.Runnable
                    public void run() {
                        c cVarF = fVar.F();
                        if (cVarF != null) {
                            cVarF.a(fVar, i2, j2);
                        }
                    }
                });
                return;
            }
            c cVarF = fVar.F();
            if (cVarF != null) {
                cVarF.a(fVar, i2, j2);
            }
        }

        @Override // com.sigmob.sdk.downloader.c
        public void b(final f fVar, final int i2, final long j2) {
            if (fVar.t() > 0) {
                f.c.a(fVar, SystemClock.uptimeMillis());
            }
            if (fVar.s()) {
                this.f37423a.post(new Runnable() { // from class: com.sigmob.sdk.downloader.core.dispatcher.a.a.11
                    @Override // java.lang.Runnable
                    public void run() {
                        c cVarF = fVar.F();
                        if (cVarF != null) {
                            cVarF.b(fVar, i2, j2);
                        }
                    }
                });
                return;
            }
            c cVarF = fVar.F();
            if (cVarF != null) {
                cVarF.b(fVar, i2, j2);
            }
        }

        @Override // com.sigmob.sdk.downloader.c
        public void a(final f fVar, final int i2, final Map<String, List<String>> map) {
            com.sigmob.sdk.downloader.core.c.b(a.f37411a, "<----- finish trial task(" + fVar.c() + ") code[" + i2 + "]" + map);
            if (fVar.s()) {
                this.f37423a.post(new Runnable() { // from class: com.sigmob.sdk.downloader.core.dispatcher.a.a.5
                    @Override // java.lang.Runnable
                    public void run() {
                        c cVarF = fVar.F();
                        if (cVarF != null) {
                            cVarF.a(fVar, i2, map);
                        }
                    }
                });
                return;
            }
            c cVarF = fVar.F();
            if (cVarF != null) {
                cVarF.a(fVar, i2, map);
            }
        }

        @Override // com.sigmob.sdk.downloader.c
        public void b(final f fVar, final int i2, final Map<String, List<String>> map) {
            com.sigmob.sdk.downloader.core.c.b(a.f37411a, "-----> start connection task(" + fVar.c() + ") block(" + i2 + ") " + map);
            if (fVar.s()) {
                this.f37423a.post(new Runnable() { // from class: com.sigmob.sdk.downloader.core.dispatcher.a.a.8
                    @Override // java.lang.Runnable
                    public void run() {
                        c cVarF = fVar.F();
                        if (cVarF != null) {
                            cVarF.b(fVar, i2, map);
                        }
                    }
                });
                return;
            }
            c cVarF = fVar.F();
            if (cVarF != null) {
                cVarF.b(fVar, i2, map);
            }
        }

        @Override // com.sigmob.sdk.downloader.c
        public void a(final f fVar, final com.sigmob.sdk.downloader.core.breakpoint.c cVar) {
            com.sigmob.sdk.downloader.core.c.b(a.f37411a, "downloadFromBreakpoint: " + fVar.c());
            b(fVar, cVar);
            if (fVar.s()) {
                this.f37423a.post(new Runnable() { // from class: com.sigmob.sdk.downloader.core.dispatcher.a.a.7
                    @Override // java.lang.Runnable
                    public void run() {
                        c cVarF = fVar.F();
                        if (cVarF != null) {
                            cVarF.a(fVar, cVar);
                        }
                    }
                });
                return;
            }
            c cVarF = fVar.F();
            if (cVarF != null) {
                cVarF.a(fVar, cVar);
            }
        }

        public void b(f fVar, com.sigmob.sdk.downloader.core.breakpoint.c cVar) {
            d dVarI = g.j().i();
            if (dVarI != null) {
                dVarI.a(fVar, cVar);
            }
        }

        @Override // com.sigmob.sdk.downloader.c
        public void a(final f fVar, final com.sigmob.sdk.downloader.core.breakpoint.c cVar, final com.sigmob.sdk.downloader.core.cause.b bVar) {
            com.sigmob.sdk.downloader.core.c.b(a.f37411a, "downloadFromBeginning: " + fVar.c());
            b(fVar, cVar, bVar);
            if (fVar.s()) {
                this.f37423a.post(new Runnable() { // from class: com.sigmob.sdk.downloader.core.dispatcher.a.a.6
                    @Override // java.lang.Runnable
                    public void run() {
                        c cVarF = fVar.F();
                        if (cVarF != null) {
                            cVarF.a(fVar, cVar, bVar);
                        }
                    }
                });
                return;
            }
            c cVarF = fVar.F();
            if (cVarF != null) {
                cVarF.a(fVar, cVar, bVar);
            }
        }

        public void b(f fVar, com.sigmob.sdk.downloader.core.breakpoint.c cVar, com.sigmob.sdk.downloader.core.cause.b bVar) {
            d dVarI = g.j().i();
            if (dVarI != null) {
                dVarI.a(fVar, cVar, bVar);
            }
        }

        @Override // com.sigmob.sdk.downloader.c
        public void a(final f fVar, final com.sigmob.sdk.downloader.core.cause.a aVar, final Exception exc) {
            if (aVar == com.sigmob.sdk.downloader.core.cause.a.ERROR) {
                com.sigmob.sdk.downloader.core.c.b(a.f37411a, "taskEnd: " + fVar.c() + " " + aVar + " " + exc);
            }
            b(fVar, aVar, exc);
            if (fVar.s()) {
                this.f37423a.post(new Runnable() { // from class: com.sigmob.sdk.downloader.core.dispatcher.a.a.3
                    @Override // java.lang.Runnable
                    public void run() {
                        c cVarF = fVar.F();
                        if (cVarF != null) {
                            cVarF.a(fVar, aVar, exc);
                        }
                    }
                });
                return;
            }
            c cVarF = fVar.F();
            if (cVarF != null) {
                cVarF.a(fVar, aVar, exc);
            }
        }

        public void b(f fVar, com.sigmob.sdk.downloader.core.cause.a aVar, Exception exc) {
            d dVarI = g.j().i();
            if (dVarI != null) {
                dVarI.a(fVar, aVar, exc);
            }
        }

        @Override // com.sigmob.sdk.downloader.c
        public void a(final f fVar, final Map<String, List<String>> map) {
            com.sigmob.sdk.downloader.core.c.b(a.f37411a, "-----> start trial task(" + fVar.c() + ") " + map);
            if (fVar.s()) {
                this.f37423a.post(new Runnable() { // from class: com.sigmob.sdk.downloader.core.dispatcher.a.a.4
                    @Override // java.lang.Runnable
                    public void run() {
                        c cVarF = fVar.F();
                        if (cVarF != null) {
                            cVarF.a(fVar, map);
                        }
                    }
                });
                return;
            }
            c cVarF = fVar.F();
            if (cVarF != null) {
                cVarF.a(fVar, map);
            }
        }
    }

    public a() {
        Handler handler = new Handler(Looper.getMainLooper());
        this.f37413c = handler;
        this.f37412b = new C0771a(handler);
    }

    public c a() {
        return this.f37412b;
    }

    public a(Handler handler, c cVar) {
        this.f37413c = handler;
        this.f37412b = cVar;
    }

    public void a(final Collection<f> collection) {
        if (collection.size() <= 0) {
            return;
        }
        com.sigmob.sdk.downloader.core.c.b(f37411a, "endTasksWithCanceled canceled[" + collection.size() + "]");
        Iterator<f> it = collection.iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (!next.s()) {
                c cVarF = next.F();
                if (cVarF != null) {
                    cVarF.a(next, com.sigmob.sdk.downloader.core.cause.a.CANCELED, (Exception) null);
                }
                it.remove();
            }
        }
        this.f37413c.post(new Runnable() { // from class: com.sigmob.sdk.downloader.core.dispatcher.a.3
            @Override // java.lang.Runnable
            public void run() {
                for (f fVar : collection) {
                    c cVarF2 = fVar.F();
                    if (cVarF2 != null) {
                        cVarF2.a(fVar, com.sigmob.sdk.downloader.core.cause.a.CANCELED, (Exception) null);
                    }
                }
            }
        });
    }

    public void a(final Collection<f> collection, final Exception exc) {
        if (collection.size() <= 0) {
            return;
        }
        com.sigmob.sdk.downloader.core.c.b(f37411a, "endTasksWithError error[" + collection.size() + "] realCause: " + exc);
        Iterator<f> it = collection.iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (!next.s()) {
                c cVarF = next.F();
                if (cVarF != null) {
                    cVarF.a(next, com.sigmob.sdk.downloader.core.cause.a.ERROR, exc);
                }
                it.remove();
            }
        }
        this.f37413c.post(new Runnable() { // from class: com.sigmob.sdk.downloader.core.dispatcher.a.1
            @Override // java.lang.Runnable
            public void run() {
                for (f fVar : collection) {
                    c cVarF2 = fVar.F();
                    if (cVarF2 != null) {
                        cVarF2.a(fVar, com.sigmob.sdk.downloader.core.cause.a.ERROR, exc);
                    }
                }
            }
        });
    }

    public void a(final Collection<f> collection, final Collection<f> collection2, final Collection<f> collection3) {
        if (collection.size() == 0 && collection2.size() == 0 && collection3.size() == 0) {
            return;
        }
        com.sigmob.sdk.downloader.core.c.b(f37411a, "endTasks completed[" + collection.size() + "] sameTask[" + collection2.size() + "] fileBusy[" + collection3.size() + "]");
        if (collection.size() > 0) {
            Iterator<f> it = collection.iterator();
            while (it.hasNext()) {
                f next = it.next();
                if (!next.s()) {
                    c cVarF = next.F();
                    if (cVarF != null) {
                        cVarF.a(next, com.sigmob.sdk.downloader.core.cause.a.COMPLETED, (Exception) null);
                    }
                    it.remove();
                }
            }
        }
        if (collection2.size() > 0) {
            Iterator<f> it2 = collection2.iterator();
            while (it2.hasNext()) {
                f next2 = it2.next();
                if (!next2.s()) {
                    c cVarF2 = next2.F();
                    if (cVarF2 != null) {
                        cVarF2.a(next2, com.sigmob.sdk.downloader.core.cause.a.SAME_TASK_BUSY, (Exception) null);
                    }
                    it2.remove();
                }
            }
        }
        if (collection3.size() > 0) {
            Iterator<f> it3 = collection3.iterator();
            while (it3.hasNext()) {
                f next3 = it3.next();
                if (!next3.s()) {
                    c cVarF3 = next3.F();
                    if (cVarF3 != null) {
                        cVarF3.a(next3, com.sigmob.sdk.downloader.core.cause.a.FILE_BUSY, (Exception) null);
                    }
                    it3.remove();
                }
            }
        }
        if (collection.size() == 0 && collection2.size() == 0 && collection3.size() == 0) {
            return;
        }
        this.f37413c.post(new Runnable() { // from class: com.sigmob.sdk.downloader.core.dispatcher.a.2
            @Override // java.lang.Runnable
            public void run() {
                for (f fVar : collection) {
                    c cVarF4 = fVar.F();
                    if (cVarF4 != null) {
                        cVarF4.a(fVar, com.sigmob.sdk.downloader.core.cause.a.COMPLETED, (Exception) null);
                    }
                }
                for (f fVar2 : collection2) {
                    c cVarF5 = fVar2.F();
                    if (cVarF5 != null) {
                        cVarF5.a(fVar2, com.sigmob.sdk.downloader.core.cause.a.SAME_TASK_BUSY, (Exception) null);
                    }
                }
                for (f fVar3 : collection3) {
                    c cVarF6 = fVar3.F();
                    if (cVarF6 != null) {
                        cVarF6.a(fVar3, com.sigmob.sdk.downloader.core.cause.a.FILE_BUSY, (Exception) null);
                    }
                }
            }
        });
    }

    public boolean a(f fVar) {
        long jT = fVar.t();
        return jT <= 0 || SystemClock.uptimeMillis() - f.c.a(fVar) >= jT;
    }
}
