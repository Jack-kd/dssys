package N1;

import W1.e;
import androidx.work.WorkRequest;
import java.util.Iterator;
import java.util.List;
import javax.servlet.AsyncContext;
import javax.servlet.AsyncEvent;
import javax.servlet.AsyncListener;
import org.eclipse.jetty.continuation.ContinuationThrowable;

/* loaded from: classes5.dex */
public class d implements AsyncContext {

    /* renamed from: m, reason: collision with root package name */
    public static final R1.c f298m = R1.b.a(d.class);

    /* renamed from: n, reason: collision with root package name */
    public static final ContinuationThrowable f299n = new ContinuationThrowable();

    /* renamed from: a, reason: collision with root package name */
    public c f300a;

    /* renamed from: b, reason: collision with root package name */
    public List f301b;

    /* renamed from: c, reason: collision with root package name */
    public List f302c;

    /* renamed from: d, reason: collision with root package name */
    public List f303d;

    /* renamed from: g, reason: collision with root package name */
    public boolean f306g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f307h;

    /* renamed from: i, reason: collision with root package name */
    public volatile boolean f308i;

    /* renamed from: k, reason: collision with root package name */
    public volatile long f310k;

    /* renamed from: l, reason: collision with root package name */
    public volatile boolean f311l;

    /* renamed from: j, reason: collision with root package name */
    public long f309j = WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS;

    /* renamed from: e, reason: collision with root package name */
    public int f304e = 0;

    /* renamed from: f, reason: collision with root package name */
    public boolean f305f = true;

    public class a extends AsyncEvent {
        public static /* synthetic */ e.a a(a aVar) {
            throw null;
        }
    }

    public void a() {
        synchronized (this) {
            b();
            this.f303d = null;
        }
    }

    public void b() {
        if (this.f300a.e().c()) {
            synchronized (this) {
                this.f310k = 0L;
                notifyAll();
            }
        }
    }

