package com.ubix.ssp.ad.e.s.g;

import com.ubix.ssp.open.comm.DownloadService;
import java.io.Serializable;

/* loaded from: classes5.dex */
public class c implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    private int f47104a;

    /* renamed from: b, reason: collision with root package name */
    private a f47105b;

    /* renamed from: c, reason: collision with root package name */
    private int f47106c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f47107d = true;

    /* renamed from: e, reason: collision with root package name */
    private DownloadService.DownloadBinder f47108e;

    public DownloadService.DownloadBinder a() {
        return this.f47108e;
    }

    public a b() {
        return this.f47105b;
    }

    public int c() {
        return this.f47106c;
    }

    public boolean d() {
        return this.f47107d;
    }

    public String toString() {
        return "RequestInfo{, downloadInfo=" + this.f47105b + '}';
    }

    public void a(int i2) {
        this.f47106c = i2;
    }

    public void b(int i2) {
        this.f47104a = i2;
    }

    public void a(a aVar) {
        this.f47105b = aVar;
    }

    public void a(DownloadService.DownloadBinder downloadBinder) {
        this.f47108e = downloadBinder;
    }
}
