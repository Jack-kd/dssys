package androidx.collection;

import E1.d;
import androidx.annotation.IntRange;
import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.f;
import kotlin.jvm.internal.j;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u001c\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\r\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0011\b\u0004\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\r\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\r\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\n\u0010\tJA\u0010\n\u001a\u00020\u00072!\u0010\u000f\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u00070\u000bH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b\n\u0010\u0010JA\u0010\u0011\u001a\u00020\u00072!\u0010\u000f\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u00070\u000bH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b\u0011\u0010\u0010J\u0018\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00028\u0000H\u0086\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u001b\u0010\u0016\u001a\u00020\u00072\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u001b\u0010\u0016\u001a\u00020\u00072\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u0018¢\u0006\u0004\b\u0016\u0010\u0019J\u001b\u0010\u0016\u001a\u00020\u00072\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u001a¢\u0006\u0004\b\u0016\u0010\u001bJ\u001b\u0010\u0016\u001a\u00020\u00072\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000¢\u0006\u0004\b\u0016\u0010\u001cJ\r\u0010\u001d\u001a\u00020\u0003¢\u0006\u0004\b\u001d\u0010\u001eJA\u0010\u001d\u001a\u00020\u00032!\u0010\u000f\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u00070\u000bH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b\u001d\u0010\u001fJ\r\u0010 \u001a\u00028\u0000¢\u0006\u0004\b \u0010!JA\u0010 \u001a\u00028\u00002!\u0010\u000f\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u00070\u000bH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b \u0010\"J\u0012\u0010#\u001a\u0004\u0018\u00018\u0000H\u0086\b¢\u0006\u0004\b#\u0010!JC\u0010#\u001a\u0004\u0018\u00018\u00002!\u0010\u000f\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u00070\u000bH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b#\u0010\"Jd\u0010)\u001a\u00028\u0001\"\u0004\b\u0001\u0010$2\u0006\u0010%\u001a\u00028\u000126\u0010(\u001a2\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b('\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00028\u00010&H\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0002¢\u0006\u0004\b)\u0010*Jy\u0010-\u001a\u00028\u0001\"\u0004\b\u0001\u0010$2\u0006\u0010%\u001a\u00028\u00012K\u0010(\u001aG\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(,\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b('\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00028\u00010+H\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0002¢\u0006\u0004\b-\u0010.Jd\u0010/\u001a\u00028\u0001\"\u0004\b\u0001\u0010$2\u0006\u0010%\u001a\u00028\u000126\u0010(\u001a2\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b('\u0012\u0004\u0012\u00028\u00010&H\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0002¢\u0006\u0004\b/\u0010*Jy\u00100\u001a\u00028\u0001\"\u0004\b\u0001\u0010$2\u0006\u0010%\u001a\u00028\u00012K\u0010(\u001aG\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(,\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b('\u0012\u0004\u0012\u00028\u00010+H\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0002¢\u0006\u0004\b0\u0010.JA\u00103\u001a\u0002012!\u00102\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u0002010\u000bH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b3\u00104JV\u00105\u001a\u00020126\u00102\u001a2\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(,\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u0002010&H\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b5\u00106JA\u00107\u001a\u0002012!\u00102\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u0002010\u000bH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b7\u00104JV\u00108\u001a\u00020126\u00102\u001a2\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(,\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u0002010&H\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b8\u00106J\u001a\u00109\u001a\u00028\u00002\b\b\u0001\u0010,\u001a\u00020\u0003H\u0086\u0002¢\u0006\u0004\b9\u0010:J\u0017\u0010;\u001a\u00028\u00002\b\b\u0001\u0010,\u001a\u00020\u0003¢\u0006\u0004\b;\u0010:J@\u0010=\u001a\u00028\u00002\b\b\u0001\u0010,\u001a\u00020\u00032!\u0010<\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(,\u0012\u0004\u0012\u00028\u00000\u000bH\u0086\bø\u0001\u0000¢\u0006\u0004\b=\u0010>J\u0015\u0010?\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00028\u0000¢\u0006\u0004\b?\u0010@JA\u0010A\u001a\u00020\u00032!\u0010\u000f\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u00070\u000bH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\bA\u0010\u001fJA\u0010B\u001a\u00020\u00032!\u0010\u000f\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u00070\u000bH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\bB\u0010\u001fJ\r\u0010C\u001a\u00020\u0007¢\u0006\u0004\bC\u0010\tJ\r\u0010D\u001a\u00020\u0007¢\u0006\u0004\bD\u0010\tJ\r\u0010E\u001a\u00028\u0000¢\u0006\u0004\bE\u0010!JA\u0010E\u001a\u00028\u00002!\u0010\u000f\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u00070\u000bH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\bE\u0010\"J\u0012\u0010F\u001a\u0004\u0018\u00018\u0000H\u0086\b¢\u0006\u0004\bF\u0010!JC\u0010F\u001a\u0004\u0018\u00018\u00002!\u0010\u000f\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u00070\u000bH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\bF\u0010\"J\u0015\u0010G\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00028\u0000¢\u0006\u0004\bG\u0010@JY\u0010P\u001a\u00020O2\b\b\u0002\u0010I\u001a\u00020H2\b\b\u0002\u0010J\u001a\u00020H2\b\b\u0002\u0010K\u001a\u00020H2\b\b\u0002\u0010L\u001a\u00020\u00032\b\b\u0002\u0010M\u001a\u00020H2\u0016\b\u0002\u0010N\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020H\u0018\u00010\u000bH\u0007¢\u0006\u0004\bP\u0010QJ\u0015\u0010R\u001a\b\u0012\u0004\u0012\u00028\u00000\u0018H&¢\u0006\u0004\bR\u0010SJ\u000f\u0010T\u001a\u00020\u0003H\u0016¢\u0006\u0004\bT\u0010\u001eJ\u001a\u0010V\u001a\u00020\u00072\b\u0010U\u001a\u0004\u0018\u00010\u0002H\u0096\u0002¢\u0006\u0004\bV\u0010\u0013J\u000f\u0010W\u001a\u00020OH\u0016¢\u0006\u0004\bW\u0010XR$\u0010Y\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00148\u0000@\u0000X\u0081\u000e¢\u0006\f\n\u0004\bY\u0010Z\u0012\u0004\b[\u0010\\R\u001c\u0010]\u001a\u00020\u00038\u0000@\u0000X\u0081\u000e¢\u0006\f\n\u0004\b]\u0010^\u0012\u0004\b_\u0010\\R\u0011\u0010a\u001a\u00020\u00038G¢\u0006\u0006\u001a\u0004\b`\u0010\u001eR\u0012\u0010c\u001a\u00020\u00038Ç\u0002¢\u0006\u0006\u001a\u0004\bb\u0010\u001eR\u0012\u0010g\u001a\u00020d8Æ\u0002¢\u0006\u0006\u001a\u0004\be\u0010f\u0082\u0001\u0001h\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006i"}, d2 = {"Landroidx/collection/ObjectList;", ExifInterface.LONGITUDE_EAST, "", "", "initialCapacity", "<init>", "(I)V", "", com.baidu.mobads.sdk.internal.a.f10877a, "()Z", "any", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "element", "predicate", "(Lkotlin/jvm/functions/Function1;)Z", "reversedAny", "contains", "(Ljava/lang/Object;)Z", "", "elements", "containsAll", "([Ljava/lang/Object;)Z", "", "(Ljava/util/List;)Z", "", "(Ljava/lang/Iterable;)Z", "(Landroidx/collection/ObjectList;)Z", "count", "()I", "(Lkotlin/jvm/functions/Function1;)I", "first", "()Ljava/lang/Object;", "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "firstOrNull", "R", "initial", "Lkotlin/Function2;", "acc", "operation", "fold", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "Lkotlin/Function3;", com.umeng.ccg.a.f49746H, "foldIndexed", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;", "foldRight", "foldRightIndexed", "Lkotlin/j;", "block", "forEach", "(Lkotlin/jvm/functions/Function1;)V", "forEachIndexed", "(Lkotlin/jvm/functions/Function2;)V", "forEachReversed", "forEachReversedIndexed", "get", "(I)Ljava/lang/Object;", "elementAt", "defaultValue", "elementAtOrElse", "(ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "indexOf", "(Ljava/lang/Object;)I", "indexOfFirst", "indexOfLast", "isEmpty", "isNotEmpty", "last", "lastOrNull", "lastIndexOf", "", "separator", "prefix", "postfix", "limit", "truncated", "transform", "", "joinToString", "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;", "asList", "()Ljava/util/List;", "hashCode", "other", "equals", "toString", "()Ljava/lang/String;", "content", "[Ljava/lang/Object;", "getContent$annotations", "()V", "_size", "I", "get_size$annotations", "getSize", "size", "getLastIndex", "lastIndex", "LE1/d;", "getIndices", "()LE1/d;", "indices", "Landroidx/collection/MutableObjectList;", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nObjectList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectList.kt\nandroidx/collection/ObjectList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1618:1\n305#1,6:1619\n331#1,6:1625\n305#1,6:1633\n305#1,6:1639\n305#1,6:1645\n305#1,6:1651\n305#1,6:1657\n318#1,6:1663\n331#1,6:1669\n345#1,6:1675\n75#1:1681\n75#1:1682\n318#1,6:1683\n318#1,6:1689\n318#1,6:1695\n345#1,6:1701\n75#1:1707\n331#1,6:1708\n75#1:1714\n331#1,6:1715\n345#1,6:1721\n345#1,6:1727\n318#1,6:1733\n305#1,6:1739\n80#1:1745\n1855#2,2:1631\n*S KotlinDebug\n*F\n+ 1 ObjectList.kt\nandroidx/collection/ObjectList\n*L\n101#1:1619,6\n115#1:1625,6\n168#1:1633,6\n186#1:1639,6\n209#1:1645,6\n227#1:1651,6\n244#1:1657,6\n260#1:1663,6\n277#1:1669,6\n293#1:1675,6\n358#1:1681\n369#1:1682\n399#1:1683,6\n405#1:1689,6\n421#1:1695,6\n435#1:1701,6\n461#1:1707\n472#1:1708,6\n483#1:1714\n492#1:1715,6\n509#1:1721,6\n515#1:1727,6\n545#1:1733,6\n576#1:1739,6\n592#1:1745\n157#1:1631,2\n*E\n"})
/* loaded from: classes.dex */
public abstract class ObjectList<E> {

