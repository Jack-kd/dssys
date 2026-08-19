package com.anythink.china.b;

import android.os.SystemClock;
import com.anythink.china.api.ATAppDownloadListener;
import com.anythink.china.api.CustomAdapterDownloadListener;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATEventInterface;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.common.d.k;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.bx;
import com.anythink.core.common.h.n;
import com.anythink.core.common.h.o;
import com.anythink.core.common.q;
import com.anythink.core.common.v.b.d;
import com.anythink.core.common.v.b.e;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class b implements CustomAdapterDownloadListener {

    /* renamed from: a, reason: collision with root package name */
    ATBaseAdAdapter f1419a;

    /* renamed from: b, reason: collision with root package name */
    BaseAd f1420b;

    /* renamed from: c, reason: collision with root package name */
    ATAdInfo f1421c;

    /* renamed from: d, reason: collision with root package name */
    WeakReference<ATAppDownloadListener> f1422d;

    /* renamed from: e, reason: collision with root package name */
    long f1423e;

    /* renamed from: f, reason: collision with root package name */
    boolean f1424f;

    /* renamed from: g, reason: collision with root package name */
    boolean f1425g;

    public b(ATBaseAdAdapter aTBaseAdAdapter, BaseAd baseAd, ATEventInterface aTEventInterface) {
        this.f1419a = aTBaseAdAdapter;
        this.f1420b = baseAd;
        if (aTEventInterface instanceof ATAppDownloadListener) {
            this.f1422d = new WeakReference<>((ATAppDownloadListener) aTEventInterface);
        }
    }

    private void a() {
        BaseAd baseAd = this.f1420b;
        if (baseAd != null) {
            this.f1421c = k.a(baseAd, this.f1419a);
        } else {
            this.f1421c = k.a(this.f1419a);
        }
    }

    @Override // com.anythink.china.api.CustomAdapterDownloadListener
    public final void onDownloadFail(long j2, long j3, String str, String str2) {
        if (this.f1421c == null) {
            a();
        }
        WeakReference<ATAppDownloadListener> weakReference = this.f1422d;
        ATAppDownloadListener aTAppDownloadListener = weakReference != null ? weakReference.get() : null;
        if (aTAppDownloadListener != null) {
            aTAppDownloadListener.onDownloadFail(this.f1421c, j2, j3, str, str2);
        }
    }

    @Override // com.anythink.china.api.CustomAdapterDownloadListener
    public final void onDownloadFinish(long j2, String str, String str2) {
        if (this.f1421c == null) {
            a();
        }
        if (this.f1423e != 0 && !this.f1425g) {
            this.f1425g = true;
            a(19, SystemClock.elapsedRealtime() - this.f1423e, str2);
        }
        WeakReference<ATAppDownloadListener> weakReference = this.f1422d;
        ATAppDownloadListener aTAppDownloadListener = weakReference != null ? weakReference.get() : null;
        if (aTAppDownloadListener != null) {
            aTAppDownloadListener.onDownloadFinish(this.f1421c, j2, str, str2);
        }
    }

    @Override // com.anythink.china.api.CustomAdapterDownloadListener
    public final void onDownloadPause(long j2, long j3, String str, String str2) {
        if (this.f1421c == null) {
            a();
        }
        WeakReference<ATAppDownloadListener> weakReference = this.f1422d;
        ATAppDownloadListener aTAppDownloadListener = weakReference != null ? weakReference.get() : null;
        if (aTAppDownloadListener != null) {
            aTAppDownloadListener.onDownloadPause(this.f1421c, j2, j3, str, str2);
        }
    }

    @Override // com.anythink.china.api.CustomAdapterDownloadListener
    public final void onDownloadStart(long j2, long j3, String str, String str2) {
        if (this.f1421c == null) {
            a();
        }
        this.f1423e = SystemClock.elapsedRealtime();
        a(18, 0L, str2);
        WeakReference<ATAppDownloadListener> weakReference = this.f1422d;
        ATAppDownloadListener aTAppDownloadListener = weakReference != null ? weakReference.get() : null;
        if (aTAppDownloadListener != null) {
            aTAppDownloadListener.onDownloadStart(this.f1421c, j2, j3, str, str2);
        }
    }

    @Override // com.anythink.china.api.CustomAdapterDownloadListener
    public final void onDownloadUpdate(long j2, long j3, String str, String str2) {
        if (this.f1421c == null) {
            a();
        }
        WeakReference<ATAppDownloadListener> weakReference = this.f1422d;
        ATAppDownloadListener aTAppDownloadListener = weakReference != null ? weakReference.get() : null;
        if (aTAppDownloadListener != null) {
            aTAppDownloadListener.onDownloadUpdate(this.f1421c, j2, j3, str, str2);
        }
    }

    @Override // com.anythink.china.api.CustomAdapterDownloadListener
    public final void onInstalled(String str, String str2) {
        if (this.f1421c == null) {
            a();
        }
        if (!this.f1424f) {
            this.f1424f = true;
            a(20, 0L, str2);
        }
        WeakReference<ATAppDownloadListener> weakReference = this.f1422d;
        ATAppDownloadListener aTAppDownloadListener = weakReference != null ? weakReference.get() : null;
        if (aTAppDownloadListener != null) {
            aTAppDownloadListener.onInstalled(this.f1421c, str, str2);
        }
    }

    private void a(final int i2, final long j2, final String str) {
        com.anythink.core.common.v.b.c.a().a(new d(e.f8108Q, new Runnable() { // from class: com.anythink.china.b.b.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    o oVar = new o();
                    b bVar = b.this;
                    BaseAd baseAd = bVar.f1420b;
                    oVar.f4350b = baseAd != null ? baseAd.getDetail() : bVar.f1419a.getTrackingInfo();
                    oVar.f4349a = i2;
                    oVar.f4351c = System.currentTimeMillis();
                    bx bxVar = oVar.f4350b;
                    if (bxVar instanceof n) {
                        ((n) bxVar).e(str);
                        ((n) oVar.f4350b).q(j2);
                    }
                    q.a(s.b().g()).a(i2, oVar, com.anythink.core.e.d.a(s.b().g()).b(s.b().p()));
                } catch (Throwable unused) {
                }
            }
        }));
    }
}
