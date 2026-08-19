package com.anythink.banner.b;

import android.text.TextUtils;
import android.util.Pair;
import com.anythink.banner.a.c;
import com.anythink.banner.unitgroup.api.CustomBannerAdapter;
import com.anythink.core.common.b.e;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.by;
import com.anythink.core.common.t.b;
import com.anythink.core.e.m;
import com.anythink.core.e.o;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class a {

    /* renamed from: e, reason: collision with root package name */
    private static final String f1353e = "a";

    /* renamed from: a, reason: collision with root package name */
    String f1354a;

    /* renamed from: b, reason: collision with root package name */
    WeakReference<c> f1355b;

    /* renamed from: c, reason: collision with root package name */
    b f1356c;

    /* renamed from: d, reason: collision with root package name */
    CustomBannerAdapter f1357d;

    /* renamed from: g, reason: collision with root package name */
    private boolean f1359g = false;

    /* renamed from: f, reason: collision with root package name */
    private Runnable f1358f = new Runnable() { // from class: com.anythink.banner.b.a.1
        @Override // java.lang.Runnable
        public final void run() {
            a.a(a.this);
            a.b(a.this);
        }
    };

    public a(c cVar) {
        this.f1355b = new WeakReference<>(cVar);
    }

    public static /* synthetic */ boolean a(a aVar) {
        aVar.f1359g = false;
        return false;
    }

    private void d() {
        WeakReference<c> weakReference = this.f1355b;
        c cVar = weakReference != null ? weakReference.get() : null;
        if (cVar != null) {
            cVar.timeUpRefreshView();
        } else {
            c();
        }
    }

    public final synchronized void b() {
        CustomBannerAdapter customBannerAdapter;
        try {
            if (TextUtils.isEmpty(this.f1354a)) {
                return;
            }
            m mVarA = o.a(s.b().g()).a(this.f1354a);
            if (this.f1356c != null) {
                c();
            }
            Pair<Boolean, Long> pairA = e.a(mVarA, mVarA != null && mVarA.an() == 1);
            boolean zBooleanValue = ((Boolean) pairA.first).booleanValue();
            long jLongValue = ((Long) pairA.second).longValue();
            if (zBooleanValue) {
                this.f1359g = true;
                if (jLongValue <= 0) {
                    jLongValue = 0;
                }
                if (jLongValue <= 0 && mVarA.l() == 2 && (customBannerAdapter = this.f1357d) != null) {
                    by unitGroupInfo = customBannerAdapter.getUnitGroupInfo();
                    jLongValue = unitGroupInfo != null ? unitGroupInfo.aM() : 0L;
                }
                if (jLongValue <= 0) {
                    jLongValue = mVarA.ao();
                }
                if (jLongValue <= 2000) {
                    jLongValue = 2000;
                }
                b bVar = new b(jLongValue, this.f1358f, (byte) 0);
                this.f1356c = bVar;
                bVar.a();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void c() {
        try {
            b bVar = this.f1356c;
            if (bVar != null) {
                bVar.b();
            }
            this.f1356c = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void a(String str) {
        this.f1354a = str;
    }

    public final boolean a() {
        return this.f1359g;
    }

    public final void a(CustomBannerAdapter customBannerAdapter) {
        this.f1357d = customBannerAdapter;
    }

    public static /* synthetic */ void b(a aVar) {
        WeakReference<c> weakReference = aVar.f1355b;
        c cVar = weakReference != null ? weakReference.get() : null;
        if (cVar != null) {
            cVar.timeUpRefreshView();
        } else {
            aVar.c();
        }
    }
}
