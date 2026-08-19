package kotlin.text;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes5.dex */
public final class h implements Iterator, B1.a {

    /* renamed from: g, reason: collision with root package name */
    public static final a f51473g = new a(null);

    /* renamed from: b, reason: collision with root package name */
    public final CharSequence f51474b;

    /* renamed from: c, reason: collision with root package name */
    public int f51475c;

    /* renamed from: d, reason: collision with root package name */
    public int f51476d;

    /* renamed from: e, reason: collision with root package name */
    public int f51477e;

    /* renamed from: f, reason: collision with root package name */
    public int f51478f;

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.f fVar) {
            this();
        }

        public a() {
        }
    }

    public h(CharSequence string) {
        kotlin.jvm.internal.j.e(string, "string");
        this.f51474b = string;
    }

    @Override // java.util.Iterator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public String next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f51475c = 0;
        int i2 = this.f51477e;
        int i3 = this.f51476d;
        this.f51476d = this.f51478f + i2;
        return this.f51474b.subSequence(i3, i2).toString();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        int i2;
        int i3;
        int i4 = this.f51475c;
        if (i4 != 0) {
            return i4 == 1;
        }
        if (this.f51478f < 0) {
            this.f51475c = 2;
            return false;
        }
        int length = this.f51474b.length();
        int length2 = this.f51474b.length();
        for (int i5 = this.f51476d; i5 < length2; i5++) {
            char cCharAt = this.f51474b.charAt(i5);
            if (cCharAt == '\n' || cCharAt == '\r') {
                i2 = (cCharAt == '\r' && (i3 = i5 + 1) < this.f51474b.length() && this.f51474b.charAt(i3) == '\n') ? 2 : 1;
                length = i5;
                this.f51475c = 1;
                this.f51478f = i2;
                this.f51477e = length;
                return true;
            }
        }
        i2 = -1;
        this.f51475c = 1;
        this.f51478f = i2;
        this.f51477e = length;
        return true;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
