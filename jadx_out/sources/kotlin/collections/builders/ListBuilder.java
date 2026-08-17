package kotlin.collections.builders;

import androidx.exifinterface.media.ExifInterface;
import java.io.InvalidObjectException;
import java.io.NotSerializableException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.collections.AbstractC1599d;
import kotlin.collections.AbstractC1601f;
import kotlin.collections.l;
import kotlin.collections.p;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.f;
import kotlin.jvm.internal.j;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u001e\n\u0002\b\u0016\n\u0002\u0010)\n\u0002\b\u0002\n\u0002\u0010+\n\u0002\b\u0012\n\u0002\u0010\u0011\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0000\u0018\u0000 b*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0003j\u0002`\u00042\b\u0012\u0004\u0012\u00028\u00000\u00052\u00060\u0006j\u0002`\u0007:\u0003cdeB\u0011\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0012\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0014\u0010\u000bJ\u0017\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0016\u0010\u000bJ\u001b\u0010\u001a\u001a\u00020\u00192\n\u0010\u0018\u001a\u0006\u0012\u0002\b\u00030\u0017H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u001f\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\bH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u001f\u0010 \u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00028\u0000H\u0002¢\u0006\u0004\b \u0010!J-\u0010$\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\b2\f\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\"2\u0006\u0010\u0013\u001a\u00020\bH\u0002¢\u0006\u0004\b$\u0010%J\u0017\u0010&\u001a\u00028\u00002\u0006\u0010\u001c\u001a\u00020\bH\u0002¢\u0006\u0004\b&\u0010'J\u001f\u0010*\u001a\u00020\u000f2\u0006\u0010(\u001a\u00020\b2\u0006\u0010)\u001a\u00020\bH\u0002¢\u0006\u0004\b*\u0010\u001eJ5\u0010,\u001a\u00020\b2\u0006\u0010(\u001a\u00020\b2\u0006\u0010)\u001a\u00020\b2\f\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\"2\u0006\u0010+\u001a\u00020\u0019H\u0002¢\u0006\u0004\b,\u0010-J\u0013\u0010.\u001a\b\u0012\u0004\u0012\u00028\u00000\u0017¢\u0006\u0004\b.\u0010/J\u000f\u00100\u001a\u00020\u0019H\u0016¢\u0006\u0004\b0\u00101J\u0018\u00103\u001a\u00028\u00002\u0006\u00102\u001a\u00020\bH\u0096\u0002¢\u0006\u0004\b3\u0010'J \u00104\u001a\u00028\u00002\u0006\u00102\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b4\u00105J\u0017\u00106\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00028\u0000H\u0016¢\u0006\u0004\b6\u00107J\u0017\u00108\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00028\u0000H\u0016¢\u0006\u0004\b8\u00107J\u0016\u0010:\u001a\b\u0012\u0004\u0012\u00028\u000009H\u0096\u0002¢\u0006\u0004\b:\u0010;J\u0015\u0010=\u001a\b\u0012\u0004\u0012\u00028\u00000<H\u0016¢\u0006\u0004\b=\u0010>J\u001d\u0010=\u001a\b\u0012\u0004\u0012\u00028\u00000<2\u0006\u00102\u001a\u00020\bH\u0016¢\u0006\u0004\b=\u0010?J\u0017\u0010@\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00028\u0000H\u0016¢\u0006\u0004\b@\u0010AJ\u001f\u0010@\u001a\u00020\u000f2\u0006\u00102\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00028\u0000H\u0016¢\u0006\u0004\b@\u0010!J\u001d\u0010B\u001a\u00020\u00192\f\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\"H\u0016¢\u0006\u0004\bB\u0010CJ%\u0010B\u001a\u00020\u00192\u0006\u00102\u001a\u00020\b2\f\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\"H\u0016¢\u0006\u0004\bB\u0010DJ\u000f\u0010E\u001a\u00020\u000fH\u0016¢\u0006\u0004\bE\u0010\u0011J\u0017\u0010F\u001a\u00028\u00002\u0006\u00102\u001a\u00020\bH\u0016¢\u0006\u0004\bF\u0010'J\u0017\u0010G\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00028\u0000H\u0016¢\u0006\u0004\bG\u0010AJ\u001d\u0010H\u001a\u00020\u00192\f\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\"H\u0016¢\u0006\u0004\bH\u0010CJ\u001d\u0010I\u001a\u00020\u00192\f\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\"H\u0016¢\u0006\u0004\bI\u0010CJ%\u0010L\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010J\u001a\u00020\b2\u0006\u0010K\u001a\u00020\bH\u0016¢\u0006\u0004\bL\u0010MJ)\u0010Q\u001a\b\u0012\u0004\u0012\u00028\u00010O\"\u0004\b\u0001\u0010N2\f\u0010P\u001a\b\u0012\u0004\u0012\u00028\u00010OH\u0016¢\u0006\u0004\bQ\u0010RJ\u0017\u0010Q\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0OH\u0016¢\u0006\u0004\bQ\u0010SJ\u001a\u0010T\u001a\u00020\u00192\b\u0010\u0018\u001a\u0004\u0018\u00010\fH\u0096\u0002¢\u0006\u0004\bT\u0010AJ\u000f\u0010U\u001a\u00020\bH\u0016¢\u0006\u0004\bU\u0010VJ\u000f\u0010X\u001a\u00020WH\u0016¢\u0006\u0004\bX\u0010YR\u001c\u0010Z\u001a\b\u0012\u0004\u0012\u00028\u00000O8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010[R\u0016\u0010\\\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010]R\u0016\u0010^\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010_R\u0014\u0010a\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b`\u0010V¨\u0006f"}, d2 = {"Lkotlin/collections/builders/ListBuilder;", ExifInterface.LONGITUDE_EAST, "", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "Lkotlin/collections/f;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "initialCapacity", "<init>", "(I)V", "", "writeReplace", "()Ljava/lang/Object;", "Lkotlin/j;", "registerModification", "()V", "checkIsMutable", "n", "ensureExtraCapacity", "minCapacity", "ensureCapacityInternal", "", "other", "", "contentEquals", "(Ljava/util/List;)Z", "i", "insertAtInternal", "(II)V", "element", "addAtInternal", "(ILjava/lang/Object;)V", "", "elements", "addAllInternal", "(ILjava/util/Collection;I)V", "removeAtInternal", "(I)Ljava/lang/Object;", "rangeOffset", "rangeLength", "removeRangeInternal", "retain", "retainOrRemoveAllInternal", "(IILjava/util/Collection;Z)I", "build", "()Ljava/util/List;", "isEmpty", "()Z", com.umeng.ccg.a.f49746H, "get", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "indexOf", "(Ljava/lang/Object;)I", "lastIndexOf", "", "iterator", "()Ljava/util/Iterator;", "", "listIterator", "()Ljava/util/ListIterator;", "(I)Ljava/util/ListIterator;", "add", "(Ljava/lang/Object;)Z", "addAll", "(Ljava/util/Collection;)Z", "(ILjava/util/Collection;)Z", "clear", "removeAt", "remove", "removeAll", "retainAll", "fromIndex", "toIndex", "subList", "(II)Ljava/util/List;", ExifInterface.GPS_DIRECTION_TRUE, "", "array", "toArray", "([Ljava/lang/Object;)[Ljava/lang/Object;", "()[Ljava/lang/Object;", "equals", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "backing", "[Ljava/lang/Object;", "length", "I", "isReadOnly", "Z", "getSize", "size", "Companion", "a", "b", "BuilderSubList", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nListBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListBuilder.kt\nkotlin/collections/builders/ListBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,722:1\n1#2:723\n*E\n"})
/* loaded from: classes5.dex */
public final class ListBuilder<E> extends AbstractC1601f implements List<E>, RandomAccess, Serializable, B1.b {

    @NotNull
    private static final a Companion = new a(null);

    @NotNull
    private static final ListBuilder Empty;

    @NotNull
    private E[] backing;
    private boolean isReadOnly;
    private int length;

    @Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u001e\n\u0002\b\u0016\n\u0002\u0010)\n\u0002\b\u0002\n\u0002\u0010+\n\u0002\b\u0019\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u00022\u00060\u0003j\u0002`\u00042\b\u0012\u0004\u0012\u00028\u00010\u00052\u00060\u0006j\u0002`\u0007:\u0001eBC\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00010\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\n\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0000\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00010\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u001c\u0010\u001bJ\u000f\u0010\u001d\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u001d\u0010\u001bJ\u001b\u0010!\u001a\u00020 2\n\u0010\u001f\u001a\u0006\u0012\u0002\b\u00030\u001eH\u0002¢\u0006\u0004\b!\u0010\"J\u001f\u0010%\u001a\u00020\u00172\u0006\u0010#\u001a\u00020\n2\u0006\u0010$\u001a\u00028\u0001H\u0002¢\u0006\u0004\b%\u0010&J-\u0010*\u001a\u00020\u00172\u0006\u0010#\u001a\u00020\n2\f\u0010(\u001a\b\u0012\u0004\u0012\u00028\u00010'2\u0006\u0010)\u001a\u00020\nH\u0002¢\u0006\u0004\b*\u0010+J\u0017\u0010,\u001a\u00028\u00012\u0006\u0010#\u001a\u00020\nH\u0002¢\u0006\u0004\b,\u0010-J\u001f\u00100\u001a\u00020\u00172\u0006\u0010.\u001a\u00020\n2\u0006\u0010/\u001a\u00020\nH\u0002¢\u0006\u0004\b0\u00101J5\u00103\u001a\u00020\n2\u0006\u0010.\u001a\u00020\n2\u0006\u0010/\u001a\u00020\n2\f\u0010(\u001a\b\u0012\u0004\u0012\u00028\u00010'2\u0006\u00102\u001a\u00020 H\u0002¢\u0006\u0004\b3\u00104J\u000f\u00105\u001a\u00020 H\u0016¢\u0006\u0004\b5\u00106J\u0018\u00108\u001a\u00028\u00012\u0006\u00107\u001a\u00020\nH\u0096\u0002¢\u0006\u0004\b8\u0010-J \u00109\u001a\u00028\u00012\u0006\u00107\u001a\u00020\n2\u0006\u0010$\u001a\u00028\u0001H\u0096\u0002¢\u0006\u0004\b9\u0010:J\u0017\u0010;\u001a\u00020\n2\u0006\u0010$\u001a\u00028\u0001H\u0016¢\u0006\u0004\b;\u0010<J\u0017\u0010=\u001a\u00020\n2\u0006\u0010$\u001a\u00028\u0001H\u0016¢\u0006\u0004\b=\u0010<J\u0016\u0010?\u001a\b\u0012\u0004\u0012\u00028\u00010>H\u0096\u0002¢\u0006\u0004\b?\u0010@J\u0015\u0010B\u001a\b\u0012\u0004\u0012\u00028\u00010AH\u0016¢\u0006\u0004\bB\u0010CJ\u001d\u0010B\u001a\b\u0012\u0004\u0012\u00028\u00010A2\u0006\u00107\u001a\u00020\nH\u0016¢\u0006\u0004\bB\u0010DJ\u0017\u0010E\u001a\u00020 2\u0006\u0010$\u001a\u00028\u0001H\u0016¢\u0006\u0004\bE\u0010FJ\u001f\u0010E\u001a\u00020\u00172\u0006\u00107\u001a\u00020\n2\u0006\u0010$\u001a\u00028\u0001H\u0016¢\u0006\u0004\bE\u0010&J\u001d\u0010G\u001a\u00020 2\f\u0010(\u001a\b\u0012\u0004\u0012\u00028\u00010'H\u0016¢\u0006\u0004\bG\u0010HJ%\u0010G\u001a\u00020 2\u0006\u00107\u001a\u00020\n2\f\u0010(\u001a\b\u0012\u0004\u0012\u00028\u00010'H\u0016¢\u0006\u0004\bG\u0010IJ\u000f\u0010J\u001a\u00020\u0017H\u0016¢\u0006\u0004\bJ\u0010\u001bJ\u0017\u0010K\u001a\u00028\u00012\u0006\u00107\u001a\u00020\nH\u0016¢\u0006\u0004\bK\u0010-J\u0017\u0010L\u001a\u00020 2\u0006\u0010$\u001a\u00028\u0001H\u0016¢\u0006\u0004\bL\u0010FJ\u001d\u0010M\u001a\u00020 2\f\u0010(\u001a\b\u0012\u0004\u0012\u00028\u00010'H\u0016¢\u0006\u0004\bM\u0010HJ\u001d\u0010N\u001a\u00020 2\f\u0010(\u001a\b\u0012\u0004\u0012\u00028\u00010'H\u0016¢\u0006\u0004\bN\u0010HJ%\u0010Q\u001a\b\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010O\u001a\u00020\n2\u0006\u0010P\u001a\u00020\nH\u0016¢\u0006\u0004\bQ\u0010RJ)\u0010U\u001a\b\u0012\u0004\u0012\u00028\u00020\b\"\u0004\b\u0002\u0010S2\f\u0010T\u001a\b\u0012\u0004\u0012\u00028\u00020\bH\u0016¢\u0006\u0004\bU\u0010VJ\u0017\u0010U\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\bH\u0016¢\u0006\u0004\bU\u0010WJ\u001a\u0010X\u001a\u00020 2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0012H\u0096\u0002¢\u0006\u0004\bX\u0010FJ\u000f\u0010Y\u001a\u00020\nH\u0016¢\u0006\u0004\bY\u0010ZJ\u000f\u0010\\\u001a\u00020[H\u0016¢\u0006\u0004\b\\\u0010]R\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010^R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010_R\u0016\u0010\f\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010_R\u001c\u0010\r\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010`R\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00010\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010aR\u0014\u0010b\u001a\u00020 8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bb\u00106R\u0014\u0010d\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bc\u0010Z¨\u0006f"}, d2 = {"Lkotlin/collections/builders/ListBuilder$BuilderSubList;", ExifInterface.LONGITUDE_EAST, "", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "Lkotlin/collections/f;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "backing", "", "offset", "length", "parent", "Lkotlin/collections/builders/ListBuilder;", "root", "<init>", "([Ljava/lang/Object;IILkotlin/collections/builders/ListBuilder$BuilderSubList;Lkotlin/collections/builders/ListBuilder;)V", "", "writeReplace", "()Ljava/lang/Object;", "Ljava/io/ObjectInputStream;", "input", "Lkotlin/j;", "readObject", "(Ljava/io/ObjectInputStream;)V", "registerModification", "()V", "checkForComodification", "checkIsMutable", "", "other", "", "contentEquals", "(Ljava/util/List;)Z", "i", "element", "addAtInternal", "(ILjava/lang/Object;)V", "", "elements", "n", "addAllInternal", "(ILjava/util/Collection;I)V", "removeAtInternal", "(I)Ljava/lang/Object;", "rangeOffset", "rangeLength", "removeRangeInternal", "(II)V", "retain", "retainOrRemoveAllInternal", "(IILjava/util/Collection;Z)I", "isEmpty", "()Z", com.umeng.ccg.a.f49746H, "get", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "indexOf", "(Ljava/lang/Object;)I", "lastIndexOf", "", "iterator", "()Ljava/util/Iterator;", "", "listIterator", "()Ljava/util/ListIterator;", "(I)Ljava/util/ListIterator;", "add", "(Ljava/lang/Object;)Z", "addAll", "(Ljava/util/Collection;)Z", "(ILjava/util/Collection;)Z", "clear", "removeAt", "remove", "removeAll", "retainAll", "fromIndex", "toIndex", "subList", "(II)Ljava/util/List;", ExifInterface.GPS_DIRECTION_TRUE, "array", "toArray", "([Ljava/lang/Object;)[Ljava/lang/Object;", "()[Ljava/lang/Object;", "equals", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "[Ljava/lang/Object;", "I", "Lkotlin/collections/builders/ListBuilder$BuilderSubList;", "Lkotlin/collections/builders/ListBuilder;", "isReadOnly", "getSize", "size", "a", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class BuilderSubList<E> extends AbstractC1601f implements List<E>, RandomAccess, Serializable, B1.b {

        @NotNull
        private E[] backing;
        private int length;
        private final int offset;

        @Nullable
        private final BuilderSubList<E> parent;

        @NotNull
        private final ListBuilder<E> root;

        public static final class a implements ListIterator, B1.a {

            /* renamed from: b, reason: collision with root package name */
            public final BuilderSubList f51334b;

            /* renamed from: c, reason: collision with root package name */
            public int f51335c;

            /* renamed from: d, reason: collision with root package name */
            public int f51336d;

            /* renamed from: e, reason: collision with root package name */
            public int f51337e;

            public a(BuilderSubList list, int i2) {
                j.e(list, "list");
                this.f51334b = list;
                this.f51335c = i2;
                this.f51336d = -1;
                this.f51337e = ((AbstractList) list).modCount;
            }

            public final void a() {
                if (((AbstractList) this.f51334b.root).modCount != this.f51337e) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override // java.util.ListIterator
            public void add(Object obj) {
                a();
                BuilderSubList builderSubList = this.f51334b;
                int i2 = this.f51335c;
                this.f51335c = i2 + 1;
                builderSubList.add(i2, obj);
                this.f51336d = -1;
                this.f51337e = ((AbstractList) this.f51334b).modCount;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public boolean hasNext() {
                return this.f51335c < this.f51334b.length;
            }

            @Override // java.util.ListIterator
            public boolean hasPrevious() {
                return this.f51335c > 0;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public Object next() {
                a();
                if (this.f51335c >= this.f51334b.length) {
                    throw new NoSuchElementException();
                }
                int i2 = this.f51335c;
                this.f51335c = i2 + 1;
                this.f51336d = i2;
                return this.f51334b.backing[this.f51334b.offset + this.f51336d];
            }

            @Override // java.util.ListIterator
            public int nextIndex() {
                return this.f51335c;
            }

            @Override // java.util.ListIterator
            public Object previous() {
                a();
                int i2 = this.f51335c;
                if (i2 <= 0) {
                    throw new NoSuchElementException();
                }
                int i3 = i2 - 1;
                this.f51335c = i3;
                this.f51336d = i3;
                return this.f51334b.backing[this.f51334b.offset + this.f51336d];
            }

            @Override // java.util.ListIterator
            public int previousIndex() {
                return this.f51335c - 1;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public void remove() {
                a();
                int i2 = this.f51336d;
                if (i2 == -1) {
                    throw new IllegalStateException("Call next() or previous() before removing element from the iterator.");
                }
                this.f51334b.removeAt(i2);
                this.f51335c = this.f51336d;
                this.f51336d = -1;
                this.f51337e = ((AbstractList) this.f51334b).modCount;
            }

            @Override // java.util.ListIterator
            public void set(Object obj) {
                a();
                int i2 = this.f51336d;
                if (i2 == -1) {
                    throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.");
                }
                this.f51334b.set(i2, obj);
            }
        }

        public BuilderSubList(@NotNull E[] backing, int i2, int i3, @Nullable BuilderSubList<E> builderSubList, @NotNull ListBuilder<E> root) {
            j.e(backing, "backing");
            j.e(root, "root");
            this.backing = backing;
            this.offset = i2;
            this.length = i3;
            this.parent = builderSubList;
            this.root = root;
            ((AbstractList) this).modCount = ((AbstractList) root).modCount;
        }

        private final void addAllInternal(int i2, Collection<? extends E> elements, int n2) {
            registerModification();
            BuilderSubList<E> builderSubList = this.parent;
            if (builderSubList != null) {
                builderSubList.addAllInternal(i2, elements, n2);
            } else {
                this.root.addAllInternal(i2, elements, n2);
            }
            this.backing = (E[]) ((ListBuilder) this.root).backing;
            this.length += n2;
        }

        private final void addAtInternal(int i2, E element) {
            registerModification();
            BuilderSubList<E> builderSubList = this.parent;
            if (builderSubList != null) {
                builderSubList.addAtInternal(i2, element);
            } else {
                this.root.addAtInternal(i2, element);
            }
            this.backing = (E[]) ((ListBuilder) this.root).backing;
            this.length++;
        }

        private final void checkForComodification() {
            if (((AbstractList) this.root).modCount != ((AbstractList) this).modCount) {
                throw new ConcurrentModificationException();
            }
        }

        private final void checkIsMutable() {
            if (isReadOnly()) {
                throw new UnsupportedOperationException();
            }
        }

        private final boolean contentEquals(List<?> other) {
            return kotlin.collections.builders.b.h(this.backing, this.offset, this.length, other);
        }

        private final boolean isReadOnly() {
            return ((ListBuilder) this.root).isReadOnly;
        }

        private final void readObject(ObjectInputStream input) throws InvalidObjectException {
            throw new InvalidObjectException("Deserialization is supported via proxy only");
        }

        private final void registerModification() {
            ((AbstractList) this).modCount++;
        }

        private final E removeAtInternal(int i2) {
            registerModification();
            BuilderSubList<E> builderSubList = this.parent;
            this.length--;
            return builderSubList != null ? builderSubList.removeAtInternal(i2) : (E) this.root.removeAtInternal(i2);
        }

        private final void removeRangeInternal(int rangeOffset, int rangeLength) {
            if (rangeLength > 0) {
                registerModification();
            }
            BuilderSubList<E> builderSubList = this.parent;
            if (builderSubList != null) {
                builderSubList.removeRangeInternal(rangeOffset, rangeLength);
            } else {
                this.root.removeRangeInternal(rangeOffset, rangeLength);
            }
            this.length -= rangeLength;
        }

        private final int retainOrRemoveAllInternal(int rangeOffset, int rangeLength, Collection<? extends E> elements, boolean retain) {
            BuilderSubList<E> builderSubList = this.parent;
            int iRetainOrRemoveAllInternal = builderSubList != null ? builderSubList.retainOrRemoveAllInternal(rangeOffset, rangeLength, elements, retain) : this.root.retainOrRemoveAllInternal(rangeOffset, rangeLength, elements, retain);
            if (iRetainOrRemoveAllInternal > 0) {
                registerModification();
            }
            this.length -= iRetainOrRemoveAllInternal;
            return iRetainOrRemoveAllInternal;
        }

        private final Object writeReplace() throws NotSerializableException {
            if (isReadOnly()) {
                return new SerializedCollection(this, 0);
            }
            throw new NotSerializableException("The list cannot be serialized while it is being built.");
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean add(E element) {
            checkIsMutable();
            checkForComodification();
            addAtInternal(this.offset + this.length, element);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean addAll(@NotNull Collection<? extends E> elements) {
            j.e(elements, "elements");
            checkIsMutable();
            checkForComodification();
            int size = elements.size();
            addAllInternal(this.offset + this.length, elements, size);
            return size > 0;
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public void clear() {
            checkIsMutable();
            checkForComodification();
            removeRangeInternal(this.offset, this.length);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(@Nullable Object other) {
            checkForComodification();
            if (other != this) {
                return (other instanceof List) && contentEquals((List) other);
            }
            return true;
        }

        @Override // java.util.AbstractList, java.util.List
        public E get(int index) {
            checkForComodification();
            AbstractC1599d.Companion.b(index, this.length);
            return this.backing[this.offset + index];
        }

        @Override // kotlin.collections.AbstractC1601f
        /* renamed from: getSize */
        public int getLength() {
            checkForComodification();
            return this.length;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            checkForComodification();
            return kotlin.collections.builders.b.i(this.backing, this.offset, this.length);
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object element) {
            checkForComodification();
            for (int i2 = 0; i2 < this.length; i2++) {
                if (j.a(this.backing[this.offset + i2], element)) {
                    return i2;
                }
            }
            return -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            checkForComodification();
            return this.length == 0;
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        @NotNull
        public Iterator<E> iterator() {
            return listIterator(0);
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object element) {
            checkForComodification();
            for (int i2 = this.length - 1; i2 >= 0; i2--) {
                if (j.a(this.backing[this.offset + i2], element)) {
                    return i2;
                }
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.List
        @NotNull
        public ListIterator<E> listIterator() {
            return listIterator(0);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean remove(Object element) {
            checkIsMutable();
            checkForComodification();
            int iIndexOf = indexOf(element);
            if (iIndexOf >= 0) {
                removeAt(iIndexOf);
            }
            return iIndexOf >= 0;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean removeAll(@NotNull Collection<?> elements) {
            j.e(elements, "elements");
            checkIsMutable();
            checkForComodification();
            return retainOrRemoveAllInternal(this.offset, this.length, elements, false) > 0;
        }

        @Override // kotlin.collections.AbstractC1601f
        public E removeAt(int index) {
            checkIsMutable();
            checkForComodification();
            AbstractC1599d.Companion.b(index, this.length);
            return removeAtInternal(this.offset + index);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean retainAll(@NotNull Collection<?> elements) {
            j.e(elements, "elements");
            checkIsMutable();
            checkForComodification();
            return retainOrRemoveAllInternal(this.offset, this.length, elements, true) > 0;
        }

        @Override // java.util.AbstractList, java.util.List
        public E set(int index, E element) {
            checkIsMutable();
            checkForComodification();
            AbstractC1599d.Companion.b(index, this.length);
            E[] eArr = this.backing;
            int i2 = this.offset;
            E e2 = eArr[i2 + index];
            eArr[i2 + index] = element;
            return e2;
        }

        @Override // java.util.AbstractList, java.util.List
        @NotNull
        public List<E> subList(int fromIndex, int toIndex) {
            AbstractC1599d.Companion.d(fromIndex, toIndex, this.length);
            return new BuilderSubList(this.backing, this.offset + fromIndex, toIndex - fromIndex, this, this.root);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        @NotNull
        public <T> T[] toArray(@NotNull T[] array) {
            j.e(array, "array");
            checkForComodification();
            int length = array.length;
            int i2 = this.length;
            if (length >= i2) {
                E[] eArr = this.backing;
                int i3 = this.offset;
                l.h(eArr, array, 0, i3, i2 + i3);
                return (T[]) p.f(this.length, array);
            }
            E[] eArr2 = this.backing;
            int i4 = this.offset;
            T[] tArr = (T[]) Arrays.copyOfRange(eArr2, i4, i2 + i4, array.getClass());
            j.d(tArr, "copyOfRange(...)");
            return tArr;
        }

        @Override // java.util.AbstractCollection
        @NotNull
        public String toString() {
            checkForComodification();
            return kotlin.collections.builders.b.j(this.backing, this.offset, this.length, this);
        }

        @Override // java.util.AbstractList, java.util.List
        @NotNull
        public ListIterator<E> listIterator(int index) {
            checkForComodification();
            AbstractC1599d.Companion.c(index, this.length);
            return new a(this, index);
        }

        @Override // java.util.AbstractList, java.util.List
        public void add(int index, E element) {
            checkIsMutable();
            checkForComodification();
            AbstractC1599d.Companion.c(index, this.length);
            addAtInternal(this.offset + index, element);
        }

        @Override // java.util.AbstractList, java.util.List
        public boolean addAll(int index, @NotNull Collection<? extends E> elements) {
            j.e(elements, "elements");
            checkIsMutable();
            checkForComodification();
            AbstractC1599d.Companion.c(index, this.length);
            int size = elements.size();
            addAllInternal(this.offset + index, elements, size);
            return size > 0;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        @NotNull
        public Object[] toArray() {
            checkForComodification();
            E[] eArr = this.backing;
            int i2 = this.offset;
            return l.o(eArr, i2, this.length + i2);
        }
    }

    public static final class a {
        public /* synthetic */ a(f fVar) {
            this();
        }

        public a() {
        }
    }

    public static final class b implements ListIterator, B1.a {

        /* renamed from: b, reason: collision with root package name */
        public final ListBuilder f51338b;

        /* renamed from: c, reason: collision with root package name */
        public int f51339c;

        /* renamed from: d, reason: collision with root package name */
        public int f51340d;

        /* renamed from: e, reason: collision with root package name */
        public int f51341e;

        public b(ListBuilder list, int i2) {
            j.e(list, "list");
            this.f51338b = list;
            this.f51339c = i2;
            this.f51340d = -1;
            this.f51341e = ((AbstractList) list).modCount;
        }

        private final void a() {
            if (((AbstractList) this.f51338b).modCount != this.f51341e) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.ListIterator
        public void add(Object obj) {
            a();
            ListBuilder listBuilder = this.f51338b;
            int i2 = this.f51339c;
            this.f51339c = i2 + 1;
            listBuilder.add(i2, obj);
            this.f51340d = -1;
            this.f51341e = ((AbstractList) this.f51338b).modCount;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f51339c < this.f51338b.length;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f51339c > 0;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public Object next() {
            a();
            if (this.f51339c >= this.f51338b.length) {
                throw new NoSuchElementException();
            }
            int i2 = this.f51339c;
            this.f51339c = i2 + 1;
            this.f51340d = i2;
            return this.f51338b.backing[this.f51340d];
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f51339c;
        }

        @Override // java.util.ListIterator
        public Object previous() {
            a();
            int i2 = this.f51339c;
            if (i2 <= 0) {
                throw new NoSuchElementException();
            }
            int i3 = i2 - 1;
            this.f51339c = i3;
            this.f51340d = i3;
            return this.f51338b.backing[this.f51340d];
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f51339c - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            a();
            int i2 = this.f51340d;
            if (i2 == -1) {
                throw new IllegalStateException("Call next() or previous() before removing element from the iterator.");
            }
            this.f51338b.removeAt(i2);
            this.f51339c = this.f51340d;
            this.f51340d = -1;
            this.f51341e = ((AbstractList) this.f51338b).modCount;
        }

        @Override // java.util.ListIterator
        public void set(Object obj) {
            a();
            int i2 = this.f51340d;
            if (i2 == -1) {
                throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.");
            }
            this.f51338b.set(i2, obj);
        }
    }

    static {
        ListBuilder listBuilder = new ListBuilder(0);
        listBuilder.isReadOnly = true;
        Empty = listBuilder;
    }

    public ListBuilder() {
        this(0, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void addAllInternal(int i2, Collection<? extends E> elements, int n2) {
        registerModification();
        insertAtInternal(i2, n2);
        Iterator<? extends E> it = elements.iterator();
        for (int i3 = 0; i3 < n2; i3++) {
            this.backing[i2 + i3] = it.next();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void addAtInternal(int i2, E element) {
        registerModification();
        insertAtInternal(i2, 1);
        this.backing[i2] = element;
    }

    private final void checkIsMutable() {
        if (this.isReadOnly) {
            throw new UnsupportedOperationException();
        }
    }

    private final boolean contentEquals(List<?> other) {
        return kotlin.collections.builders.b.h(this.backing, 0, this.length, other);
    }

    private final void ensureCapacityInternal(int minCapacity) {
        if (minCapacity < 0) {
            throw new OutOfMemoryError();
        }
        E[] eArr = this.backing;
        if (minCapacity > eArr.length) {
            this.backing = (E[]) kotlin.collections.builders.b.e(this.backing, AbstractC1599d.Companion.e(eArr.length, minCapacity));
        }
    }

    private final void ensureExtraCapacity(int n2) {
        ensureCapacityInternal(this.length + n2);
    }

    private final void insertAtInternal(int i2, int n2) {
        ensureExtraCapacity(n2);
        E[] eArr = this.backing;
        l.h(eArr, eArr, i2 + n2, i2, this.length);
        this.length += n2;
    }

    private final void registerModification() {
        ((AbstractList) this).modCount++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final E removeAtInternal(int i2) {
        registerModification();
        E[] eArr = this.backing;
        E e2 = eArr[i2];
        l.h(eArr, eArr, i2, i2 + 1, this.length);
        kotlin.collections.builders.b.f(this.backing, this.length - 1);
        this.length--;
        return e2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removeRangeInternal(int rangeOffset, int rangeLength) {
        if (rangeLength > 0) {
            registerModification();
        }
        E[] eArr = this.backing;
        l.h(eArr, eArr, rangeOffset, rangeOffset + rangeLength, this.length);
        E[] eArr2 = this.backing;
        int i2 = this.length;
        kotlin.collections.builders.b.g(eArr2, i2 - rangeLength, i2);
        this.length -= rangeLength;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int retainOrRemoveAllInternal(int rangeOffset, int rangeLength, Collection<? extends E> elements, boolean retain) {
        int i2 = 0;
        int i3 = 0;
        while (i2 < rangeLength) {
            int i4 = rangeOffset + i2;
            if (elements.contains(this.backing[i4]) == retain) {
                E[] eArr = this.backing;
                i2++;
                eArr[i3 + rangeOffset] = eArr[i4];
                i3++;
            } else {
                i2++;
            }
        }
        int i5 = rangeLength - i3;
        E[] eArr2 = this.backing;
        l.h(eArr2, eArr2, rangeOffset + i3, rangeLength + rangeOffset, this.length);
        E[] eArr3 = this.backing;
        int i6 = this.length;
        kotlin.collections.builders.b.g(eArr3, i6 - i5, i6);
        if (i5 > 0) {
            registerModification();
        }
        this.length -= i5;
        return i5;
    }

    private final Object writeReplace() throws NotSerializableException {
        if (this.isReadOnly) {
            return new SerializedCollection(this, 0);
        }
        throw new NotSerializableException("The list cannot be serialized while it is being built.");
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E element) {
        checkIsMutable();
        addAtInternal(this.length, element);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(@NotNull Collection<? extends E> elements) {
        j.e(elements, "elements");
        checkIsMutable();
        int size = elements.size();
        addAllInternal(this.length, elements, size);
        return size > 0;
    }

    @NotNull
    public final List<E> build() {
        checkIsMutable();
        this.isReadOnly = true;
        return this.length > 0 ? this : Empty;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        checkIsMutable();
        removeRangeInternal(0, this.length);
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(@Nullable Object other) {
        if (other != this) {
            return (other instanceof List) && contentEquals((List) other);
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int index) {
        AbstractC1599d.Companion.b(index, this.length);
        return this.backing[index];
    }

    @Override // kotlin.collections.AbstractC1601f
    /* renamed from: getSize, reason: from getter */
    public int getLength() {
        return this.length;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        return kotlin.collections.builders.b.i(this.backing, 0, this.length);
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object element) {
        for (int i2 = 0; i2 < this.length; i2++) {
            if (j.a(this.backing[i2], element)) {
                return i2;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return this.length == 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    @NotNull
    public Iterator<E> iterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.List
    public int lastIndexOf(Object element) {
        for (int i2 = this.length - 1; i2 >= 0; i2--) {
            if (j.a(this.backing[i2], element)) {
                return i2;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    @NotNull
    public ListIterator<E> listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object element) {
        checkIsMutable();
        int iIndexOf = indexOf(element);
        if (iIndexOf >= 0) {
            removeAt(iIndexOf);
        }
        return iIndexOf >= 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(@NotNull Collection<?> elements) {
        j.e(elements, "elements");
        checkIsMutable();
        return retainOrRemoveAllInternal(0, this.length, elements, false) > 0;
    }

    @Override // kotlin.collections.AbstractC1601f
    public E removeAt(int index) {
        checkIsMutable();
        AbstractC1599d.Companion.b(index, this.length);
        return removeAtInternal(index);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(@NotNull Collection<?> elements) {
        j.e(elements, "elements");
        checkIsMutable();
        return retainOrRemoveAllInternal(0, this.length, elements, true) > 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public E set(int index, E element) {
        checkIsMutable();
        AbstractC1599d.Companion.b(index, this.length);
        E[] eArr = this.backing;
        E e2 = eArr[index];
        eArr[index] = element;
        return e2;
    }

    @Override // java.util.AbstractList, java.util.List
    @NotNull
    public List<E> subList(int fromIndex, int toIndex) {
        AbstractC1599d.Companion.d(fromIndex, toIndex, this.length);
        return new BuilderSubList(this.backing, fromIndex, toIndex - fromIndex, null, this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @NotNull
    public <T> T[] toArray(@NotNull T[] array) {
        j.e(array, "array");
        int length = array.length;
        int i2 = this.length;
        if (length >= i2) {
            l.h(this.backing, array, 0, 0, i2);
            return (T[]) p.f(this.length, array);
        }
        T[] tArr = (T[]) Arrays.copyOfRange(this.backing, 0, i2, array.getClass());
        j.d(tArr, "copyOfRange(...)");
        return tArr;
    }

    @Override // java.util.AbstractCollection
    @NotNull
    public String toString() {
        return kotlin.collections.builders.b.j(this.backing, 0, this.length, this);
    }

    public ListBuilder(int i2) {
        this.backing = (E[]) kotlin.collections.builders.b.d(i2);
    }

    @Override // java.util.AbstractList, java.util.List
    @NotNull
    public ListIterator<E> listIterator(int index) {
        AbstractC1599d.Companion.c(index, this.length);
        return new b(this, index);
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int index, E element) {
        checkIsMutable();
        AbstractC1599d.Companion.c(index, this.length);
        addAtInternal(index, element);
    }

    public /* synthetic */ ListBuilder(int i2, int i3, f fVar) {
        this((i3 & 1) != 0 ? 10 : i2);
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int index, @NotNull Collection<? extends E> elements) {
        j.e(elements, "elements");
        checkIsMutable();
        AbstractC1599d.Companion.c(index, this.length);
        int size = elements.size();
        addAllInternal(index, elements, size);
        return size > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @NotNull
    public Object[] toArray() {
        return l.o(this.backing, 0, this.length);
    }
}
