package kotlin.sequences;

import java.util.Iterator;

/* loaded from: classes5.dex */
public final class b implements g, c {

    /* renamed from: a, reason: collision with root package name */
    public final g f51416a;

    /* renamed from: b, reason: collision with root package name */
    public final int f51417b;

    public static final class a implements Iterator, B1.a {

        /* renamed from: b, reason: collision with root package name */
        public final Iterator f51418b;

        /* renamed from: c, reason: collision with root package name */
        public int f51419c;

        public a(b bVar) {
            this.f51418b = bVar.f51416a.iterator();
            this.f51419c = bVar.f51417b;
        }

        public final void a() {
            while (this.f51419c > 0 && this.f51418b.hasNext()) {
                this.f51418b.next();
                this.f51419c--;
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            a();
            return this.f51418b.hasNext();
        }

        @Override // java.util.Iterator
        public Object next() {
            a();
            return this.f51418b.next();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public b(g sequence, int i2) {
        kotlin.jvm.internal.j.e(sequence, "sequence");
        this.f51416a = sequence;
        this.f51417b = i2;
        if (i2 >= 0) {
            return;
        }
        throw new IllegalArgumentException(("count must be non-negative, but was " + i2 + '.').toString());
    }

    @Override // kotlin.sequences.c
    public g a(int i2) {
        int i3 = this.f51417b + i2;
        return i3 < 0 ? new b(this, i2) : new b(this.f51416a, i3);
    }

    @Override // kotlin.sequences.g
    public Iterator iterator() {
        return new a(this);
    }
}
