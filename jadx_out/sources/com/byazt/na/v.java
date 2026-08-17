package com.byazt.na;

import com.umeng.commonsdk.statistics.UMErrorCode;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

@com.byazt.kj.hp(hp = {0, 1, 2, UMErrorCode.E_UM_BE_ERROR_WORK_MODE})
/* loaded from: classes3.dex */
public abstract class v<K, V> {

    /* renamed from: l, reason: collision with root package name */
    public v<K, V>.l f23508l;

    @com.byazt.kj.hp(hp = {0, 1, 2, 709})
    public final class hp<T> implements Iterator<T> {
        public final int hp;

        /* renamed from: j, reason: collision with root package name */
        public boolean f23509j = false;
        public int jx;

        /* renamed from: l, reason: collision with root package name */
        public int f23510l;

        public hp(int i2) {
            this.hp = i2;
            this.f23510l = v.this.hp();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.jx < this.f23510l;
        }

        @Override // java.util.Iterator
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            T t2 = (T) v.this.hp(this.jx, this.hp);
            this.jx++;
            this.f23509j = true;
            return t2;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.f23509j) {
                throw new IllegalStateException();
            }
            int i2 = this.jx - 1;
            this.jx = i2;
            this.f23510l--;
            this.f23509j = false;
            v.this.hp(i2);
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 2, 2156})
    public final class l implements Set<K> {
        public l() {
        }

        @Override // java.util.Set, java.util.Collection
        public boolean add(K k2) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends K> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            v.this.jx();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            return v.this.hp(obj) >= 0;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return v.hp(v.this.l(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return v.hp(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int iHashCode = 0;
            for (int iHp = v.this.hp() - 1; iHp >= 0; iHp--) {
                Object objHp = v.this.hp(iHp, 0);
                iHashCode += objHp == null ? 0 : objHp.hashCode();
            }
            return iHashCode;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return v.this.hp() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<K> iterator() {
            return new hp(0);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            int iHp = v.this.hp(obj);
            if (iHp < 0) {
                return false;
            }
            v.this.hp(iHp);
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            return v.l(v.this.l(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return v.jx(v.this.l(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return v.this.hp();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            return v.this.l(0);
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) v.this.hp(tArr, 0);
        }
    }

    public static <K, V> boolean hp(Map<K, V> map, Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!map.containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    public static <K, V> boolean jx(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<K> it = map.keySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
            }
        }
        return size != map.size();
    }

    public static <K, V> boolean l(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            map.remove(it.next());
        }
        return size != map.size();
    }

    public abstract int hp();

    public abstract int hp(Object obj);

    public abstract Object hp(int i2, int i3);

    public abstract void hp(int i2);

    public Set<K> j() {
        if (this.f23508l == null) {
            this.f23508l = new l();
        }
        return this.f23508l;
    }

    public abstract void jx();

    public abstract Map<K, V> l();

    public <T> T[] hp(T[] tArr, int i2) {
        int iHp = hp();
        if (tArr.length < iHp) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), iHp));
        }
        for (int i3 = 0; i3 < iHp; i3++) {
            tArr[i3] = hp(i3, i2);
        }
        if (tArr.length > iHp) {
            tArr[iHp] = null;
        }
        return tArr;
    }

    public Object[] l(int i2) {
        int iHp = hp();
        Object[] objArr = new Object[iHp];
        for (int i3 = 0; i3 < iHp; i3++) {
            objArr[i3] = hp(i3, i2);
        }
        return objArr;
    }

    public static <T> boolean hp(Set<T> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }
}
