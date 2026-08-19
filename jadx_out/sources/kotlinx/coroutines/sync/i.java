package kotlinx.coroutines.sync;

import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlinx.coroutines.internal.y;

/* loaded from: classes5.dex */
public final class i extends y {

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ AtomicReferenceArray f51918f;

    public i(long j2, i iVar, int i2) {
        super(j2, iVar, i2);
        this.f51918f = new AtomicReferenceArray(SemaphoreKt.f51901f);
    }

    @Override // kotlinx.coroutines.internal.y
    public int r() {
        return SemaphoreKt.f51901f;
    }

    @Override // kotlinx.coroutines.internal.y
    public void s(int i2, Throwable th, kotlin.coroutines.i iVar) {
        v().set(i2, SemaphoreKt.f51900e);
        t();
    }

    public String toString() {
        return "SemaphoreSegment[id=" + this.f51813d + ", hashCode=" + hashCode() + ']';
    }

    public final /* synthetic */ AtomicReferenceArray v() {
        return this.f51918f;
    }
}
