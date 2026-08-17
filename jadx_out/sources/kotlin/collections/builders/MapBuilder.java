package kotlin.collections.builders;

import B1.c;
import androidx.exifinterface.media.ExifInterface;
import com.anythink.core.common.f.f;
import java.io.InvalidObjectException;
import java.io.NotSerializableException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.AbstractC1599d;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.j;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000²\u0001\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0017\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010&\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\b\u0015\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010#\n\u0002\b\u0003\n\u0002\u0010\u001f\n\u0002\b\u0003\n\u0002\u0010'\n\u0002\b\f\b\u0000\u0018\u0000 \u0097\u0001*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\u00060\u0004j\u0002`\u0005:\f\u0098\u0001\u0099\u0001\u009a\u0001\u009b\u0001\u009c\u0001\u009d\u0001BG\b\u0002\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000e\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0010B\t\b\u0016¢\u0006\u0004\b\u000f\u0010\u0011B\u0011\b\u0016\u0012\u0006\u0010\u0012\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0019H\u0002¢\u0006\u0004\b\u001c\u0010\u0011J\u0017\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\fH\u0002¢\u0006\u0004\b\u001e\u0010\u0013J\u0017\u0010!\u001a\u00020 2\u0006\u0010\u001f\u001a\u00020\fH\u0002¢\u0006\u0004\b!\u0010\"J\u0017\u0010$\u001a\u00020\u00192\u0006\u0010#\u001a\u00020\fH\u0002¢\u0006\u0004\b$\u0010\u0013J\u0015\u0010%\u001a\b\u0012\u0004\u0012\u00028\u00010\u0006H\u0002¢\u0006\u0004\b%\u0010&J\u0017\u0010(\u001a\u00020\f2\u0006\u0010'\u001a\u00028\u0000H\u0002¢\u0006\u0004\b(\u0010)J\u0017\u0010+\u001a\u00020\u00192\u0006\u0010*\u001a\u00020 H\u0002¢\u0006\u0004\b+\u0010,J\u0017\u0010.\u001a\u00020\u00192\u0006\u0010-\u001a\u00020\fH\u0002¢\u0006\u0004\b.\u0010\u0013J\u0017\u00100\u001a\u00020 2\u0006\u0010/\u001a\u00020\fH\u0002¢\u0006\u0004\b0\u0010\"J\u0017\u00101\u001a\u00020\f2\u0006\u0010'\u001a\u00028\u0000H\u0002¢\u0006\u0004\b1\u0010)J\u0017\u00103\u001a\u00020\f2\u0006\u00102\u001a\u00028\u0001H\u0002¢\u0006\u0004\b3\u0010)J\u0017\u00105\u001a\u00020\u00192\u0006\u00104\u001a\u00020\fH\u0002¢\u0006\u0004\b5\u0010\u0013J\u0017\u00107\u001a\u00020\u00192\u0006\u00106\u001a\u00020\fH\u0002¢\u0006\u0004\b7\u0010\u0013J\u001f\u0010:\u001a\u00020 2\u000e\u00109\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u000308H\u0002¢\u0006\u0004\b:\u0010;J#\u0010>\u001a\u00020 2\u0012\u0010=\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010<H\u0002¢\u0006\u0004\b>\u0010?J)\u0010B\u001a\u00020 2\u0018\u0010A\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010<0@H\u0002¢\u0006\u0004\bB\u0010CJ\u0019\u0010D\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000108¢\u0006\u0004\bD\u0010EJ\u000f\u0010F\u001a\u00020 H\u0016¢\u0006\u0004\bF\u0010GJ\u0017\u0010H\u001a\u00020 2\u0006\u0010'\u001a\u00028\u0000H\u0016¢\u0006\u0004\bH\u0010IJ\u0017\u0010J\u001a\u00020 2\u0006\u00102\u001a\u00028\u0001H\u0016¢\u0006\u0004\bJ\u0010IJ\u001a\u0010K\u001a\u0004\u0018\u00018\u00012\u0006\u0010'\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\bK\u0010LJ!\u0010M\u001a\u0004\u0018\u00018\u00012\u0006\u0010'\u001a\u00028\u00002\u0006\u00102\u001a\u00028\u0001H\u0016¢\u0006\u0004\bM\u0010NJ%\u0010O\u001a\u00020\u00192\u0014\u0010A\u001a\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000108H\u0016¢\u0006\u0004\bO\u0010PJ\u0019\u0010Q\u001a\u0004\u0018\u00018\u00012\u0006\u0010'\u001a\u00028\u0000H\u0016¢\u0006\u0004\bQ\u0010LJ\u000f\u0010R\u001a\u00020\u0019H\u0016¢\u0006\u0004\bR\u0010\u0011J\u001a\u0010S\u001a\u00020 2\b\u00109\u001a\u0004\u0018\u00010\u0014H\u0096\u0002¢\u0006\u0004\bS\u0010IJ\u000f\u0010T\u001a\u00020\fH\u0016¢\u0006\u0004\bT\u0010UJ\u000f\u0010W\u001a\u00020VH\u0016¢\u0006\u0004\bW\u0010XJ\u000f\u0010Z\u001a\u00020\u0019H\u0000¢\u0006\u0004\bY\u0010\u0011J\u0017\u0010\\\u001a\u00020\f2\u0006\u0010'\u001a\u00028\u0000H\u0000¢\u0006\u0004\b[\u0010)J\u0017\u0010^\u001a\u00020 2\u0006\u0010'\u001a\u00028\u0000H\u0000¢\u0006\u0004\b]\u0010IJ#\u0010`\u001a\u00020 2\u0012\u0010=\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010<H\u0000¢\u0006\u0004\b_\u0010?J\u001b\u0010c\u001a\u00020 2\n\u0010a\u001a\u0006\u0012\u0002\b\u00030@H\u0000¢\u0006\u0004\bb\u0010CJ#\u0010e\u001a\u00020 2\u0012\u0010=\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010<H\u0000¢\u0006\u0004\bd\u0010?J\u0017\u0010h\u001a\u00020 2\u0006\u0010f\u001a\u00028\u0001H\u0000¢\u0006\u0004\bg\u0010IJ\u001b\u0010l\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010iH\u0000¢\u0006\u0004\bj\u0010kJ\u001b\u0010p\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010mH\u0000¢\u0006\u0004\bn\u0010oJ\u001b\u0010t\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010qH\u0000¢\u0006\u0004\br\u0010sR\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010uR\u001e\u0010\b\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010uR\u0016\u0010\n\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010vR\u0016\u0010\u000b\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010vR\u0016\u0010\r\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010wR\u0016\u0010\u000e\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010wR\u0016\u0010x\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bx\u0010wR\u0016\u0010y\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\by\u0010wR$\u0010z\u001a\u00020\f2\u0006\u00102\u001a\u00020\f8\u0016@RX\u0096\u000e¢\u0006\f\n\u0004\bz\u0010w\u001a\u0004\b{\u0010UR\u001e\u0010}\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010|8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b}\u0010~R!\u0010\u0080\u0001\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u007f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0080\u0001\u0010\u0081\u0001R(\u0010\u0083\u0001\u001a\u0011\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0082\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0083\u0001\u0010\u0084\u0001R(\u0010\u0085\u0001\u001a\u00020 2\u0006\u00102\u001a\u00020 8\u0000@BX\u0080\u000e¢\u0006\u000f\n\u0006\b\u0085\u0001\u0010\u0086\u0001\u001a\u0005\b\u0087\u0001\u0010GR\u0016\u0010\u0089\u0001\u001a\u00020\f8BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u0088\u0001\u0010UR\u001e\u0010\u008d\u0001\u001a\t\u0012\u0004\u0012\u00028\u00000\u008a\u00018VX\u0096\u0004¢\u0006\b\u001a\u0006\b\u008b\u0001\u0010\u008c\u0001R\u001e\u0010\u0091\u0001\u001a\t\u0012\u0004\u0012\u00028\u00010\u008e\u00018VX\u0096\u0004¢\u0006\b\u001a\u0006\b\u008f\u0001\u0010\u0090\u0001R+\u0010\u0094\u0001\u001a\u0016\u0012\u0011\u0012\u000f\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0092\u00010\u008a\u00018VX\u0096\u0004¢\u0006\b\u001a\u0006\b\u0093\u0001\u0010\u008c\u0001R\u0016\u0010\u0096\u0001\u001a\u00020\f8@X\u0080\u0004¢\u0006\u0007\u001a\u0005\b\u0095\u0001\u0010U¨\u0006\u009e\u0001"}, d2 = {"Lkotlin/collections/builders/MapBuilder;", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "keysArray", "valuesArray", "", "presenceArray", "hashArray", "", "maxProbeDistance", "length", "<init>", "([Ljava/lang/Object;[Ljava/lang/Object;[I[III)V", "()V", "initialCapacity", "(I)V", "", "writeReplace", "()Ljava/lang/Object;", "Ljava/io/ObjectInputStream;", "input", "Lkotlin/j;", "readObject", "(Ljava/io/ObjectInputStream;)V", "registerModification", "n", "ensureExtraCapacity", "extraCapacity", "", "shouldCompact", "(I)Z", "minCapacity", "ensureCapacity", "allocateValuesArray", "()[Ljava/lang/Object;", f.a.f3242b, "hash", "(Ljava/lang/Object;)I", "updateHashArray", "compact", "(Z)V", "newHashSize", "rehash", "i", "putRehash", "findKey", f.a.f3244d, "findValue", com.umeng.ccg.a.f49746H, "removeEntryAt", "removedHash", "removeHashAt", "", "other", "contentEquals", "(Ljava/util/Map;)Z", "", "entry", "putEntry", "(Ljava/util/Map$Entry;)Z", "", "from", "putAllEntries", "(Ljava/util/Collection;)Z", "build", "()Ljava/util/Map;", "isEmpty", "()Z", "containsKey", "(Ljava/lang/Object;)Z", "containsValue", "get", "(Ljava/lang/Object;)Ljava/lang/Object;", "put", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "putAll", "(Ljava/util/Map;)V", "remove", "clear", "equals", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "checkIsMutable$kotlin_stdlib", "checkIsMutable", "addKey$kotlin_stdlib", "addKey", "removeKey$kotlin_stdlib", "removeKey", "containsEntry$kotlin_stdlib", "containsEntry", "m", "containsAllEntries$kotlin_stdlib", "containsAllEntries", "removeEntry$kotlin_stdlib", "removeEntry", "element", "removeValue$kotlin_stdlib", "removeValue", "Lkotlin/collections/builders/MapBuilder$e;", "keysIterator$kotlin_stdlib", "()Lkotlin/collections/builders/MapBuilder$e;", "keysIterator", "Lkotlin/collections/builders/MapBuilder$f;", "valuesIterator$kotlin_stdlib", "()Lkotlin/collections/builders/MapBuilder$f;", "valuesIterator", "Lkotlin/collections/builders/MapBuilder$b;", "entriesIterator$kotlin_stdlib", "()Lkotlin/collections/builders/MapBuilder$b;", "entriesIterator", "[Ljava/lang/Object;", "[I", "I", "hashShift", "modCount", "size", "getSize", "Lkotlin/collections/builders/d;", "keysView", "Lkotlin/collections/builders/d;", "Lkotlin/collections/builders/e;", "valuesView", "Lkotlin/collections/builders/e;", "Lkotlin/collections/builders/c;", "entriesView", "Lkotlin/collections/builders/c;", "isReadOnly", "Z", "isReadOnly$kotlin_stdlib", "getHashSize", "hashSize", "", "getKeys", "()Ljava/util/Set;", "keys", "", "getValues", "()Ljava/util/Collection;", "values", "", "getEntries", "entries", "getCapacity$kotlin_stdlib", "capacity", "Companion", "a", "d", "e", "f", "b", "c", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nMapBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapBuilder.kt\nkotlin/collections/builders/MapBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,751:1\n1#2:752\n*E\n"})
/* loaded from: classes5.dex */
public final class MapBuilder<K, V> implements Map<K, V>, Serializable, B1.c {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static final MapBuilder Empty;
    private static final int INITIAL_CAPACITY = 8;
    private static final int INITIAL_MAX_PROBE_DISTANCE = 2;
    private static final int MAGIC = -1640531527;
    private static final int TOMBSTONE = -1;

