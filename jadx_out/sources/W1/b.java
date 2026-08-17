package W1;

import com.byazt.rx.BaseConstants;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.eclipse.jetty.util.g;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes5.dex */
public class b extends org.eclipse.jetty.util.component.a implements d, Executor, org.eclipse.jetty.util.component.e {

    /* renamed from: r, reason: collision with root package name */
    public static final R1.c f639r = R1.b.a(b.class);

    /* renamed from: g, reason: collision with root package name */
    public BlockingQueue f645g;

    /* renamed from: b, reason: collision with root package name */
    public final AtomicInteger f640b = new AtomicInteger();

    /* renamed from: c, reason: collision with root package name */
    public final AtomicInteger f641c = new AtomicInteger();

    /* renamed from: d, reason: collision with root package name */
    public final AtomicLong f642d = new AtomicLong();

    /* renamed from: e, reason: collision with root package name */
    public final g f643e = new g();

    /* renamed from: f, reason: collision with root package name */
    public final Object f644f = new Object();

    /* renamed from: i, reason: collision with root package name */
    public int f647i = BaseConstants.Time.MINUTE;

    /* renamed from: j, reason: collision with root package name */
    public int f648j = MediaPlayer.MEDIA_PLAYER_ADAPTIVE_WORK_AROUND_MODE;

    /* renamed from: k, reason: collision with root package name */
    public int f649k = 8;

    /* renamed from: l, reason: collision with root package name */
    public int f650l = -1;

    /* renamed from: m, reason: collision with root package name */
    public int f651m = 5;

    /* renamed from: n, reason: collision with root package name */
    public boolean f652n = false;

    /* renamed from: o, reason: collision with root package name */
    public int f653o = 100;

    /* renamed from: p, reason: collision with root package name */
    public boolean f654p = false;

    /* renamed from: q, reason: collision with root package name */
    public Runnable f655q = new c();

    /* renamed from: h, reason: collision with root package name */
    public String f646h = "qtp" + super.hashCode();

    /* renamed from: W1.b$b, reason: collision with other inner class name */
    public class C0011b implements org.eclipse.jetty.util.component.e {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Thread f657b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ boolean f658c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ StackTraceElement[] f659d;

        public C0011b(Thread thread, boolean z2, StackTraceElement[] stackTraceElementArr) {
            this.f657b = thread;
            this.f658c = z2;
            this.f659d = stackTraceElementArr;
        }

        @Override // org.eclipse.jetty.util.component.e
        public void m(Appendable appendable, String str) throws IOException {
            appendable.append(String.valueOf(this.f657b.getId())).append(' ').append(this.f657b.getName()).append(' ').append(this.f657b.getState().toString()).append(this.f658c ? " IDLE" : "").append('\n');
            if (this.f658c) {
                return;
            }
            org.eclipse.jetty.util.component.b.S(appendable, str, Arrays.asList(this.f659d));
        }
    }

    public class c implements Runnable {
        public c() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:40:0x00b8, code lost:
        
            r11.f661b.f641c.decrementAndGet();
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x00c1, code lost:
        
            if (r1 != false) goto L43;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x00c3, code lost:
        
