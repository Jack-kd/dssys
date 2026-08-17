package E1;

import java.util.NoSuchElementException;
import kotlin.collections.B;

/* loaded from: classes5.dex */
public final class c extends B {

    /* renamed from: b, reason: collision with root package name */
    public final int f60b;

    /* renamed from: c, reason: collision with root package name */
    public final int f61c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f62d;

    /* renamed from: e, reason: collision with root package name */
    public int f63e;

    public c(int i2, int i3, int i4) {
        this.f60b = i4;
        this.f61c = i3;
        boolean z2 = false;
        if (i4 <= 0 ? i2 >= i3 : i2 <= i3) {
            z2 = true;
        }
        this.f62d = z2;
        this.f63e = z2 ? i2 : i3;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f62d;
    }

    @Override // kotlin.collections.B
    public int nextInt() {
        int i2 = this.f63e;
        if (i2 != this.f61c) {
            this.f63e = this.f60b + i2;
            return i2;
        }
        if (!this.f62d) {
            throw new NoSuchElementException();
        }
        this.f62d = false;
        return i2;
    }
}
