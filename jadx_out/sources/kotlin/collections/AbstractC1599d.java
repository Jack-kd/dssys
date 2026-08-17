package kotlin.collections;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* renamed from: kotlin.collections.d, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1599d extends AbstractC1597b implements List, B1.a {

    @NotNull
    public static final a Companion = new a(null);
    private static final int maxArraySize = 2147483639;

    /* renamed from: kotlin.collections.d$a */
    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.f fVar) {
            this();
        }

        public final void a(int i2, int i3, int i4) {
            if (i2 < 0 || i3 > i4) {
                throw new IndexOutOfBoundsException("startIndex: " + i2 + ", endIndex: " + i3 + ", size: " + i4);
            }
            if (i2 <= i3) {
                return;
            }
            throw new IllegalArgumentException("startIndex: " + i2 + " > endIndex: " + i3);
        }

        public final void b(int i2, int i3) {
            if (i2 < 0 || i2 >= i3) {
                throw new IndexOutOfBoundsException("index: " + i2 + ", size: " + i3);
            }
        }

        public final void c(int i2, int i3) {
            if (i2 < 0 || i2 > i3) {
                throw new IndexOutOfBoundsException("index: " + i2 + ", size: " + i3);
            }
        }

        public final void d(int i2, int i3, int i4) {
            if (i2 < 0 || i3 > i4) {
                throw new IndexOutOfBoundsException("fromIndex: " + i2 + ", toIndex: " + i3 + ", size: " + i4);
            }
            if (i2 <= i3) {
                return;
            }
            throw new IllegalArgumentException("fromIndex: " + i2 + " > toIndex: " + i3);
        }

        public final int e(int i2, int i3) {
            int i4 = i2 + (i2 >> 1);
            if (i4 - i3 < 0) {
                i4 = i3;
            }
            if (i4 - AbstractC1599d.maxArraySize <= 0) {
                return i4;
            }
            if (i3 > AbstractC1599d.maxArraySize) {
                return Integer.MAX_VALUE;
            }
            return AbstractC1599d.maxArraySize;
        }

        public final boolean f(Collection c2, Collection other) {
            kotlin.jvm.internal.j.e(c2, "c");
            kotlin.jvm.internal.j.e(other, "other");
            if (c2.size() != other.size()) {
                return false;
            }
            Iterator it = other.iterator();
            Iterator it2 = c2.iterator();
            while (it2.hasNext()) {
                if (!kotlin.jvm.internal.j.a(it2.next(), it.next())) {
                    return false;
                }
            }
            return true;
        }

        public final int g(Collection c2) {
            kotlin.jvm.internal.j.e(c2, "c");
            Iterator it = c2.iterator();
            int iHashCode = 1;
            while (it.hasNext()) {
                Object next = it.next();
                iHashCode = (iHashCode * 31) + (next != null ? next.hashCode() : 0);
            }
            return iHashCode;
        }

        public a() {
        }
    }

    /* renamed from: kotlin.collections.d$b */
    public class b implements Iterator, B1.a {

        /* renamed from: b, reason: collision with root package name */
        public int f51354b;

        public b() {
        }

        public final int a() {
            return this.f51354b;
        }

        public final void b(int i2) {
            this.f51354b = i2;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f51354b < AbstractC1599d.this.size();
        }

        @Override // java.util.Iterator
        public Object next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            AbstractC1599d abstractC1599d = AbstractC1599d.this;
            int i2 = this.f51354b;
            this.f51354b = i2 + 1;
            return abstractC1599d.get(i2);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* renamed from: kotlin.collections.d$c */
    public class c extends b implements ListIterator, B1.a {
        public c(int i2) {
            super();
            AbstractC1599d.Companion.c(i2, AbstractC1599d.this.size());
            b(i2);
        }

        @Override // java.util.ListIterator
        public void add(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return a() > 0;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return a();
        }

        @Override // java.util.ListIterator
        public Object previous() {
            if (!hasPrevious()) {
                throw new NoSuchElementException();
            }
            AbstractC1599d abstractC1599d = AbstractC1599d.this;
            b(a() - 1);
            return abstractC1599d.get(a());
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return a() - 1;
        }

        @Override // java.util.ListIterator
        public void set(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* renamed from: kotlin.collections.d$d, reason: collision with other inner class name */
    public static final class C0874d extends AbstractC1599d implements RandomAccess {

        /* renamed from: b, reason: collision with root package name */
        public final AbstractC1599d f51357b;

        /* renamed from: c, reason: collision with root package name */
        public final int f51358c;

        /* renamed from: d, reason: collision with root package name */
        public int f51359d;

        public C0874d(AbstractC1599d list, int i2, int i3) {
            kotlin.jvm.internal.j.e(list, "list");
            this.f51357b = list;
            this.f51358c = i2;
            AbstractC1599d.Companion.d(i2, i3, list.size());
            this.f51359d = i3 - i2;
        }

        @Override // kotlin.collections.AbstractC1599d, java.util.List
        public Object get(int i2) {
            AbstractC1599d.Companion.b(i2, this.f51359d);
            return this.f51357b.get(this.f51358c + i2);
        }

        @Override // kotlin.collections.AbstractC1597b
        public int getSize() {
            return this.f51359d;
        }

        @Override // kotlin.collections.AbstractC1599d, java.util.List
        public List subList(int i2, int i3) {
            AbstractC1599d.Companion.d(i2, i3, this.f51359d);
            AbstractC1599d abstractC1599d = this.f51357b;
            int i4 = this.f51358c;
            return new C0874d(abstractC1599d, i2 + i4, i4 + i3);
        }
    }

    @Override // java.util.List
    public void add(int i2, Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public boolean addAll(int i2, Collection<Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            return Companion.f(this, (Collection) obj);
        }
        return false;
    }

    public abstract Object get(int i2);

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        return Companion.g(this);
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        Iterator it = iterator();
        int i2 = 0;
        while (it.hasNext()) {
            if (kotlin.jvm.internal.j.a(it.next(), obj)) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.List
    @NotNull
    public Iterator<Object> iterator() {
        return new b();
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        ListIterator listIterator = listIterator(size());
        while (listIterator.hasPrevious()) {
            if (kotlin.jvm.internal.j.a(listIterator.previous(), obj)) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    @Override // java.util.List
    @NotNull
    public ListIterator<Object> listIterator() {
        return new c(0);
    }

    @Override // java.util.List
    public Object remove(int i2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public Object set(int i2, Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    @NotNull
    public List<Object> subList(int i2, int i3) {
        return new C0874d(this, i2, i3);
    }

    @Override // java.util.List
    @NotNull
    public ListIterator<Object> listIterator(int i2) {
        return new c(i2);
    }
}
