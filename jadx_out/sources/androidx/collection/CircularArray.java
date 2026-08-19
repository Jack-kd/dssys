package androidx.collection;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.collections.l;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.f;
import kotlin.jvm.internal.j;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u000b\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0013\b\u0007\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00028\u0000¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\r\u001a\u00020\u00072\u0006\u0010\n\u001a\u00028\u0000¢\u0006\u0004\b\r\u0010\fJ\r\u0010\u000e\u001a\u00028\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00028\u0000¢\u0006\u0004\b\u0010\u0010\u000fJ\r\u0010\u0011\u001a\u00020\u0007¢\u0006\u0004\b\u0011\u0010\tJ\u0015\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0003¢\u0006\u0004\b\u0013\u0010\u0006J\u0015\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0003¢\u0006\u0004\b\u0014\u0010\u0006J\u0018\u0010\u0016\u001a\u00028\u00002\u0006\u0010\u0015\u001a\u00020\u0003H\u0086\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\r\u0010\u0018\u001a\u00020\u0003¢\u0006\u0004\b\u0018\u0010\u0019J\r\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001b\u0010\u001cR\u001e\u0010\u001e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010 \u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010\"\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010!R\u0016\u0010#\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010!R\u0011\u0010%\u001a\u00028\u00008F¢\u0006\u0006\u001a\u0004\b$\u0010\u000fR\u0011\u0010'\u001a\u00028\u00008F¢\u0006\u0006\u001a\u0004\b&\u0010\u000f¨\u0006("}, d2 = {"Landroidx/collection/CircularArray;", ExifInterface.LONGITUDE_EAST, "", "", "minCapacity", "<init>", "(I)V", "Lkotlin/j;", "doubleCapacity", "()V", "element", "addFirst", "(Ljava/lang/Object;)V", "addLast", "popFirst", "()Ljava/lang/Object;", "popLast", "clear", "count", "removeFromStart", "removeFromEnd", com.umeng.ccg.a.f49746H, "get", "(I)Ljava/lang/Object;", "size", "()I", "", "isEmpty", "()Z", "", "elements", "[Ljava/lang/Object;", "head", "I", "tail", "capacityBitmask", "getFirst", "first", "getLast", "last", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCircularArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CircularArray.kt\nandroidx/collection/CircularArray\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CollectionPlatformUtils.jvm.kt\nandroidx/collection/CollectionPlatformUtils\n*L\n1#1,270:1\n1#2:271\n26#3:272\n26#3:273\n26#3:274\n26#3:275\n26#3:276\n26#3:277\n26#3:278\n*S KotlinDebug\n*F\n+ 1 CircularArray.kt\nandroidx/collection/CircularArray\n*L\n104#1:272\n122#1:273\n152#1:274\n187#1:275\n221#1:276\n235#1:277\n249#1:278\n*E\n"})
/* loaded from: classes.dex */
public final class CircularArray<E> {
    private int capacityBitmask;

    @NotNull
    private E[] elements;
    private int head;
    private int tail;

    @JvmOverloads
    public CircularArray() {
        this(0, 1, null);
    }

    private final void doubleCapacity() {
        E[] eArr = this.elements;
        int length = eArr.length;
        int i2 = this.head;
        int i3 = length - i2;
        int i4 = length << 1;
        if (i4 < 0) {
            throw new RuntimeException("Max array capacity exceeded");
        }
        E[] eArr2 = (E[]) new Object[i4];
        l.h(eArr, eArr2, 0, i2, length);
        l.h(this.elements, eArr2, i3, 0, this.head);
        this.elements = eArr2;
        this.head = 0;
        this.tail = length;
        this.capacityBitmask = i4 - 1;
    }

    public final void addFirst(E element) {
        int i2 = (this.head - 1) & this.capacityBitmask;
        this.head = i2;
        this.elements[i2] = element;
        if (i2 == this.tail) {
            doubleCapacity();
        }
    }

    public final void addLast(E element) {
        E[] eArr = this.elements;
        int i2 = this.tail;
        eArr[i2] = element;
        int i3 = this.capacityBitmask & (i2 + 1);
        this.tail = i3;
        if (i3 == this.head) {
            doubleCapacity();
        }
    }

    public final void clear() {
        removeFromStart(size());
    }

    public final E get(int index) {
        if (index < 0 || index >= size()) {
            CollectionPlatformUtils collectionPlatformUtils = CollectionPlatformUtils.INSTANCE;
            throw new ArrayIndexOutOfBoundsException();
        }
        E e2 = this.elements[this.capacityBitmask & (this.head + index)];
        j.b(e2);
        return e2;
    }

    public final E getFirst() {
        int i2 = this.head;
        if (i2 == this.tail) {
            CollectionPlatformUtils collectionPlatformUtils = CollectionPlatformUtils.INSTANCE;
            throw new ArrayIndexOutOfBoundsException();
        }
        E e2 = this.elements[i2];
        j.b(e2);
        return e2;
    }

    public final E getLast() {
        int i2 = this.head;
        int i3 = this.tail;
        if (i2 == i3) {
            CollectionPlatformUtils collectionPlatformUtils = CollectionPlatformUtils.INSTANCE;
            throw new ArrayIndexOutOfBoundsException();
        }
        E e2 = this.elements[(i3 - 1) & this.capacityBitmask];
        j.b(e2);
        return e2;
    }

    public final boolean isEmpty() {
        return this.head == this.tail;
    }

    public final E popFirst() {
        int i2 = this.head;
        if (i2 == this.tail) {
            CollectionPlatformUtils collectionPlatformUtils = CollectionPlatformUtils.INSTANCE;
            throw new ArrayIndexOutOfBoundsException();
        }
        E[] eArr = this.elements;
        E e2 = eArr[i2];
        eArr[i2] = null;
        this.head = (i2 + 1) & this.capacityBitmask;
        return e2;
    }

    public final E popLast() {
        int i2 = this.head;
        int i3 = this.tail;
        if (i2 == i3) {
            CollectionPlatformUtils collectionPlatformUtils = CollectionPlatformUtils.INSTANCE;
            throw new ArrayIndexOutOfBoundsException();
        }
        int i4 = this.capacityBitmask & (i3 - 1);
        E[] eArr = this.elements;
        E e2 = eArr[i4];
        eArr[i4] = null;
        this.tail = i4;
        return e2;
    }

    public final void removeFromEnd(int count) {
        if (count <= 0) {
            return;
        }
        if (count > size()) {
            CollectionPlatformUtils collectionPlatformUtils = CollectionPlatformUtils.INSTANCE;
            throw new ArrayIndexOutOfBoundsException();
        }
        int i2 = this.tail;
        int i3 = count < i2 ? i2 - count : 0;
        for (int i4 = i3; i4 < i2; i4++) {
            this.elements[i4] = null;
        }
        int i5 = this.tail;
        int i6 = i5 - i3;
        int i7 = count - i6;
        this.tail = i5 - i6;
        if (i7 > 0) {
            int length = this.elements.length;
            this.tail = length;
            int i8 = length - i7;
            for (int i9 = i8; i9 < length; i9++) {
                this.elements[i9] = null;
            }
            this.tail = i8;
        }
    }

    public final void removeFromStart(int count) {
        if (count <= 0) {
            return;
        }
        if (count > size()) {
            CollectionPlatformUtils collectionPlatformUtils = CollectionPlatformUtils.INSTANCE;
            throw new ArrayIndexOutOfBoundsException();
        }
        int length = this.elements.length;
        int i2 = this.head;
        if (count < length - i2) {
            length = i2 + count;
        }
        while (i2 < length) {
            this.elements[i2] = null;
            i2++;
        }
        int i3 = this.head;
        int i4 = length - i3;
        int i5 = count - i4;
        this.head = this.capacityBitmask & (i3 + i4);
        if (i5 > 0) {
            for (int i6 = 0; i6 < i5; i6++) {
                this.elements[i6] = null;
            }
            this.head = i5;
        }
    }

    public final int size() {
        return (this.tail - this.head) & this.capacityBitmask;
    }

    @JvmOverloads
    public CircularArray(int i2) {
        if (i2 < 1) {
            throw new IllegalArgumentException("capacity must be >= 1");
        }
        if (i2 > 1073741824) {
            throw new IllegalArgumentException("capacity must be <= 2^30");
        }
        i2 = Integer.bitCount(i2) != 1 ? Integer.highestOneBit(i2 - 1) << 1 : i2;
        this.capacityBitmask = i2 - 1;
        this.elements = (E[]) new Object[i2];
    }

    public /* synthetic */ CircularArray(int i2, int i3, f fVar) {
        this((i3 & 1) != 0 ? 8 : i2);
    }
}
