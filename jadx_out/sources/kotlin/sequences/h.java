package kotlin.sequences;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Result;
import kotlin.coroutines.EmptyCoroutineContext;
import org.jetbrains.annotations.NotNull;
import w1.AbstractC1795e;

/* loaded from: classes5.dex */
public final class h extends i implements Iterator, kotlin.coroutines.e, B1.a {

    /* renamed from: b, reason: collision with root package name */
    public int f51433b;

    /* renamed from: c, reason: collision with root package name */
    public Object f51434c;

    /* renamed from: d, reason: collision with root package name */
    public Iterator f51435d;

    /* renamed from: e, reason: collision with root package name */
    public kotlin.coroutines.e f51436e;

    @Override // kotlin.sequences.i
    public Object a(Object obj, kotlin.coroutines.e eVar) {
        this.f51434c = obj;
        this.f51433b = 3;
        this.f51436e = eVar;
        Object objE = kotlin.coroutines.intrinsics.a.e();
        if (objE == kotlin.coroutines.intrinsics.a.e()) {
            AbstractC1795e.c(eVar);
        }
        return objE == kotlin.coroutines.intrinsics.a.e() ? objE : kotlin.j.f51397a;
    }

    @Override // kotlin.sequences.i
    public Object b(Iterator it, kotlin.coroutines.e eVar) {
        if (!it.hasNext()) {
            return kotlin.j.f51397a;
        }
        this.f51435d = it;
        this.f51433b = 2;
        this.f51436e = eVar;
        Object objE = kotlin.coroutines.intrinsics.a.e();
        if (objE == kotlin.coroutines.intrinsics.a.e()) {
            AbstractC1795e.c(eVar);
        }
        return objE == kotlin.coroutines.intrinsics.a.e() ? objE : kotlin.j.f51397a;
    }

    public final Throwable f() {
        int i2 = this.f51433b;
        if (i2 == 4) {
            return new NoSuchElementException();
        }
        if (i2 == 5) {
            return new IllegalStateException("Iterator has failed.");
        }
        return new IllegalStateException("Unexpected state of the iterator: " + this.f51433b);
    }

    public final Object g() {
        if (hasNext()) {
            return next();
        }
        throw new NoSuchElementException();
    }

    @Override // kotlin.coroutines.e
    @NotNull
    public kotlin.coroutines.i getContext() {
        return EmptyCoroutineContext.INSTANCE;
    }

    public final void h(kotlin.coroutines.e eVar) {
        this.f51436e = eVar;
    }

    @Override // java.util.Iterator
    public boolean hasNext() throws Throwable {
        while (true) {
            int i2 = this.f51433b;
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 == 2 || i2 == 3) {
                        return true;
                    }
                    if (i2 == 4) {
                        return false;
                    }
                    throw f();
                }
                Iterator it = this.f51435d;
                kotlin.jvm.internal.j.b(it);
                if (it.hasNext()) {
                    this.f51433b = 2;
                    return true;
                }
                this.f51435d = null;
            }
            this.f51433b = 5;
            kotlin.coroutines.e eVar = this.f51436e;
            kotlin.jvm.internal.j.b(eVar);
            this.f51436e = null;
            eVar.resumeWith(Result.m66constructorimpl(kotlin.j.f51397a));
        }
    }

    @Override // java.util.Iterator
    public Object next() throws Throwable {
        int i2 = this.f51433b;
        if (i2 == 0 || i2 == 1) {
            return g();
        }
        if (i2 == 2) {
            this.f51433b = 1;
            Iterator it = this.f51435d;
            kotlin.jvm.internal.j.b(it);
            return it.next();
        }
        if (i2 != 3) {
            throw f();
        }
        this.f51433b = 0;
        Object obj = this.f51434c;
        this.f51434c = null;
        return obj;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // kotlin.coroutines.e
    public void resumeWith(Object obj) throws Throwable {
        kotlin.e.b(obj);
        this.f51433b = 4;
    }
}
