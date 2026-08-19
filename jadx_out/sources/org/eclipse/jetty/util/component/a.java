package org.eclipse.jetty.util.component;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import org.eclipse.jetty.util.component.f;

/* loaded from: classes5.dex */
public abstract class a implements f {
    public static final String FAILED = "FAILED";
    private static final R1.c LOG = R1.b.a(a.class);
    public static final String RUNNING = "RUNNING";
    public static final String STARTED = "STARTED";
    public static final String STARTING = "STARTING";
    public static final String STOPPED = "STOPPED";
    public static final String STOPPING = "STOPPING";
    private final Object _lock = new Object();
    private final int __FAILED = -1;
    private final int __STOPPED = 0;
    private final int __STARTING = 1;
    private final int __STARTED = 2;
    private final int __STOPPING = 3;
    private volatile int _state = 0;
    protected final CopyOnWriteArrayList<f.a> _listeners = new CopyOnWriteArrayList<>();

    public final void K(Throwable th) {
        this._state = -1;
        LOG.c("FAILED " + this + ": " + th, th);
        Iterator<f.a> it = this._listeners.iterator();
        if (it.hasNext()) {
            t.f.a(it.next());
            throw null;
        }
    }

    public final void L() {
        this._state = 2;
        LOG.i("STARTED {}", this);
        Iterator<f.a> it = this._listeners.iterator();
        if (it.hasNext()) {
            t.f.a(it.next());
            throw null;
        }
    }

    public final void M() {
        LOG.i("starting {}", this);
        this._state = 1;
        Iterator<f.a> it = this._listeners.iterator();
        if (it.hasNext()) {
            t.f.a(it.next());
            throw null;
        }
    }

    public final void N() {
        this._state = 0;
        LOG.i("{} {}", STOPPED, this);
        Iterator<f.a> it = this._listeners.iterator();
        if (it.hasNext()) {
            t.f.a(it.next());
            throw null;
        }
    }

    public final void O() {
        LOG.i("stopping {}", this);
        this._state = 3;
        Iterator<f.a> it = this._listeners.iterator();
        if (it.hasNext()) {
            t.f.a(it.next());
            throw null;
        }
    }

    public void addLifeCycleListener(f.a aVar) {
        this._listeners.add(aVar);
    }

    public void doStart() throws Exception {
    }

    public void doStop() {
    }

    public String getState() {
        int i2 = this._state;
        if (i2 == -1) {
            return FAILED;
        }
        if (i2 == 0) {
            return STOPPED;
        }
        if (i2 == 1) {
            return STARTING;
        }
        if (i2 == 2) {
            return STARTED;
        }
        if (i2 != 3) {
            return null;
        }
        return STOPPING;
    }

    public boolean isFailed() {
        return this._state == -1;
    }

    @Override // org.eclipse.jetty.util.component.f
    public boolean isRunning() {
        int i2 = this._state;
        return i2 == 2 || i2 == 1;
    }

    @Override // org.eclipse.jetty.util.component.f
    public boolean isStarted() {
        return this._state == 2;
    }

    @Override // org.eclipse.jetty.util.component.f
    public boolean isStarting() {
        return this._state == 1;
    }

    @Override // org.eclipse.jetty.util.component.f
    public boolean isStopped() {
        return this._state == 0;
    }

    @Override // org.eclipse.jetty.util.component.f
    public boolean isStopping() {
        return this._state == 3;
    }

    public void removeLifeCycleListener(f.a aVar) {
        this._listeners.remove(aVar);
    }

    @Override // org.eclipse.jetty.util.component.f
    public final void start() throws Exception {
        synchronized (this._lock) {
            try {
                if (this._state != 2 && this._state != 1) {
                    M();
                    doStart();
                    L();
                }
            } catch (Error e2) {
                K(e2);
                throw e2;
            } catch (Exception e3) {
                K(e3);
                throw e3;
            } finally {
            }
        }
    }

    @Override // org.eclipse.jetty.util.component.f
    public final void stop() throws Exception {
        synchronized (this._lock) {
            try {
                if (this._state != 3 && this._state != 0) {
                    O();
                    doStop();
                    N();
                }
            } catch (Error e2) {
                K(e2);
                throw e2;
            } catch (Exception e3) {
                K(e3);
                throw e3;
            } finally {
            }
        }
    }

    public static String getState(f fVar) {
        return fVar.isStarting() ? STARTING : fVar.isStarted() ? STARTED : fVar.isStopping() ? STOPPING : fVar.isStopped() ? STOPPED : FAILED;
    }
}
