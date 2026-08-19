package com.anythink.core.common.p;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.anythink.core.api.ATAdRequest;
import com.anythink.core.api.AdError;
import com.anythink.core.common.d.s;
import com.anythink.core.common.f;
import com.anythink.core.common.h.as;
import com.anythink.core.common.t;
import com.anythink.core.common.v.b.e;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
public class a implements d {

    /* renamed from: b, reason: collision with root package name */
    String f7193b;

    /* renamed from: c, reason: collision with root package name */
    String f7194c;

    /* renamed from: d, reason: collision with root package name */
    b f7195d;

    /* renamed from: f, reason: collision with root package name */
    long f7197f;

    /* renamed from: i, reason: collision with root package name */
    private ATAdRequest f7200i;

    /* renamed from: a, reason: collision with root package name */
    String f7192a = a.class.getSimpleName();

    /* renamed from: e, reason: collision with root package name */
    AtomicBoolean f7196e = new AtomicBoolean(false);

    /* renamed from: g, reason: collision with root package name */
    long f7198g = 2000;

    /* renamed from: h, reason: collision with root package name */
    com.anythink.core.common.v.b.d f7199h = new com.anythink.core.common.v.b.d(e.dt, new Runnable() { // from class: com.anythink.core.common.p.a.1
        @Override // java.lang.Runnable
        public final void run() {
            a.this.e();
        }
    });

    public a(String str, String str2) {
        this.f7193b = str;
        this.f7194c = str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void e() {
        if (b()) {
            if (this.f7196e.get()) {
                this.f7196e.set(false);
                if (this.f7197f == 0 || SystemClock.elapsedRealtime() - this.f7197f > this.f7198g) {
                    this.f7197f = SystemClock.elapsedRealtime();
                    a(s.b().M(), this.f7200i, 4);
                }
            }
        }
    }

    @Override // com.anythink.core.common.p.d
    public final boolean b() {
        return t.a().a(this.f7193b);
    }

    @Override // com.anythink.core.common.p.d
    public final void c() {
        b bVar;
        if (!b() || (bVar = this.f7195d) == null) {
            return;
        }
        bVar.a(this.f7193b);
    }

    @Override // com.anythink.core.common.p.d
    public final synchronized void d() {
        this.f7196e.set(false);
        com.anythink.core.common.t.c.a().a(this.f7199h);
    }

    @Override // com.anythink.core.common.p.d
    public final synchronized void a(int i2) {
        if (this.f7196e.get()) {
            return;
        }
        this.f7196e.set(true);
        com.anythink.core.common.t.c.a().a(this.f7199h, ((long) Math.pow(2.0d, i2)) * 1000);
    }

    public final ATAdRequest a() {
        return this.f7200i;
    }

    @Override // com.anythink.core.common.p.d
    public final void a(Context context, ATAdRequest aTAdRequest, int i2) {
        this.f7200i = aTAdRequest;
        as asVar = new as();
        asVar.a(context);
        asVar.a(aTAdRequest);
        asVar.f3811c = i2;
        f.a(context, this.f7193b, this.f7194c).b(context, this.f7194c, this.f7193b, asVar, null);
    }

    @Override // com.anythink.core.common.p.d
    public final void a(AdError adError, int i2, boolean z2) {
        if (b()) {
            if (z2) {
                a(i2);
            }
            b bVar = this.f7195d;
            if (bVar != null) {
                bVar.a(this.f7193b, adError);
            }
        }
    }

    @Override // com.anythink.core.common.p.d
    public final void a(b bVar) {
        this.f7195d = bVar;
    }

    @Override // com.anythink.core.common.p.d
    public final boolean a(int i2, List<String> list) {
        String str;
        if (list == null) {
            return true;
        }
        if (i2 == 4) {
            str = "1";
        } else if (i2 == 5) {
            str = "2";
        } else if (i2 == 6) {
            str = "3";
        } else if (i2 != 7) {
            str = "-1";
        } else {
            str = "4";
        }
        return TextUtils.equals(str, "-1") || list.contains(str);
    }
}