    public void c() {
        synchronized (this) {
            try {
                int i2 = this.f304e;
                if (i2 == 2) {
                    this.f304e = 3;
                    this.f306g = true;
                    return;
                }
                if (i2 != 4) {
                    if (i2 != 5) {
                        throw new IllegalStateException(i());
                    }
                    return;
                }
                boolean z2 = this.f307h;
                this.f304e = 5;
                this.f306g = true;
                if (z2) {
                    return;
                }
                b();
                r();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void d(Throwable th) {
        List list;
        List<AsyncListener> list2;
        synchronized (this) {
            if (this.f304e != 8) {
                throw new IllegalStateException(i());
            }
            this.f304e = 9;
            list = this.f303d;
            list2 = this.f302c;
        }
        a aVar = null;
        if (list2 != null) {
            for (AsyncListener asyncListener : list2) {
                if (th != null) {
                    aVar.getSuppliedRequest();
                    throw null;
                }
                try {
                    asyncListener.onComplete((AsyncEvent) null);
                } catch (Exception e2) {
                    f298m.e(e2);
                }
                f298m.e(e2);
            }
        }
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                t.f.a(it.next());
                try {
                    throw null;
                } catch (Exception e3) {
                    f298m.e(e3);
                }
            }
        }
    }

    public void e() {
        synchronized (this) {
            try {
                int i2 = this.f304e;
                if (i2 == 2 || i2 == 3) {
                    this.f304e = 7;
                    this.f306g = false;
                } else if (i2 != 7) {
                    throw new IllegalStateException(i());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void f() {
        synchronized (this) {
            try {
                int i2 = this.f304e;
                if (i2 == 2 || i2 == 4) {
                    List list = this.f303d;
                    List list2 = this.f302c;
                    this.f307h = true;
                    if (list2 != null) {
                        Iterator it = list2.iterator();
                        while (it.hasNext()) {
                            try {
                                ((AsyncListener) it.next()).onTimeout((AsyncEvent) null);
                            } catch (Exception e2) {
                                f298m.a(e2);
                                this.f300a.r().F("javax.servlet.error.exception", e2);
                            }
                        }
                    }
                    if (list != null) {
                        Iterator it2 = list.iterator();
                        while (it2.hasNext()) {
                            t.f.a(it2.next());
                            try {
                                throw null;
                            } catch (Exception e3) {
                                f298m.e(e3);
                            }
                        }
                    }
                    synchronized (this) {
                        try {
                            int i3 = this.f304e;
                            if (i3 == 2 || i3 == 4) {
                                c();
                            } else if (!this.f311l) {
                                this.f307h = false;
                            }
                        } finally {
                        }
                    }
                    r();
                }
            } finally {
            }
        }
    }

    public a g() {
        synchronized (this) {
        }
        return null;
    }

    public org.eclipse.jetty.server.handler.d h() {
        return null;
    }

    public String i() {
        String str;
        String string;
        synchronized (this) {
            try {
                StringBuilder sb = new StringBuilder();
                int i2 = this.f304e;
                if (i2 == 0) {
                    str = "IDLE";
                } else if (i2 == 1) {
                    str = "DISPATCHED";
                } else if (i2 == 2) {
                    str = "ASYNCSTARTED";
                } else if (i2 == 4) {
                    str = "ASYNCWAIT";
                } else if (i2 == 3) {
                    str = "REDISPATCHING";
                } else if (i2 == 5) {
                    str = "REDISPATCH";
                } else if (i2 == 6) {
                    str = "REDISPATCHED";
                } else if (i2 == 7) {
                    str = "COMPLETING";
                } else if (i2 == 8) {
                    str = "UNCOMPLETED";
                } else if (i2 == 9) {
                    str = "COMPLETE";
                } else {
                    str = "UNKNOWN?" + this.f304e;
                }
                sb.append(str);
                sb.append(this.f305f ? ",initial" : "");
                sb.append(this.f306g ? ",resumed" : "");
                sb.append(this.f307h ? ",expired" : "");
                string = sb.toString();
            } catch (Throwable th) {
                throw th;
            }
        }
        return string;
    }

    public boolean j() {
        synchronized (this) {
            try {
                this.f311l = false;
                int i2 = this.f304e;
                if (i2 != 0) {
                    if (i2 == 7) {
                        this.f304e = 8;
                        return false;
                    }
                    if (i2 == 4) {
                        return false;
                    }
                    if (i2 != 5) {
                        throw new IllegalStateException(i());
                    }
                    this.f304e = 6;
                    return true;
                }
                this.f305f = true;
                this.f304e = 1;
                List list = this.f301b;
                if (list != null) {
                    list.clear();
                }
                List list2 = this.f302c;
                if (list2 != null) {
                    list2.clear();
                } else {
                    this.f302c = this.f301b;
                    this.f301b = null;
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean k() {
        synchronized (this) {
            try {
                int i2 = this.f304e;
                return i2 == 2 || i2 == 3 || i2 == 4 || i2 == 5;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean l() {
        return this.f311l;
    }

    public boolean m() {
        boolean z2;
        synchronized (this) {
            z2 = this.f307h;
        }
        return z2;
    }

    public boolean n() {
        boolean z2;
        synchronized (this) {
            z2 = this.f305f;
        }
        return z2;
    }

    public boolean o() {
        synchronized (this) {
            try {
                int i2 = this.f304e;
                return i2 == 2 || i2 == 3 || i2 == 4 || i2 == 7;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean p() {
        boolean z2;
        synchronized (this) {
            z2 = this.f304e == 8;
        }
        return z2;
    }

    public void q() {
        synchronized (this) {
            try {
                int i2 = this.f304e;
                if (i2 == 1 || i2 == 6) {
                    throw new IllegalStateException(i());
                }
                this.f304e = 0;
                this.f305f = true;
                this.f306g = false;
                this.f307h = false;
                this.f308i = false;
                b();
                this.f309j = WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS;
                this.f303d = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void r() {
        L1.k kVarE = this.f300a.e();
        if (kVarE.c()) {
            return;
        }
        ((L1.c) kVarE).q();
    }

    public void s() {
        L1.k kVarE = this.f300a.e();
        if (this.f309j > 0) {
            if (!kVarE.c()) {
                ((L1.c) kVarE).r(a.a(null), this.f309j);
                return;
            }
            synchronized (this) {
                this.f310k = System.currentTimeMillis() + this.f309j;
                long jCurrentTimeMillis = this.f309j;
                while (this.f310k > 0 && jCurrentTimeMillis > 0 && this.f300a.x().isRunning()) {
                    try {
                        wait(jCurrentTimeMillis);
                    } catch (InterruptedException e2) {
                        f298m.h(e2);
                    }
                    jCurrentTimeMillis = this.f310k - System.currentTimeMillis();
                }
                if (this.f310k > 0 && jCurrentTimeMillis <= 0 && this.f300a.x().isRunning()) {
                    f();
                }
            }
        }
    }

    public void t(c cVar) {
        synchronized (this) {
            this.f300a = cVar;
        }
    }

    public String toString() {
        String str;
        synchronized (this) {
            str = super.toString() + "@" + i();
        }
        return str;
    }

    public boolean u() {
        synchronized (this) {
            try {
                int i2 = this.f304e;
                if (i2 == 0) {
                    throw new IllegalStateException(i());
                }
                if (i2 != 1) {
                    if (i2 == 2) {
                        this.f305f = false;
                        this.f304e = 4;
                        s();
                        int i3 = this.f304e;
                        if (i3 == 4) {
                            return true;
                        }
                        if (i3 == 7) {
                            this.f304e = 8;
                            return true;
                        }
                        this.f305f = false;
                        this.f304e = 6;
                        return false;
                    }
                    if (i2 == 3) {
                        this.f305f = false;
                        this.f304e = 6;
                        return false;
                    }
                    if (i2 != 6) {
                        if (i2 != 7) {
                            throw new IllegalStateException(i());
                        }
                        this.f305f = false;
                        this.f304e = 8;
                        return true;
                    }
                }
                this.f304e = 8;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
