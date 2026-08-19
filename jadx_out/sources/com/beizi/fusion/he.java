package com.beizi.fusion;

/* loaded from: classes2.dex */
public interface he extends ab {

    public enum a implements za {
        SINGLE_VIEW_RENDERED(33, "single_render"),
        RENDER_SUCCESS(34, "render_success"),
        RENDER_FAILED(35, "render_failed");


        /* renamed from: a, reason: collision with root package name */
        private final int f14283a;

        /* renamed from: b, reason: collision with root package name */
        private final String f14284b;

        a(int i2, String str) {
            this.f14283a = i2;
            this.f14284b = str;
        }

        @Override // com.beizi.fusion.za
        public int getEventCode() {
            return this.f14283a;
        }
    }

    void a();

    void a(cb cbVar);

    void f();
}
