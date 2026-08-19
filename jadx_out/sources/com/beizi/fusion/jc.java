package com.beizi.fusion;

/* loaded from: classes2.dex */
public interface jc {

    public static class a implements b {

        /* renamed from: f, reason: collision with root package name */
        public static final a f14659f = new a(0, 100, false, false);

        /* renamed from: g, reason: collision with root package name */
        public static final a f14660g = new a(0, 100, false, true);

        /* renamed from: a, reason: collision with root package name */
        private final boolean f14661a;

        /* renamed from: b, reason: collision with root package name */
        private int f14662b;

        /* renamed from: c, reason: collision with root package name */
        private final int f14663c;

        /* renamed from: d, reason: collision with root package name */
        private final boolean f14664d;

        /* renamed from: e, reason: collision with root package name */
        private int f14665e;

        public a(int i2, int i3, boolean z2, boolean z3) {
            this.f14662b = i2;
            this.f14663c = i3;
            this.f14664d = z2;
            this.f14661a = z3;
        }

        public int a() {
            return this.f14663c;
        }

        public int b() {
            return this.f14662b;
        }

        public boolean c() {
            return this.f14664d;
        }

        public boolean d() {
            return this.f14661a;
        }

        public void e() {
            this.f14662b = 0;
        }

        @Override // com.beizi.fusion.jc.b
        public void a(int i2) {
            this.f14665e = i2;
        }
    }

    public interface b {
        void a(int i2);
    }

    void a(a aVar);
}
