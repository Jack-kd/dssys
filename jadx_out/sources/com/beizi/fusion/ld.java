package com.beizi.fusion;

/* loaded from: classes2.dex */
public interface ld {

    public enum a {
        WGS_84("WGS84"),
        GCJ_02("GCJ02"),
        BD_09("BD09");


        /* renamed from: a, reason: collision with root package name */
        private final String f14850a;

        a(String str) {
            this.f14850a = str;
        }

        public String b() {
            return this.f14850a;
        }
    }

    double a();

    double b();

    a c();

    long d();
}
