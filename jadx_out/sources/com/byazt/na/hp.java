package com.byazt.na;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

@com.byazt.kj.hp(hp = {0, 1, 2, 28})
/* loaded from: classes3.dex */
public final class hp<E> implements Collection<E>, Set<E> {

    /* renamed from: a, reason: collision with root package name */
    public static int f23442a;
    public static Object[] eb;

    /* renamed from: s, reason: collision with root package name */
    public static int f23444s;

    /* renamed from: w, reason: collision with root package name */
    public static Object[] f23445w;

    /* renamed from: e, reason: collision with root package name */
    public v<E, E> f23446e;
    public Object[] hp;

    /* renamed from: l, reason: collision with root package name */
    public int f23447l;

    /* renamed from: q, reason: collision with root package name */
    public int[] f23448q;
    public static final int[] jx = new int[0];

    /* renamed from: j, reason: collision with root package name */
    public static final Object[] f23443j = new Object[0];

    public hp() {
        this(0);
    }

    private int hp(Object obj, int i2) {
        int i3 = this.f23447l;
        if (i3 == 0) {
            return -1;
        }
        int iHp = l.hp(this.f23448q, i3, i2);
        if (iHp < 0 || obj.equals(this.hp[iHp])) {
            return iHp;
        }
        int i4 = iHp + 1;
        while (i4 < i3 && this.f23448q[i4] == i2) {
            if (obj.equals(this.hp[i4])) {
                return i4;
            }
            i4++;
        }
        for (int i5 = iHp - 1; i5 >= 0 && this.f23448q[i5] == i2; i5--) {
            if (obj.equals(this.hp[i5])) {
                return i5;
            }
        }
        return ~i4;
    }

