package androidx.collection;

import B1.b;
import E1.d;
import E1.f;
import androidx.annotation.IntRange;
import androidx.exifinterface.media.ExifInterface;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.collections.l;
import kotlin.collections.m;
import kotlin.collections.q;
import kotlin.collections.y;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.e;
import kotlin.jvm.internal.j;
import kotlin.sequences.g;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0003IJKB\u0011\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00028\u0000¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\t\u001a\u00020\f2\b\b\u0001\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00028\u0000¢\u0006\u0004\b\t\u0010\rJ%\u0010\u0010\u001a\u00020\b2\b\b\u0001\u0010\u000b\u001a\u00020\u00032\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000e¢\u0006\u0004\b\u0010\u0010\u0011J%\u0010\u0010\u001a\u00020\b2\b\b\u0001\u0010\u000b\u001a\u00020\u00032\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0012¢\u0006\u0004\b\u0010\u0010\u0013J%\u0010\u0010\u001a\u00020\b2\b\b\u0001\u0010\u000b\u001a\u00020\u00032\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002¢\u0006\u0004\b\u0010\u0010\u0014J\u001b\u0010\u0010\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002¢\u0006\u0004\b\u0010\u0010\u0015J\u001b\u0010\u0010\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016¢\u0006\u0004\b\u0010\u0010\u0017J\u001b\u0010\u0010\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000e¢\u0006\u0004\b\u0010\u0010\u0018J\u001b\u0010\u0010\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0019¢\u0006\u0004\b\u0010\u0010\u001aJ\u001b\u0010\u0010\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u001b¢\u0006\u0004\b\u0010\u0010\u001cJ\u001b\u0010\u0010\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u001d¢\u0006\u0004\b\u0010\u0010\u001eJ\u001e\u0010\u001f\u001a\u00020\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0086\u0002¢\u0006\u0004\b\u001f\u0010 J\u001e\u0010\u001f\u001a\u00020\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016H\u0086\u0002¢\u0006\u0004\b\u001f\u0010!J\u001e\u0010\u001f\u001a\u00020\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000eH\u0086\u0002¢\u0006\u0004\b\u001f\u0010\"J\u001e\u0010\u001f\u001a\u00020\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0019H\u0086\u0002¢\u0006\u0004\b\u001f\u0010#J\u001e\u0010\u001f\u001a\u00020\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u001bH\u0086\u0002¢\u0006\u0004\b\u001f\u0010$J\u001e\u0010\u001f\u001a\u00020\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u001dH\u0086\u0002¢\u0006\u0004\b\u001f\u0010%J\r\u0010&\u001a\u00020\f¢\u0006\u0004\b&\u0010'J\u0017\u0010)\u001a\u00020\f2\b\b\u0002\u0010(\u001a\u00020\u0003¢\u0006\u0004\b)\u0010\u0006J\u0015\u0010+\u001a\u00020\f2\u0006\u0010*\u001a\u00020\u0003¢\u0006\u0004\b+\u0010\u0006J\u0018\u0010\u001f\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00028\u0000H\u0086\n¢\u0006\u0004\b\u001f\u0010,J\u0018\u0010-\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00028\u0000H\u0086\n¢\u0006\u0004\b-\u0010,J\u0015\u0010.\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00028\u0000¢\u0006\u0004\b.\u0010\nJ6\u00103\u001a\u00020\f2!\u00102\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b0\u0012\b\b1\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0/H\u0086\bø\u0001\u0000¢\u0006\u0004\b3\u00104J\u001b\u00105\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000e¢\u0006\u0004\b5\u0010\u0018J\u001b\u00105\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002¢\u0006\u0004\b5\u0010\u0015J\u001b\u00105\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016¢\u0006\u0004\b5\u0010\u0017J\u001b\u00105\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0019¢\u0006\u0004\b5\u0010\u001aJ\u001b\u00105\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u001b¢\u0006\u0004\b5\u0010\u001cJ\u001b\u00105\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u001d¢\u0006\u0004\b5\u0010\u001eJ\u001e\u0010-\u001a\u00020\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000eH\u0086\u0002¢\u0006\u0004\b-\u0010\"J\u001e\u0010-\u001a\u00020\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0086\u0002¢\u0006\u0004\b-\u0010 J\u001e\u0010-\u001a\u00020\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016H\u0086\u0002¢\u0006\u0004\b-\u0010!J\u001e\u0010-\u001a\u00020\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0019H\u0086\u0002¢\u0006\u0004\b-\u0010#J\u001e\u0010-\u001a\u00020\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u001bH\u0086\u0002¢\u0006\u0004\b-\u0010$J\u001e\u0010-\u001a\u00020\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u001dH\u0086\u0002¢\u0006\u0004\b-\u0010%J\u0017\u00106\u001a\u00028\u00002\b\b\u0001\u0010\u000b\u001a\u00020\u0003¢\u0006\u0004\b6\u00107J!\u0010:\u001a\u00020\f2\b\b\u0001\u00108\u001a\u00020\u00032\b\b\u0001\u00109\u001a\u00020\u0003¢\u0006\u0004\b:\u0010;J\u001b\u0010<\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000e¢\u0006\u0004\b<\u0010\u0018J\u001b\u0010<\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002¢\u0006\u0004\b<\u0010\u0015J\u001b\u0010<\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0012¢\u0006\u0004\b<\u0010=J\u001b\u0010<\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u001b¢\u0006\u0004\b<\u0010\u001cJ\u001b\u0010<\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u001d¢\u0006\u0004\b<\u0010\u001eJ\"\u0010>\u001a\u00028\u00002\b\b\u0001\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00028\u0000H\u0086\u0002¢\u0006\u0004\b>\u0010?J\u0015\u0010@\u001a\b\u0012\u0004\u0012\u00028\u00000\u0019H\u0016¢\u0006\u0004\b@\u0010AJ\u0013\u0010C\u001a\b\u0012\u0004\u0012\u00028\u00000B¢\u0006\u0004\bC\u0010AR\u001e\u0010E\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010FR\u0012\u0010*\u001a\u00020\u00038Æ\u0002¢\u0006\u0006\u001a\u0004\bG\u0010H\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006L"}, d2 = {"Landroidx/collection/MutableObjectList;", ExifInterface.LONGITUDE_EAST, "Landroidx/collection/ObjectList;", "", "initialCapacity", "<init>", "(I)V", "element", "", "add", "(Ljava/lang/Object;)Z", com.umeng.ccg.a.f49746H, "Lkotlin/j;", "(ILjava/lang/Object;)V", "", "elements", "addAll", "(I[Ljava/lang/Object;)Z", "", "(ILjava/util/Collection;)Z", "(ILandroidx/collection/ObjectList;)Z", "(Landroidx/collection/ObjectList;)Z", "Landroidx/collection/ScatterSet;", "(Landroidx/collection/ScatterSet;)Z", "([Ljava/lang/Object;)Z", "", "(Ljava/util/List;)Z", "", "(Ljava/lang/Iterable;)Z", "Lkotlin/sequences/g;", "(Lkotlin/sequences/g;)Z", "plusAssign", "(Landroidx/collection/ObjectList;)V", "(Landroidx/collection/ScatterSet;)V", "([Ljava/lang/Object;)V", "(Ljava/util/List;)V", "(Ljava/lang/Iterable;)V", "(Lkotlin/sequences/g;)V", "clear", "()V", "minCapacity", "trim", "capacity", "ensureCapacity", "(Ljava/lang/Object;)V", "minusAssign", "remove", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "predicate", "removeIf", "(Lkotlin/jvm/functions/Function1;)V", "removeAll", "removeAt", "(I)Ljava/lang/Object;", "start", "end", "removeRange", "(II)V", "retainAll", "(Ljava/util/Collection;)Z", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "asList", "()Ljava/util/List;", "", "asMutableList", "Landroidx/collection/MutableObjectList$ObjectListMutableList;", "list", "Landroidx/collection/MutableObjectList$ObjectListMutableList;", "getCapacity", "()I", "MutableObjectListIterator", "ObjectListMutableList", "SubList", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nObjectList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectList.kt\nandroidx/collection/MutableObjectList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 4 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 5 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 6 ObjectList.kt\nandroidx/collection/ObjectList\n+ 7 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1618:1\n948#1,2:1641\n948#1,2:1652\n948#1,2:1656\n652#1:1659\n955#1,2:1662\n955#1,2:1669\n955#1,2:1691\n955#1,2:1701\n955#1,2:1704\n955#1,2:1708\n1864#2,3:1619\n1855#2:1651\n1856#2:1654\n1855#2:1703\n1856#2:1706\n267#3,4:1622\n237#3,7:1626\n248#3,3:1634\n251#3,2:1638\n272#3:1640\n273#3:1643\n254#3,6:1644\n274#3:1650\n267#3,4:1672\n237#3,7:1676\n248#3,3:1684\n251#3,2:1688\n272#3:1690\n273#3:1693\n254#3,6:1694\n274#3:1700\n1826#4:1633\n1688#4:1637\n1826#4:1683\n1688#4:1687\n1295#5:1655\n1296#5:1658\n1295#5:1707\n1296#5:1710\n80#6:1660\n305#6,4:1665\n310#6:1671\n75#6:1711\n75#6:1712\n75#6:1713\n75#6:1714\n75#6:1715\n75#6:1716\n75#6:1717\n75#6:1718\n13579#7:1661\n13580#7:1664\n*S KotlinDebug\n*F\n+ 1 ObjectList.kt\nandroidx/collection/MutableObjectList\n*L\n864#1:1641,2\n898#1:1652,2\n907#1:1656,2\n927#1:1659\n1050#1:1662,2\n1059#1:1669,2\n1068#1:1691,2\n1077#1:1701,2\n1086#1:1704,2\n1095#1:1708,2\n740#1:1619,3\n897#1:1651\n897#1:1654\n1085#1:1703\n1085#1:1706\n863#1:1622,4\n863#1:1626,7\n863#1:1634,3\n863#1:1638,2\n863#1:1640\n863#1:1643\n863#1:1644,6\n863#1:1650\n1067#1:1672,4\n1067#1:1676,7\n1067#1:1684,3\n1067#1:1688,2\n1067#1:1690\n1067#1:1693\n1067#1:1694,6\n1067#1:1700\n863#1:1633\n863#1:1637\n1067#1:1683\n1067#1:1687\n906#1:1655\n906#1:1658\n1094#1:1707\n1094#1:1710\n979#1:1660\n1058#1:1665,4\n1058#1:1671\n1105#1:1711\n1109#1:1712\n1159#1:1713\n1175#1:1714\n1191#1:1715\n1207#1:1716\n1223#1:1717\n1242#1:1718\n1049#1:1661\n1049#1:1664\n*E\n"})
/* loaded from: classes.dex */
public final class MutableObjectList<E> extends ObjectList<E> {

    @Nullable
    private ObjectListMutableList<E> list;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010+\n\u0002\u0010!\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u0002B\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tH\u0096\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00028\u0001H\u0096\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0011\u0010\u000bJ\u000f\u0010\u0012\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u0014\u0010\rJ\u000f\u0010\u0015\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0015\u0010\u0013J\u0017\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u0019\u0010\u0018R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u001aR\u0016\u0010\u001b\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006\u001d"}, d2 = {"Landroidx/collection/MutableObjectList$MutableObjectListIterator;", ExifInterface.GPS_DIRECTION_TRUE, "", "", "list", "", com.umeng.ccg.a.f49746H, "<init>", "(Ljava/util/List;I)V", "", "hasNext", "()Z", "next", "()Ljava/lang/Object;", "Lkotlin/j;", "remove", "()V", "hasPrevious", "nextIndex", "()I", "previous", "previousIndex", "element", "add", "(Ljava/lang/Object;)V", "set", "Ljava/util/List;", "prevIndex", "I", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class MutableObjectListIterator<T> implements ListIterator<T>, B1.a {

        @NotNull
        private final List<T> list;
        private int prevIndex;

        public MutableObjectListIterator(@NotNull List<T> list, int i2) {
            j.e(list, "list");
            this.list = list;
            this.prevIndex = i2 - 1;
        }

        @Override // java.util.ListIterator
        public void add(T element) {
            List<T> list = this.list;
            int i2 = this.prevIndex + 1;
            this.prevIndex = i2;
            list.add(i2, element);
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.prevIndex < this.list.size() - 1;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.prevIndex >= 0;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public T next() {
            List<T> list = this.list;
            int i2 = this.prevIndex + 1;
            this.prevIndex = i2;
            return list.get(i2);
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.prevIndex + 1;
        }

        @Override // java.util.ListIterator
        public T previous() {
            List<T> list = this.list;
            int i2 = this.prevIndex;
            this.prevIndex = i2 - 1;
            return list.get(i2);
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.prevIndex;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            this.list.remove(this.prevIndex);
            this.prevIndex--;
        }

        @Override // java.util.ListIterator
        public void set(T element) {
            this.list.set(this.prevIndex, element);
        }
    }

    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010)\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010+\n\u0002\b\u0012\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u0002B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00028\u0001H\u0096\u0002¢\u0006\u0004\b\t\u0010\nJ\u001d\u0010\r\u001a\u00020\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00010\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0018\u0010\u0011\u001a\u00028\u00012\u0006\u0010\u0010\u001a\u00020\u000fH\u0096\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0016\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00010\u0017H\u0096\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u001a\u0010\u0014J\u0017\u0010\u001b\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u001b\u0010\nJ\u001f\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u001b\u0010\u001dJ%\u0010\u001e\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000f2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00010\u000bH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u001d\u0010\u001e\u001a\u00020\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00010\u000bH\u0016¢\u0006\u0004\b\u001e\u0010\u000eJ\u000f\u0010 \u001a\u00020\u001cH\u0016¢\u0006\u0004\b \u0010!J\u0015\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00010\"H\u0016¢\u0006\u0004\b#\u0010$J\u001d\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00010\"2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b#\u0010%J\u0017\u0010&\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00028\u0001H\u0016¢\u0006\u0004\b&\u0010\nJ\u001d\u0010'\u001a\u00020\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00010\u000bH\u0016¢\u0006\u0004\b'\u0010\u000eJ\u0017\u0010(\u001a\u00028\u00012\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b(\u0010\u0012J\u001d\u0010)\u001a\u00020\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00010\u000bH\u0016¢\u0006\u0004\b)\u0010\u000eJ \u0010*\u001a\u00028\u00012\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00028\u0001H\u0096\u0002¢\u0006\u0004\b*\u0010+J%\u0010.\u001a\b\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010,\u001a\u00020\u000f2\u0006\u0010-\u001a\u00020\u000fH\u0016¢\u0006\u0004\b.\u0010/R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u00100R\u0014\u00103\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b1\u00102¨\u00064"}, d2 = {"Landroidx/collection/MutableObjectList$ObjectListMutableList;", ExifInterface.GPS_DIRECTION_TRUE, "", "Landroidx/collection/MutableObjectList;", "objectList", "<init>", "(Landroidx/collection/MutableObjectList;)V", "element", "", "contains", "(Ljava/lang/Object;)Z", "", "elements", "containsAll", "(Ljava/util/Collection;)Z", "", com.umeng.ccg.a.f49746H, "get", "(I)Ljava/lang/Object;", "indexOf", "(Ljava/lang/Object;)I", "isEmpty", "()Z", "", "iterator", "()Ljava/util/Iterator;", "lastIndexOf", "add", "Lkotlin/j;", "(ILjava/lang/Object;)V", "addAll", "(ILjava/util/Collection;)Z", "clear", "()V", "", "listIterator", "()Ljava/util/ListIterator;", "(I)Ljava/util/ListIterator;", "remove", "removeAll", "removeAt", "retainAll", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "fromIndex", "toIndex", "subList", "(II)Ljava/util/List;", "Landroidx/collection/MutableObjectList;", "getSize", "()I", "size", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class ObjectListMutableList<T> implements List<T>, b {

        @NotNull
        private final MutableObjectList<T> objectList;

        public ObjectListMutableList(@NotNull MutableObjectList<T> objectList) {
            j.e(objectList, "objectList");
            this.objectList = objectList;
        }

        @Override // java.util.List, java.util.Collection
        public boolean add(T element) {
            return this.objectList.add(element);
        }

        @Override // java.util.List
        public boolean addAll(int index, @NotNull Collection<? extends T> elements) {
            j.e(elements, "elements");
            return this.objectList.addAll(index, elements);
        }

        @Override // java.util.List, java.util.Collection
        public void clear() {
            this.objectList.clear();
        }

        @Override // java.util.List, java.util.Collection
        public boolean contains(Object element) {
            return this.objectList.contains(element);
        }

        @Override // java.util.List, java.util.Collection
        public boolean containsAll(@NotNull Collection<? extends Object> elements) {
            j.e(elements, "elements");
            return this.objectList.containsAll(elements);
        }

        @Override // java.util.List
        public T get(int index) {
            ObjectListKt.checkIndex(this, index);
            return this.objectList.get(index);
        }

        public int getSize() {
            return this.objectList.getSize();
        }

        @Override // java.util.List
        public int indexOf(Object element) {
            return this.objectList.indexOf(element);
        }

        @Override // java.util.List, java.util.Collection
        public boolean isEmpty() {
            return this.objectList.isEmpty();
        }

        @Override // java.util.List, java.util.Collection, java.lang.Iterable
        @NotNull
        public Iterator<T> iterator() {
            return new MutableObjectListIterator(this, 0);
        }

        @Override // java.util.List
        public int lastIndexOf(Object element) {
            return this.objectList.lastIndexOf(element);
        }

        @Override // java.util.List
        @NotNull
        public ListIterator<T> listIterator() {
            return new MutableObjectListIterator(this, 0);
        }

        @Override // java.util.List
        public final /* bridge */ T remove(int i2) {
            return removeAt(i2);
        }

        @Override // java.util.List, java.util.Collection
        public boolean removeAll(@NotNull Collection<? extends Object> elements) {
            j.e(elements, "elements");
            return this.objectList.removeAll(elements);
        }

        public T removeAt(int index) {
            ObjectListKt.checkIndex(this, index);
            return this.objectList.removeAt(index);
        }

        @Override // java.util.List, java.util.Collection
        public boolean retainAll(@NotNull Collection<? extends Object> elements) {
            j.e(elements, "elements");
            return this.objectList.retainAll((Collection<? extends T>) elements);
        }

        @Override // java.util.List
        public T set(int index, T element) {
            ObjectListKt.checkIndex(this, index);
            return this.objectList.set(index, element);
        }

        @Override // java.util.List, java.util.Collection
        public final /* bridge */ int size() {
            return getSize();
        }

        @Override // java.util.List
        @NotNull
        public List<T> subList(int fromIndex, int toIndex) {
            ObjectListKt.checkSubIndex(this, fromIndex, toIndex);
            return new SubList(this, fromIndex, toIndex);
        }

        @Override // java.util.List, java.util.Collection
        public Object[] toArray() {
            return e.a(this);
        }

        @Override // java.util.List
        public void add(int index, T element) {
            this.objectList.add(index, element);
        }

        @Override // java.util.List, java.util.Collection
        public boolean addAll(@NotNull Collection<? extends T> elements) {
            j.e(elements, "elements");
            return this.objectList.addAll(elements);
        }

        @Override // java.util.List
        @NotNull
        public ListIterator<T> listIterator(int index) {
            return new MutableObjectListIterator(this, index);
        }

        @Override // java.util.List, java.util.Collection
        public boolean remove(Object element) {
            return this.objectList.remove(element);
        }

        @Override // java.util.List, java.util.Collection
        public <T> T[] toArray(T[] array) {
            j.e(array, "array");
            return (T[]) e.b(this, array);
        }
    }

    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\n\n\u0002\u0010)\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010+\n\u0002\b\u0013\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u0002B%\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00028\u0001H\u0096\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u001d\u0010\u000f\u001a\u00020\n2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0018\u0010\u0012\u001a\u00028\u00012\u0006\u0010\u0011\u001a\u00020\u0004H\u0096\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\u00042\u0006\u0010\t\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0016\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00010\u0018H\u0096\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u001b\u0010\u0015J\u0017\u0010\u001c\u001a\u00020\n2\u0006\u0010\t\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u001c\u0010\fJ\u001f\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\t\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u001c\u0010\u001eJ%\u0010\u001f\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00042\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\rH\u0016¢\u0006\u0004\b\u001f\u0010 J\u001d\u0010\u001f\u001a\u00020\n2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\rH\u0016¢\u0006\u0004\b\u001f\u0010\u0010J\u000f\u0010!\u001a\u00020\u001dH\u0016¢\u0006\u0004\b!\u0010\"J\u0015\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00010#H\u0016¢\u0006\u0004\b$\u0010%J\u001d\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00010#2\u0006\u0010\u0011\u001a\u00020\u0004H\u0016¢\u0006\u0004\b$\u0010&J\u0017\u0010'\u001a\u00020\n2\u0006\u0010\t\u001a\u00028\u0001H\u0016¢\u0006\u0004\b'\u0010\fJ\u001d\u0010(\u001a\u00020\n2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\rH\u0016¢\u0006\u0004\b(\u0010\u0010J\u0017\u0010)\u001a\u00028\u00012\u0006\u0010\u0011\u001a\u00020\u0004H\u0016¢\u0006\u0004\b)\u0010\u0013J\u001d\u0010*\u001a\u00020\n2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\rH\u0016¢\u0006\u0004\b*\u0010\u0010J \u0010+\u001a\u00028\u00012\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\t\u001a\u00028\u0001H\u0096\u0002¢\u0006\u0004\b+\u0010,J%\u0010/\u001a\b\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010-\u001a\u00020\u00042\u0006\u0010.\u001a\u00020\u0004H\u0016¢\u0006\u0004\b/\u00100R\u001a\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u00101R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u00102R\u0016\u0010\u0006\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u00102R\u0014\u00105\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b3\u00104¨\u00066"}, d2 = {"Landroidx/collection/MutableObjectList$SubList;", ExifInterface.GPS_DIRECTION_TRUE, "", "list", "", "start", "end", "<init>", "(Ljava/util/List;II)V", "element", "", "contains", "(Ljava/lang/Object;)Z", "", "elements", "containsAll", "(Ljava/util/Collection;)Z", com.umeng.ccg.a.f49746H, "get", "(I)Ljava/lang/Object;", "indexOf", "(Ljava/lang/Object;)I", "isEmpty", "()Z", "", "iterator", "()Ljava/util/Iterator;", "lastIndexOf", "add", "Lkotlin/j;", "(ILjava/lang/Object;)V", "addAll", "(ILjava/util/Collection;)Z", "clear", "()V", "", "listIterator", "()Ljava/util/ListIterator;", "(I)Ljava/util/ListIterator;", "remove", "removeAll", "removeAt", "retainAll", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "fromIndex", "toIndex", "subList", "(II)Ljava/util/List;", "Ljava/util/List;", "I", "getSize", "()I", "size", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nObjectList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectList.kt\nandroidx/collection/MutableObjectList$SubList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1618:1\n1855#2,2:1619\n1855#2,2:1621\n*S KotlinDebug\n*F\n+ 1 ObjectList.kt\nandroidx/collection/MutableObjectList$SubList\n*L\n1395#1:1619,2\n1477#1:1621,2\n*E\n"})
    public static final class SubList<T> implements List<T>, b {
        private int end;

        @NotNull
        private final List<T> list;
        private final int start;

        public SubList(@NotNull List<T> list, int i2, int i3) {
            j.e(list, "list");
            this.list = list;
            this.start = i2;
            this.end = i3;
        }

        @Override // java.util.List, java.util.Collection
        public boolean add(T element) {
            List<T> list = this.list;
            int i2 = this.end;
            this.end = i2 + 1;
            list.add(i2, element);
            return true;
        }

        @Override // java.util.List
        public boolean addAll(int index, @NotNull Collection<? extends T> elements) {
            j.e(elements, "elements");
            this.list.addAll(index + this.start, elements);
            this.end += elements.size();
            return elements.size() > 0;
        }

        @Override // java.util.List, java.util.Collection
        public void clear() {
            int i2 = this.end - 1;
            int i3 = this.start;
            if (i3 <= i2) {
                while (true) {
                    this.list.remove(i2);
                    if (i2 == i3) {
                        break;
                    } else {
                        i2--;
                    }
                }
            }
            this.end = this.start;
        }

        @Override // java.util.List, java.util.Collection
        public boolean contains(Object element) {
            int i2 = this.end;
            for (int i3 = this.start; i3 < i2; i3++) {
                if (j.a(this.list.get(i3), element)) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.List, java.util.Collection
        public boolean containsAll(@NotNull Collection<? extends Object> elements) {
            j.e(elements, "elements");
            Iterator<T> it = elements.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.List
        public T get(int index) {
            ObjectListKt.checkIndex(this, index);
            return this.list.get(index + this.start);
        }

        public int getSize() {
            return this.end - this.start;
        }

        @Override // java.util.List
        public int indexOf(Object element) {
            int i2 = this.end;
            for (int i3 = this.start; i3 < i2; i3++) {
                if (j.a(this.list.get(i3), element)) {
                    return i3 - this.start;
                }
            }
            return -1;
        }

        @Override // java.util.List, java.util.Collection
        public boolean isEmpty() {
            return this.end == this.start;
        }

        @Override // java.util.List, java.util.Collection, java.lang.Iterable
        @NotNull
        public Iterator<T> iterator() {
            return new MutableObjectListIterator(this, 0);
        }

        @Override // java.util.List
        public int lastIndexOf(Object element) {
            int i2 = this.end - 1;
            int i3 = this.start;
            if (i3 > i2) {
                return -1;
            }
            while (!j.a(this.list.get(i2), element)) {
                if (i2 == i3) {
                    return -1;
                }
                i2--;
            }
            return i2 - this.start;
        }

        @Override // java.util.List
        @NotNull
        public ListIterator<T> listIterator() {
            return new MutableObjectListIterator(this, 0);
        }

        @Override // java.util.List
        public final /* bridge */ T remove(int i2) {
            return removeAt(i2);
        }

        @Override // java.util.List, java.util.Collection
        public boolean removeAll(@NotNull Collection<? extends Object> elements) {
            j.e(elements, "elements");
            int i2 = this.end;
            Iterator<T> it = elements.iterator();
            while (it.hasNext()) {
                remove(it.next());
            }
            return i2 != this.end;
        }

        public T removeAt(int index) {
            ObjectListKt.checkIndex(this, index);
            this.end--;
            return this.list.remove(index + this.start);
        }

        @Override // java.util.List, java.util.Collection
        public boolean retainAll(@NotNull Collection<? extends Object> elements) {
            j.e(elements, "elements");
            int i2 = this.end;
            int i3 = i2 - 1;
            int i4 = this.start;
            if (i4 <= i3) {
                while (true) {
                    if (!elements.contains(this.list.get(i3))) {
                        this.list.remove(i3);
                        this.end--;
                    }
                    if (i3 == i4) {
                        break;
                    }
                    i3--;
                }
            }
            return i2 != this.end;
        }

        @Override // java.util.List
        public T set(int index, T element) {
            ObjectListKt.checkIndex(this, index);
            return this.list.set(index + this.start, element);
        }

        @Override // java.util.List, java.util.Collection
        public final /* bridge */ int size() {
            return getSize();
        }

        @Override // java.util.List
        @NotNull
        public List<T> subList(int fromIndex, int toIndex) {
            ObjectListKt.checkSubIndex(this, fromIndex, toIndex);
            return new SubList(this, fromIndex, toIndex);
        }

        @Override // java.util.List, java.util.Collection
        public Object[] toArray() {
            return e.a(this);
        }

        @Override // java.util.List
        public void add(int index, T element) {
            this.list.add(index + this.start, element);
            this.end++;
        }

        @Override // java.util.List
        @NotNull
        public ListIterator<T> listIterator(int index) {
            return new MutableObjectListIterator(this, index);
        }

        @Override // java.util.List, java.util.Collection
        public boolean remove(Object element) {
            int i2 = this.end;
            for (int i3 = this.start; i3 < i2; i3++) {
                if (j.a(this.list.get(i3), element)) {
                    this.list.remove(i3);
                    this.end--;
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.List, java.util.Collection
        public <T> T[] toArray(T[] array) {
            j.e(array, "array");
            return (T[]) e.b(this, array);
        }

        @Override // java.util.List, java.util.Collection
        public boolean addAll(@NotNull Collection<? extends T> elements) {
            j.e(elements, "elements");
            this.list.addAll(this.end, elements);
            this.end += elements.size();
            return elements.size() > 0;
        }
    }

    public MutableObjectList() {
        this(0, 1, null);
    }

    public static /* synthetic */ void trim$default(MutableObjectList mutableObjectList, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i2 = mutableObjectList._size;
        }
        mutableObjectList.trim(i2);
    }

    public final boolean add(E element) {
        ensureCapacity(this._size + 1);
        Object[] objArr = this.content;
        int i2 = this._size;
        objArr[i2] = element;
        this._size = i2 + 1;
        return true;
    }

    public final boolean addAll(@IntRange(from = 0) int index, @NotNull E[] elements) {
        int i2;
        j.e(elements, "elements");
        if (index < 0 || index > (i2 = this._size)) {
            throw new IndexOutOfBoundsException("Index " + index + " must be in 0.." + this._size);
        }
        if (elements.length == 0) {
            return false;
        }
        ensureCapacity(i2 + elements.length);
        Object[] objArr = this.content;
        int i3 = this._size;
        if (index != i3) {
            l.h(objArr, objArr, elements.length + index, index, i3);
        }
        l.m(elements, objArr, index, 0, 0, 12, null);
        this._size += elements.length;
        return true;
    }

    @Override // androidx.collection.ObjectList
    @NotNull
    public List<E> asList() {
        return asMutableList();
    }

    @NotNull
    public final List<E> asMutableList() {
        ObjectListMutableList<E> objectListMutableList = this.list;
        if (objectListMutableList != null) {
            return objectListMutableList;
        }
        ObjectListMutableList<E> objectListMutableList2 = new ObjectListMutableList<>(this);
        this.list = objectListMutableList2;
        return objectListMutableList2;
    }

    public final void clear() {
        l.r(this.content, null, 0, this._size);
        this._size = 0;
    }

    public final void ensureCapacity(int capacity) {
        Object[] objArr = this.content;
        if (objArr.length < capacity) {
            Object[] objArrCopyOf = Arrays.copyOf(objArr, Math.max(capacity, (objArr.length * 3) / 2));
            j.d(objArrCopyOf, "copyOf(this, newSize)");
            this.content = objArrCopyOf;
        }
    }

    public final int getCapacity() {
        return this.content.length;
    }

    public final void minusAssign(E element) {
        remove(element);
    }

    public final void plusAssign(@NotNull ObjectList<E> elements) {
        j.e(elements, "elements");
        if (elements.isEmpty()) {
            return;
        }
        ensureCapacity(this._size + elements._size);
        l.h(elements.content, this.content, this._size, 0, elements._size);
        this._size += elements._size;
    }

    public final boolean remove(E element) {
        int iIndexOf = indexOf(element);
        if (iIndexOf < 0) {
            return false;
        }
        removeAt(iIndexOf);
        return true;
    }

    public final boolean removeAll(@NotNull E[] elements) {
        j.e(elements, "elements");
        int i2 = this._size;
        for (E e2 : elements) {
            remove(e2);
        }
        return i2 != this._size;
    }

    public final E removeAt(@IntRange(from = 0) int index) {
        int i2;
        if (index < 0 || index >= (i2 = this._size)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Index ");
            sb.append(index);
            sb.append(" must be in 0..");
            sb.append(this._size - 1);
            throw new IndexOutOfBoundsException(sb.toString());
        }
        Object[] objArr = this.content;
        E e2 = (E) objArr[index];
        if (index != i2 - 1) {
            l.h(objArr, objArr, index, index + 1, i2);
        }
        int i3 = this._size - 1;
        this._size = i3;
        objArr[i3] = null;
        return e2;
    }

    public final void removeIf(@NotNull Function1<? super E, Boolean> predicate) {
        j.e(predicate, "predicate");
        int i2 = this._size;
        Object[] objArr = this.content;
        int i3 = 0;
        d dVarJ = f.j(0, i2);
        int iA = dVarJ.a();
        int iB = dVarJ.b();
        if (iA <= iB) {
            while (true) {
                objArr[iA - i3] = objArr[iA];
                if (predicate.invoke(objArr[iA]).booleanValue()) {
                    i3++;
                }
                if (iA == iB) {
                    break;
                } else {
                    iA++;
                }
            }
        }
        l.r(objArr, null, i2 - i3, i2);
        this._size -= i3;
    }

    public final void removeRange(@IntRange(from = 0) int start, @IntRange(from = 0) int end) {
        int i2;
        if (start < 0 || start > (i2 = this._size) || end < 0 || end > i2) {
            throw new IndexOutOfBoundsException("Start (" + start + ") and end (" + end + ") must be in 0.." + this._size);
        }
        if (end < start) {
            throw new IllegalArgumentException("Start (" + start + ") is more than end (" + end + ')');
        }
        if (end != start) {
            if (end < i2) {
                Object[] objArr = this.content;
                l.h(objArr, objArr, start, end, i2);
            }
            int i3 = this._size;
            int i4 = i3 - (end - start);
            l.r(this.content, null, i4, i3);
            this._size = i4;
        }
    }

    public final boolean retainAll(@NotNull E[] elements) {
        j.e(elements, "elements");
        int i2 = this._size;
        Object[] objArr = this.content;
        for (int i3 = i2 - 1; -1 < i3; i3--) {
            if (m.I(elements, objArr[i3]) < 0) {
                removeAt(i3);
            }
        }
        return i2 != this._size;
    }

    public final E set(@IntRange(from = 0) int index, E element) {
        if (index >= 0 && index < this._size) {
            Object[] objArr = this.content;
            E e2 = (E) objArr[index];
            objArr[index] = element;
            return e2;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("set index ");
        sb.append(index);
        sb.append(" must be between 0 .. ");
        sb.append(this._size - 1);
        throw new IndexOutOfBoundsException(sb.toString());
    }

    public final void trim(int minCapacity) {
        int iMax = Math.max(minCapacity, this._size);
        Object[] objArr = this.content;
        if (objArr.length > iMax) {
            Object[] objArrCopyOf = Arrays.copyOf(objArr, iMax);
            j.d(objArrCopyOf, "copyOf(this, newSize)");
            this.content = objArrCopyOf;
        }
    }

    public /* synthetic */ MutableObjectList(int i2, int i3, kotlin.jvm.internal.f fVar) {
        this((i3 & 1) != 0 ? 16 : i2);
    }

    public final void minusAssign(@NotNull List<? extends E> elements) {
        j.e(elements, "elements");
        int size = elements.size();
        for (int i2 = 0; i2 < size; i2++) {
            remove(elements.get(i2));
        }
    }

    public MutableObjectList(int i2) {
        super(i2, null);
    }

    public final void add(@IntRange(from = 0) int index, E element) {
        int i2;
        if (index >= 0 && index <= (i2 = this._size)) {
            ensureCapacity(i2 + 1);
            Object[] objArr = this.content;
            int i3 = this._size;
            if (index != i3) {
                l.h(objArr, objArr, index + 1, index, i3);
            }
            objArr[index] = element;
            this._size++;
            return;
        }
        throw new IndexOutOfBoundsException("Index " + index + " must be in 0.." + this._size);
    }

    public final void minusAssign(@NotNull E[] elements) {
        j.e(elements, "elements");
        for (E e2 : elements) {
            remove(e2);
        }
    }

    public final boolean removeAll(@NotNull ObjectList<E> elements) {
        j.e(elements, "elements");
        int i2 = this._size;
        minusAssign((ObjectList) elements);
        return i2 != this._size;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void minusAssign(@NotNull ObjectList<E> elements) {
        j.e(elements, "elements");
        Object[] objArr = elements.content;
        int i2 = elements._size;
        for (int i3 = 0; i3 < i2; i3++) {
            remove(objArr[i3]);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean retainAll(@NotNull ObjectList<E> elements) {
        j.e(elements, "elements");
        int i2 = this._size;
        Object[] objArr = this.content;
        for (int i3 = i2 - 1; -1 < i3; i3--) {
            if (!elements.contains(objArr[i3])) {
                removeAt(i3);
            }
        }
        return i2 != this._size;
    }

    public final boolean removeAll(@NotNull ScatterSet<E> elements) {
        j.e(elements, "elements");
        int i2 = this._size;
        minusAssign((ScatterSet) elements);
        return i2 != this._size;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void plusAssign(@NotNull ScatterSet<E> elements) {
        j.e(elements, "elements");
        if (elements.isEmpty()) {
            return;
        }
        ensureCapacity(this._size + elements.get_size());
        Object[] objArr = elements.elements;
        long[] jArr = elements.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i2 = 0;
        while (true) {
            long j2 = jArr[i2];
            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i3 = 8 - ((~(i2 - length)) >>> 31);
                for (int i4 = 0; i4 < i3; i4++) {
                    if ((255 & j2) < 128) {
                        add(objArr[(i2 << 3) + i4]);
                    }
                    j2 >>= 8;
                }
                if (i3 != 8) {
                    return;
                }
            }
            if (i2 == length) {
                return;
            } else {
                i2++;
            }
        }
    }

    public final boolean addAll(@IntRange(from = 0) int index, @NotNull Collection<? extends E> elements) {
        j.e(elements, "elements");
        if (index >= 0 && index <= this._size) {
            int i2 = 0;
            if (elements.isEmpty()) {
                return false;
            }
            ensureCapacity(this._size + elements.size());
            Object[] objArr = this.content;
            if (index != this._size) {
                l.h(objArr, objArr, elements.size() + index, index, this._size);
            }
            for (Object obj : elements) {
                int i3 = i2 + 1;
                if (i2 < 0) {
                    q.u();
                }
                objArr[i2 + index] = obj;
                i2 = i3;
            }
            this._size += elements.size();
            return true;
        }
        throw new IndexOutOfBoundsException("Index " + index + " must be in 0.." + this._size);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void minusAssign(@NotNull ScatterSet<E> elements) {
        j.e(elements, "elements");
        Object[] objArr = elements.elements;
        long[] jArr = elements.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i2 = 0;
        while (true) {
            long j2 = jArr[i2];
            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i3 = 8 - ((~(i2 - length)) >>> 31);
                for (int i4 = 0; i4 < i3; i4++) {
                    if ((255 & j2) < 128) {
                        remove(objArr[(i2 << 3) + i4]);
                    }
                    j2 >>= 8;
                }
                if (i3 != 8) {
                    return;
                }
            }
            if (i2 == length) {
                return;
            } else {
                i2++;
            }
        }
    }

    public final boolean removeAll(@NotNull List<? extends E> elements) {
        j.e(elements, "elements");
        int i2 = this._size;
        minusAssign((List) elements);
        return i2 != this._size;
    }

    public final boolean retainAll(@NotNull Collection<? extends E> elements) {
        j.e(elements, "elements");
        int i2 = this._size;
        Object[] objArr = this.content;
        for (int i3 = i2 - 1; -1 < i3; i3--) {
            if (!elements.contains(objArr[i3])) {
                removeAt(i3);
            }
        }
        return i2 != this._size;
    }

    public final boolean removeAll(@NotNull Iterable<? extends E> elements) {
        j.e(elements, "elements");
        int i2 = this._size;
        minusAssign((Iterable) elements);
        return i2 != this._size;
    }

    public final void minusAssign(@NotNull Iterable<? extends E> elements) {
        j.e(elements, "elements");
        Iterator<? extends E> it = elements.iterator();
        while (it.hasNext()) {
            remove(it.next());
        }
    }

    public final void plusAssign(@NotNull E[] elements) {
        j.e(elements, "elements");
        if (elements.length == 0) {
            return;
        }
        ensureCapacity(this._size + elements.length);
        l.m(elements, this.content, this._size, 0, 0, 12, null);
        this._size += elements.length;
    }

    public final boolean removeAll(@NotNull g elements) {
        j.e(elements, "elements");
        int i2 = this._size;
        minusAssign(elements);
        return i2 != this._size;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void minusAssign(@NotNull g elements) {
        j.e(elements, "elements");
        Iterator it = elements.iterator();
        while (it.hasNext()) {
            remove(it.next());
        }
    }

    public final boolean retainAll(@NotNull Iterable<? extends E> elements) {
        j.e(elements, "elements");
        int i2 = this._size;
        Object[] objArr = this.content;
        for (int i3 = i2 - 1; -1 < i3; i3--) {
            if (!y.G(elements, objArr[i3])) {
                removeAt(i3);
            }
        }
        return i2 != this._size;
    }

    public final void plusAssign(@NotNull List<? extends E> elements) {
        j.e(elements, "elements");
        if (elements.isEmpty()) {
            return;
        }
        int i2 = this._size;
        ensureCapacity(elements.size() + i2);
        Object[] objArr = this.content;
        int size = elements.size();
        for (int i3 = 0; i3 < size; i3++) {
            objArr[i3 + i2] = elements.get(i3);
        }
        this._size += elements.size();
    }

    public final boolean addAll(@IntRange(from = 0) int index, @NotNull ObjectList<E> elements) {
        j.e(elements, "elements");
        if (index >= 0 && index <= this._size) {
            if (elements.isEmpty()) {
                return false;
            }
            ensureCapacity(this._size + elements._size);
            Object[] objArr = this.content;
            int i2 = this._size;
            if (index != i2) {
                l.h(objArr, objArr, elements._size + index, index, i2);
            }
            l.h(elements.content, objArr, index, 0, elements._size);
            this._size += elements._size;
            return true;
        }
        throw new IndexOutOfBoundsException("Index " + index + " must be in 0.." + this._size);
    }

    public final boolean retainAll(@NotNull g elements) {
        j.e(elements, "elements");
        int i2 = this._size;
        Object[] objArr = this.content;
        for (int i3 = i2 - 1; -1 < i3; i3--) {
            if (!kotlin.sequences.q.n(elements, objArr[i3])) {
                removeAt(i3);
            }
        }
        return i2 != this._size;
    }

    public final void plusAssign(E element) {
        add(element);
    }

    public final void plusAssign(@NotNull Iterable<? extends E> elements) {
        j.e(elements, "elements");
        Iterator<? extends E> it = elements.iterator();
        while (it.hasNext()) {
            add(it.next());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void plusAssign(@NotNull g elements) {
        j.e(elements, "elements");
        Iterator it = elements.iterator();
        while (it.hasNext()) {
            add(it.next());
        }
    }

    public final boolean addAll(@NotNull ObjectList<E> elements) {
        j.e(elements, "elements");
        int i2 = this._size;
        plusAssign((ObjectList) elements);
        return i2 != this._size;
    }

    public final boolean addAll(@NotNull ScatterSet<E> elements) {
        j.e(elements, "elements");
        int i2 = this._size;
        plusAssign((ScatterSet) elements);
        return i2 != this._size;
    }

    public final boolean addAll(@NotNull E[] elements) {
        j.e(elements, "elements");
        int i2 = this._size;
        plusAssign((Object[]) elements);
        return i2 != this._size;
    }

    public final boolean addAll(@NotNull List<? extends E> elements) {
        j.e(elements, "elements");
        int i2 = this._size;
        plusAssign((List) elements);
        return i2 != this._size;
    }

    public final boolean addAll(@NotNull Iterable<? extends E> elements) {
        j.e(elements, "elements");
        int i2 = this._size;
        plusAssign((Iterable) elements);
        return i2 != this._size;
    }

    public final boolean addAll(@NotNull g elements) {
        j.e(elements, "elements");
        int i2 = this._size;
        plusAssign(elements);
        return i2 != this._size;
    }
}
