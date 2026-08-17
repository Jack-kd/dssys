package com.beizi.fusion;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes2.dex */
public final class hh extends AbstractMap implements Serializable {

    /* renamed from: i, reason: collision with root package name */
    private static final Comparator f14286i = new a();

    /* renamed from: j, reason: collision with root package name */
    static final /* synthetic */ boolean f14287j = true;

    /* renamed from: a, reason: collision with root package name */
    private final Comparator f14288a;

    /* renamed from: b, reason: collision with root package name */
    private final boolean f14289b;

    /* renamed from: c, reason: collision with root package name */
    e f14290c;

    /* renamed from: d, reason: collision with root package name */
    int f14291d;

    /* renamed from: e, reason: collision with root package name */
    int f14292e;

    /* renamed from: f, reason: collision with root package name */
    final e f14293f;

    /* renamed from: g, reason: collision with root package name */
    private b f14294g;

    /* renamed from: h, reason: collision with root package name */
    private c f14295h;

    public class a implements Comparator {
        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    }

    public class b extends AbstractSet {

        public class a extends d {
            public a() {
                super();
            }

            @Override // java.util.Iterator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public Map.Entry next() {
                return a();
            }
        }

        public b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            hh.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && hh.this.a((Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            e eVarA;
            if (!(obj instanceof Map.Entry) || (eVarA = hh.this.a((Map.Entry) obj)) == null) {
                return false;
            }
            hh.this.b(eVarA, true);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return hh.this.f14291d;
        }
    }

    public final class c extends AbstractSet {

        public class a extends d {
            public a() {
                super();
            }

            @Override // java.util.Iterator
            public Object next() {
                return a().f14309f;
            }
        }

        public c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            hh.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return hh.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return hh.this.b(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return hh.this.f14291d;
        }
    }

    public abstract class d implements Iterator {

        /* renamed from: a, reason: collision with root package name */
        e f14300a;

        /* renamed from: b, reason: collision with root package name */
        e f14301b = null;

        /* renamed from: c, reason: collision with root package name */
        int f14302c;

        public d() {
            this.f14300a = hh.this.f14293f.f14307d;
            this.f14302c = hh.this.f14292e;
        }

        public final e a() {
            e eVar = this.f14300a;
            hh hhVar = hh.this;
            if (eVar == hhVar.f14293f) {
                throw new NoSuchElementException();
            }
            if (hhVar.f14292e != this.f14302c) {
                throw new ConcurrentModificationException();
            }
            this.f14300a = eVar.f14307d;
            this.f14301b = eVar;
            return eVar;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f14300a != hh.this.f14293f;
        }

        @Override // java.util.Iterator
        public final void remove() {
            e eVar = this.f14301b;
            if (eVar == null) {
                throw new IllegalStateException();
            }
            hh.this.b(eVar, true);
            this.f14301b = null;
            this.f14302c = hh.this.f14292e;
        }
    }

    public hh(boolean z2) {
        this(f14286i, z2);
    }

    public e a(Object obj, boolean z2) {
        int iCompareTo;
        e eVar;
        Comparator comparator = this.f14288a;
        e eVar2 = this.f14290c;
        if (eVar2 != null) {
            Comparable comparable = comparator == f14286i ? (Comparable) obj : null;
            while (true) {
                iCompareTo = comparable != null ? comparable.compareTo(eVar2.f14309f) : comparator.compare(obj, eVar2.f14309f);
                if (iCompareTo == 0) {
                    return eVar2;
                }
                e eVar3 = iCompareTo < 0 ? eVar2.f14305b : eVar2.f14306c;
                if (eVar3 == null) {
                    break;
                }
                eVar2 = eVar3;
            }
        } else {
            iCompareTo = 0;
        }
        e eVar4 = eVar2;
        if (!z2) {
            return null;
        }
        e eVar5 = this.f14293f;
        if (eVar4 != null) {
            eVar = new e(this.f14289b, eVar4, obj, eVar5, eVar5.f14308e);
            if (iCompareTo < 0) {
                eVar4.f14305b = eVar;
            } else {
                eVar4.f14306c = eVar;
            }
            a(eVar4, true);
        } else {
            if (comparator == f14286i && !(obj instanceof Comparable)) {
                throw new ClassCastException(obj.getClass().getName() + " is not Comparable");
            }
            eVar = new e(this.f14289b, eVar4, obj, eVar5, eVar5.f14308e);
            this.f14290c = eVar;
        }
        this.f14291d++;
        this.f14292e++;
        return eVar;
    }

