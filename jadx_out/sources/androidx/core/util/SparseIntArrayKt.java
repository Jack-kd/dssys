package androidx.core.util;

import android.util.SparseIntArray;
import com.anythink.core.common.f.f;
import kotlin.Metadata;
import kotlin.collections.B;
import kotlin.j;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a\u001c\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\n¢\u0006\u0004\b\u0004\u0010\u0005\u001a$\u0010\b\u001a\u00020\u0007*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0001H\u0086\n¢\u0006\u0004\b\b\u0010\t\u001a\u001c\u0010\u000b\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b\u000b\u0010\f\u001a\u001c\u0010\r\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\b¢\u0006\u0004\b\r\u0010\u0005\u001a\u001c\u0010\u000e\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0001H\u0086\b¢\u0006\u0004\b\u000e\u0010\u0005\u001a$\u0010\u0010\u001a\u00020\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0086\b¢\u0006\u0004\b\u0010\u0010\u0011\u001a*\u0010\u0013\u001a\u00020\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00010\u0012H\u0086\b¢\u0006\u0004\b\u0013\u0010\u0014\u001a\u0014\u0010\u0015\u001a\u00020\u0003*\u00020\u0000H\u0086\b¢\u0006\u0004\b\u0015\u0010\u0016\u001a\u0014\u0010\u0017\u001a\u00020\u0003*\u00020\u0000H\u0086\b¢\u0006\u0004\b\u0017\u0010\u0016\u001a!\u0010\u0018\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0001¢\u0006\u0004\b\u0018\u0010\u0019\u001a\u0019\u0010\u001a\u001a\u00020\u0007*\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000¢\u0006\u0004\b\u001a\u0010\u001b\u001aL\u0010 \u001a\u00020\u0007*\u00020\u000026\u0010\u001f\u001a2\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(\u0002\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u001cH\u0086\b¢\u0006\u0004\b \u0010!\u001a\u0011\u0010#\u001a\u00020\"*\u00020\u0000¢\u0006\u0004\b#\u0010$\u001a\u0011\u0010%\u001a\u00020\"*\u00020\u0000¢\u0006\u0004\b%\u0010$\"\u0016\u0010(\u001a\u00020\u0001*\u00020\u00008Æ\u0002¢\u0006\u0006\u001a\u0004\b&\u0010'¨\u0006)"}, d2 = {"Landroid/util/SparseIntArray;", "", f.a.f3242b, "", "contains", "(Landroid/util/SparseIntArray;I)Z", f.a.f3244d, "Lkotlin/j;", "set", "(Landroid/util/SparseIntArray;II)V", "other", "plus", "(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;", "containsKey", "containsValue", "defaultValue", "getOrDefault", "(Landroid/util/SparseIntArray;II)I", "Lkotlin/Function0;", "getOrElse", "(Landroid/util/SparseIntArray;ILkotlin/jvm/functions/Function0;)I", "isEmpty", "(Landroid/util/SparseIntArray;)Z", "isNotEmpty", "remove", "(Landroid/util/SparseIntArray;II)Z", "putAll", "(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", com.umeng.ccg.a.f49772z, "forEach", "(Landroid/util/SparseIntArray;Lkotlin/jvm/functions/Function2;)V", "Lkotlin/collections/B;", "keyIterator", "(Landroid/util/SparseIntArray;)Lkotlin/collections/B;", "valueIterator", "getSize", "(Landroid/util/SparseIntArray;)I", "size", "core-ktx"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSparseIntArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SparseIntArray.kt\nandroidx/core/util/SparseIntArrayKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,100:1\n76#1,4:102\n1#2:101\n*S KotlinDebug\n*F\n+ 1 SparseIntArray.kt\nandroidx/core/util/SparseIntArrayKt\n*L\n72#1:102,4\n*E\n"})
/* loaded from: classes.dex */
public final class SparseIntArrayKt {
    public static final boolean contains(@NotNull SparseIntArray sparseIntArray, int i2) {
        return sparseIntArray.indexOfKey(i2) >= 0;
    }

    public static final boolean containsKey(@NotNull SparseIntArray sparseIntArray, int i2) {
        return sparseIntArray.indexOfKey(i2) >= 0;
    }

    public static final boolean containsValue(@NotNull SparseIntArray sparseIntArray, int i2) {
        return sparseIntArray.indexOfValue(i2) >= 0;
    }

    public static final void forEach(@NotNull SparseIntArray sparseIntArray, @NotNull Function2<? super Integer, ? super Integer, j> function2) {
        int size = sparseIntArray.size();
        for (int i2 = 0; i2 < size; i2++) {
            function2.invoke(Integer.valueOf(sparseIntArray.keyAt(i2)), Integer.valueOf(sparseIntArray.valueAt(i2)));
        }
    }

    public static final int getOrDefault(@NotNull SparseIntArray sparseIntArray, int i2, int i3) {
        return sparseIntArray.get(i2, i3);
    }

    public static final int getOrElse(@NotNull SparseIntArray sparseIntArray, int i2, @NotNull Function0<Integer> function0) {
        int iIndexOfKey = sparseIntArray.indexOfKey(i2);
        return iIndexOfKey >= 0 ? sparseIntArray.valueAt(iIndexOfKey) : function0.invoke().intValue();
    }

    public static final int getSize(@NotNull SparseIntArray sparseIntArray) {
        return sparseIntArray.size();
    }

    public static final boolean isEmpty(@NotNull SparseIntArray sparseIntArray) {
        return sparseIntArray.size() == 0;
    }

    public static final boolean isNotEmpty(@NotNull SparseIntArray sparseIntArray) {
        return sparseIntArray.size() != 0;
    }

    @NotNull
    public static final B keyIterator(@NotNull final SparseIntArray sparseIntArray) {
        return new B() { // from class: androidx.core.util.SparseIntArrayKt.keyIterator.1
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.index < sparseIntArray.size();
            }

            @Override // kotlin.collections.B
            public int nextInt() {
                SparseIntArray sparseIntArray2 = sparseIntArray;
                int i2 = this.index;
                this.index = i2 + 1;
                return sparseIntArray2.keyAt(i2);
            }

            public final void setIndex(int i2) {
                this.index = i2;
            }
        };
    }

    @NotNull
    public static final SparseIntArray plus(@NotNull SparseIntArray sparseIntArray, @NotNull SparseIntArray sparseIntArray2) {
        SparseIntArray sparseIntArray3 = new SparseIntArray(sparseIntArray.size() + sparseIntArray2.size());
        putAll(sparseIntArray3, sparseIntArray);
        putAll(sparseIntArray3, sparseIntArray2);
        return sparseIntArray3;
    }

    public static final void putAll(@NotNull SparseIntArray sparseIntArray, @NotNull SparseIntArray sparseIntArray2) {
        int size = sparseIntArray2.size();
        for (int i2 = 0; i2 < size; i2++) {
            sparseIntArray.put(sparseIntArray2.keyAt(i2), sparseIntArray2.valueAt(i2));
        }
    }

    public static final boolean remove(@NotNull SparseIntArray sparseIntArray, int i2, int i3) {
        int iIndexOfKey = sparseIntArray.indexOfKey(i2);
        if (iIndexOfKey < 0 || i3 != sparseIntArray.valueAt(iIndexOfKey)) {
            return false;
        }
        sparseIntArray.removeAt(iIndexOfKey);
        return true;
    }

    public static final void set(@NotNull SparseIntArray sparseIntArray, int i2, int i3) {
        sparseIntArray.put(i2, i3);
    }

    @NotNull
    public static final B valueIterator(@NotNull final SparseIntArray sparseIntArray) {
        return new B() { // from class: androidx.core.util.SparseIntArrayKt.valueIterator.1
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.index < sparseIntArray.size();
            }

            @Override // kotlin.collections.B
            public int nextInt() {
                SparseIntArray sparseIntArray2 = sparseIntArray;
                int i2 = this.index;
                this.index = i2 + 1;
                return sparseIntArray2.valueAt(i2);
            }

            public final void setIndex(int i2) {
                this.index = i2;
            }
        };
    }
}
