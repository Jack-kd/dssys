package com.beizi.fusion;

import com.umeng.analytics.pro.bv;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public interface ze {

    public static class a {
        public static ze a() {
            return new on();
        }
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public float f17873a;

        /* renamed from: b, reason: collision with root package name */
        public float f17874b;

        /* renamed from: c, reason: collision with root package name */
        public float f17875c;

        /* renamed from: d, reason: collision with root package name */
        private final float f17876d;

        public b(float f2, float f3, float f4, float f5) {
            this.f17873a = f2;
            this.f17874b = f3;
            this.f17875c = f4;
            this.f17876d = f5;
        }

        public float a(String str) {
            if ("x".equalsIgnoreCase(str)) {
                return this.f17873a;
            }
            if ("y".equalsIgnoreCase(str)) {
                return this.f17874b;
            }
            if (bv.aD.equalsIgnoreCase(str)) {
                return this.f17875c;
            }
            if ("xyz".equalsIgnoreCase(str)) {
                return this.f17876d;
            }
            return -1.0f;
        }
    }

    c a();

    void a(int i2, float f2, float f3, float f4, float f5, long j2);

    long b();

    public static class c {

        /* renamed from: a, reason: collision with root package name */
        private final Map f17877a = new HashMap();

        /* renamed from: b, reason: collision with root package name */
        private long f17878b = 0;

        public void a(int i2, b bVar, long j2) {
            this.f17877a.put(Integer.valueOf(i2), bVar);
            this.f17878b = j2;
        }

        public b a(int i2) {
            return (b) this.f17877a.get(Integer.valueOf(i2));
        }

        public long a() {
            return this.f17878b;
        }
    }
}
