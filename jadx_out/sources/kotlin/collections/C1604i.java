package kotlin.collections;

import java.util.AbstractList;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* renamed from: kotlin.collections.i, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1604i extends AbstractC1601f {

    /* renamed from: e, reason: collision with root package name */
    public static final a f51362e = new a(null);

    /* renamed from: f, reason: collision with root package name */
    public static final Object[] f51363f = new Object[0];

    /* renamed from: b, reason: collision with root package name */
    public int f51364b;

    /* renamed from: c, reason: collision with root package name */
    public Object[] f51365c = f51363f;

    /* renamed from: d, reason: collision with root package name */
    public int f51366d;

    /* renamed from: kotlin.collections.i$a */
    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.f fVar) {
            this();
        }

        public a() {
        }
    }

    private final void e(int i2) {
        if (i2 < 0) {
            throw new IllegalStateException("Deque is too big.");
        }
        Object[] objArr = this.f51365c;
        if (i2 <= objArr.length) {
            return;
        }
        if (objArr == f51363f) {
            this.f51365c = new Object[E1.f.b(i2, 10)];
        } else {
            b(AbstractC1599d.Companion.e(objArr.length, i2));
        }
    }

    public final void a(int i2, Collection collection) {
        Iterator it = collection.iterator();
        int length = this.f51365c.length;
        while (i2 < length && it.hasNext()) {
            this.f51365c[i2] = it.next();
            i2++;
        }
        int i3 = this.f51364b;
        for (int i4 = 0; i4 < i3 && it.hasNext(); i4++) {
            this.f51365c[i4] = it.next();
        }
        this.f51366d = size() + collection.size();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(Object obj) {
        addLast(obj);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection elements) {
        kotlin.jvm.internal.j.e(elements, "elements");
        if (elements.isEmpty()) {
            return false;
        }
        registerModification();
        e(size() + elements.size());
        a(i(this.f51364b + size()), elements);
        return true;
    }

    public final void addFirst(Object obj) {
        registerModification();
        e(size() + 1);
        int iD = d(this.f51364b);
        this.f51364b = iD;
        this.f51365c[iD] = obj;
        this.f51366d = size() + 1;
    }

    public final void addLast(Object obj) {
        registerModification();
        e(size() + 1);
        this.f51365c[i(this.f51364b + size())] = obj;
        this.f51366d = size() + 1;
    }

    public final void b(int i2) {
        Object[] objArr = new Object[i2];
        Object[] objArr2 = this.f51365c;
        l.h(objArr2, objArr, 0, this.f51364b, objArr2.length);
        Object[] objArr3 = this.f51365c;
        int length = objArr3.length;
        int i3 = this.f51364b;
        l.h(objArr3, objArr, length - i3, 0, i3);
        this.f51364b = 0;
        this.f51365c = objArr;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        if (!isEmpty()) {
            registerModification();
            h(this.f51364b, i(this.f51364b + size()));
        }
        this.f51364b = 0;
        this.f51366d = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    public final int d(int i2) {
        return i2 == 0 ? m.G(this.f51365c) : i2 - 1;
    }

    public final int f(int i2) {
        if (i2 == m.G(this.f51365c)) {
            return 0;
        }
        return i2 + 1;
    }

    public final int g(int i2) {
        return i2 < 0 ? i2 + this.f51365c.length : i2;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i2) {
        AbstractC1599d.Companion.b(i2, size());
        return this.f51365c[i(this.f51364b + i2)];
    }

    @Override // kotlin.collections.AbstractC1601f
    /* renamed from: getSize */
    public int getLength() {
        return this.f51366d;
    }

    public final void h(int i2, int i3) {
        if (i2 < i3) {
            l.r(this.f51365c, null, i2, i3);
            return;
        }
        Object[] objArr = this.f51365c;
        l.r(objArr, null, i2, objArr.length);
        l.r(this.f51365c, null, 0, i3);
    }

    public final int i(int i2) {
        Object[] objArr = this.f51365c;
        return i2 >= objArr.length ? i2 - objArr.length : i2;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        int i2;
        int i3 = i(this.f51364b + size());
        int length = this.f51364b;
        if (length < i3) {
            while (length < i3) {
                if (kotlin.jvm.internal.j.a(obj, this.f51365c[length])) {
                    i2 = this.f51364b;
                } else {
                    length++;
                }
            }
            return -1;
        }
        if (length < i3) {
            return -1;
        }
        int length2 = this.f51365c.length;
        while (true) {
            if (length >= length2) {
                for (int i4 = 0; i4 < i3; i4++) {
                    if (kotlin.jvm.internal.j.a(obj, this.f51365c[i4])) {
                        length = i4 + this.f51365c.length;
                        i2 = this.f51364b;
                    }
                }
                return -1;
            }
            if (kotlin.jvm.internal.j.a(obj, this.f51365c[length])) {
                i2 = this.f51364b;
                break;
            }
            length++;
        }
        return length - i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return size() == 0;
    }

    public final Object j() {
        if (isEmpty()) {
            return null;
        }
        return removeFirst();
    }

    public final void k(int i2, int i3) {
        int i4 = i(this.f51364b + (i2 - 1));
        int i5 = i(this.f51364b + (i3 - 1));
        while (i2 > 0) {
            int i6 = i4 + 1;
            int iMin = Math.min(i2, Math.min(i6, i5 + 1));
            Object[] objArr = this.f51365c;
            int i7 = i5 - iMin;
            int i8 = i4 - iMin;
            l.h(objArr, objArr, i7 + 1, i8 + 1, i6);
            i4 = g(i8);
            i5 = g(i7);
            i2 -= iMin;
        }
    }

    public final void l(int i2, int i3) {
        int i4 = i(this.f51364b + i3);
        int i5 = i(this.f51364b + i2);
        int size = size();
        while (true) {
            size -= i3;
            if (size <= 0) {
                return;
            }
            Object[] objArr = this.f51365c;
            i3 = Math.min(size, Math.min(objArr.length - i4, objArr.length - i5));
            Object[] objArr2 = this.f51365c;
            int i6 = i4 + i3;
            l.h(objArr2, objArr2, i5, i4, i6);
            i4 = i(i6);
            i5 = i(i5 + i3);
        }
    }

    public final Object last() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        return this.f51365c[i(this.f51364b + q.n(this))];
    }

    @Override // java.util.AbstractList, java.util.List
    public int lastIndexOf(Object obj) {
        int iG;
        int i2;
        int i3 = i(this.f51364b + size());
        int i4 = this.f51364b;
        if (i4 < i3) {
            iG = i3 - 1;
            if (i4 <= iG) {
                while (!kotlin.jvm.internal.j.a(obj, this.f51365c[iG])) {
                    if (iG != i4) {
                        iG--;
                    }
                }
                i2 = this.f51364b;
                return iG - i2;
            }
            return -1;
        }
        if (i4 > i3) {
            int i5 = i3 - 1;
            while (true) {
                if (-1 >= i5) {
                    iG = m.G(this.f51365c);
                    int i6 = this.f51364b;
                    if (i6 <= iG) {
                        while (!kotlin.jvm.internal.j.a(obj, this.f51365c[iG])) {
                            if (iG != i6) {
                                iG--;
                            }
                        }
                        i2 = this.f51364b;
                    }
                } else {
                    if (kotlin.jvm.internal.j.a(obj, this.f51365c[i5])) {
                        iG = i5 + this.f51365c.length;
                        i2 = this.f51364b;
                        break;
                    }
                    i5--;
                }
            }
        }
        return -1;
    }

    public final void registerModification() {
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf == -1) {
            return false;
        }
        removeAt(iIndexOf);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(Collection elements) {
        int i2;
        kotlin.jvm.internal.j.e(elements, "elements");
        boolean z2 = false;
        z2 = false;
        z2 = false;
        if (!isEmpty() && this.f51365c.length != 0) {
            int i3 = i(this.f51364b + size());
            int i4 = this.f51364b;
            if (i4 < i3) {
                i2 = i4;
                while (i4 < i3) {
                    Object obj = this.f51365c[i4];
                    if (elements.contains(obj)) {
                        z2 = true;
                    } else {
                        this.f51365c[i2] = obj;
                        i2++;
                    }
                    i4++;
                }
                l.r(this.f51365c, null, i2, i3);
            } else {
                int length = this.f51365c.length;
                boolean z3 = false;
                int i5 = i4;
                while (i4 < length) {
                    Object[] objArr = this.f51365c;
                    Object obj2 = objArr[i4];
                    objArr[i4] = null;
                    if (elements.contains(obj2)) {
                        z3 = true;
                    } else {
                        this.f51365c[i5] = obj2;
                        i5++;
                    }
                    i4++;
                }
                i2 = i(i5);
                for (int i6 = 0; i6 < i3; i6++) {
                    Object[] objArr2 = this.f51365c;
                    Object obj3 = objArr2[i6];
                    objArr2[i6] = null;
                    if (elements.contains(obj3)) {
                        z3 = true;
                    } else {
                        this.f51365c[i2] = obj3;
                        i2 = f(i2);
                    }
                }
                z2 = z3;
            }
            if (z2) {
                registerModification();
                this.f51366d = g(i2 - this.f51364b);
            }
        }
        return z2;
    }

    @Override // kotlin.collections.AbstractC1601f
    public Object removeAt(int i2) {
        AbstractC1599d.Companion.b(i2, size());
        if (i2 == q.n(this)) {
            return removeLast();
        }
        if (i2 == 0) {
            return removeFirst();
        }
        registerModification();
        int i3 = i(this.f51364b + i2);
        Object obj = this.f51365c[i3];
        if (i2 < (size() >> 1)) {
            int i4 = this.f51364b;
            if (i3 >= i4) {
                Object[] objArr = this.f51365c;
                l.h(objArr, objArr, i4 + 1, i4, i3);
            } else {
                Object[] objArr2 = this.f51365c;
                l.h(objArr2, objArr2, 1, 0, i3);
                Object[] objArr3 = this.f51365c;
                objArr3[0] = objArr3[objArr3.length - 1];
                int i5 = this.f51364b;
                l.h(objArr3, objArr3, i5 + 1, i5, objArr3.length - 1);
            }
            Object[] objArr4 = this.f51365c;
            int i6 = this.f51364b;
            objArr4[i6] = null;
            this.f51364b = f(i6);
        } else {
            int i7 = i(this.f51364b + q.n(this));
            if (i3 <= i7) {
                Object[] objArr5 = this.f51365c;
                l.h(objArr5, objArr5, i3, i3 + 1, i7 + 1);
            } else {
                Object[] objArr6 = this.f51365c;
                l.h(objArr6, objArr6, i3, i3 + 1, objArr6.length);
                Object[] objArr7 = this.f51365c;
                objArr7[objArr7.length - 1] = objArr7[0];
                l.h(objArr7, objArr7, 0, 1, i7 + 1);
            }
            this.f51365c[i7] = null;
        }
        this.f51366d = size() - 1;
        return obj;
    }

    public final Object removeFirst() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        registerModification();
        Object[] objArr = this.f51365c;
        int i2 = this.f51364b;
        Object obj = objArr[i2];
        objArr[i2] = null;
        this.f51364b = f(i2);
        this.f51366d = size() - 1;
        return obj;
    }

    public final Object removeLast() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        registerModification();
        int i2 = i(this.f51364b + q.n(this));
        Object[] objArr = this.f51365c;
        Object obj = objArr[i2];
        objArr[i2] = null;
        this.f51366d = size() - 1;
        return obj;
    }

    @Override // java.util.AbstractList
    public void removeRange(int i2, int i3) {
        AbstractC1599d.Companion.d(i2, i3, size());
        int i4 = i3 - i2;
        if (i4 == 0) {
            return;
        }
        if (i4 == size()) {
            clear();
            return;
        }
        if (i4 == 1) {
            removeAt(i2);
            return;
        }
        registerModification();
        if (i2 < size() - i3) {
            k(i2, i3);
            int i5 = i(this.f51364b + i4);
            h(this.f51364b, i5);
            this.f51364b = i5;
        } else {
            l(i2, i3);
            int i6 = i(this.f51364b + size());
            h(g(i6 - i4), i6);
        }
        this.f51366d = size() - i4;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(Collection elements) {
        int i2;
        kotlin.jvm.internal.j.e(elements, "elements");
        boolean z2 = false;
        z2 = false;
        z2 = false;
        if (!isEmpty() && this.f51365c.length != 0) {
            int i3 = i(this.f51364b + size());
            int i4 = this.f51364b;
            if (i4 < i3) {
                i2 = i4;
                while (i4 < i3) {
                    Object obj = this.f51365c[i4];
                    if (elements.contains(obj)) {
                        this.f51365c[i2] = obj;
                        i2++;
                    } else {
                        z2 = true;
                    }
                    i4++;
                }
                l.r(this.f51365c, null, i2, i3);
            } else {
                int length = this.f51365c.length;
                boolean z3 = false;
                int i5 = i4;
                while (i4 < length) {
                    Object[] objArr = this.f51365c;
                    Object obj2 = objArr[i4];
                    objArr[i4] = null;
                    if (elements.contains(obj2)) {
                        this.f51365c[i5] = obj2;
                        i5++;
                    } else {
                        z3 = true;
                    }
                    i4++;
                }
                i2 = i(i5);
                for (int i6 = 0; i6 < i3; i6++) {
                    Object[] objArr2 = this.f51365c;
                    Object obj3 = objArr2[i6];
                    objArr2[i6] = null;
                    if (elements.contains(obj3)) {
                        this.f51365c[i2] = obj3;
                        i2 = f(i2);
                    } else {
                        z3 = true;
                    }
                }
                z2 = z3;
            }
            if (z2) {
                registerModification();
                this.f51366d = g(i2 - this.f51364b);
            }
        }
        return z2;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object set(int i2, Object obj) {
        AbstractC1599d.Companion.b(i2, size());
        int i3 = i(this.f51364b + i2);
        Object[] objArr = this.f51365c;
        Object obj2 = objArr[i3];
        objArr[i3] = obj;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray(Object[] array) throws NegativeArraySizeException {
        kotlin.jvm.internal.j.e(array, "array");
        if (array.length < size()) {
            array = AbstractC1605j.a(array, size());
        }
        Object[] objArr = array;
        int i2 = i(this.f51364b + size());
        int i3 = this.f51364b;
        if (i3 < i2) {
            l.m(this.f51365c, objArr, 0, i3, i2, 2, null);
        } else if (!isEmpty()) {
            Object[] objArr2 = this.f51365c;
            l.h(objArr2, objArr, 0, this.f51364b, objArr2.length);
            Object[] objArr3 = this.f51365c;
            l.h(objArr3, objArr, objArr3.length - this.f51364b, 0, i2);
        }
        return p.f(size(), objArr);
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i2, Object obj) {
        AbstractC1599d.Companion.c(i2, size());
        if (i2 == size()) {
            addLast(obj);
            return;
        }
        if (i2 == 0) {
            addFirst(obj);
            return;
        }
        registerModification();
        e(size() + 1);
        int i3 = i(this.f51364b + i2);
        if (i2 < ((size() + 1) >> 1)) {
            int iD = d(i3);
            int iD2 = d(this.f51364b);
            int i4 = this.f51364b;
            if (iD >= i4) {
                Object[] objArr = this.f51365c;
                objArr[iD2] = objArr[i4];
                l.h(objArr, objArr, i4, i4 + 1, iD + 1);
            } else {
                Object[] objArr2 = this.f51365c;
                l.h(objArr2, objArr2, i4 - 1, i4, objArr2.length);
                Object[] objArr3 = this.f51365c;
                objArr3[objArr3.length - 1] = objArr3[0];
                l.h(objArr3, objArr3, 0, 1, iD + 1);
            }
            this.f51365c[iD] = obj;
            this.f51364b = iD2;
        } else {
            int i5 = i(this.f51364b + size());
            if (i3 < i5) {
                Object[] objArr4 = this.f51365c;
                l.h(objArr4, objArr4, i3 + 1, i3, i5);
            } else {
                Object[] objArr5 = this.f51365c;
                l.h(objArr5, objArr5, 1, 0, i5);
                Object[] objArr6 = this.f51365c;
                objArr6[0] = objArr6[objArr6.length - 1];
                l.h(objArr6, objArr6, i3 + 1, i3, objArr6.length - 1);
            }
            this.f51365c[i3] = obj;
        }
        this.f51366d = size() + 1;
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int i2, Collection elements) {
        kotlin.jvm.internal.j.e(elements, "elements");
        AbstractC1599d.Companion.c(i2, size());
        if (elements.isEmpty()) {
            return false;
        }
        if (i2 == size()) {
            return addAll(elements);
        }
        registerModification();
        e(size() + elements.size());
        int i3 = i(this.f51364b + size());
        int i4 = i(this.f51364b + i2);
        int size = elements.size();
        if (i2 < ((size() + 1) >> 1)) {
            int i5 = this.f51364b;
            int length = i5 - size;
            if (i4 < i5) {
                Object[] objArr = this.f51365c;
                l.h(objArr, objArr, length, i5, objArr.length);
                if (size >= i4) {
                    Object[] objArr2 = this.f51365c;
                    l.h(objArr2, objArr2, objArr2.length - size, 0, i4);
                } else {
                    Object[] objArr3 = this.f51365c;
                    l.h(objArr3, objArr3, objArr3.length - size, 0, size);
                    Object[] objArr4 = this.f51365c;
                    l.h(objArr4, objArr4, 0, size, i4);
                }
            } else if (length >= 0) {
                Object[] objArr5 = this.f51365c;
                l.h(objArr5, objArr5, length, i5, i4);
            } else {
                Object[] objArr6 = this.f51365c;
                length += objArr6.length;
                int i6 = i4 - i5;
                int length2 = objArr6.length - length;
                if (length2 >= i6) {
                    l.h(objArr6, objArr6, length, i5, i4);
                } else {
                    l.h(objArr6, objArr6, length, i5, i5 + length2);
                    Object[] objArr7 = this.f51365c;
                    l.h(objArr7, objArr7, 0, this.f51364b + length2, i4);
                }
            }
            this.f51364b = length;
            a(g(i4 - size), elements);
        } else {
            int i7 = i4 + size;
            if (i4 < i3) {
                int i8 = size + i3;
                Object[] objArr8 = this.f51365c;
                if (i8 <= objArr8.length) {
                    l.h(objArr8, objArr8, i7, i4, i3);
                } else if (i7 >= objArr8.length) {
                    l.h(objArr8, objArr8, i7 - objArr8.length, i4, i3);
                } else {
                    int length3 = i3 - (i8 - objArr8.length);
                    l.h(objArr8, objArr8, 0, length3, i3);
                    Object[] objArr9 = this.f51365c;
                    l.h(objArr9, objArr9, i7, i4, length3);
                }
            } else {
                Object[] objArr10 = this.f51365c;
                l.h(objArr10, objArr10, size, 0, i3);
                Object[] objArr11 = this.f51365c;
                if (i7 >= objArr11.length) {
                    l.h(objArr11, objArr11, i7 - objArr11.length, i4, objArr11.length);
                } else {
                    l.h(objArr11, objArr11, 0, objArr11.length - size, objArr11.length);
                    Object[] objArr12 = this.f51365c;
                    l.h(objArr12, objArr12, i7, i4, objArr12.length - size);
                }
            }
            a(i4, elements);
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray() {
        return toArray(new Object[size()]);
    }
}
