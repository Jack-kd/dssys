package P1;

import androidx.work.WorkRequest;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import javax.servlet.http.HttpServletRequest;
import org.eclipse.jetty.server.handler.d;
import org.eclipse.jetty.util.i;

/* loaded from: classes5.dex */
public class e extends P1.c {

    /* renamed from: Q, reason: collision with root package name */
    public static final R1.c f462Q = g.f483l;

    /* renamed from: R, reason: collision with root package name */
    public static int f463R;

    /* renamed from: F, reason: collision with root package name */
    public Timer f465F;

    /* renamed from: H, reason: collision with root package name */
    public TimerTask f467H;

    /* renamed from: L, reason: collision with root package name */
    public TimerTask f471L;

    /* renamed from: M, reason: collision with root package name */
    public File f472M;

    /* renamed from: E, reason: collision with root package name */
    public final ConcurrentMap f464E = new ConcurrentHashMap();

    /* renamed from: G, reason: collision with root package name */
    public boolean f466G = false;

    /* renamed from: I, reason: collision with root package name */
    public long f468I = WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS;

    /* renamed from: J, reason: collision with root package name */
    public long f469J = 0;

    /* renamed from: K, reason: collision with root package name */
    public long f470K = 0;

    /* renamed from: N, reason: collision with root package name */
    public boolean f473N = false;

    /* renamed from: O, reason: collision with root package name */
    public volatile boolean f474O = false;

    /* renamed from: P, reason: collision with root package name */
    public boolean f475P = false;

