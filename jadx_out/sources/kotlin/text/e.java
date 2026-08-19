package kotlin.text;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.functions.Function2;

/* loaded from: classes5.dex */
public final class e implements kotlin.sequences.g {

    /* renamed from: a, reason: collision with root package name */
    public final CharSequence f51459a;

    /* renamed from: b, reason: collision with root package name */
    public final int f51460b;

    /* renamed from: c, reason: collision with root package name */
    public final int f51461c;

    /* renamed from: d, reason: collision with root package name */
    public final Function2 f51462d;

    public static final class a implements Iterator, B1.a {

        /* renamed from: b, reason: collision with root package name */
        public int f51463b = -1;

        /* renamed from: c, reason: collision with root package name */
        public int f51464c;

        /* renamed from: d, reason: collision with root package name */
        public int f51465d;

        /* renamed from: e, reason: collision with root package name */
        public E1.d f51466e;

        /* renamed from: f, reason: collision with root package name */
        public int f51467f;

        public a() {
            int iF = E1.f.f(e.this.f51460b, 0, e.this.f51459a.length());
            this.f51464c = iF;
            this.f51465d = iF;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0022  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final void a() {
            /*
                r6 = this;
                int r0 = r6.f51465d
                r1 = 0
                if (r0 >= 0) goto Lb
                r6.f51463b = r1
                r0 = 0
                r6.f51466e = r0
                return
            Lb:
                kotlin.text.e r0 = kotlin.text.e.this
                int r0 = kotlin.text.e.d(r0)
                r2 = -1
                r3 = 1
                if (r0 <= 0) goto L22
                int r0 = r6.f51467f
                int r0 = r0 + r3
                r6.f51467f = r0
                kotlin.text.e r4 = kotlin.text.e.this
                int r4 = kotlin.text.e.d(r4)
                if (r0 >= r4) goto L30
            L22:
                int r0 = r6.f51465d
                kotlin.text.e r4 = kotlin.text.e.this
                java.lang.CharSequence r4 = kotlin.text.e.c(r4)
                int r4 = r4.length()
                if (r0 <= r4) goto L46
            L30:
                E1.d r0 = new E1.d
                int r1 = r6.f51464c
                kotlin.text.e r4 = kotlin.text.e.this
                java.lang.CharSequence r4 = kotlin.text.e.c(r4)
                int r4 = kotlin.text.B.P(r4)
                r0.<init>(r1, r4)
                r6.f51466e = r0
                r6.f51465d = r2
                goto L9b
            L46:
                kotlin.text.e r0 = kotlin.text.e.this
                kotlin.jvm.functions.Function2 r0 = kotlin.text.e.b(r0)
                kotlin.text.e r4 = kotlin.text.e.this
                java.lang.CharSequence r4 = kotlin.text.e.c(r4)
                int r5 = r6.f51465d
                java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
                java.lang.Object r0 = r0.invoke(r4, r5)
                kotlin.Pair r0 = (kotlin.Pair) r0
                if (r0 != 0) goto L76
                E1.d r0 = new E1.d
                int r1 = r6.f51464c
                kotlin.text.e r4 = kotlin.text.e.this
                java.lang.CharSequence r4 = kotlin.text.e.c(r4)
                int r4 = kotlin.text.B.P(r4)
                r0.<init>(r1, r4)
                r6.f51466e = r0
                r6.f51465d = r2
                goto L9b
            L76:
                java.lang.Object r2 = r0.component1()
                java.lang.Number r2 = (java.lang.Number) r2
                int r2 = r2.intValue()
                java.lang.Object r0 = r0.component2()
                java.lang.Number r0 = (java.lang.Number) r0
                int r0 = r0.intValue()
                int r4 = r6.f51464c
                E1.d r4 = E1.f.j(r4, r2)
                r6.f51466e = r4
                int r2 = r2 + r0
                r6.f51464c = r2
                if (r0 != 0) goto L98
                r1 = r3
            L98:
                int r2 = r2 + r1
                r6.f51465d = r2
            L9b:
                r6.f51463b = r3
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.text.e.a.a():void");
        }

        @Override // java.util.Iterator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public E1.d next() {
            if (this.f51463b == -1) {
                a();
            }
            if (this.f51463b == 0) {
                throw new NoSuchElementException();
            }
            E1.d dVar = this.f51466e;
            kotlin.jvm.internal.j.c(dVar, "null cannot be cast to non-null type kotlin.ranges.IntRange");
            this.f51466e = null;
            this.f51463b = -1;
            return dVar;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f51463b == -1) {
                a();
            }
            return this.f51463b == 1;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public e(CharSequence input, int i2, int i3, Function2 getNextMatch) {
        kotlin.jvm.internal.j.e(input, "input");
        kotlin.jvm.internal.j.e(getNextMatch, "getNextMatch");
        this.f51459a = input;
        this.f51460b = i2;
        this.f51461c = i3;
        this.f51462d = getNextMatch;
    }

    @Override // kotlin.sequences.g
    public Iterator iterator() {
        return new a();
    }
}
