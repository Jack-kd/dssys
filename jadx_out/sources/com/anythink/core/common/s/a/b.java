package com.anythink.core.common.s.a;

import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes2.dex */
final class b {

    public static class a extends j {
        public a(int i2, int i3, Object obj, int i4, boolean z2) {
            super(i2, i3, obj, i4, z2);
        }

        @Override // com.anythink.core.common.s.a.b.AbstractC0079b
        public final byte a() {
            return (byte) 7;
        }

        @Override // com.anythink.core.common.s.a.b.AbstractC0079b
        public final boolean a(AbstractC0079b abstractC0079b) {
            if (abstractC0079b.a() != 7) {
                return false;
            }
            Object obj = ((a) abstractC0079b).f7556c;
            Object obj2 = this.f7556c;
            if (obj2 == obj) {
                return true;
            }
            if (obj2 != null && obj != null) {
                if (obj2 instanceof String) {
                    return obj2.equals(obj);
                }
                if ((obj2 instanceof byte[]) && (obj instanceof byte[])) {
                    return Arrays.equals((byte[]) obj2, (byte[]) obj);
                }
            }
            return false;
        }
    }

    /* renamed from: com.anythink.core.common.s.a.b$b, reason: collision with other inner class name */
    public static abstract class AbstractC0079b {

        /* renamed from: a, reason: collision with root package name */
        int f7549a;

        public abstract byte a();

        public abstract boolean a(AbstractC0079b abstractC0079b);
    }

    public static class c extends AbstractC0079b {

        /* renamed from: b, reason: collision with root package name */
        boolean f7550b;

        public c(int i2, boolean z2) {
            this.f7549a = i2;
            this.f7550b = z2;
        }

        @Override // com.anythink.core.common.s.a.b.AbstractC0079b
        public final byte a() {
            return (byte) 1;
        }

        @Override // com.anythink.core.common.s.a.b.AbstractC0079b
        public final boolean a(AbstractC0079b abstractC0079b) {
            return abstractC0079b.a() == 1 && ((c) abstractC0079b).f7550b == this.f7550b;
        }
    }

    public static class d extends AbstractC0079b {

        /* renamed from: b, reason: collision with root package name */
        double f7551b;

        public d(int i2, double d2) {
            this.f7549a = i2;
            this.f7551b = d2;
        }

        @Override // com.anythink.core.common.s.a.b.AbstractC0079b
        public final byte a() {
            return (byte) 5;
        }

        @Override // com.anythink.core.common.s.a.b.AbstractC0079b
        public final boolean a(AbstractC0079b abstractC0079b) {
            return abstractC0079b.a() == 5 && ((d) abstractC0079b).f7551b == this.f7551b;
        }
    }

    public static class e extends AbstractC0079b {

        /* renamed from: b, reason: collision with root package name */
        float f7552b;

        public e(int i2, float f2) {
            this.f7549a = i2;
            this.f7552b = f2;
        }

        @Override // com.anythink.core.common.s.a.b.AbstractC0079b
        public final byte a() {
            return (byte) 3;
        }

        @Override // com.anythink.core.common.s.a.b.AbstractC0079b
        public final boolean a(AbstractC0079b abstractC0079b) {
            return abstractC0079b.a() == 3 && ((e) abstractC0079b).f7552b == this.f7552b;
        }
    }

    public static class f extends AbstractC0079b {

        /* renamed from: b, reason: collision with root package name */
        int f7553b;

        public f(int i2, int i3) {
            this.f7549a = i2;
            this.f7553b = i3;
        }

        @Override // com.anythink.core.common.s.a.b.AbstractC0079b
        public final byte a() {
            return (byte) 2;
        }

        @Override // com.anythink.core.common.s.a.b.AbstractC0079b
        public final boolean a(AbstractC0079b abstractC0079b) {
            return abstractC0079b.a() == 2 && ((f) abstractC0079b).f7553b == this.f7553b;
        }
    }

    public static class g extends AbstractC0079b {

        /* renamed from: b, reason: collision with root package name */
        long f7554b;

        public g(int i2, long j2) {
            this.f7549a = i2;
            this.f7554b = j2;
        }

        @Override // com.anythink.core.common.s.a.b.AbstractC0079b
        public final byte a() {
            return (byte) 4;
        }

        @Override // com.anythink.core.common.s.a.b.AbstractC0079b
        public final boolean a(AbstractC0079b abstractC0079b) {
            return abstractC0079b.a() == 4 && ((g) abstractC0079b).f7554b == this.f7554b;
        }
    }

    public static class h extends j {

        /* renamed from: b, reason: collision with root package name */
        com.anythink.core.common.s.a.a.b f7555b;

        public h(int i2, int i3, Object obj, int i4, boolean z2) {
            super(i2, i3, obj, i4, z2);
        }

        @Override // com.anythink.core.common.s.a.b.AbstractC0079b
        public final byte a() {
            return (byte) 8;
        }

        @Override // com.anythink.core.common.s.a.b.AbstractC0079b
        public final boolean a(AbstractC0079b abstractC0079b) {
            return abstractC0079b.a() == 8 && Objects.equals(((h) abstractC0079b).f7556c, this.f7556c);
        }
    }

    public static class i extends j {
        public i(int i2, int i3, String str, int i4, boolean z2) {
            super(i2, i3, str, i4, z2);
        }

        @Override // com.anythink.core.common.s.a.b.AbstractC0079b
        public final byte a() {
            return (byte) 6;
        }

        @Override // com.anythink.core.common.s.a.b.AbstractC0079b
        public final boolean a(AbstractC0079b abstractC0079b) {
            if (abstractC0079b.a() != 6) {
                return false;
            }
            i iVar = (i) abstractC0079b;
            return iVar.f7559f == this.f7559f && Objects.equals(iVar.f7556c, this.f7556c);
        }
    }

    public static abstract class j extends AbstractC0079b {

        /* renamed from: c, reason: collision with root package name */
        Object f7556c;

        /* renamed from: d, reason: collision with root package name */
        int f7557d;

        /* renamed from: e, reason: collision with root package name */
        int f7558e;

        /* renamed from: f, reason: collision with root package name */
        boolean f7559f;

        public j(int i2, int i3, Object obj, int i4, boolean z2) {
            this.f7557d = i2;
            this.f7549a = i3;
            this.f7556c = obj;
            this.f7558e = i4;
            this.f7559f = z2;
        }
    }
}
