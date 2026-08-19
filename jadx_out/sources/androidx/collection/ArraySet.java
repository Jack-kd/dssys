package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import androidx.exifinterface.media.ExifInterface;
import com.anythink.core.common.f.f;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.l;
import kotlin.collections.y;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.b;
import kotlin.jvm.internal.j;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001f\n\u0002\u0010#\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0016\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010)\n\u0002\b\u0006\n\u0002\u0010\u0015\n\u0002\b\u0011\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0001IB\u0013\b\u0007\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B\u001b\b\u0016\u0012\u0010\u0010\b\u001a\f\u0012\u0006\b\u0001\u0012\u00028\u0000\u0018\u00010\u0000¢\u0006\u0004\b\u0006\u0010\tB\u0019\b\u0016\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\u000bB\u001b\b\u0016\u0012\u0010\u0010\r\u001a\f\u0012\u0006\b\u0001\u0012\u00028\u0000\u0018\u00010\f¢\u0006\u0004\b\u0006\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0015\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0004¢\u0006\u0004\b\u0013\u0010\u0007J\u0018\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\u00042\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ\u0015\u0010\u001d\u001a\u00028\u00002\u0006\u0010\u001c\u001a\u00020\u0004¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010!\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00028\u0000H\u0016¢\u0006\u0004\b!\u0010\u0017J\u001d\u0010\"\u001a\u00020\u000f2\u000e\u0010\r\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0000¢\u0006\u0004\b\"\u0010\tJ\u0017\u0010#\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00028\u0000H\u0016¢\u0006\u0004\b#\u0010\u0017J\u0015\u0010$\u001a\u00028\u00002\u0006\u0010\u001c\u001a\u00020\u0004¢\u0006\u0004\b$\u0010\u001eJ\u001d\u0010%\u001a\u00020\u00152\u000e\u0010\r\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0000¢\u0006\u0004\b%\u0010&J\u0015\u0010'\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180\f¢\u0006\u0004\b'\u0010(J'\u0010'\u001a\b\u0012\u0004\u0012\u00028\u00010\f\"\u0004\b\u0001\u0010)2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00010\f¢\u0006\u0004\b'\u0010*J\u001a\u0010,\u001a\u00020\u00152\b\u0010+\u001a\u0004\u0018\u00010\u0018H\u0096\u0002¢\u0006\u0004\b,\u0010\u0017J\u000f\u0010-\u001a\u00020\u0004H\u0016¢\u0006\u0004\b-\u0010.J\u000f\u00100\u001a\u00020/H\u0016¢\u0006\u0004\b0\u00101J\u0016\u00103\u001a\b\u0012\u0004\u0012\u00028\u000002H\u0096\u0002¢\u0006\u0004\b3\u00104J\u001d\u00106\u001a\u00020\u00152\f\u00105\u001a\b\u0012\u0004\u0012\u00028\u00000\nH\u0016¢\u0006\u0004\b6\u00107J\u001d\u0010\"\u001a\u00020\u00152\f\u00105\u001a\b\u0012\u0004\u0012\u00028\u00000\nH\u0016¢\u0006\u0004\b\"\u00107J\u001d\u0010%\u001a\u00020\u00152\f\u00105\u001a\b\u0012\u0004\u0012\u00028\u00000\nH\u0016¢\u0006\u0004\b%\u00107J\u001d\u00108\u001a\u00020\u00152\f\u00105\u001a\b\u0012\u0004\u0012\u00028\u00000\nH\u0016¢\u0006\u0004\b8\u00107R\"\u0010:\u001a\u0002098\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R*\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180\f8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\r\u0010@\u001a\u0004\bA\u0010(\"\u0004\bB\u0010\u000eR\"\u0010C\u001a\u00020\u00048\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bC\u0010D\u001a\u0004\bE\u0010.\"\u0004\bF\u0010\u0007R\u0014\u0010H\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bG\u0010.¨\u0006J"}, d2 = {"Landroidx/collection/ArraySet;", ExifInterface.LONGITUDE_EAST, "", "", "", "capacity", "<init>", "(I)V", "set", "(Landroidx/collection/ArraySet;)V", "", "(Ljava/util/Collection;)V", "", "array", "([Ljava/lang/Object;)V", "Lkotlin/j;", "clear", "()V", "minimumCapacity", "ensureCapacity", "element", "", "contains", "(Ljava/lang/Object;)Z", "", f.a.f3242b, "indexOf", "(Ljava/lang/Object;)I", com.umeng.ccg.a.f49746H, "valueAt", "(I)Ljava/lang/Object;", "isEmpty", "()Z", "add", "addAll", "remove", "removeAt", "removeAll", "(Landroidx/collection/ArraySet;)Z", "toArray", "()[Ljava/lang/Object;", ExifInterface.GPS_DIRECTION_TRUE, "([Ljava/lang/Object;)[Ljava/lang/Object;", "other", "equals", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "", "iterator", "()Ljava/util/Iterator;", "elements", "containsAll", "(Ljava/util/Collection;)Z", "retainAll", "", "hashes", "[I", "getHashes$collection", "()[I", "setHashes$collection", "([I)V", "[Ljava/lang/Object;", "getArray$collection", "setArray$collection", "_size", "I", "get_size$collection", "set_size$collection", "getSize", "size", "ElementIterator", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nArraySet.jvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArraySet.jvm.kt\nandroidx/collection/ArraySet\n+ 2 ArraySet.kt\nandroidx/collection/ArraySetKt\n*L\n1#1,300:1\n304#2,10:301\n317#2,14:311\n334#2:325\n339#2:326\n345#2:327\n350#2:328\n355#2,61:329\n420#2,17:390\n440#2,6:407\n450#2,60:413\n518#2,9:473\n531#2,22:482\n557#2,7:504\n568#2,19:511\n591#2,6:530\n601#2,6:536\n611#2,5:542\n620#2,8:547\n*S KotlinDebug\n*F\n+ 1 ArraySet.jvm.kt\nandroidx/collection/ArraySet\n*L\n98#1:301,10\n108#1:311,14\n118#1:325\n128#1:326\n138#1:327\n145#1:328\n157#1:329,61\n167#1:390,17\n177#1:407,6\n188#1:413,60\n197#1:473,9\n224#1:482,22\n231#1:504,7\n240#1:511,19\n267#1:530,6\n276#1:536,6\n286#1:542,5\n297#1:547,8\n*E\n"})
/* loaded from: classes.dex */
public final class ArraySet<E> implements Collection<E>, Set<E>, B1.a {
    private int _size;

