package com.anythink.core.common.inner.mixad.c.a;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.anythink.core.api.ATNativeAdInfo;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.w;
import com.anythink.core.common.h.x;
import com.anythink.core.common.l.e.a.b;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private ATNativeAdInfo f4698a;

    /* renamed from: b, reason: collision with root package name */
    private x f4699b;

    /* renamed from: c, reason: collision with root package name */
    private w<?> f4700c;

    /* renamed from: d, reason: collision with root package name */
    private Context f4701d;

    /* renamed from: e, reason: collision with root package name */
    private WeakReference<Context> f4702e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f4703f;

    /* renamed from: g, reason: collision with root package name */
    private String f4704g;

    /* renamed from: h, reason: collision with root package name */
    private int f4705h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f4706i;

    /* renamed from: j, reason: collision with root package name */
    private b f4707j;

    /* renamed from: k, reason: collision with root package name */
    private View f4708k;

    /* renamed from: l, reason: collision with root package name */
    private int f4709l;

    /* renamed from: m, reason: collision with root package name */
    private int f4710m;

    /* renamed from: com.anythink.core.common.inner.mixad.c.a.a$a, reason: collision with other inner class name */
    public static class C0056a {

        /* renamed from: a, reason: collision with root package name */
        private Context f4711a;

        /* renamed from: b, reason: collision with root package name */
        private ATNativeAdInfo f4712b;

        /* renamed from: c, reason: collision with root package name */
        private x f4713c;

        /* renamed from: d, reason: collision with root package name */
        private w<?> f4714d;

        /* renamed from: e, reason: collision with root package name */
        private boolean f4715e;

        /* renamed from: f, reason: collision with root package name */
        private String f4716f;

        /* renamed from: g, reason: collision with root package name */
        private int f4717g;

        /* renamed from: h, reason: collision with root package name */
        private boolean f4718h;

        /* renamed from: i, reason: collision with root package name */
        private b f4719i;

        /* renamed from: j, reason: collision with root package name */
        private View f4720j;

        /* renamed from: k, reason: collision with root package name */
        private int f4721k;

        /* renamed from: l, reason: collision with root package name */
        private int f4722l;

        private b b() {
            return this.f4719i;
        }

        public final C0056a a(a aVar) {
            if (aVar != null) {
                this.f4711a = aVar.j();
                this.f4714d = aVar.c();
                this.f4713c = aVar.b();
                this.f4719i = aVar.h();
                this.f4712b = aVar.a();
                this.f4720j = aVar.i();
                this.f4718h = aVar.g();
                this.f4715e = aVar.d();
                this.f4717g = aVar.f();
                this.f4716f = aVar.e();
                this.f4721k = aVar.k();
                this.f4722l = aVar.l();
            }
            return this;
        }

        public final C0056a c(int i2) {
            this.f4722l = i2;
            return this;
        }

        public final C0056a b(boolean z2) {
            this.f4718h = z2;
            return this;
        }

        public final C0056a b(int i2) {
            this.f4721k = i2;
            return this;
        }

        public final C0056a a(ATNativeAdInfo aTNativeAdInfo) {
            this.f4712b = aTNativeAdInfo;
            return this;
        }

        public final C0056a a(b bVar) {
            this.f4719i = bVar;
            return this;
        }

        public final C0056a a(x xVar) {
            this.f4713c = xVar;
            return this;
        }

        public final C0056a a(w<?> wVar) {
            this.f4714d = wVar;
            return this;
        }

        public final C0056a a(boolean z2) {
            this.f4715e = z2;
            return this;
        }

        public final C0056a a(String str) {
            this.f4716f = str;
            return this;
        }

        public final C0056a a(int i2) {
            this.f4717g = i2;
            return this;
        }

        public final C0056a a(Context context) {
            this.f4711a = context;
            return this;
        }

        private C0056a a(View view) {
            this.f4720j = view;
            return this;
        }

        public final a a() {
            a aVar = new a((byte) 0);
            Context context = this.f4711a;
            if (!(context instanceof Activity)) {
                aVar.f4701d = context;
            } else {
                aVar.f4702e = new WeakReference(this.f4711a);
            }
            aVar.f4698a = this.f4712b;
            aVar.f4708k = this.f4720j;
            aVar.f4706i = this.f4718h;
            aVar.f4707j = this.f4719i;
            aVar.f4700c = this.f4714d;
            aVar.f4699b = this.f4713c;
            aVar.f4703f = this.f4715e;
            aVar.f4705h = this.f4717g;
            aVar.f4704g = this.f4716f;
            aVar.f4709l = this.f4721k;
            aVar.f4710m = this.f4722l;
            return aVar;
        }
    }

    public /* synthetic */ a(byte b3) {
        this();
    }

    public final boolean d() {
        return this.f4703f;
    }

    public final String e() {
        return this.f4704g;
    }

    public final int f() {
        return this.f4705h;
    }

    public final boolean g() {
        return this.f4706i;
    }

    public final b h() {
        return this.f4707j;
    }

    public final View i() {
        return this.f4708k;
    }

    public final Context j() {
        Context context = this.f4701d;
        WeakReference<Context> weakReference = this.f4702e;
        if (weakReference != null && weakReference.get() != null) {
            context = this.f4702e.get();
        }
        return context == null ? s.b().g() : context;
    }

    public final int k() {
        return this.f4709l;
    }

    public final int l() {
        return this.f4710m;
    }

    private a() {
    }

    public final w<?> c() {
        return this.f4700c;
    }

    public final x b() {
        return this.f4699b;
    }

    public final ATNativeAdInfo a() {
        return this.f4698a;
    }

    public final void a(View view) {
        this.f4708k = view;
    }
}
