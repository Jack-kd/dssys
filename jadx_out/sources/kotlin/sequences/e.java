package kotlin.sequences;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.functions.Function1;

/* loaded from: classes5.dex */
public final class e implements g {

    /* renamed from: a, reason: collision with root package name */
    public final g f51421a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f51422b;

    /* renamed from: c, reason: collision with root package name */
    public final Function1 f51423c;

    public static final class a implements Iterator, B1.a {

        /* renamed from: b, reason: collision with root package name */
        public final Iterator f51424b;

        /* renamed from: c, reason: collision with root package name */
        public int f51425c = -1;

        /* renamed from: d, reason: collision with root package name */
        public Object f51426d;

        public a() {
            this.f51424b = e.this.f51421a.iterator();
        }

        public final void a() {
            while (this.f51424b.hasNext()) {
                Object next = this.f51424b.next();
                if (((Boolean) e.this.f51423c.invoke(next)).booleanValue() == e.this.f51422b) {
                    this.f51426d = next;
                    this.f51425c = 1;
                    return;
                }
            }
            this.f51425c = 0;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f51425c == -1) {
                a();
            }
            return this.f51425c == 1;
        }

        @Override // java.util.Iterator
        public Object next() {
            if (this.f51425c == -1) {
                a();
            }
            if (this.f51425c == 0) {
                throw new NoSuchElementException();
            }
            Object obj = this.f51426d;
            this.f51426d = null;
            this.f51425c = -1;
            return obj;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public e(g sequence, boolean z2, Function1 predicate) {
        kotlin.jvm.internal.j.e(sequence, "sequence");
        kotlin.jvm.internal.j.e(predicate, "predicate");
        this.f51421a = sequence;
        this.f51422b = z2;
        this.f51423c = predicate;
    }

    @Override // kotlin.sequences.g
    public Iterator iterator() {
        return new a();
    }
}
