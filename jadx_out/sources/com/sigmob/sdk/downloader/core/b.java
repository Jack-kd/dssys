package com.sigmob.sdk.downloader.core;

/* loaded from: classes4.dex */
public abstract class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    protected final String f37281a;

    public b(String str) {
        this.f37281a = str;
    }

    public abstract void a() throws InterruptedException;

    public abstract void a(InterruptedException interruptedException);

    public abstract void b();

    @Override // java.lang.Runnable
    public final void run() {
        String name = Thread.currentThread().getName();
        Thread.currentThread().setName(this.f37281a);
        try {
            try {
                a();
            } catch (InterruptedException e2) {
                Thread.currentThread().interrupt();
                a(e2);
            }
        } finally {
            Thread.currentThread().setName(name);
            b();
        }
    }
}
