package com.beizi.fusion;

/* loaded from: classes2.dex */
public class r6 {

    /* renamed from: a, reason: collision with root package name */
    private String f15884a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f15885b;

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private static r6 f15886a = new r6();
    }

    public static r6 a() {
        return b.f15886a;
    }

    private r6() {
        this.f15885b = true;
        if (b.f15886a != null) {
            throw new RuntimeException("Singleton ...");
        }
    }

    public void a(String str, boolean z2) {
        this.f15884a = str;
        this.f15885b = z2;
    }
}