            r11.f661b.f640b.decrementAndGet();
         */
        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Removed duplicated region for block: B:67:0x011a  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() throws java.lang.Throwable {
            /*
                Method dump skipped, instructions count: 341
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: W1.b.c.run():void");
        }
    }

    public int Y() {
        return this.f648j;
    }

    public int Z() {
        return this.f649k;
    }

    public final Runnable a0() {
        return (Runnable) this.f645g.poll(this.f647i, TimeUnit.MILLISECONDS);
    }

    public Thread b0(Runnable runnable) {
        return new Thread(runnable);
    }

    public void c0(Runnable runnable) {
        runnable.run();
    }

    public void d0(boolean z2) {
        this.f652n = z2;
    }

    @Override // W1.d
    public boolean dispatch(Runnable runnable) {
        int i2;
        if (isRunning()) {
            int size = this.f645g.size();
            int idleThreads = getIdleThreads();
            if (this.f645g.offer(runnable)) {
                if ((idleThreads != 0 && size <= idleThreads) || (i2 = this.f640b.get()) >= this.f648j) {
                    return true;
                }
                g0(i2);
                return true;
            }
        }
        f639r.i("Dispatched {} to stopped {}", runnable, this);
        return false;
    }

    @Override // org.eclipse.jetty.util.component.a
    public void doStart() throws Exception {
        BlockingQueue dVar;
        super.doStart();
        this.f640b.set(0);
        if (this.f645g == null) {
            if (this.f650l > 0) {
                dVar = new ArrayBlockingQueue(this.f650l);
            } else {
                int i2 = this.f649k;
                dVar = new org.eclipse.jetty.util.d(i2, i2);
            }
            this.f645g = dVar;
        }
        int i3 = this.f640b.get();
        while (isRunning() && i3 < this.f649k) {
            g0(i3);
            i3 = this.f640b.get();
        }
    }

    @Override // org.eclipse.jetty.util.component.a
    public void doStop() throws InterruptedException {
        super.doStop();
        long jCurrentTimeMillis = System.currentTimeMillis();
        while (this.f640b.get() > 0 && System.currentTimeMillis() - jCurrentTimeMillis < this.f653o / 2) {
            Thread.sleep(1L);
        }
        this.f645g.clear();
        a aVar = new a();
        int i2 = this.f641c.get();
        while (true) {
            int i3 = i2 - 1;
            if (i2 <= 0) {
                break;
            }
            this.f645g.offer(aVar);
            i2 = i3;
        }
        Thread.yield();
        if (this.f640b.get() > 0) {
            Iterator it = this.f643e.iterator();
            while (it.hasNext()) {
                ((Thread) it.next()).interrupt();
            }
        }
        while (this.f640b.get() > 0 && System.currentTimeMillis() - jCurrentTimeMillis < this.f653o) {
            Thread.sleep(1L);
        }
        Thread.yield();
        int size = this.f643e.size();
        if (size > 0) {
            R1.c cVar = f639r;
            cVar.g(size + " threads could not be stopped", new Object[0]);
            if (size == 1 || cVar.f()) {
                Iterator it2 = this.f643e.iterator();
                while (it2.hasNext()) {
                    Thread thread = (Thread) it2.next();
                    f639r.k("Couldn't stop " + thread, new Object[0]);
                    StackTraceElement[] stackTrace = thread.getStackTrace();
                    int length = stackTrace.length;
                    for (int i4 = 0; i4 < length; i4++) {
                        StackTraceElement stackTraceElement = stackTrace[i4];
                        f639r.k(" at " + stackTraceElement, new Object[0]);
                    }
                }
            }
        }
        synchronized (this.f644f) {
            this.f644f.notifyAll();
        }
    }

    public void e0(int i2) {
        this.f648j = i2;
        if (this.f649k > i2) {
            this.f649k = i2;
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        if (!dispatch(runnable)) {
            throw new RejectedExecutionException();
        }
    }

    public void f0(String str) {
        if (isRunning()) {
            throw new IllegalStateException("started");
        }
        this.f646h = str;
    }

    public final boolean g0(int i2) {
        if (!this.f640b.compareAndSet(i2, i2 + 1)) {
            return false;
        }
        try {
            Thread threadB0 = b0(this.f655q);
            threadB0.setDaemon(this.f652n);
            threadB0.setPriority(this.f651m);
            threadB0.setName(this.f646h + "-" + threadB0.getId());
            this.f643e.add(threadB0);
            threadB0.start();
            return true;
        } catch (Throwable th) {
            this.f640b.decrementAndGet();
            throw th;
        }
    }

    public int getIdleThreads() {
        return this.f641c.get();
    }

    public int getThreads() {
        return this.f640b.get();
    }

    @Override // W1.d
    public boolean isLowOnThreads() {
        return this.f640b.get() == this.f648j && this.f645g.size() >= this.f641c.get();
    }

    @Override // org.eclipse.jetty.util.component.e
    public void m(Appendable appendable, String str) throws IOException {
        ArrayList arrayList = new ArrayList(Y());
        Iterator it = this.f643e.iterator();
        while (true) {
            boolean z2 = true;
            if (!it.hasNext()) {
                org.eclipse.jetty.util.component.b.T(appendable, this);
                org.eclipse.jetty.util.component.b.S(appendable, str, arrayList);
                return;
            }
            Thread thread = (Thread) it.next();
            StackTraceElement[] stackTrace = thread.getStackTrace();
            if (stackTrace != null) {
                for (StackTraceElement stackTraceElement : stackTrace) {
                    if ("idleJobPoll".equals(stackTraceElement.getMethodName())) {
                        break;
                    }
                }
                z2 = false;
            } else {
                z2 = false;
            }
            if (this.f654p) {
                arrayList.add(new C0011b(thread, z2, stackTrace));
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append(thread.getId());
                sb.append(" ");
                sb.append(thread.getName());
                sb.append(" ");
                sb.append(thread.getState());
                sb.append(" @ ");
                sb.append(stackTrace.length > 0 ? stackTrace[0] : "???");
                sb.append(z2 ? " IDLE" : "");
                arrayList.add(sb.toString());
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f646h);
        sb.append("{");
        sb.append(Z());
        sb.append("<=");
        sb.append(getIdleThreads());
        sb.append("<=");
        sb.append(getThreads());
        sb.append(ServiceReference.DELIMITER);
        sb.append(Y());
        sb.append(",");
        BlockingQueue blockingQueue = this.f645g;
        sb.append(blockingQueue == null ? -1 : blockingQueue.size());
        sb.append("}");
        return sb.toString();
    }

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }
}