    @NotNull
    private Object[] array;

    @NotNull
    private int[] hashes;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0006\u001a\u00028\u00002\u0006\u0010\u0005\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/collection/ArraySet$ElementIterator;", "Landroidx/collection/IndexBasedArrayIterator;", "<init>", "(Landroidx/collection/ArraySet;)V", "", com.umeng.ccg.a.f49746H, "elementAt", "(I)Ljava/lang/Object;", "Lkotlin/j;", "removeAt", "(I)V", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public final class ElementIterator extends IndexBasedArrayIterator<E> {
        public ElementIterator() {
            super(ArraySet.this.get_size$collection());
        }

        @Override // androidx.collection.IndexBasedArrayIterator
        public E elementAt(int index) {
            return ArraySet.this.valueAt(index);
        }

        @Override // androidx.collection.IndexBasedArrayIterator
        public void removeAt(int index) {
            ArraySet.this.removeAt(index);
        }
    }

    @JvmOverloads
    public ArraySet() {
        this(0, 1, null);
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(E element) {
        int i2;
        int iIndexOf;
        int i3 = get_size$collection();
        if (element == null) {
            iIndexOf = ArraySetKt.indexOfNull(this);
            i2 = 0;
        } else {
            int iHashCode = element.hashCode();
            i2 = iHashCode;
            iIndexOf = ArraySetKt.indexOf(this, element, iHashCode);
        }
        if (iIndexOf >= 0) {
            return false;
        }
        int i4 = ~iIndexOf;
        if (i3 >= getHashes().length) {
            int i5 = 8;
            if (i3 >= 8) {
                i5 = (i3 >> 1) + i3;
            } else if (i3 < 4) {
                i5 = 4;
            }
            int[] hashes = getHashes();
            Object[] array = getArray();
            ArraySetKt.allocArrays(this, i5);
            if (i3 != get_size$collection()) {
                throw new ConcurrentModificationException();
            }
            if (!(getHashes().length == 0)) {
                l.k(hashes, getHashes(), 0, 0, hashes.length, 6, null);
                l.m(array, getArray(), 0, 0, array.length, 6, null);
            }
        }
        if (i4 < i3) {
            int i6 = i4 + 1;
            l.f(getHashes(), getHashes(), i6, i4, i3);
            l.h(getArray(), getArray(), i6, i4, i3);
        }
        if (i3 != get_size$collection() || i4 >= getHashes().length) {
            throw new ConcurrentModificationException();
        }
        getHashes()[i4] = i2;
        getArray()[i4] = element;
        set_size$collection(get_size$collection() + 1);
        return true;
    }

    public final void addAll(@NotNull ArraySet<? extends E> array) {
        j.e(array, "array");
        int i2 = array.get_size$collection();
        ensureCapacity(get_size$collection() + i2);
        if (get_size$collection() != 0) {
            for (int i3 = 0; i3 < i2; i3++) {
                add(array.valueAt(i3));
            }
            return;
        }
        if (i2 > 0) {
            l.k(array.getHashes(), getHashes(), 0, 0, i2, 6, null);
            l.m(array.getArray(), getArray(), 0, 0, i2, 6, null);
            if (get_size$collection() != 0) {
                throw new ConcurrentModificationException();
            }
            set_size$collection(i2);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        if (get_size$collection() != 0) {
            setHashes$collection(ContainerHelpersKt.EMPTY_INTS);
            setArray$collection(ContainerHelpersKt.EMPTY_OBJECTS);
            set_size$collection(0);
        }
        if (get_size$collection() != 0) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(Object element) {
        return indexOf(element) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(@NotNull Collection<? extends Object> elements) {
        j.e(elements, "elements");
        Iterator<? extends Object> it = elements.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public final void ensureCapacity(int minimumCapacity) {
        int i2 = get_size$collection();
        if (getHashes().length < minimumCapacity) {
            int[] hashes = getHashes();
            Object[] array = getArray();
            ArraySetKt.allocArrays(this, minimumCapacity);
            if (get_size$collection() > 0) {
                l.k(hashes, getHashes(), 0, 0, get_size$collection(), 6, null);
                l.m(array, getArray(), 0, 0, get_size$collection(), 6, null);
            }
        }
        if (get_size$collection() != i2) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Set) || size() != ((Set) other).size()) {
            return false;
        }
        try {
            int i2 = get_size$collection();
            for (int i3 = 0; i3 < i2; i3++) {
                if (!((Set) other).contains(valueAt(i3))) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @NotNull
    /* renamed from: getArray$collection, reason: from getter */
    public final Object[] getArray() {
        return this.array;
    }

    @NotNull
    /* renamed from: getHashes$collection, reason: from getter */
    public final int[] getHashes() {
        return this.hashes;
    }

    /* renamed from: getSize, reason: from getter */
    public int get_size() {
        return this._size;
    }

    public final int get_size$collection() {
        return this._size;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] hashes = getHashes();
        int i2 = get_size$collection();
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 += hashes[i4];
        }
        return i3;
    }

    public final int indexOf(@Nullable Object key) {
        return key == null ? ArraySetKt.indexOfNull(this) : ArraySetKt.indexOf(this, key, key.hashCode());
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return get_size$collection() <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    @NotNull
    public Iterator<E> iterator() {
        return new ElementIterator();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(Object element) {
        int iIndexOf = indexOf(element);
        if (iIndexOf < 0) {
            return false;
        }
        removeAt(iIndexOf);
        return true;
    }

    public final boolean removeAll(@NotNull ArraySet<? extends E> array) {
        j.e(array, "array");
        int i2 = array.get_size$collection();
        int i3 = get_size$collection();
        for (int i4 = 0; i4 < i2; i4++) {
            remove(array.valueAt(i4));
        }
        return i3 != get_size$collection();
    }

    public final E removeAt(int index) {
        int i2;
        Object[] objArr;
        int i3 = get_size$collection();
        E e2 = (E) getArray()[index];
        if (i3 <= 1) {
            clear();
            return e2;
        }
        int i4 = i3 - 1;
        if (getHashes().length <= 8 || get_size$collection() >= getHashes().length / 3) {
            if (index < i4) {
                int i5 = index + 1;
                l.f(getHashes(), getHashes(), index, i5, i3);
                l.h(getArray(), getArray(), index, i5, i3);
            }
            getArray()[i4] = null;
        } else {
            int i6 = get_size$collection() > 8 ? get_size$collection() + (get_size$collection() >> 1) : 8;
            int[] hashes = getHashes();
            Object[] array = getArray();
            ArraySetKt.allocArrays(this, i6);
            if (index > 0) {
                l.k(hashes, getHashes(), 0, 0, index, 6, null);
                objArr = array;
                l.m(objArr, getArray(), 0, 0, index, 6, null);
                i2 = index;
            } else {
                i2 = index;
                objArr = array;
            }
            if (i2 < i4) {
                int i7 = i2 + 1;
                l.f(hashes, getHashes(), i2, i7, i3);
                l.h(objArr, getArray(), i2, i7, i3);
            }
        }
        if (i3 != get_size$collection()) {
            throw new ConcurrentModificationException();
        }
        set_size$collection(i4);
        return e2;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(@NotNull Collection<? extends Object> elements) {
        j.e(elements, "elements");
        boolean z2 = false;
        for (int i2 = get_size$collection() - 1; -1 < i2; i2--) {
            if (!y.G(elements, getArray()[i2])) {
                removeAt(i2);
                z2 = true;
            }
        }
        return z2;
    }

    public final void setArray$collection(@NotNull Object[] objArr) {
        j.e(objArr, "<set-?>");
        this.array = objArr;
    }

    public final void setHashes$collection(@NotNull int[] iArr) {
        j.e(iArr, "<set-?>");
        this.hashes = iArr;
    }

    public final void set_size$collection(int i2) {
        this._size = i2;
    }

    @Override // java.util.Collection, java.util.Set
    public final /* bridge */ int size() {
        return get_size();
    }

    @Override // java.util.Collection, java.util.Set
    @NotNull
    public final Object[] toArray() {
        return l.o(this.array, 0, this._size);
    }

    @NotNull
    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(get_size$collection() * 14);
        sb.append('{');
        int i2 = get_size$collection();
        for (int i3 = 0; i3 < i2; i3++) {
            if (i3 > 0) {
                sb.append(", ");
            }
            E eValueAt = valueAt(i3);
            if (eValueAt != this) {
                sb.append(eValueAt);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        String string = sb.toString();
        j.d(string, "StringBuilder(capacity).…builderAction).toString()");
        return string;
    }

    public final E valueAt(int index) {
        return (E) getArray()[index];
    }

    @JvmOverloads
    public ArraySet(int i2) {
        this.hashes = ContainerHelpersKt.EMPTY_INTS;
        this.array = ContainerHelpersKt.EMPTY_OBJECTS;
        if (i2 > 0) {
            ArraySetKt.allocArrays(this, i2);
        }
    }

    @Override // java.util.Collection, java.util.Set
    @NotNull
    public final <T> T[] toArray(@NotNull T[] array) {
        j.e(array, "array");
        T[] result = (T[]) ArraySetJvmUtil.resizeForToArray(array, this._size);
        l.h(this.array, result, 0, 0, this._size);
        j.d(result, "result");
        return result;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(@NotNull Collection<? extends Object> elements) {
        j.e(elements, "elements");
        Iterator<? extends Object> it = elements.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= remove(it.next());
        }
        return zRemove;
    }

    public /* synthetic */ ArraySet(int i2, int i3, kotlin.jvm.internal.f fVar) {
        this((i3 & 1) != 0 ? 0 : i2);
    }

    public ArraySet(@Nullable ArraySet<? extends E> arraySet) {
        this(0);
        if (arraySet != null) {
            addAll((ArraySet) arraySet);
        }
    }

    public ArraySet(@Nullable Collection<? extends E> collection) {
        this(0);
        if (collection != null) {
            addAll(collection);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(@NotNull Collection<? extends E> elements) {
        j.e(elements, "elements");
        ensureCapacity(get_size$collection() + elements.size());
        Iterator<? extends E> it = elements.iterator();
        boolean zAdd = false;
        while (it.hasNext()) {
            zAdd |= add(it.next());
        }
        return zAdd;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ArraySet(@Nullable E[] eArr) {
        this(0);
        if (eArr != null) {
            Iterator itA = b.a(eArr);
            while (itA.hasNext()) {
                add(itA.next());
            }
        }
    }
}
