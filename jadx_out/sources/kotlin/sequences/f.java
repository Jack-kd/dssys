package kotlin.sequences;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* loaded from: classes5.dex */
public final class f implements g {

    /* renamed from: a, reason: collision with root package name */
    public final Function0 f51428a;

    /* renamed from: b, reason: collision with root package name */
    public final Function1 f51429b;

    public static final class a implements Iterator, B1.a {

        /* renamed from: b, reason: collision with root package name */
        public Object f51430b;

        /* renamed from: c, reason: collision with root package name */
        public int f51431c = -2;

        public a() {
        }

        private final void a() {
            Object objInvoke;
            if (this.f51431c == -2) {
                objInvoke = f.this.f51428a.invoke();
            } else {
                Function1 function1 = f.this.f51429b;
                Object obj = this.f51430b;
                kotlin.jvm.internal.j.b(obj);
                objInvoke = function1.invoke(obj);
            }
            this.f51430b = objInvoke;
            this.f51431c = objInvoke == null ? 0 : 1;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f51431c < 0) {
                a();
            }
            return this.f51431c == 1;
        }

        @Override // java.util.Iterator
        public Object next() {
            if (this.f51431c < 0) {
                a();
            }
            if (this.f51431c == 0) {
                throw new NoSuchElementException();
            }
            Object obj = this.f51430b;
            kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type T of kotlin.sequences.GeneratorSequence");
            this.f51431c = -1;
            return obj;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public f(Function0 getInitialValue, Function1 getNextValue) {
        kotlin.jvm.internal.j.e(getInitialValue, "getInitialValue");
        kotlin.jvm.internal.j.e(getNextValue, "getNextValue");
        this.f51428a = getInitialValue;
        this.f51429b = getNextValue;
    }

    @Override // kotlin.sequences.g
    public Iterator iterator() {
        return new a();
    }
}
