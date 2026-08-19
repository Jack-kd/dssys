package com.anythink.core.basead.a;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    private final String f1606a;

    /* renamed from: b, reason: collision with root package name */
    private final boolean f1607b;

    /* renamed from: c, reason: collision with root package name */
    private final String f1608c;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private String f1609a;

        /* renamed from: b, reason: collision with root package name */
        private boolean f1610b;

        /* renamed from: c, reason: collision with root package name */
        private String f1611c;

        public final a a(String str) {
            this.f1609a = str;
            return this;
        }

        public final a b(String str) {
            this.f1611c = str;
            return this;
        }

        public final a a(boolean z2) {
            this.f1610b = z2;
            return this;
        }

        public final c a() {
            return new c(this, (byte) 0);
        }
    }

    public /* synthetic */ c(a aVar, byte b3) {
        this(aVar);
    }

    public final String a() {
        return this.f1606a;
    }

    public final boolean b() {
        return this.f1607b;
    }

    public final String c() {
        return this.f1608c;
    }

    private c(a aVar) {
        this.f1606a = aVar.f1609a;
        this.f1607b = aVar.f1610b;
        this.f1608c = aVar.f1611c;
    }
}
