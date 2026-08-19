package com.anythink.core.common.m;

import android.text.TextUtils;
import com.anythink.core.api.AdError;
import com.anythink.core.api.ErrorCode;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public class p extends c {

    /* renamed from: a, reason: collision with root package name */
    private static final String f5832a = "p";

    /* renamed from: c, reason: collision with root package name */
    private final s f5834c;

    /* renamed from: g, reason: collision with root package name */
    private volatile boolean f5838g;

    /* renamed from: h, reason: collision with root package name */
    private volatile boolean f5839h;

    /* renamed from: b, reason: collision with root package name */
    private final Object f5833b = new Object();

    /* renamed from: d, reason: collision with root package name */
    private final AtomicInteger f5835d = new AtomicInteger(0);

    /* renamed from: e, reason: collision with root package name */
    private final List<a> f5836e = new ArrayList();

    /* renamed from: f, reason: collision with root package name */
    private final int f5837f = 2;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        int f5840a;

        /* renamed from: b, reason: collision with root package name */
        String f5841b;

        /* renamed from: c, reason: collision with root package name */
        AdError f5842c;

        public a(int i2, String str, AdError adError) {
            this.f5840a = i2;
            this.f5841b = str;
            this.f5842c = adError;
        }
    }

    public p(s sVar) {
        this.f5834c = sVar;
    }

    private void b(int i2, Object obj) {
        this.f5839h = true;
        if (this.f5834c == null || this.f5838g) {
            return;
        }
        this.f5838g = true;
        this.f5834c.onLoadFinish(i2, obj);
    }

    public void a(int i2) {
    }

    @Override // com.anythink.core.common.m.s
    public void onLoadError(int i2, String str, AdError adError) {
        a(i2);
        synchronized (this.f5833b) {
            try {
                this.f5836e.add(new a(i2, str, adError));
                if (this.f5835d.incrementAndGet() == this.f5837f && this.f5834c != null && !this.f5838g) {
                    this.f5838g = true;
                    StringBuilder sb = new StringBuilder();
                    ArrayList arrayList = new ArrayList(this.f5836e);
                    int size = arrayList.size();
                    AdError errorCode = null;
                    int i3 = 0;
                    while (i3 < size) {
                        Object obj = arrayList.get(i3);
                        i3++;
                        a aVar = (a) obj;
                        if (aVar != null) {
                            if (TextUtils.isEmpty(sb.toString())) {
                                sb.append(aVar.f5841b);
                            } else {
                                sb.append(",");
                                sb.append(aVar.f5841b);
                            }
                            errorCode = aVar.f5842c;
                        }
                    }
                    this.f5836e.clear();
                    if (errorCode == null) {
                        errorCode = ErrorCode.getErrorCode("9999", "", "");
                    }
                    this.f5834c.onLoadError(0, sb.toString(), errorCode);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.anythink.core.common.m.s
    public void onLoadFinish(int i2, Object obj) {
        a(i2, obj);
        synchronized (this.f5833b) {
            try {
                this.f5839h = true;
                if (this.f5834c != null && !this.f5838g) {
                    this.f5838g = true;
                    this.f5834c.onLoadFinish(i2, obj);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a(int i2, Object obj) {
    }

    public final boolean a() {
        boolean z2;
        synchronized (this.f5833b) {
            z2 = this.f5839h;
        }
        return z2;
    }

    private void b() {
        if (this.f5834c == null || this.f5838g) {
            return;
        }
        this.f5838g = true;
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList = new ArrayList(this.f5836e);
        int size = arrayList.size();
        AdError errorCode = null;
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            a aVar = (a) obj;
            if (aVar != null) {
                if (TextUtils.isEmpty(sb.toString())) {
                    sb.append(aVar.f5841b);
                } else {
                    sb.append(",");
                    sb.append(aVar.f5841b);
                }
                errorCode = aVar.f5842c;
            }
        }
        this.f5836e.clear();
        if (errorCode == null) {
            errorCode = ErrorCode.getErrorCode("9999", "", "");
        }
        this.f5834c.onLoadError(0, sb.toString(), errorCode);
    }
}