    private void j(int i2) {
        if (i2 == 8) {
            synchronized (hp.class) {
                try {
                    Object[] objArr = eb;
                    if (objArr != null) {
                        this.hp = objArr;
                        eb = (Object[]) objArr[0];
                        this.f23448q = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        f23444s--;
                        return;
                    }
                } finally {
                }
            }
        } else if (i2 == 4) {
            synchronized (hp.class) {
                try {
                    Object[] objArr2 = f23445w;
                    if (objArr2 != null) {
                        this.hp = objArr2;
                        f23445w = (Object[]) objArr2[0];
                        this.f23448q = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        f23442a--;
                        return;
                    }
                } finally {
                }
            }
        }
        this.f23448q = new int[i2];
        this.hp = new Object[i2];
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(E e2) {
        int i2;
        int iHp;
        if (e2 == null) {
            iHp = hp();
            i2 = 0;
        } else {
            int iHashCode = e2.hashCode();
            i2 = iHashCode;
            iHp = hp(e2, iHashCode);
        }
        if (iHp >= 0) {
            return false;
        }
        int i3 = ~iHp;
        int i4 = this.f23447l;
        int[] iArr = this.f23448q;
        if (i4 >= iArr.length) {
            int i5 = 8;
            if (i4 >= 8) {
                i5 = (i4 >> 1) + i4;
            } else if (i4 < 4) {
                i5 = 4;
            }
            Object[] objArr = this.hp;
            j(i5);
            int[] iArr2 = this.f23448q;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.hp, 0, objArr.length);
            }
            hp(iArr, objArr, this.f23447l);
        }
        int i6 = this.f23447l;
        if (i3 < i6) {
            int[] iArr3 = this.f23448q;
            int i7 = i3 + 1;
            System.arraycopy(iArr3, i3, iArr3, i7, i6 - i3);
            Object[] objArr2 = this.hp;
            System.arraycopy(objArr2, i3, objArr2, i7, this.f23447l - i3);
        }
        this.f23448q[i3] = i2;
        this.hp[i3] = e2;
        this.f23447l++;
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(Collection<? extends E> collection) {
        hp(this.f23447l + collection.size());
        Iterator<? extends E> it = collection.iterator();
        boolean zAdd = false;
        while (it.hasNext()) {
            zAdd |= add(it.next());
        }
        return zAdd;
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        int i2 = this.f23447l;
        if (i2 != 0) {
            hp(this.f23448q, this.hp, i2);
            this.f23448q = jx;
            this.hp = f23443j;
            this.f23447l = 0;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return hp(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            if (size() != set.size()) {
                return false;
            }
            for (int i2 = 0; i2 < this.f23447l; i2++) {
                try {
                    if (!set.contains(l(i2))) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] iArr = this.f23448q;
        int i2 = this.f23447l;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 += iArr[i4];
        }
        return i3;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f23447l <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return l().j().iterator();
    }

    public E jx(int i2) {
        Object[] objArr = this.hp;
        E e2 = (E) objArr[i2];
        int i3 = this.f23447l;
        if (i3 <= 1) {
            hp(this.f23448q, objArr, i3);
            this.f23448q = jx;
            this.hp = f23443j;
            this.f23447l = 0;
            return e2;
        }
        int[] iArr = this.f23448q;
        if (iArr.length <= 8 || i3 >= iArr.length / 3) {
            int i4 = i3 - 1;
            this.f23447l = i4;
            if (i2 < i4) {
                int i5 = i2 + 1;
                System.arraycopy(iArr, i5, iArr, i2, i4 - i2);
                Object[] objArr2 = this.hp;
                System.arraycopy(objArr2, i5, objArr2, i2, this.f23447l - i2);
            }
            this.hp[this.f23447l] = null;
            return e2;
        }
        j(i3 > 8 ? i3 + (i3 >> 1) : 8);
        this.f23447l--;
        if (i2 > 0) {
            System.arraycopy(iArr, 0, this.f23448q, 0, i2);
            System.arraycopy(objArr, 0, this.hp, 0, i2);
        }
        int i6 = this.f23447l;
        if (i2 < i6) {
            int i7 = i2 + 1;
            System.arraycopy(iArr, i7, this.f23448q, i2, i6 - i2);
            System.arraycopy(objArr, i7, this.hp, i2, this.f23447l - i2);
        }
        return e2;
    }

    public E l(int i2) {
        return (E) this.hp[i2];
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        int iHp = hp(obj);
        if (iHp < 0) {
            return false;
        }
        jx(iHp);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= remove(it.next());
        }
        return zRemove;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(Collection<?> collection) {
        boolean z2 = false;
        for (int i2 = this.f23447l - 1; i2 >= 0; i2--) {
            if (!collection.contains(this.hp[i2])) {
                jx(i2);
                z2 = true;
            }
        }
        return z2;
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.f23447l;
    }

    @Override // java.util.Collection, java.util.Set
    public Object[] toArray() {
        int i2 = this.f23447l;
        Object[] objArr = new Object[i2];
        System.arraycopy(this.hp, 0, objArr, 0, i2);
        return objArr;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f23447l * 14);
        sb.append('{');
        for (int i2 = 0; i2 < this.f23447l; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            E eL = l(i2);
            if (eL != this) {
                sb.append(eL);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public hp(int i2) {
        if (i2 == 0) {
            this.f23448q = jx;
            this.hp = f23443j;
        } else {
            j(i2);
        }
        this.f23447l = 0;
    }

    private v<E, E> l() {
        if (this.f23446e == null) {
            this.f23446e = new v<E, E>() { // from class: com.byazt.na.hp.1
                @Override // com.byazt.na.v
                public int hp() {
                    return hp.this.f23447l;
                }

                @Override // com.byazt.na.v
                public void jx() {
                    hp.this.clear();
                }

                @Override // com.byazt.na.v
                public Map<E, E> l() {
                    throw new UnsupportedOperationException("not a map");
                }

                @Override // com.byazt.na.v
                public Object hp(int i2, int i3) {
                    return hp.this.hp[i2];
                }

                @Override // com.byazt.na.v
                public int hp(Object obj) {
                    return hp.this.hp(obj);
                }

                @Override // com.byazt.na.v
                public void hp(int i2) {
                    hp.this.jx(i2);
                }
            };
        }
        return this.f23446e;
    }

    @Override // java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        if (tArr.length < this.f23447l) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.f23447l));
        }
        System.arraycopy(this.hp, 0, tArr, 0, this.f23447l);
        int length = tArr.length;
        int i2 = this.f23447l;
        if (length > i2) {
            tArr[i2] = null;
        }
        return tArr;
    }

    private int hp() {
        int i2 = this.f23447l;
        if (i2 == 0) {
            return -1;
        }
        int iHp = l.hp(this.f23448q, i2, 0);
        if (iHp < 0 || this.hp[iHp] == null) {
            return iHp;
        }
        int i3 = iHp + 1;
        while (i3 < i2 && this.f23448q[i3] == 0) {
            if (this.hp[i3] == null) {
                return i3;
            }
            i3++;
        }
        for (int i4 = iHp - 1; i4 >= 0 && this.f23448q[i4] == 0; i4--) {
            if (this.hp[i4] == null) {
                return i4;
            }
        }
        return ~i3;
    }

    private static void hp(int[] iArr, Object[] objArr, int i2) {
        if (iArr.length == 8) {
            synchronized (hp.class) {
                try {
                    if (f23444s < 10) {
                        objArr[0] = eb;
                        objArr[1] = iArr;
                        for (int i3 = i2 - 1; i3 >= 2; i3--) {
                            objArr[i3] = null;
                        }
                        eb = objArr;
                        f23444s++;
                    }
                } finally {
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (hp.class) {
                try {
                    if (f23442a < 10) {
                        objArr[0] = f23445w;
                        objArr[1] = iArr;
                        for (int i4 = i2 - 1; i4 >= 2; i4--) {
                            objArr[i4] = null;
                        }
                        f23445w = objArr;
                        f23442a++;
                    }
                } finally {
                }
            }
        }
    }

    public void hp(int i2) {
        int[] iArr = this.f23448q;
        if (iArr.length < i2) {
            Object[] objArr = this.hp;
            j(i2);
            int i3 = this.f23447l;
            if (i3 > 0) {
                System.arraycopy(iArr, 0, this.f23448q, 0, i3);
                System.arraycopy(objArr, 0, this.hp, 0, this.f23447l);
            }
            hp(iArr, objArr, this.f23447l);
        }
    }

    public int hp(Object obj) {
        return obj == null ? hp() : hp(obj, obj.hashCode());
    }
}