    @Nullable
    private kotlin.collections.builders.c entriesView;

    @NotNull
    private int[] hashArray;
    private int hashShift;
    private boolean isReadOnly;

    @NotNull
    private K[] keysArray;

    @Nullable
    private kotlin.collections.builders.d keysView;
    private int length;
    private int maxProbeDistance;
    private int modCount;

    @NotNull
    private int[] presenceArray;
    private int size;

    @Nullable
    private V[] valuesArray;

    @Nullable
    private kotlin.collections.builders.e valuesView;

    /* renamed from: kotlin.collections.builders.MapBuilder$a, reason: from kotlin metadata */
    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.f fVar) {
            this();
        }

        public final int c(int i2) {
            return Integer.highestOneBit(E1.f.b(i2, 1) * 3);
        }

        public final int d(int i2) {
            return Integer.numberOfLeadingZeros(i2) + 1;
        }

        public final MapBuilder e() {
            return MapBuilder.Empty;
        }

        public Companion() {
        }
    }

    public static final class b extends d implements Iterator, B1.a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(MapBuilder map) {
            super(map);
            j.e(map, "map");
        }

        @Override // java.util.Iterator
        /* renamed from: i, reason: merged with bridge method [inline-methods] */
        public c next() {
            a();
            if (b() >= e().length) {
                throw new NoSuchElementException();
            }
            int iB = b();
            g(iB + 1);
            h(iB);
            c cVar = new c(e(), d());
            f();
            return cVar;
        }

        public final void j(StringBuilder sb) {
            j.e(sb, "sb");
            if (b() >= e().length) {
                throw new NoSuchElementException();
            }
            int iB = b();
            g(iB + 1);
            h(iB);
            Object obj = e().keysArray[d()];
            if (obj == e()) {
                sb.append("(this Map)");
            } else {
                sb.append(obj);
            }
            sb.append('=');
            Object[] objArr = e().valuesArray;
            j.b(objArr);
            Object obj2 = objArr[d()];
            if (obj2 == e()) {
                sb.append("(this Map)");
            } else {
                sb.append(obj2);
            }
            f();
        }

        public final int k() {
            if (b() >= e().length) {
                throw new NoSuchElementException();
            }
            int iB = b();
            g(iB + 1);
            h(iB);
            Object obj = e().keysArray[d()];
            int iHashCode = obj != null ? obj.hashCode() : 0;
            Object[] objArr = e().valuesArray;
            j.b(objArr);
            Object obj2 = objArr[d()];
            int iHashCode2 = iHashCode ^ (obj2 != null ? obj2.hashCode() : 0);
            f();
            return iHashCode2;
        }
    }

    public static final class c implements Map.Entry, c.a {

        /* renamed from: b, reason: collision with root package name */
        public final MapBuilder f51342b;

        /* renamed from: c, reason: collision with root package name */
        public final int f51343c;

        /* renamed from: d, reason: collision with root package name */
        public final int f51344d;

        public c(MapBuilder map, int i2) {
            j.e(map, "map");
            this.f51342b = map;
            this.f51343c = i2;
            this.f51344d = map.modCount;
        }

        private final void a() {
            if (this.f51342b.modCount != this.f51344d) {
                throw new ConcurrentModificationException("The backing map has been modified after this entry was obtained.");
            }
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return j.a(entry.getKey(), getKey()) && j.a(entry.getValue(), getValue());
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            a();
            return this.f51342b.keysArray[this.f51343c];
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            a();
            Object[] objArr = this.f51342b.valuesArray;
            j.b(objArr);
            return objArr[this.f51343c];
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            Object key = getKey();
            int iHashCode = key != null ? key.hashCode() : 0;
            Object value = getValue();
            return iHashCode ^ (value != null ? value.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            a();
            this.f51342b.checkIsMutable$kotlin_stdlib();
            Object[] objArrAllocateValuesArray = this.f51342b.allocateValuesArray();
            int i2 = this.f51343c;
            Object obj2 = objArrAllocateValuesArray[i2];
            objArrAllocateValuesArray[i2] = obj;
            return obj2;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(getKey());
            sb.append('=');
            sb.append(getValue());
            return sb.toString();
        }
    }

    public static class d {

        /* renamed from: b, reason: collision with root package name */
        public final MapBuilder f51345b;

        /* renamed from: c, reason: collision with root package name */
        public int f51346c;

        /* renamed from: d, reason: collision with root package name */
        public int f51347d;

        /* renamed from: e, reason: collision with root package name */
        public int f51348e;

        public d(MapBuilder map) {
            j.e(map, "map");
            this.f51345b = map;
            this.f51347d = -1;
            this.f51348e = map.modCount;
            f();
        }

        public final void a() {
            if (this.f51345b.modCount != this.f51348e) {
                throw new ConcurrentModificationException();
            }
        }

        public final int b() {
            return this.f51346c;
        }

        public final int d() {
            return this.f51347d;
        }

        public final MapBuilder e() {
            return this.f51345b;
        }

        public final void f() {
            while (this.f51346c < this.f51345b.length) {
                int[] iArr = this.f51345b.presenceArray;
                int i2 = this.f51346c;
                if (iArr[i2] >= 0) {
                    return;
                } else {
                    this.f51346c = i2 + 1;
                }
            }
        }

        public final void g(int i2) {
            this.f51346c = i2;
        }

        public final void h(int i2) {
            this.f51347d = i2;
        }

        public final boolean hasNext() {
            return this.f51346c < this.f51345b.length;
        }

        public final void remove() {
            a();
            if (this.f51347d == -1) {
                throw new IllegalStateException("Call next() before removing element from the iterator.");
            }
            this.f51345b.checkIsMutable$kotlin_stdlib();
            this.f51345b.removeEntryAt(this.f51347d);
            this.f51347d = -1;
            this.f51348e = this.f51345b.modCount;
        }
    }

    public static final class e extends d implements Iterator, B1.a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(MapBuilder map) {
            super(map);
            j.e(map, "map");
        }

        @Override // java.util.Iterator
        public Object next() {
            a();
            if (b() >= e().length) {
                throw new NoSuchElementException();
            }
            int iB = b();
            g(iB + 1);
            h(iB);
            Object obj = e().keysArray[d()];
            f();
            return obj;
        }
    }

    public static final class f extends d implements Iterator, B1.a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(MapBuilder map) {
            super(map);
            j.e(map, "map");
        }

        @Override // java.util.Iterator
        public Object next() {
            a();
            if (b() >= e().length) {
                throw new NoSuchElementException();
            }
            int iB = b();
            g(iB + 1);
            h(iB);
            Object[] objArr = e().valuesArray;
            j.b(objArr);
            Object obj = objArr[d()];
            f();
            return obj;
        }
    }

    static {
        MapBuilder mapBuilder = new MapBuilder(0);
        mapBuilder.isReadOnly = true;
        Empty = mapBuilder;
    }

    private MapBuilder(K[] kArr, V[] vArr, int[] iArr, int[] iArr2, int i2, int i3) {
        this.keysArray = kArr;
        this.valuesArray = vArr;
        this.presenceArray = iArr;
        this.hashArray = iArr2;
        this.maxProbeDistance = i2;
        this.length = i3;
        this.hashShift = INSTANCE.d(getHashSize());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final V[] allocateValuesArray() {
        V[] vArr = this.valuesArray;
        if (vArr != null) {
            return vArr;
        }
        V[] vArr2 = (V[]) kotlin.collections.builders.b.d(getCapacity$kotlin_stdlib());
        this.valuesArray = vArr2;
        return vArr2;
    }

    private final void compact(boolean updateHashArray) {
        int i2;
        V[] vArr = this.valuesArray;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i2 = this.length;
            if (i3 >= i2) {
                break;
            }
            int[] iArr = this.presenceArray;
            int i5 = iArr[i3];
            if (i5 >= 0) {
                K[] kArr = this.keysArray;
                kArr[i4] = kArr[i3];
                if (vArr != null) {
                    vArr[i4] = vArr[i3];
                }
                if (updateHashArray) {
                    iArr[i4] = i5;
                    this.hashArray[i5] = i4 + 1;
                }
                i4++;
            }
            i3++;
        }
        kotlin.collections.builders.b.g(this.keysArray, i4, i2);
        if (vArr != null) {
            kotlin.collections.builders.b.g(vArr, i4, this.length);
        }
        this.length = i4;
    }

    private final boolean contentEquals(Map<?, ?> other) {
        return size() == other.size() && containsAllEntries$kotlin_stdlib(other.entrySet());
    }

    private final void ensureCapacity(int minCapacity) {
        if (minCapacity < 0) {
            throw new OutOfMemoryError();
        }
        if (minCapacity > getCapacity$kotlin_stdlib()) {
            int iE = AbstractC1599d.Companion.e(getCapacity$kotlin_stdlib(), minCapacity);
            this.keysArray = (K[]) kotlin.collections.builders.b.e(this.keysArray, iE);
            V[] vArr = this.valuesArray;
            this.valuesArray = vArr != null ? (V[]) kotlin.collections.builders.b.e(vArr, iE) : null;
            int[] iArrCopyOf = Arrays.copyOf(this.presenceArray, iE);
            j.d(iArrCopyOf, "copyOf(...)");
            this.presenceArray = iArrCopyOf;
            int iC = INSTANCE.c(iE);
            if (iC > getHashSize()) {
                rehash(iC);
            }
        }
    }

    private final void ensureExtraCapacity(int n2) {
        if (shouldCompact(n2)) {
            compact(true);
        } else {
            ensureCapacity(this.length + n2);
        }
    }

    private final int findKey(K key) {
        int iHash = hash(key);
        int i2 = this.maxProbeDistance;
        while (true) {
            int i3 = this.hashArray[iHash];
            if (i3 == 0) {
                return -1;
            }
            if (i3 > 0) {
                int i4 = i3 - 1;
                if (j.a(this.keysArray[i4], key)) {
                    return i4;
                }
            }
            i2--;
            if (i2 < 0) {
                return -1;
            }
            iHash = iHash == 0 ? getHashSize() - 1 : iHash - 1;
        }
    }

    private final int findValue(V value) {
        int i2 = this.length;
        while (true) {
            i2--;
            if (i2 < 0) {
                return -1;
            }
            if (this.presenceArray[i2] >= 0) {
                V[] vArr = this.valuesArray;
                j.b(vArr);
                if (j.a(vArr[i2], value)) {
                    return i2;
                }
            }
        }
    }

    private final int getHashSize() {
        return this.hashArray.length;
    }

    private final int hash(K key) {
        return ((key != null ? key.hashCode() : 0) * MAGIC) >>> this.hashShift;
    }

    private final boolean putAllEntries(Collection<? extends Map.Entry<? extends K, ? extends V>> from) {
        boolean z2 = false;
        if (from.isEmpty()) {
            return false;
        }
        ensureExtraCapacity(from.size());
        Iterator<? extends Map.Entry<? extends K, ? extends V>> it = from.iterator();
        while (it.hasNext()) {
            if (putEntry(it.next())) {
                z2 = true;
            }
        }
        return z2;
    }

    private final boolean putEntry(Map.Entry<? extends K, ? extends V> entry) {
        int iAddKey$kotlin_stdlib = addKey$kotlin_stdlib(entry.getKey());
        V[] vArrAllocateValuesArray = allocateValuesArray();
        if (iAddKey$kotlin_stdlib >= 0) {
            vArrAllocateValuesArray[iAddKey$kotlin_stdlib] = entry.getValue();
            return true;
        }
        int i2 = (-iAddKey$kotlin_stdlib) - 1;
        if (j.a(entry.getValue(), vArrAllocateValuesArray[i2])) {
            return false;
        }
        vArrAllocateValuesArray[i2] = entry.getValue();
        return true;
    }

    private final boolean putRehash(int i2) {
        int iHash = hash(this.keysArray[i2]);
        int i3 = this.maxProbeDistance;
        while (true) {
            int[] iArr = this.hashArray;
            if (iArr[iHash] == 0) {
                iArr[iHash] = i2 + 1;
                this.presenceArray[i2] = iHash;
                return true;
            }
            i3--;
            if (i3 < 0) {
                return false;
            }
            iHash = iHash == 0 ? getHashSize() - 1 : iHash - 1;
        }
    }

    private final void readObject(ObjectInputStream input) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    private final void registerModification() {
        this.modCount++;
    }

    private final void rehash(int newHashSize) {
        registerModification();
        int i2 = 0;
        if (this.length > size()) {
            compact(false);
        }
        this.hashArray = new int[newHashSize];
        this.hashShift = INSTANCE.d(newHashSize);
        while (i2 < this.length) {
            int i3 = i2 + 1;
            if (!putRehash(i2)) {
                throw new IllegalStateException("This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?");
            }
            i2 = i3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removeEntryAt(int index) {
        kotlin.collections.builders.b.f(this.keysArray, index);
        V[] vArr = this.valuesArray;
        if (vArr != null) {
            kotlin.collections.builders.b.f(vArr, index);
        }
        removeHashAt(this.presenceArray[index]);
        this.presenceArray[index] = -1;
        this.size = size() - 1;
        registerModification();
    }

    private final void removeHashAt(int removedHash) {
        int iD = E1.f.d(this.maxProbeDistance * 2, getHashSize() / 2);
        int i2 = 0;
        int i3 = removedHash;
        do {
            removedHash = removedHash == 0 ? getHashSize() - 1 : removedHash - 1;
            i2++;
            if (i2 > this.maxProbeDistance) {
                this.hashArray[i3] = 0;
                return;
            }
            int[] iArr = this.hashArray;
            int i4 = iArr[removedHash];
            if (i4 == 0) {
                iArr[i3] = 0;
                return;
            }
            if (i4 < 0) {
                iArr[i3] = -1;
            } else {
                int i5 = i4 - 1;
                if (((hash(this.keysArray[i5]) - removedHash) & (getHashSize() - 1)) >= i2) {
                    this.hashArray[i3] = i4;
                    this.presenceArray[i5] = i3;
                }
                iD--;
            }
            i3 = removedHash;
            i2 = 0;
            iD--;
        } while (iD >= 0);
        this.hashArray[i3] = -1;
    }

    private final boolean shouldCompact(int extraCapacity) {
        int capacity$kotlin_stdlib = getCapacity$kotlin_stdlib();
        int i2 = this.length;
        int i3 = capacity$kotlin_stdlib - i2;
        int size = i2 - size();
        return i3 < extraCapacity && i3 + size >= extraCapacity && size >= getCapacity$kotlin_stdlib() / 4;
    }

    private final Object writeReplace() throws NotSerializableException {
        if (this.isReadOnly) {
            return new SerializedMap(this);
        }
        throw new NotSerializableException("The map cannot be serialized while it is being built.");
    }

    public final int addKey$kotlin_stdlib(K key) {
        checkIsMutable$kotlin_stdlib();
        while (true) {
            int iHash = hash(key);
            int iD = E1.f.d(this.maxProbeDistance * 2, getHashSize() / 2);
            int i2 = 0;
            while (true) {
                int i3 = this.hashArray[iHash];
                if (i3 <= 0) {
                    if (this.length < getCapacity$kotlin_stdlib()) {
                        int i4 = this.length;
                        int i5 = i4 + 1;
                        this.length = i5;
                        this.keysArray[i4] = key;
                        this.presenceArray[i4] = iHash;
                        this.hashArray[iHash] = i5;
                        this.size = size() + 1;
                        registerModification();
                        if (i2 > this.maxProbeDistance) {
                            this.maxProbeDistance = i2;
                        }
                        return i4;
                    }
                    ensureExtraCapacity(1);
                } else {
                    if (j.a(this.keysArray[i3 - 1], key)) {
                        return -i3;
                    }
                    i2++;
                    if (i2 > iD) {
                        rehash(getHashSize() * 2);
                        break;
                    }
                    iHash = iHash == 0 ? getHashSize() - 1 : iHash - 1;
                }
            }
        }
    }

    @NotNull
    public final Map<K, V> build() {
        checkIsMutable$kotlin_stdlib();
        this.isReadOnly = true;
        if (size() > 0) {
            return this;
        }
        MapBuilder mapBuilder = Empty;
        j.c(mapBuilder, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.builders.MapBuilder, V of kotlin.collections.builders.MapBuilder>");
        return mapBuilder;
    }

    public final void checkIsMutable$kotlin_stdlib() {
        if (this.isReadOnly) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Map
    public void clear() {
        checkIsMutable$kotlin_stdlib();
        int i2 = this.length - 1;
        if (i2 >= 0) {
            int i3 = 0;
            while (true) {
                int[] iArr = this.presenceArray;
                int i4 = iArr[i3];
                if (i4 >= 0) {
                    this.hashArray[i4] = 0;
                    iArr[i3] = -1;
                }
                if (i3 == i2) {
                    break;
                } else {
                    i3++;
                }
            }
        }
        kotlin.collections.builders.b.g(this.keysArray, 0, this.length);
        V[] vArr = this.valuesArray;
        if (vArr != null) {
            kotlin.collections.builders.b.g(vArr, 0, this.length);
        }
        this.size = 0;
        this.length = 0;
        registerModification();
    }

    public final boolean containsAllEntries$kotlin_stdlib(@NotNull Collection<?> m2) {
        j.e(m2, "m");
        for (Object obj : m2) {
            if (obj != null) {
                try {
                    if (!containsEntry$kotlin_stdlib((Map.Entry) obj)) {
                    }
                } catch (ClassCastException unused) {
                }
            }
            return false;
        }
        return true;
    }

    public final boolean containsEntry$kotlin_stdlib(@NotNull Map.Entry<? extends K, ? extends V> entry) {
        j.e(entry, "entry");
        int iFindKey = findKey(entry.getKey());
        if (iFindKey < 0) {
            return false;
        }
        V[] vArr = this.valuesArray;
        j.b(vArr);
        return j.a(vArr[iFindKey], entry.getValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public boolean containsKey(Object key) {
        return findKey(key) >= 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public boolean containsValue(Object value) {
        return findValue(value) >= 0;
    }

    @NotNull
    public final b entriesIterator$kotlin_stdlib() {
        return new b(this);
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry<K, V>> entrySet() {
        return getEntries();
    }

    @Override // java.util.Map
    public boolean equals(@Nullable Object other) {
        if (other != this) {
            return (other instanceof Map) && contentEquals((Map) other);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    @Nullable
    public V get(Object key) {
        int iFindKey = findKey(key);
        if (iFindKey < 0) {
            return null;
        }
        V[] vArr = this.valuesArray;
        j.b(vArr);
        return vArr[iFindKey];
    }

    public final int getCapacity$kotlin_stdlib() {
        return this.keysArray.length;
    }

    @NotNull
    public Set<Map.Entry<K, V>> getEntries() {
        kotlin.collections.builders.c cVar = this.entriesView;
        if (cVar != null) {
            return cVar;
        }
        kotlin.collections.builders.c cVar2 = new kotlin.collections.builders.c(this);
        this.entriesView = cVar2;
        return cVar2;
    }

    @NotNull
    public Set<K> getKeys() {
        kotlin.collections.builders.d dVar = this.keysView;
        if (dVar != null) {
            return dVar;
        }
        kotlin.collections.builders.d dVar2 = new kotlin.collections.builders.d(this);
        this.keysView = dVar2;
        return dVar2;
    }

    public int getSize() {
        return this.size;
    }

    @NotNull
    public Collection<V> getValues() {
        kotlin.collections.builders.e eVar = this.valuesView;
        if (eVar != null) {
            return eVar;
        }
        kotlin.collections.builders.e eVar2 = new kotlin.collections.builders.e(this);
        this.valuesView = eVar2;
        return eVar2;
    }

    @Override // java.util.Map
    public int hashCode() {
        b bVarEntriesIterator$kotlin_stdlib = entriesIterator$kotlin_stdlib();
        int iK = 0;
        while (bVarEntriesIterator$kotlin_stdlib.hasNext()) {
            iK += bVarEntriesIterator$kotlin_stdlib.k();
        }
        return iK;
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    /* renamed from: isReadOnly$kotlin_stdlib, reason: from getter */
    public final boolean getIsReadOnly() {
        return this.isReadOnly;
    }

    @Override // java.util.Map
    public final /* bridge */ Set<K> keySet() {
        return getKeys();
    }

    @NotNull
    public final e keysIterator$kotlin_stdlib() {
        return new e(this);
    }

    @Override // java.util.Map
    @Nullable
    public V put(K key, V value) {
        checkIsMutable$kotlin_stdlib();
        int iAddKey$kotlin_stdlib = addKey$kotlin_stdlib(key);
        V[] vArrAllocateValuesArray = allocateValuesArray();
        if (iAddKey$kotlin_stdlib >= 0) {
            vArrAllocateValuesArray[iAddKey$kotlin_stdlib] = value;
            return null;
        }
        int i2 = (-iAddKey$kotlin_stdlib) - 1;
        V v2 = vArrAllocateValuesArray[i2];
        vArrAllocateValuesArray[i2] = value;
        return v2;
    }

    @Override // java.util.Map
    public void putAll(@NotNull Map<? extends K, ? extends V> from) {
        j.e(from, "from");
        checkIsMutable$kotlin_stdlib();
        putAllEntries(from.entrySet());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    @Nullable
    public V remove(Object key) {
        checkIsMutable$kotlin_stdlib();
        int iFindKey = findKey(key);
        if (iFindKey < 0) {
            return null;
        }
        V[] vArr = this.valuesArray;
        j.b(vArr);
        V v2 = vArr[iFindKey];
        removeEntryAt(iFindKey);
        return v2;
    }

    public final boolean removeEntry$kotlin_stdlib(@NotNull Map.Entry<? extends K, ? extends V> entry) {
        j.e(entry, "entry");
        checkIsMutable$kotlin_stdlib();
        int iFindKey = findKey(entry.getKey());
        if (iFindKey < 0) {
            return false;
        }
        V[] vArr = this.valuesArray;
        j.b(vArr);
        if (!j.a(vArr[iFindKey], entry.getValue())) {
            return false;
        }
        removeEntryAt(iFindKey);
        return true;
    }

    public final boolean removeKey$kotlin_stdlib(K key) {
        checkIsMutable$kotlin_stdlib();
        int iFindKey = findKey(key);
        if (iFindKey < 0) {
            return false;
        }
        removeEntryAt(iFindKey);
        return true;
    }

    public final boolean removeValue$kotlin_stdlib(V element) {
        checkIsMutable$kotlin_stdlib();
        int iFindValue = findValue(element);
        if (iFindValue < 0) {
            return false;
        }
        removeEntryAt(iFindValue);
        return true;
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return getSize();
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder((size() * 3) + 2);
        sb.append("{");
        b bVarEntriesIterator$kotlin_stdlib = entriesIterator$kotlin_stdlib();
        int i2 = 0;
        while (bVarEntriesIterator$kotlin_stdlib.hasNext()) {
            if (i2 > 0) {
                sb.append(", ");
            }
            bVarEntriesIterator$kotlin_stdlib.j(sb);
            i2++;
        }
        sb.append("}");
        String string = sb.toString();
        j.d(string, "toString(...)");
        return string;
    }

    @Override // java.util.Map
    public final /* bridge */ Collection<V> values() {
        return getValues();
    }

    @NotNull
    public final f valuesIterator$kotlin_stdlib() {
        return new f(this);
    }

    public MapBuilder() {
        this(8);
    }

    public MapBuilder(int i2) {
        this(kotlin.collections.builders.b.d(i2), null, new int[i2], new int[INSTANCE.c(i2)], 2, 0);
    }
}
