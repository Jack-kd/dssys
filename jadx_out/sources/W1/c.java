package W1;

import java.util.Arrays;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.eclipse.jetty.util.component.f;

/* loaded from: classes5.dex */
public class c extends Thread {

    /* renamed from: d, reason: collision with root package name */
    public static final R1.c f662d = R1.b.a(c.class);

    /* renamed from: e, reason: collision with root package name */
    public static final c f663e = new c();

    /* renamed from: b, reason: collision with root package name */
    public boolean f664b;

    /* renamed from: c, reason: collision with root package name */
    public final List f665c = new CopyOnWriteArrayList();

    public static synchronized void a(f fVar) {
        c cVar = f663e;
        cVar.f665c.remove(fVar);
        if (cVar.f665c.size() == 0) {
            cVar.e();
        }
    }

    public static c b() {
        return f663e;
    }

    public static synchronized void d(f... fVarArr) {
        c cVar = f663e;
        cVar.f665c.addAll(Arrays.asList(fVarArr));
        if (cVar.f665c.size() > 0) {
            cVar.c();
        }
    }

    public final synchronized void c() {
        try {
            try {
                if (!this.f664b) {
                    Runtime.getRuntime().addShutdownHook(this);
                }
                this.f664b = true;
            } catch (Exception e2) {
                R1.c cVar = f662d;
                cVar.h(e2);
                cVar.k("shutdown already commenced", new Object[0]);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void e() {
        try {
            this.f664b = false;
            Runtime.getRuntime().removeShutdownHook(this);
        } catch (Exception e2) {
            R1.c cVar = f662d;
            cVar.h(e2);
            cVar.i("shutdown already commenced", new Object[0]);
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        for (f fVar : f663e.f665c) {
            try {
                if (fVar.isStarted()) {
                    fVar.stop();
                    f662d.i("Stopped {}", fVar);
                }
                if (fVar instanceof org.eclipse.jetty.util.component.d) {
                    ((org.eclipse.jetty.util.component.d) fVar).destroy();
                    f662d.i("Destroyed {}", fVar);
                }
            } catch (Exception e2) {
                f662d.a(e2);
            }
        }
    }
}
