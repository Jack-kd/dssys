package kotlin.sequences;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes5.dex */
public final class a implements g {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReference f51415a;

    public a(g sequence) {
        kotlin.jvm.internal.j.e(sequence, "sequence");
        this.f51415a = new AtomicReference(sequence);
    }

    @Override // kotlin.sequences.g
    public Iterator iterator() {
        g gVar = (g) this.f51415a.getAndSet(null);
        if (gVar != null) {
            return gVar.iterator();
        }
        throw new IllegalStateException("This sequence can be consumed only once.");
    }
}