    public void b(e eVar, boolean z2) {
        int i2;
        if (z2) {
            e eVar2 = eVar.f14308e;
            eVar2.f14307d = eVar.f14307d;
            eVar.f14307d.f14308e = eVar2;
        }
        e eVar3 = eVar.f14305b;
        e eVar4 = eVar.f14306c;
        e eVar5 = eVar.f14304a;
        int i3 = 0;
        if (eVar3 == null || eVar4 == null) {
            if (eVar3 != null) {
                a(eVar, eVar3);
                eVar.f14305b = null;
            } else if (eVar4 != null) {
                a(eVar, eVar4);
                eVar.f14306c = null;
            } else {
                a(eVar, (e) null);
            }
            a(eVar5, false);
            this.f14291d--;
            this.f14292e++;
            return;
        }
        e eVarB = eVar3.f14312i > eVar4.f14312i ? eVar3.b() : eVar4.a();
        b(eVarB, false);
        e eVar6 = eVar.f14305b;
        if (eVar6 != null) {
            i2 = eVar6.f14312i;
            eVarB.f14305b = eVar6;
            eVar6.f14304a = eVarB;
            eVar.f14305b = null;
        } else {
            i2 = 0;
        }
        e eVar7 = eVar.f14306c;
        if (eVar7 != null) {
            i3 = eVar7.f14312i;
            eVarB.f14306c = eVar7;
            eVar7.f14304a = eVarB;
            eVar.f14306c = null;
        }
        eVarB.f14312i = Math.max(i2, i3) + 1;
        a(eVar, eVarB);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.f14290c = null;
        this.f14291d = 0;
        this.f14292e++;
        e eVar = this.f14293f;
        eVar.f14308e = eVar;
        eVar.f14307d = eVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return a(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set entrySet() {
        b bVar = this.f14294g;
        if (bVar != null) {
            return bVar;
        }
        b bVar2 = new b();
        this.f14294g = bVar2;
        return bVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object get(Object obj) {
        e eVarA = a(obj);
        if (eVarA != null) {
            return eVarA.f14311h;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set keySet() {
        c cVar = this.f14295h;
        if (cVar != null) {
            return cVar;
        }
        c cVar2 = new c();
        this.f14295h = cVar2;
        return cVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object put(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException("key == null");
        }
        if (obj2 == null && !this.f14289b) {
            throw new NullPointerException("value == null");
        }
        e eVarA = a(obj, true);
        Object obj3 = eVarA.f14311h;
        eVarA.f14311h = obj2;
        return obj3;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object remove(Object obj) {
        e eVarB = b(obj);
        if (eVarB != null) {
            return eVarB.f14311h;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f14291d;
    }

    public hh(Comparator comparator, boolean z2) {
        this.f14291d = 0;
        this.f14292e = 0;
        this.f14288a = comparator == null ? f14286i : comparator;
        this.f14289b = z2;
        this.f14293f = new e(z2);
    }

    public static final class e implements Map.Entry {

        /* renamed from: a, reason: collision with root package name */
        e f14304a;

        /* renamed from: b, reason: collision with root package name */
        e f14305b;

        /* renamed from: c, reason: collision with root package name */
        e f14306c;

        /* renamed from: d, reason: collision with root package name */
        e f14307d;

        /* renamed from: e, reason: collision with root package name */
        e f14308e;

        /* renamed from: f, reason: collision with root package name */
        final Object f14309f;

        /* renamed from: g, reason: collision with root package name */
        final boolean f14310g;

        /* renamed from: h, reason: collision with root package name */
        Object f14311h;

        /* renamed from: i, reason: collision with root package name */
        int f14312i;

        public e(boolean z2) {
            this.f14309f = null;
            this.f14310g = z2;
            this.f14308e = this;
            this.f14307d = this;
        }

        public e a() {
            e eVar = this;
            for (e eVar2 = this.f14305b; eVar2 != null; eVar2 = eVar2.f14305b) {
                eVar = eVar2;
            }
            return eVar;
        }

        public e b() {
            e eVar = this;
            for (e eVar2 = this.f14306c; eVar2 != null; eVar2 = eVar2.f14306c) {
                eVar = eVar2;
            }
            return eVar;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object obj2 = this.f14309f;
                if (obj2 != null ? obj2.equals(entry.getKey()) : entry.getKey() == null) {
                    Object obj3 = this.f14311h;
                    if (obj3 == null) {
                        if (entry.getValue() == null) {
                            return true;
                        }
                    } else if (obj3.equals(entry.getValue())) {
                        return true;
                    }
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return this.f14309f;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return this.f14311h;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            Object obj = this.f14309f;
            int iHashCode = obj == null ? 0 : obj.hashCode();
            Object obj2 = this.f14311h;
            return iHashCode ^ (obj2 != null ? obj2.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            if (obj == null && !this.f14310g) {
                throw new NullPointerException("value == null");
            }
            Object obj2 = this.f14311h;
            this.f14311h = obj;
            return obj2;
        }

        public String toString() {
            return this.f14309f + "=" + this.f14311h;
        }

        public e(boolean z2, e eVar, Object obj, e eVar2, e eVar3) {
            this.f14304a = eVar;
            this.f14309f = obj;
            this.f14310g = z2;
            this.f14312i = 1;
            this.f14307d = eVar2;
            this.f14308e = eVar3;
            eVar3.f14307d = this;
            eVar2.f14308e = this;
        }
    }

    public e a(Object obj) {
        if (obj != null) {
            try {
                return a(obj, false);
            } catch (ClassCastException unused) {
            }
        }
        return null;
    }

    public e a(Map.Entry entry) {
        e eVarA = a(entry.getKey());
        if (eVarA == null || !a(eVarA.f14311h, entry.getValue())) {
            return null;
        }
        return eVarA;
    }

    private static boolean a(Object obj, Object obj2) {
        return Objects.equals(obj, obj2);
    }

    private void a(e eVar, e eVar2) {
        e eVar3 = eVar.f14304a;
        eVar.f14304a = null;
        if (eVar2 != null) {
            eVar2.f14304a = eVar3;
        }
        if (eVar3 != null) {
            if (eVar3.f14305b == eVar) {
                eVar3.f14305b = eVar2;
                return;
            } else {
                if (!f14287j && eVar3.f14306c != eVar) {
                    throw new AssertionError();
                }
                eVar3.f14306c = eVar2;
                return;
            }
        }
        this.f14290c = eVar2;
    }

    public e b(Object obj) {
        e eVarA = a(obj);
        if (eVarA != null) {
            b(eVarA, true);
        }
        return eVarA;
    }

    private void a(e eVar, boolean z2) {
        while (eVar != null) {
            e eVar2 = eVar.f14305b;
            e eVar3 = eVar.f14306c;
            int i2 = eVar2 != null ? eVar2.f14312i : 0;
            int i3 = eVar3 != null ? eVar3.f14312i : 0;
            int i4 = i2 - i3;
            if (i4 == -2) {
                e eVar4 = eVar3.f14305b;
                e eVar5 = eVar3.f14306c;
                int i5 = (eVar4 != null ? eVar4.f14312i : 0) - (eVar5 != null ? eVar5.f14312i : 0);
                if (i5 != -1 && (i5 != 0 || z2)) {
                    if (!f14287j && i5 != 1) {
                        throw new AssertionError();
                    }
                    b(eVar3);
                    a(eVar);
                } else {
                    a(eVar);
                }
                if (z2) {
                    return;
                }
            } else if (i4 == 2) {
                e eVar6 = eVar2.f14305b;
                e eVar7 = eVar2.f14306c;
                int i6 = (eVar6 != null ? eVar6.f14312i : 0) - (eVar7 != null ? eVar7.f14312i : 0);
                if (i6 != 1 && (i6 != 0 || z2)) {
                    if (!f14287j && i6 != -1) {
                        throw new AssertionError();
                    }
                    a(eVar2);
                    b(eVar);
                } else {
                    b(eVar);
                }
                if (z2) {
                    return;
                }
            } else if (i4 == 0) {
                eVar.f14312i = i2 + 1;
                if (z2) {
                    return;
                }
            } else {
                if (!f14287j && i4 != -1 && i4 != 1) {
                    throw new AssertionError();
                }
                eVar.f14312i = Math.max(i2, i3) + 1;
                if (!z2) {
                    return;
                }
            }
            eVar = eVar.f14304a;
        }
    }

    private void b(e eVar) {
        e eVar2 = eVar.f14305b;
        e eVar3 = eVar.f14306c;
        e eVar4 = eVar2.f14305b;
        e eVar5 = eVar2.f14306c;
        eVar.f14305b = eVar5;
        if (eVar5 != null) {
            eVar5.f14304a = eVar;
        }
        a(eVar, eVar2);
        eVar2.f14306c = eVar;
        eVar.f14304a = eVar2;
        int iMax = Math.max(eVar3 != null ? eVar3.f14312i : 0, eVar5 != null ? eVar5.f14312i : 0) + 1;
        eVar.f14312i = iMax;
        eVar2.f14312i = Math.max(iMax, eVar4 != null ? eVar4.f14312i : 0) + 1;
    }

    private void a(e eVar) {
        e eVar2 = eVar.f14305b;
        e eVar3 = eVar.f14306c;
        e eVar4 = eVar3.f14305b;
        e eVar5 = eVar3.f14306c;
        eVar.f14306c = eVar4;
        if (eVar4 != null) {
            eVar4.f14304a = eVar;
        }
        a(eVar, eVar3);
        eVar3.f14305b = eVar;
        eVar.f14304a = eVar3;
        int iMax = Math.max(eVar2 != null ? eVar2.f14312i : 0, eVar4 != null ? eVar4.f14312i : 0) + 1;
        eVar.f14312i = iMax;
        eVar3.f14312i = Math.max(iMax, eVar5 != null ? eVar5.f14312i : 0) + 1;
    }
}