    public class a extends TimerTask {
        public a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            try {
                e.this.l0(true);
            } catch (Exception e2) {
                e.f462Q.e(e2);
            }
        }
    }

    public class b extends TimerTask {
        public b() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            e.this.m0();
        }
    }

    public class c extends ObjectInputStream {
        public c(InputStream inputStream) {
            super(inputStream);
        }

        @Override // java.io.ObjectInputStream
        public Class resolveClass(ObjectStreamClass objectStreamClass) {
            try {
                return Class.forName(objectStreamClass.getName(), false, Thread.currentThread().getContextClassLoader());
            } catch (ClassNotFoundException unused) {
                return super.resolveClass(objectStreamClass);
            }
        }
    }

    @Override // P1.c
    public void P(P1.a aVar) {
        if (isRunning()) {
            this.f464E.put(aVar.o(), (f) aVar);
        }
    }

    @Override // P1.c
    public P1.a U(String str) {
        if (this.f473N && !this.f474O) {
            try {
                k0();
            } catch (Exception e2) {
                f462Q.e(e2);
            }
        }
        ConcurrentMap concurrentMap = this.f464E;
        if (concurrentMap == null) {
            return null;
        }
        f fVarJ0 = (f) concurrentMap.get(str);
        if (fVarJ0 == null && this.f473N) {
            fVarJ0 = j0(str);
        }
        if (fVarJ0 == null) {
            return null;
        }
        if (this.f470K != 0) {
            fVarJ0.F();
        }
        return fVarJ0;
    }

    @Override // P1.c
    public void X() {
        File file;
        ArrayList arrayList = new ArrayList(this.f464E.values());
        int i2 = 100;
        while (arrayList.size() > 0) {
            int i3 = i2 - 1;
            if (i2 <= 0) {
                return;
            }
            int i4 = 0;
            if (isStopping() && (file = this.f472M) != null && file.exists() && this.f472M.canWrite()) {
                int size = arrayList.size();
                int i5 = 0;
                while (i5 < size) {
                    Object obj = arrayList.get(i5);
                    i5++;
                    f fVar = (f) obj;
                    fVar.J(false);
                    a0(fVar, false);
                }
            } else {
                int size2 = arrayList.size();
                while (i4 < size2) {
                    Object obj2 = arrayList.get(i4);
                    i4++;
                    ((f) obj2).v();
                }
            }
            arrayList = new ArrayList(this.f464E.values());
            i2 = i3;
        }
    }

    @Override // P1.c
    public P1.a Z(HttpServletRequest httpServletRequest) {
        return new f(this, httpServletRequest);
    }

    @Override // P1.c
    public boolean b0(String str) {
        return this.f464E.remove(str) != null;
    }

    @Override // P1.c, org.eclipse.jetty.util.component.a
    public void doStart() throws Exception {
        super.doStart();
        this.f466G = false;
        d.C0881d c0881dW0 = org.eclipse.jetty.server.handler.d.w0();
        if (c0881dW0 != null) {
            this.f465F = (Timer) c0881dW0.getAttribute("org.eclipse.jetty.server.session.timer");
        }
        if (this.f465F == null) {
            this.f466G = true;
            StringBuilder sb = new StringBuilder();
            sb.append("HashSessionScavenger-");
            int i2 = f463R;
            f463R = i2 + 1;
            sb.append(i2);
            this.f465F = new Timer(sb.toString(), true);
        }
        o0(f0());
        File file = this.f472M;
        if (file != null) {
            if (!file.exists()) {
                this.f472M.mkdirs();
            }
            if (!this.f473N) {
                k0();
            }
        }
        n0(e0());
    }

    @Override // P1.c, org.eclipse.jetty.util.component.a
    public void doStop() {
        synchronized (this) {
            try {
                TimerTask timerTask = this.f471L;
                if (timerTask != null) {
                    timerTask.cancel();
                }
                this.f471L = null;
                TimerTask timerTask2 = this.f467H;
                if (timerTask2 != null) {
                    timerTask2.cancel();
                }
                this.f467H = null;
                Timer timer = this.f465F;
                if (timer != null && this.f466G) {
                    timer.cancel();
                }
                this.f465F = null;
            } catch (Throwable th) {
                throw th;
            }
        }
        super.doStop();
        this.f464E.clear();
    }

    public int e0() {
        long j2 = this.f469J;
        if (j2 <= 0) {
            return 0;
        }
        return (int) (j2 / 1000);
    }

    public int f0() {
        return (int) (this.f468I / 1000);
    }

    public boolean g0() {
        return this.f475P;
    }

    public P1.a h0(long j2, long j3, String str) {
        return new f(this, j2, j3, str);
    }

    public f i0(InputStream inputStream, f fVar) throws Throwable {
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        try {
            String utf = dataInputStream.readUTF();
            dataInputStream.readUTF();
            long j2 = dataInputStream.readLong();
            long j3 = dataInputStream.readLong();
            int i2 = dataInputStream.readInt();
            if (fVar == null) {
                try {
                    fVar = (f) h0(j2, j3, utf);
                } catch (Throwable th) {
                    th = th;
                    Throwable th2 = th;
                    i.a(dataInputStream);
                    throw th2;
                }
            }
            fVar.B(i2);
            int i3 = dataInputStream.readInt();
            if (i3 > 0) {
                c cVar = new c(dataInputStream);
                for (int i4 = 0; i4 < i3; i4++) {
                    try {
                        fVar.y(cVar.readUTF(), cVar.readObject());
                    } finally {
                        i.a(cVar);
                    }
                }
            }
            i.a(dataInputStream);
            return fVar;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public synchronized f j0(String str) {
        FileInputStream fileInputStream;
        File file = new File(this.f472M, str);
        FileInputStream fileInputStream2 = null;
        try {
        } catch (Exception e2) {
            e = e2;
            fileInputStream = null;
        } catch (Throwable th) {
            th = th;
        }
        if (!file.exists()) {
            file.delete();
            return null;
        }
        fileInputStream = new FileInputStream(file);
        try {
            f fVarI0 = i0(fileInputStream, null);
            Q(fVarI0, false);
            fVarI0.h();
            i.a(fileInputStream);
            file.delete();
            return fVarI0;
        } catch (Exception e3) {
            e = e3;
            if (fileInputStream != null) {
                i.a(fileInputStream);
            }
            if (g0() && file.exists() && file.getParentFile().equals(this.f472M)) {
                file.delete();
                f462Q.c("Deleting file for unrestorable session " + str, e);
            } else {
                f462Q.c("Problem restoring session " + str, e);
            }
            return null;
        } catch (Throwable th2) {
            th = th2;
            fileInputStream2 = fileInputStream;
            if (fileInputStream2 != null) {
                i.a(fileInputStream2);
            }
            file.delete();
            throw th;
        }
    }

    public void k0() {
        this.f474O = true;
        File file = this.f472M;
        if (file == null || !file.exists()) {
            return;
        }
        if (this.f472M.canRead()) {
            String[] list = this.f472M.list();
            for (int i2 = 0; list != null && i2 < list.length; i2++) {
                j0(list[i2]);
            }
            return;
        }
        f462Q.g("Unable to restore Sessions: Cannot read from Session storage directory " + this.f472M.getAbsolutePath(), new Object[0]);
    }

    public void l0(boolean z2) {
        File file = this.f472M;
        if (file == null || !file.exists()) {
            return;
        }
        if (this.f472M.canWrite()) {
            Iterator it = this.f464E.values().iterator();
            while (it.hasNext()) {
                ((f) it.next()).J(true);
            }
        } else {
            f462Q.g("Unable to save Sessions: Session persistence storage directory " + this.f472M.getAbsolutePath() + " is not writeable", new Object[0]);
        }
    }

    public void m0() {
        if (isStopping() || isStopped()) {
            return;
        }
        Thread threadCurrentThread = Thread.currentThread();
        ClassLoader contextClassLoader = threadCurrentThread.getContextClassLoader();
        try {
            ClassLoader classLoader = this.f445l;
            if (classLoader != null) {
                threadCurrentThread.setContextClassLoader(classLoader);
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            for (f fVar : this.f464E.values()) {
                long jS = fVar.s() * 1000;
                if (jS > 0 && fVar.l() + jS < jCurrentTimeMillis) {
                    try {
                        fVar.C();
                    } catch (Exception e2) {
                        f462Q.c("Problem scavenging sessions", e2);
                    }
                } else if (this.f470K > 0 && fVar.l() + this.f470K < jCurrentTimeMillis) {
                    try {
                        fVar.G();
                    } catch (Exception e3) {
                        f462Q.c("Problem idling session " + fVar.r(), e3);
                    }
                }
            }
            threadCurrentThread.setContextClassLoader(contextClassLoader);
        } catch (Throwable th) {
            threadCurrentThread.setContextClassLoader(contextClassLoader);
            throw th;
        }
    }

    public void n0(int i2) {
        long j2 = i2 * 1000;
        if (j2 < 0) {
            j2 = 0;
        }
        this.f469J = j2;
        if (this.f465F != null) {
            synchronized (this) {
                try {
                    TimerTask timerTask = this.f471L;
                    if (timerTask != null) {
                        timerTask.cancel();
                    }
                    if (this.f469J > 0 && this.f472M != null) {
                        a aVar = new a();
                        this.f471L = aVar;
                        Timer timer = this.f465F;
                        long j3 = this.f469J;
                        timer.schedule(aVar, j3, j3);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public void o0(int i2) {
        if (i2 == 0) {
            i2 = 60;
        }
        long j2 = this.f468I;
        long j3 = i2 * 1000;
        if (j3 > 60000) {
            j3 = 60000;
        }
        long j4 = j3 >= 1000 ? j3 : 1000L;
        this.f468I = j4;
        if (this.f465F != null) {
            if (j4 != j2 || this.f467H == null) {
                synchronized (this) {
                    try {
                        TimerTask timerTask = this.f467H;
                        if (timerTask != null) {
                            timerTask.cancel();
                        }
                        b bVar = new b();
                        this.f467H = bVar;
                        Timer timer = this.f465F;
                        long j5 = this.f468I;
                        timer.schedule(bVar, j5, j5);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
    }
}
