package com.beizi.fusion;

/* loaded from: classes2.dex */
public abstract class r9 {

    public enum a {
        UNKNOWN(-1),
        ADULT(0),
        UNDERAGE(1);


        /* renamed from: a, reason: collision with root package name */
        private final int f15931a;

        a(int i2) {
            this.f15931a = i2;
        }

        public int b() {
            return this.f15931a;
        }
    }

    public InterfaceC1129c0 a() {
        return null;
    }

    public String b() {
        return "";
    }

    public String c() {
        return "";
    }

    public String d() {
        return "";
    }

    public a e() {
        return a.UNKNOWN;
    }

    public String f() {
        return "";
    }

    public abstract boolean g();

    public boolean h() {
        return true;
    }

    public boolean i() {
        return true;
    }

    public abstract boolean j();

    public abstract boolean k();
}