    @JvmField
    public int _size;

    @JvmField
    @NotNull
    public Object[] content;

    public /* synthetic */ ObjectList(int i2, f fVar) {
        this(i2);
    }

    @PublishedApi
    public static /* synthetic */ void getContent$annotations() {
    }

    @PublishedApi
    public static /* synthetic */ void get_size$annotations() {
    }

    public static /* synthetic */ String joinToString$default(ObjectList objectList, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i2, CharSequence charSequence4, Function1 function1, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: joinToString");
        }
        if ((i3 & 1) != 0) {
            charSequence = ", ";
        }
        if ((i3 & 2) != 0) {
            charSequence2 = "";
        }
        if ((i3 & 4) != 0) {
            charSequence3 = "";
        }
        if ((i3 & 8) != 0) {
            i2 = -1;
        }
        if ((i3 & 16) != 0) {
            charSequence4 = "...";
        }
        if ((i3 & 32) != 0) {
            function1 = null;
        }
        CharSequence charSequence5 = charSequence4;
        Function1 function12 = function1;
        return objectList.joinToString(charSequence, charSequence2, charSequence3, i2, charSequence5, function12);
    }

    public final boolean any() {
        return isNotEmpty();
    }

    @NotNull
    public abstract List<E> asList();

    public final boolean contains(E element) {
        return indexOf(element) >= 0;
    }

    public final boolean containsAll(@NotNull E[] elements) {
        j.e(elements, "elements");
        for (E e2 : elements) {
            if (!contains(e2)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: count, reason: from getter */
    public final int get_size() {
        return this._size;
    }

    public final E elementAt(@IntRange(from = 0) int index) {
        if (index >= 0 && index < this._size) {
            return (E) this.content[index];
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Index ");
        sb.append(index);
        sb.append(" must be in 0..");
        sb.append(this._size - 1);
        throw new IndexOutOfBoundsException(sb.toString());
    }

    public final E elementAtOrElse(@IntRange(from = 0) int index, @NotNull Function1<? super Integer, ? extends E> defaultValue) {
        j.e(defaultValue, "defaultValue");
        return (index < 0 || index >= this._size) ? defaultValue.invoke(Integer.valueOf(index)) : (E) this.content[index];
    }

    public boolean equals(@Nullable Object other) {
        if (other instanceof ObjectList) {
            ObjectList objectList = (ObjectList) other;
            int i2 = objectList._size;
            int i3 = this._size;
            if (i2 == i3) {
                Object[] objArr = this.content;
                Object[] objArr2 = objectList.content;
                d dVarJ = E1.f.j(0, i3);
                int iA = dVarJ.a();
                int iB = dVarJ.b();
                if (iA > iB) {
                    return true;
                }
                while (j.a(objArr[iA], objArr2[iA])) {
                    if (iA == iB) {
                        return true;
                    }
                    iA++;
                }
                return false;
            }
        }
        return false;
    }

    public final E first() {
        if (isEmpty()) {
            throw new NoSuchElementException("ObjectList is empty.");
        }
        return (E) this.content[0];
    }

    @Nullable
    public final E firstOrNull() {
        if (isEmpty()) {
            return null;
        }
        return get(0);
    }

    public final <R> R fold(R initial, @NotNull Function2<? super R, ? super E, ? extends R> operation) {
        j.e(operation, "operation");
        Object[] objArr = this.content;
        int i2 = this._size;
        for (int i3 = 0; i3 < i2; i3++) {
            initial = operation.invoke(initial, objArr[i3]);
        }
        return initial;
    }

    public final <R> R foldIndexed(R initial, @NotNull Function3<? super Integer, ? super R, ? super E, ? extends R> operation) {
        j.e(operation, "operation");
        Object[] objArr = this.content;
        int i2 = this._size;
        for (int i3 = 0; i3 < i2; i3++) {
            initial = operation.invoke(Integer.valueOf(i3), initial, objArr[i3]);
        }
        return initial;
    }

    public final <R> R foldRight(R initial, @NotNull Function2<? super E, ? super R, ? extends R> operation) {
        j.e(operation, "operation");
        Object[] objArr = this.content;
        int i2 = this._size;
        while (true) {
            i2--;
            if (-1 >= i2) {
                return initial;
            }
            initial = operation.invoke(objArr[i2], initial);
        }
    }

    public final <R> R foldRightIndexed(R initial, @NotNull Function3<? super Integer, ? super E, ? super R, ? extends R> operation) {
        j.e(operation, "operation");
        Object[] objArr = this.content;
        int i2 = this._size;
        while (true) {
            i2--;
            if (-1 >= i2) {
                return initial;
            }
            initial = operation.invoke(Integer.valueOf(i2), objArr[i2], initial);
        }
    }

    public final void forEach(@NotNull Function1<? super E, kotlin.j> block) {
        j.e(block, "block");
        Object[] objArr = this.content;
        int i2 = this._size;
        for (int i3 = 0; i3 < i2; i3++) {
            block.invoke(objArr[i3]);
        }
    }

    public final void forEachIndexed(@NotNull Function2<? super Integer, ? super E, kotlin.j> block) {
        j.e(block, "block");
        Object[] objArr = this.content;
        int i2 = this._size;
        for (int i3 = 0; i3 < i2; i3++) {
            block.invoke(Integer.valueOf(i3), objArr[i3]);
        }
    }

    public final void forEachReversed(@NotNull Function1<? super E, kotlin.j> block) {
        j.e(block, "block");
        Object[] objArr = this.content;
        int i2 = this._size;
        while (true) {
            i2--;
            if (-1 >= i2) {
                return;
            } else {
                block.invoke(objArr[i2]);
            }
        }
    }

    public final void forEachReversedIndexed(@NotNull Function2<? super Integer, ? super E, kotlin.j> block) {
        j.e(block, "block");
        Object[] objArr = this.content;
        int i2 = this._size;
        while (true) {
            i2--;
            if (-1 >= i2) {
                return;
            } else {
                block.invoke(Integer.valueOf(i2), objArr[i2]);
            }
        }
    }

    public final E get(@IntRange(from = 0) int index) {
        if (index >= 0 && index < this._size) {
            return (E) this.content[index];
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Index ");
        sb.append(index);
        sb.append(" must be in 0..");
        sb.append(this._size - 1);
        throw new IndexOutOfBoundsException(sb.toString());
    }

    @NotNull
    public final d getIndices() {
        return E1.f.j(0, this._size);
    }

    @IntRange(from = -1)
    public final int getLastIndex() {
        return this._size - 1;
    }

    @IntRange(from = 0)
    public final int getSize() {
        return this._size;
    }

    public int hashCode() {
        Object[] objArr = this.content;
        int i2 = this._size;
        int iHashCode = 0;
        for (int i3 = 0; i3 < i2; i3++) {
            Object obj = objArr[i3];
            iHashCode += (obj != null ? obj.hashCode() : 0) * 31;
        }
        return iHashCode;
    }

    public final int indexOf(E element) {
        int i2 = 0;
        if (element == null) {
            Object[] objArr = this.content;
            int i3 = this._size;
            while (i2 < i3) {
                if (objArr[i2] == null) {
                    return i2;
                }
                i2++;
            }
            return -1;
        }
        Object[] objArr2 = this.content;
        int i4 = this._size;
        while (i2 < i4) {
            if (element.equals(objArr2[i2])) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public final int indexOfFirst(@NotNull Function1<? super E, Boolean> predicate) {
        j.e(predicate, "predicate");
        Object[] objArr = this.content;
        int i2 = this._size;
        for (int i3 = 0; i3 < i2; i3++) {
            if (predicate.invoke(objArr[i3]).booleanValue()) {
                return i3;
            }
        }
        return -1;
    }

    public final int indexOfLast(@NotNull Function1<? super E, Boolean> predicate) {
        j.e(predicate, "predicate");
        Object[] objArr = this.content;
        int i2 = this._size;
        do {
            i2--;
            if (-1 >= i2) {
                return -1;
            }
        } while (!predicate.invoke(objArr[i2]).booleanValue());
        return i2;
    }

    public final boolean isEmpty() {
        return this._size == 0;
    }

    public final boolean isNotEmpty() {
        return this._size != 0;
    }

    @JvmOverloads
    @NotNull
    public final String joinToString() {
        return joinToString$default(this, null, null, null, 0, null, null, 63, null);
    }

    public final E last() {
        if (isEmpty()) {
            throw new NoSuchElementException("ObjectList is empty.");
        }
        return (E) this.content[this._size - 1];
    }

    public final int lastIndexOf(E element) {
        if (element == null) {
            Object[] objArr = this.content;
            for (int i2 = this._size - 1; -1 < i2; i2--) {
                if (objArr[i2] == null) {
                    return i2;
                }
            }
        } else {
            Object[] objArr2 = this.content;
            for (int i3 = this._size - 1; -1 < i3; i3--) {
                if (element.equals(objArr2[i3])) {
                    return i3;
                }
            }
        }
        return -1;
    }

    @Nullable
    public final E lastOrNull() {
        if (isEmpty()) {
            return null;
        }
        return (E) this.content[this._size - 1];
    }

    public final boolean none() {
        return isEmpty();
    }

    public final boolean reversedAny(@NotNull Function1<? super E, Boolean> predicate) {
        j.e(predicate, "predicate");
        Object[] objArr = this.content;
        for (int i2 = this._size - 1; -1 < i2; i2--) {
            if (predicate.invoke(objArr[i2]).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public String toString() {
        return joinToString$default(this, null, "[", "]", 0, null, new Function1<E, CharSequence>(this) { // from class: androidx.collection.ObjectList.toString.1
            final /* synthetic */ ObjectList<E> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ CharSequence invoke(Object obj) {
                return invoke((AnonymousClass1) obj);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final CharSequence invoke(E e2) {
                return e2 == this.this$0 ? "(this)" : String.valueOf(e2);
            }
        }, 25, null);
    }

    private ObjectList(int i2) {
        this.content = i2 == 0 ? ObjectListKt.EmptyArray : new Object[i2];
    }

    public final boolean any(@NotNull Function1<? super E, Boolean> predicate) {
        j.e(predicate, "predicate");
        Object[] objArr = this.content;
        int i2 = this._size;
        for (int i3 = 0; i3 < i2; i3++) {
            if (predicate.invoke(objArr[i3]).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    public final int count(@NotNull Function1<? super E, Boolean> predicate) {
        j.e(predicate, "predicate");
        Object[] objArr = this.content;
        int i2 = this._size;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            if (predicate.invoke(objArr[i4]).booleanValue()) {
                i3++;
            }
        }
        return i3;
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [E, java.lang.Object] */
    @Nullable
    public final E firstOrNull(@NotNull Function1<? super E, Boolean> predicate) {
        j.e(predicate, "predicate");
        Object[] objArr = this.content;
        int i2 = this._size;
        for (int i3 = 0; i3 < i2; i3++) {
            ?? r3 = (Object) objArr[i3];
            if (predicate.invoke(r3).booleanValue()) {
                return r3;
            }
        }
        return null;
    }

    @JvmOverloads
    @NotNull
    public final String joinToString(@NotNull CharSequence separator) {
        j.e(separator, "separator");
        return joinToString$default(this, separator, null, null, 0, null, null, 62, null);
    }

    public final boolean containsAll(@NotNull List<? extends E> elements) {
        j.e(elements, "elements");
        int size = elements.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (!contains(elements.get(i2))) {
                return false;
            }
        }
        return true;
    }

    @JvmOverloads
    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix) {
        j.e(separator, "separator");
        j.e(prefix, "prefix");
        return joinToString$default(this, separator, prefix, null, 0, null, null, 60, null);
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [E, java.lang.Object] */
    @Nullable
    public final E lastOrNull(@NotNull Function1<? super E, Boolean> predicate) {
        ?? r2;
        j.e(predicate, "predicate");
        Object[] objArr = this.content;
        int i2 = this._size;
        do {
            i2--;
            if (-1 >= i2) {
                return null;
            }
            r2 = (Object) objArr[i2];
        } while (!predicate.invoke(r2).booleanValue());
        return r2;
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [E, java.lang.Object] */
    public final E first(@NotNull Function1<? super E, Boolean> predicate) {
        j.e(predicate, "predicate");
        Object[] objArr = this.content;
        int i2 = this._size;
        for (int i3 = 0; i3 < i2; i3++) {
            ?? r3 = (Object) objArr[i3];
            if (predicate.invoke(r3).booleanValue()) {
                return r3;
            }
        }
        throw new NoSuchElementException("ObjectList contains no element matching the predicate.");
    }

    @JvmOverloads
    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix) {
        j.e(separator, "separator");
        j.e(prefix, "prefix");
        j.e(postfix, "postfix");
        return joinToString$default(this, separator, prefix, postfix, 0, null, null, 56, null);
    }

    public final boolean containsAll(@NotNull Iterable<? extends E> elements) {
        j.e(elements, "elements");
        Iterator<? extends E> it = elements.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @JvmOverloads
    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i2) {
        j.e(separator, "separator");
        j.e(prefix, "prefix");
        j.e(postfix, "postfix");
        return joinToString$default(this, separator, prefix, postfix, i2, null, null, 48, null);
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [E, java.lang.Object] */
    public final E last(@NotNull Function1<? super E, Boolean> predicate) {
        ?? r2;
        j.e(predicate, "predicate");
        Object[] objArr = this.content;
        int i2 = this._size;
        do {
            i2--;
            if (-1 < i2) {
                r2 = (Object) objArr[i2];
            } else {
                throw new NoSuchElementException("ObjectList contains no element matching the predicate.");
            }
        } while (!predicate.invoke(r2).booleanValue());
        return r2;
    }

    @JvmOverloads
    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i2, @NotNull CharSequence truncated) {
        j.e(separator, "separator");
        j.e(prefix, "prefix");
        j.e(postfix, "postfix");
        j.e(truncated, "truncated");
        return joinToString$default(this, separator, prefix, postfix, i2, truncated, null, 32, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean containsAll(@NotNull ObjectList<E> elements) {
        j.e(elements, "elements");
        Object[] objArr = elements.content;
        int i2 = elements._size;
        for (int i3 = 0; i3 < i2; i3++) {
            if (!contains(objArr[i3])) {
                return false;
            }
        }
        return true;
    }

    @JvmOverloads
    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int limit, @NotNull CharSequence truncated, @Nullable Function1<? super E, ? extends CharSequence> transform) {
        j.e(separator, "separator");
        j.e(prefix, "prefix");
        j.e(postfix, "postfix");
        j.e(truncated, "truncated");
        StringBuilder sb = new StringBuilder();
        sb.append(prefix);
        Object[] objArr = this.content;
        int i2 = this._size;
        int i3 = 0;
        while (true) {
            if (i3 < i2) {
                Object obj = objArr[i3];
                if (i3 == limit) {
                    sb.append(truncated);
                    break;
                }
                if (i3 != 0) {
                    sb.append(separator);
                }
                if (transform == null) {
                    sb.append(obj);
                } else {
                    sb.append(transform.invoke(obj));
                }
                i3++;
            } else {
                sb.append(postfix);
                break;
            }
        }
        String string = sb.toString();
        j.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }
}
