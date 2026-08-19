package com.anythink.core.basead.a;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    private final int f1612a;

    /* renamed from: b, reason: collision with root package name */
    private final String f1613b;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private int f1614a;

        /* renamed from: b, reason: collision with root package name */
        private String f1615b;

        public final a a(int i2) {
            this.f1614a = i2;
            return this;
        }

        public final a a(String str) {
            this.f1615b = str;
            return this;
        }

        public final d a() {
            return new d(this, (byte) 0);
        }
    }

    public /* synthetic */ d(a aVar, byte b3) {
        this(aVar);
    }

    private String b() {
        return this.f1613b;
    }

    public final int a() {
        return this.f1612a;
    }

    private d(a aVar) {
        this.f1612a = aVar.f1614a;
        this.f1613b = aVar.f1615b;
    }
}
