package com.anythink.core.common.l.d;

import android.content.Context;
import com.anythink.core.api.ATNativeAdCustomRender;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.bridge.IATBaseAdAdapter;
import com.anythink.core.common.h.n;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private Context f5442a;

    /* renamed from: b, reason: collision with root package name */
    private BaseAd f5443b;

    /* renamed from: c, reason: collision with root package name */
    private n f5444c;

    /* renamed from: d, reason: collision with root package name */
    private ATNativeAdCustomRender f5445d;

    /* renamed from: e, reason: collision with root package name */
    private com.anythink.core.common.l.e.a.b f5446e;

    /* renamed from: f, reason: collision with root package name */
    private com.anythink.core.common.l.b.a.b f5447f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f5448g;

    /* renamed from: h, reason: collision with root package name */
    private b f5449h;

    /* renamed from: i, reason: collision with root package name */
    private int f5450i;

    /* renamed from: j, reason: collision with root package name */
    private int f5451j;

    /* renamed from: com.anythink.core.common.l.d.a$a, reason: collision with other inner class name */
    public static class C0063a {

        /* renamed from: a, reason: collision with root package name */
        private Context f5452a;

        /* renamed from: b, reason: collision with root package name */
        private BaseAd f5453b;

        /* renamed from: c, reason: collision with root package name */
        private n f5454c;

        /* renamed from: d, reason: collision with root package name */
        private ATNativeAdCustomRender f5455d;

        /* renamed from: e, reason: collision with root package name */
        private com.anythink.core.common.l.e.a.b f5456e;

        /* renamed from: f, reason: collision with root package name */
        private com.anythink.core.common.l.b.a.b f5457f;

        /* renamed from: g, reason: collision with root package name */
        private boolean f5458g;

        /* renamed from: h, reason: collision with root package name */
        private int f5459h;

        /* renamed from: i, reason: collision with root package name */
        private int f5460i;

        public final C0063a a(Context context) {
            this.f5452a = context;
            return this;
        }

        public final C0063a b(int i2) {
            this.f5460i = i2;
            return this;
        }

        public final C0063a a(BaseAd baseAd) {
            this.f5453b = baseAd;
            return this;
        }

        public final C0063a a(ATNativeAdCustomRender aTNativeAdCustomRender) {
            this.f5455d = aTNativeAdCustomRender;
            return this;
        }

        public final C0063a a(com.anythink.core.common.l.e.a.b bVar) {
            this.f5456e = bVar;
            return this;
        }

        public final C0063a a(n nVar) {
            this.f5454c = nVar;
            return this;
        }

        public final C0063a a(boolean z2) {
            this.f5458g = z2;
            return this;
        }

        public final C0063a a(com.anythink.core.common.l.b.a.b bVar) {
            this.f5457f = bVar;
            return this;
        }

        public final C0063a a(int i2) {
            this.f5459h = i2;
            return this;
        }

        public final a a() {
            a aVar = new a((byte) 0);
            aVar.f5442a = this.f5452a;
            aVar.f5443b = this.f5453b;
            aVar.f5445d = this.f5455d;
            aVar.f5446e = this.f5456e;
            aVar.f5447f = this.f5457f;
            aVar.f5444c = this.f5454c;
            aVar.f5448g = this.f5458g;
            aVar.f5450i = this.f5459h;
            aVar.f5451j = this.f5460i;
            return aVar;
        }
    }

    public /* synthetic */ a(byte b3) {
        this();
    }

    private int l() {
        b bVar = this.f5449h;
        if (bVar != null) {
            return bVar.b();
        }
        return -1;
    }

    public final ATNativeAdCustomRender c() {
        return this.f5445d;
    }

    public final com.anythink.core.common.l.e.a.b d() {
        return this.f5446e;
    }

    public final int e() {
        b bVar = this.f5449h;
        if (bVar != null) {
            return bVar.e();
        }
        return -1;
    }

    public final IATBaseAdAdapter f() {
        b bVar = this.f5449h;
        if (bVar != null) {
            return bVar.r();
        }
        return null;
    }

    public final n g() {
        return this.f5444c;
    }

    public final boolean h() {
        return this.f5448g;
    }

    public final com.anythink.core.common.l.b.a.b i() {
        return this.f5447f;
    }

    public final int j() {
        return this.f5450i;
    }

    public final int k() {
        return this.f5451j;
    }

    private a() {
    }

    public final BaseAd b() {
        return this.f5443b;
    }

    public final Context a() {
        return this.f5442a;
    }

    public final void a(b bVar) {
        this.f5449h = bVar;
    }

    public final int a(String str) {
        b bVar = this.f5449h;
        return Math.max(bVar != null ? ((Integer) bVar.a(str, 5)).intValue() : 5, 3);
    }
}
