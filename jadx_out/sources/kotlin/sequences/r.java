package kotlin.sequences;

import java.util.Iterator;
import kotlin.jvm.functions.Function1;

/* loaded from: classes5.dex */
public final class r implements g {

    /* renamed from: a, reason: collision with root package name */
    public final g f51442a;

    /* renamed from: b, reason: collision with root package name */
    public final Function1 f51443b;

    public static final class a implements Iterator, B1.a {

        /* renamed from: b, reason: collision with root package name */
        public final Iterator f51444b;

        public a() {
            this.f51444b = r.this.f51442a.iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f51444b.hasNext();
        }

        @Override // java.util.Iterator
        public Object next() {
            return r.this.f51443b.invoke(this.f51444b.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public r(g sequence, Function1 transformer) {
        kotlin.jvm.internal.j.e(sequence, "sequence");
        kotlin.jvm.internal.j.e(transformer, "transformer");
        this.f51442a = sequence;
        this.f51443b = transformer;
    }

    @Override // kotlin.sequences.g
    public Iterator iterator() {
        return new a();
    }
}
