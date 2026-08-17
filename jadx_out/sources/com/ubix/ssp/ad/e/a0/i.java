package com.ubix.ssp.ad.e.a0;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: classes5.dex */
public class i {

    /* renamed from: a, reason: collision with root package name */
    private Process f46314a;

    /* renamed from: b, reason: collision with root package name */
    private BufferedReader f46315b;

    /* renamed from: c, reason: collision with root package name */
    private BufferedReader f46316c;

    /* renamed from: d, reason: collision with root package name */
    private DataOutputStream f46317d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f46318e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f46319f;

    /* renamed from: g, reason: collision with root package name */
    ReadWriteLock f46320g;

    /* renamed from: h, reason: collision with root package name */
    private StringBuffer f46321h;

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f46322a;

        public a(int i2) {
            this.f46322a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Thread.sleep(this.f46322a);
            } catch (Throwable unused) {
            }
            try {
                i.this.f46314a.exitValue();
            } catch (Throwable unused2) {
                i.this.f46314a.destroy();
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Lock lockWriteLock = i.this.f46320g.writeLock();
            while (true) {
                try {
                    try {
                        String line = i.this.f46315b.readLine();
                        if (line == null) {
                            i.this.f46315b.close();
                            return;
                        }
                        lockWriteLock.lock();
                        i.this.f46321h.append(line + "\n");
                        lockWriteLock.unlock();
                    } catch (Throwable th) {
                        th.toString();
                        return;
                    }
                } catch (Throwable th2) {
                    try {
                        th2.toString();
                        i.this.f46315b.close();
                        return;
                    } catch (Throwable th3) {
                        try {
                            i.this.f46315b.close();
                        } catch (Throwable th4) {
                            th4.toString();
                        }
                        throw th3;
                    }
                }
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Lock lockWriteLock = i.this.f46320g.writeLock();
            while (true) {
                try {
                    try {
                        String line = i.this.f46316c.readLine();
                        if (line == null) {
                            i.this.f46316c.close();
                            return;
                        }
                        lockWriteLock.lock();
                        i.this.f46321h.append(line + "\n");
                        lockWriteLock.unlock();
                    } catch (Throwable th) {
                        th.toString();
                        return;
                    }
                } catch (Throwable th2) {
                    try {
                        th2.toString();
                        i.this.f46316c.close();
                        return;
                    } catch (Throwable th3) {
                        try {
                            i.this.f46316c.close();
                        } catch (Throwable th4) {
                            th4.toString();
                        }
                        throw th3;
                    }
                }
            }
        }
    }

    public class d implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Thread f46326a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Thread f46327b;

        public d(Thread thread, Thread thread2) {
            this.f46326a = thread;
            this.f46327b = thread2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f46326a.join();
                this.f46327b.join();
                i.this.f46314a.waitFor();
            } catch (Throwable unused) {
            }
            i.this.f46319f = false;
        }
    }

    public i() {
        this.f46319f = false;
        this.f46320g = new ReentrantReadWriteLock();
        this.f46321h = new StringBuffer();
        this.f46318e = true;
    }

    public i a(String str, int i2) {
        if (str != null && str.length() != 0) {
            try {
                this.f46314a = Runtime.getRuntime().exec("sh");
                this.f46319f = true;
                this.f46315b = new BufferedReader(new InputStreamReader(this.f46314a.getInputStream()));
                this.f46316c = new BufferedReader(new InputStreamReader(this.f46314a.getErrorStream()));
                DataOutputStream dataOutputStream = new DataOutputStream(this.f46314a.getOutputStream());
                this.f46317d = dataOutputStream;
                try {
                    dataOutputStream.write(str.getBytes());
                    this.f46317d.writeBytes("\n");
                    this.f46317d.flush();
                    this.f46317d.writeBytes("exit\n");
                    this.f46317d.flush();
                    this.f46317d.close();
                    if (i2 > 0) {
                        new Thread(new a(i2)).start();
                    }
                    Thread thread = new Thread(new b());
                    thread.start();
                    Thread thread2 = new Thread(new c());
                    thread2.start();
                    Thread thread3 = new Thread(new d(thread, thread2));
                    thread3.start();
                    if (this.f46318e) {
                        thread3.join();
                        return this;
                    }
                } catch (Throwable th) {
                    th.toString();
                }
            } catch (Throwable unused) {
            }
        }
        return this;
    }

    public i(boolean z2) {
        this.f46319f = false;
        this.f46320g = new ReentrantReadWriteLock();
        this.f46321h = new StringBuffer();
        this.f46318e = z2;
    }

    public String a() {
        Lock lock = this.f46320g.readLock();
        lock.lock();
        try {
            return new String(this.f46321h);
        } finally {
            lock.unlock();
        }
    }
}
