package com.kwad.sdk.utils.a;

/* loaded from: classes4.dex */
final class a {

    /* renamed from: com.kwad.sdk.utils.a.a$a, reason: collision with other inner class name */
    public static class C0635a extends j {
        public C0635a(int i2, int i3, Object obj, int i4, boolean z2) {
            super(i2, i3, obj, i4, z2);
        }

        @Override // com.kwad.sdk.utils.a.a.b
        public final byte Xi() {
            return (byte) 7;
        }
    }

    public static abstract class b {
        int offset;

        public abstract byte Xi();
    }

    public static class c extends b {
        boolean value;

        public c(int i2, boolean z2) {
            this.offset = i2;
            this.value = z2;
        }

        @Override // com.kwad.sdk.utils.a.a.b
        public final byte Xi() {
            return (byte) 1;
        }
    }

    public static class d extends b {
        double value;

        public d(int i2, double d2) {
            this.offset = i2;
            this.value = d2;
        }

        @Override // com.kwad.sdk.utils.a.a.b
        public final byte Xi() {
            return (byte) 5;
        }
    }

    public static class e extends b {
        float value;

        public e(int i2, float f2) {
            this.offset = i2;
            this.value = f2;
        }

        @Override // com.kwad.sdk.utils.a.a.b
        public final byte Xi() {
            return (byte) 3;
        }
    }

    public static class f extends b {
        int value;

        public f(int i2, int i3) {
            this.offset = i2;
            this.value = i3;
        }

        @Override // com.kwad.sdk.utils.a.a.b
        public final byte Xi() {
            return (byte) 2;
        }
    }

    public static class g extends b {
        long value;

        public g(int i2, long j2) {
            this.offset = i2;
            this.value = j2;
        }

        @Override // com.kwad.sdk.utils.a.a.b
        public final byte Xi() {
            return (byte) 4;
        }
    }

    public static class h extends j {
        public h(int i2, int i3, Object obj, int i4, boolean z2) {
            super(i2, i3, obj, i4, z2);
        }

        @Override // com.kwad.sdk.utils.a.a.b
        public final byte Xi() {
            return (byte) 8;
        }
    }

    public static class i extends j {
        public i(int i2, int i3, String str, int i4, boolean z2) {
            super(i2, i3, str, i4, z2);
        }

        @Override // com.kwad.sdk.utils.a.a.b
        public final byte Xi() {
            return (byte) 6;
        }
    }

    public static abstract class j extends b {
        int brJ;
        boolean brK;
        int start;
        Object value;

        public j(int i2, int i3, Object obj, int i4, boolean z2) {
            this.start = i2;
            this.offset = i3;
            this.value = obj;
            this.brJ = i4;
            this.brK = z2;
        }
    }
}
