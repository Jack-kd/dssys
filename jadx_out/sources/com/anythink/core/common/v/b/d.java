package com.anythink.core.common.v.b;

import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: classes2.dex */
public class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private final String f8085a;

    /* renamed from: b, reason: collision with root package name */
    private final Runnable f8086b;

    /* renamed from: d, reason: collision with root package name */
    private String f8088d;

    /* renamed from: e, reason: collision with root package name */
    private long f8089e;

    /* renamed from: g, reason: collision with root package name */
    private ThreadPoolExecutor f8091g;

    /* renamed from: c, reason: collision with root package name */
    private String f8087c = null;

    /* renamed from: f, reason: collision with root package name */
    private long f8090f = -1;

    public d(String str, Runnable runnable) {
        this.f8085a = str;
        this.f8086b = runnable;
    }

    private void b(long j2) {
        this.f8090f = j2;
    }

    public final String a() {
        return this.f8085a;
    }

    @Override // java.lang.Runnable
    public void run() {
        Runnable runnable = this.f8086b;
        if (runnable != null) {
            runnable.run();
        }
    }

    private void a(String str) {
        this.f8088d = str;
    }

    private void a(long j2) {
        this.f8089e = j2;
    }

    private void a(ThreadPoolExecutor threadPoolExecutor) {
        this.f8091g = threadPoolExecutor;
    }
}
