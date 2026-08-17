package androidx.collection;

import androidx.annotation.IntRange;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.collections.l;
import kotlin.collections.m;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.f;
import kotlin.jvm.internal.j;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u001f\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\b\u001a\u00020\u000b2\b\b\u0001\u0010\n\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\fJ\u001f\u0010\u000f\u001a\u00020\u00072\b\b\u0001\u0010\n\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u000f\u001a\u00020\u00072\b\b\u0001\u0010\n\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0001¢\u0006\u0004\b\u000f\u0010\u0011J\u0015\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0001¢\u0006\u0004\b\u000f\u0010\u0012J\u0015\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0013J\u0018\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0001H\u0086\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0018\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0086\u0002¢\u0006\u0004\b\u0014\u0010\u0016J\r\u0010\u0017\u001a\u00020\u000b¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\u000b2\b\b\u0002\u0010\u0019\u001a\u00020\u0002¢\u0006\u0004\b\u001a\u0010\u0005J\u0015\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u0002¢\u0006\u0004\b\u001c\u0010\u0005J\u0018\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u0002H\u0086\n¢\u0006\u0004\b\u0014\u0010\u0005J\u0018\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u0002H\u0086\n¢\u0006\u0004\b\u001d\u0010\u0005J\u0015\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u001e\u0010\tJ\u0015\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u001f\u0010\u0013J\u0015\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0001¢\u0006\u0004\b\u001f\u0010\u0012J\u0018\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0086\u0002¢\u0006\u0004\b\u001d\u0010\u0016J\u0018\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0001H\u0086\u0002¢\u0006\u0004\b\u001d\u0010\u0015J\u0017\u0010 \u001a\u00020\u00022\b\b\u0001\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b \u0010!J!\u0010$\u001a\u00020\u000b2\b\b\u0001\u0010\"\u001a\u00020\u00022\b\b\u0001\u0010#\u001a\u00020\u0002¢\u0006\u0004\b$\u0010\fJ\u0015\u0010%\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b%\u0010\u0013J\u0015\u0010%\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0001¢\u0006\u0004\b%\u0010\u0012J\"\u0010&\u001a\u00020\u00022\b\b\u0001\u0010\n\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0086\u0002¢\u0006\u0004\b&\u0010'J\r\u0010(\u001a\u00020\u000b¢\u0006\u0004\b(\u0010\u0018J\r\u0010)\u001a\u00020\u000b¢\u0006\u0004\b)\u0010\u0018R\u0012\u0010\u001b\u001a\u00020\u00028Æ\u0002¢\u0006\u0006\u001a\u0004\b*\u0010+¨\u0006,"}, d2 = {"Landroidx/collection/MutableIntList;", "Landroidx/collection/IntList;", "", "initialCapacity", "<init>", "(I)V", "element", "", "add", "(I)Z", com.umeng.ccg.a.f49746H, "Lkotlin/j;", "(II)V", "", "elements", "addAll", "(I[I)Z", "(ILandroidx/collection/IntList;)Z", "(Landroidx/collection/IntList;)Z", "([I)Z", "plusAssign", "(Landroidx/collection/IntList;)V", "([I)V", "clear", "()V", "minCapacity", "trim", "capacity", "ensureCapacity", "minusAssign", "remove", "removeAll", "removeAt", "(I)I", "start", "end", "removeRange", "retainAll", "set", "(II)I", "sort", "sortDescending", "getCapacity", "()I", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nIntList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntList.kt\nandroidx/collection/MutableIntList\n+ 2 IntList.kt\nandroidx/collection/IntList\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,969:1\n549#1:970\n70#2:971\n253#2,6:974\n70#2:980\n70#2:981\n70#2:982\n70#2:989\n70#2:990\n13600#3,2:972\n1663#3,6:983\n*S KotlinDebug\n*F\n+ 1 IntList.kt\nandroidx/collection/MutableIntList\n*L\n692#1:970\n753#1:971\n772#1:974,6\n783#1:980\n787#1:981\n834#1:982\n850#1:989\n869#1:990\n763#1:972,2\n836#1:983,6\n*E\n"})
/* loaded from: classes.dex */
public final class MutableIntList extends IntList {
    public MutableIntList() {
        this(0, 1, null);
    }

    public static /* synthetic */ void trim$default(MutableIntList mutableIntList, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i2 = mutableIntList._size;
        }
        mutableIntList.trim(i2);
    }

    public final boolean add(int element) {
        ensureCapacity(this._size + 1);
        int[] iArr = this.content;
        int i2 = this._size;
        iArr[i2] = element;
        this._size = i2 + 1;
        return true;
    }

    public final boolean addAll(@IntRange(from = 0) int index, @NotNull int[] elements) {
        int i2;
        j.e(elements, "elements");
        if (index < 0 || index > (i2 = this._size)) {
            throw new IndexOutOfBoundsException("Index " + index + " must be in 0.." + this._size);
        }
        if (elements.length == 0) {
            return false;
        }
        ensureCapacity(i2 + elements.length);
        int[] iArr = this.content;
        int i3 = this._size;
        if (index != i3) {
            l.f(iArr, iArr, elements.length + index, index, i3);
        }
        l.k(elements, iArr, index, 0, 0, 12, null);
        this._size += elements.length;
        return true;
    }

    public final void clear() {
        this._size = 0;
    }

    public final void ensureCapacity(int capacity) {
        int[] iArr = this.content;
        if (iArr.length < capacity) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, Math.max(capacity, (iArr.length * 3) / 2));
            j.d(iArrCopyOf, "copyOf(this, newSize)");
            this.content = iArrCopyOf;
        }
    }

    public final int getCapacity() {
        return this.content.length;
    }

    public final void minusAssign(int element) {
        remove(element);
    }

    public final void plusAssign(@NotNull IntList elements) {
        j.e(elements, "elements");
        addAll(this._size, elements);
    }

    public final boolean remove(int element) {
        int iIndexOf = indexOf(element);
        if (iIndexOf < 0) {
            return false;
        }
        removeAt(iIndexOf);
        return true;
    }

    public final boolean removeAll(@NotNull int[] elements) {
        j.e(elements, "elements");
        int i2 = this._size;
        for (int i3 : elements) {
            remove(i3);
        }
        return i2 != this._size;
    }

    public final int removeAt(@IntRange(from = 0) int index) {
        int i2;
        if (index < 0 || index >= (i2 = this._size)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Index ");
            sb.append(index);
            sb.append(" must be in 0..");
            sb.append(this._size - 1);
            throw new IndexOutOfBoundsException(sb.toString());
        }
        int[] iArr = this.content;
        int i3 = iArr[index];
        if (index != i2 - 1) {
            l.f(iArr, iArr, index, index + 1, i2);
        }
        this._size--;
        return i3;
    }

    public final void removeRange(@IntRange(from = 0) int start, @IntRange(from = 0) int end) {
        int i2;
        if (start < 0 || start > (i2 = this._size) || end < 0 || end > i2) {
            throw new IndexOutOfBoundsException("Start (" + start + ") and end (" + end + ") must be in 0.." + this._size);
        }
        if (end >= start) {
            if (end != start) {
                if (end < i2) {
                    int[] iArr = this.content;
                    l.f(iArr, iArr, start, end, i2);
                }
                this._size -= end - start;
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Start (" + start + ") is more than end (" + end + ')');
    }

    public final boolean retainAll(@NotNull int[] elements) {
        j.e(elements, "elements");
        int i2 = this._size;
        int[] iArr = this.content;
        int i3 = i2 - 1;
        while (true) {
            int i4 = 0;
            int i5 = -1;
            if (-1 >= i3) {
                break;
            }
            int i6 = iArr[i3];
            int length = elements.length;
            while (true) {
                if (i4 >= length) {
                    break;
                }
                if (elements[i4] == i6) {
                    i5 = i4;
                    break;
                }
                i4++;
            }
            if (i5 < 0) {
                removeAt(i3);
            }
            i3--;
        }
        return i2 != this._size;
    }

    public final int set(@IntRange(from = 0) int index, int element) {
        if (index >= 0 && index < this._size) {
            int[] iArr = this.content;
            int i2 = iArr[index];
            iArr[index] = element;
            return i2;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("set index ");
        sb.append(index);
        sb.append(" must be between 0 .. ");
        sb.append(this._size - 1);
        throw new IndexOutOfBoundsException(sb.toString());
    }

    public final void sort() {
        l.w(this.content, 0, this._size);
    }

    public final void sortDescending() {
        m.V(this.content, 0, this._size);
    }

    public final void trim(int minCapacity) {
        int iMax = Math.max(minCapacity, this._size);
        int[] iArr = this.content;
        if (iArr.length > iMax) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, iMax);
            j.d(iArrCopyOf, "copyOf(this, newSize)");
            this.content = iArrCopyOf;
        }
    }

    public /* synthetic */ MutableIntList(int i2, int i3, f fVar) {
        this((i3 & 1) != 0 ? 16 : i2);
    }

    public final void minusAssign(@NotNull int[] elements) {
        j.e(elements, "elements");
        for (int i2 : elements) {
            remove(i2);
        }
    }

    public final void plusAssign(@NotNull int[] elements) {
        j.e(elements, "elements");
        addAll(this._size, elements);
    }

    public MutableIntList(int i2) {
        super(i2, null);
    }

    public final void plusAssign(int element) {
        add(element);
    }

    public final void add(@IntRange(from = 0) int index, int element) {
        int i2;
        if (index >= 0 && index <= (i2 = this._size)) {
            ensureCapacity(i2 + 1);
            int[] iArr = this.content;
            int i3 = this._size;
            if (index != i3) {
                l.f(iArr, iArr, index + 1, index, i3);
            }
            iArr[index] = element;
            this._size++;
            return;
        }
        throw new IndexOutOfBoundsException("Index " + index + " must be in 0.." + this._size);
    }

    public final void minusAssign(@NotNull IntList elements) {
        j.e(elements, "elements");
        int[] iArr = elements.content;
        int i2 = elements._size;
        for (int i3 = 0; i3 < i2; i3++) {
            remove(iArr[i3]);
        }
    }

    public final boolean removeAll(@NotNull IntList elements) {
        j.e(elements, "elements");
        int i2 = this._size;
        int i3 = elements._size - 1;
        if (i3 >= 0) {
            int i4 = 0;
            while (true) {
                remove(elements.get(i4));
                if (i4 == i3) {
                    break;
                }
                i4++;
            }
        }
        return i2 != this._size;
    }

    public final boolean retainAll(@NotNull IntList elements) {
        j.e(elements, "elements");
        int i2 = this._size;
        int[] iArr = this.content;
        for (int i3 = i2 - 1; -1 < i3; i3--) {
            if (!elements.contains(iArr[i3])) {
                removeAt(i3);
            }
        }
        return i2 != this._size;
    }

    public final boolean addAll(@IntRange(from = 0) int index, @NotNull IntList elements) {
        j.e(elements, "elements");
        if (index >= 0 && index <= this._size) {
            if (elements.isEmpty()) {
                return false;
            }
            ensureCapacity(this._size + elements._size);
            int[] iArr = this.content;
            int i2 = this._size;
            if (index != i2) {
                l.f(iArr, iArr, elements._size + index, index, i2);
            }
            l.f(elements.content, iArr, index, 0, elements._size);
            this._size += elements._size;
            return true;
        }
        throw new IndexOutOfBoundsException("Index " + index + " must be in 0.." + this._size);
    }

    public final boolean addAll(@NotNull IntList elements) {
        j.e(elements, "elements");
        return addAll(this._size, elements);
    }

    public final boolean addAll(@NotNull int[] elements) {
        j.e(elements, "elements");
        return addAll(this._size, elements);
    }
}
