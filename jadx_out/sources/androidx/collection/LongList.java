package androidx.collection;

import E1.d;
import androidx.annotation.IntRange;
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

@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\r\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u0016\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001B\u0011\b\u0004\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\r\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\r\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\bJA\u0010\t\u001a\u00020\u00062!\u0010\u000f\u001a\u001d\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u00060\nH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b\t\u0010\u0010JA\u0010\u0011\u001a\u00020\u00062!\u0010\u000f\u001a\u001d\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u00060\nH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b\u0011\u0010\u0010J\u0018\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000bH\u0086\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0015\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0000¢\u0006\u0004\b\u0015\u0010\u0016J\r\u0010\u0017\u001a\u00020\u0002¢\u0006\u0004\b\u0017\u0010\u0018JA\u0010\u0017\u001a\u00020\u00022!\u0010\u000f\u001a\u001d\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u00060\nH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b\u0017\u0010\u0019J\r\u0010\u001a\u001a\u00020\u000b¢\u0006\u0004\b\u001a\u0010\u001bJA\u0010\u001a\u001a\u00020\u000b2!\u0010\u000f\u001a\u001d\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u00060\nH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b\u001a\u0010\u001cJd\u0010\"\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u001d2\u0006\u0010\u001e\u001a\u00028\u000026\u0010!\u001a2\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b( \u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00028\u00000\u001fH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0002¢\u0006\u0004\b\"\u0010#Jy\u0010&\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u001d2\u0006\u0010\u001e\u001a\u00028\u00002K\u0010!\u001aG\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(%\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b( \u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00028\u00000$H\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0002¢\u0006\u0004\b&\u0010'Jd\u0010(\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u001d2\u0006\u0010\u001e\u001a\u00028\u000026\u0010!\u001a2\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b( \u0012\u0004\u0012\u00028\u00000\u001fH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0002¢\u0006\u0004\b(\u0010#Jy\u0010)\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u001d2\u0006\u0010\u001e\u001a\u00028\u00002K\u0010!\u001aG\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(%\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b( \u0012\u0004\u0012\u00028\u00000$H\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0002¢\u0006\u0004\b)\u0010'JA\u0010,\u001a\u00020*2!\u0010+\u001a\u001d\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020*0\nH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b,\u0010-JV\u0010.\u001a\u00020*26\u0010+\u001a2\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(%\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020*0\u001fH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b.\u0010/JA\u00100\u001a\u00020*2!\u0010+\u001a\u001d\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020*0\nH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b0\u0010-JV\u00101\u001a\u00020*26\u0010+\u001a2\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(%\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020*0\u001fH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b1\u0010/J\u001a\u00102\u001a\u00020\u000b2\b\b\u0001\u0010%\u001a\u00020\u0002H\u0086\u0002¢\u0006\u0004\b2\u00103J\u0017\u00104\u001a\u00020\u000b2\b\b\u0001\u0010%\u001a\u00020\u0002¢\u0006\u0004\b4\u00103J@\u00106\u001a\u00020\u000b2\b\b\u0001\u0010%\u001a\u00020\u00022!\u00105\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(%\u0012\u0004\u0012\u00020\u000b0\nH\u0086\bø\u0001\u0000¢\u0006\u0004\b6\u00107J\u0015\u00108\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b8\u00109JA\u0010:\u001a\u00020\u00022!\u0010\u000f\u001a\u001d\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u00060\nH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b:\u0010\u0019JA\u0010;\u001a\u00020\u00022!\u0010\u000f\u001a\u001d\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u00060\nH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b;\u0010\u0019J\r\u0010<\u001a\u00020\u0006¢\u0006\u0004\b<\u0010\bJ\r\u0010=\u001a\u00020\u0006¢\u0006\u0004\b=\u0010\bJ\r\u0010>\u001a\u00020\u000b¢\u0006\u0004\b>\u0010\u001bJA\u0010>\u001a\u00020\u000b2!\u0010\u000f\u001a\u001d\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u00060\nH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b>\u0010\u001cJ\u0015\u0010?\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b?\u00109JA\u0010G\u001a\u00020F2\b\b\u0002\u0010A\u001a\u00020@2\b\b\u0002\u0010B\u001a\u00020@2\b\b\u0002\u0010C\u001a\u00020@2\b\b\u0002\u0010D\u001a\u00020\u00022\b\b\u0002\u0010E\u001a\u00020@H\u0007¢\u0006\u0004\bG\u0010HJ[\u0010G\u001a\u00020F2\b\b\u0002\u0010A\u001a\u00020@2\b\b\u0002\u0010B\u001a\u00020@2\b\b\u0002\u0010C\u001a\u00020@2\b\b\u0002\u0010D\u001a\u00020\u00022\b\b\u0002\u0010E\u001a\u00020@2\u0014\b\u0004\u0010I\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020@0\nH\u0087\bø\u0001\u0000¢\u0006\u0004\bG\u0010JJ\u000f\u0010K\u001a\u00020\u0002H\u0016¢\u0006\u0004\bK\u0010\u0018J\u001a\u0010M\u001a\u00020\u00062\b\u0010L\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\bM\u0010NJ\u000f\u0010O\u001a\u00020FH\u0016¢\u0006\u0004\bO\u0010PR\u001c\u0010R\u001a\u00020Q8\u0000@\u0000X\u0081\u000e¢\u0006\f\n\u0004\bR\u0010S\u0012\u0004\bT\u0010UR\u001c\u0010V\u001a\u00020\u00028\u0000@\u0000X\u0081\u000e¢\u0006\f\n\u0004\bV\u0010W\u0012\u0004\bX\u0010UR\u0011\u0010Z\u001a\u00020\u00028G¢\u0006\u0006\u001a\u0004\bY\u0010\u0018R\u0012\u0010\\\u001a\u00020\u00028Ç\u0002¢\u0006\u0006\u001a\u0004\b[\u0010\u0018R\u0012\u0010`\u001a\u00020]8Æ\u0002¢\u0006\u0006\u001a\u0004\b^\u0010_\u0082\u0001\u0001a\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006b"}, d2 = {"Landroidx/collection/LongList;", "", "", "initialCapacity", "<init>", "(I)V", "", com.baidu.mobads.sdk.internal.a.f10877a, "()Z", "any", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "element", "predicate", "(Lkotlin/jvm/functions/Function1;)Z", "reversedAny", "contains", "(J)Z", "elements", "containsAll", "(Landroidx/collection/LongList;)Z", "count", "()I", "(Lkotlin/jvm/functions/Function1;)I", "first", "()J", "(Lkotlin/jvm/functions/Function1;)J", "R", "initial", "Lkotlin/Function2;", "acc", "operation", "fold", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "Lkotlin/Function3;", com.umeng.ccg.a.f49746H, "foldIndexed", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;", "foldRight", "foldRightIndexed", "Lkotlin/j;", "block", "forEach", "(Lkotlin/jvm/functions/Function1;)V", "forEachIndexed", "(Lkotlin/jvm/functions/Function2;)V", "forEachReversed", "forEachReversedIndexed", "get", "(I)J", "elementAt", "defaultValue", "elementAtOrElse", "(ILkotlin/jvm/functions/Function1;)J", "indexOf", "(J)I", "indexOfFirst", "indexOfLast", "isEmpty", "isNotEmpty", "last", "lastIndexOf", "", "separator", "prefix", "postfix", "limit", "truncated", "", "joinToString", "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Ljava/lang/String;", "transform", "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;", "hashCode", "other", "equals", "(Ljava/lang/Object;)Z", "toString", "()Ljava/lang/String;", "", "content", "[J", "getContent$annotations", "()V", "_size", "I", "get_size$annotations", "getSize", "size", "getLastIndex", "lastIndex", "LE1/d;", "getIndices", "()LE1/d;", "indices", "Landroidx/collection/MutableLongList;", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nLongList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LongList.kt\nandroidx/collection/LongList\n*L\n1#1,969:1\n253#1,6:970\n279#1,6:976\n253#1,6:982\n75#1:988\n253#1,6:989\n253#1,6:995\n253#1,6:1001\n266#1,6:1007\n279#1,6:1013\n293#1,6:1019\n70#1:1025\n70#1:1026\n266#1,6:1027\n266#1,6:1033\n293#1,6:1039\n70#1:1045\n279#1,6:1046\n293#1,6:1052\n266#1,6:1058\n266#1,6:1064\n253#1,6:1070\n75#1:1076\n467#1,10:1077\n266#1,4:1087\n477#1,9:1091\n271#1:1100\n486#1,2:1101\n467#1,10:1103\n266#1,4:1113\n477#1,9:1117\n271#1:1126\n486#1,2:1127\n467#1,10:1129\n266#1,4:1139\n477#1,9:1143\n271#1:1152\n486#1,2:1153\n467#1,10:1155\n266#1,4:1165\n477#1,9:1169\n271#1:1178\n486#1,2:1179\n467#1,10:1181\n266#1,4:1191\n477#1,9:1195\n271#1:1204\n486#1,2:1205\n*S KotlinDebug\n*F\n+ 1 LongList.kt\nandroidx/collection/LongList\n*L\n96#1:970,6\n110#1:976,6\n122#1:982,6\n135#1:988\n153#1:989,6\n175#1:995,6\n192#1:1001,6\n208#1:1007,6\n225#1:1013,6\n241#1:1019,6\n306#1:1025\n317#1:1026\n343#1:1027,6\n357#1:1033,6\n371#1:1039,6\n397#1:1045\n407#1:1046,6\n420#1:1052,6\n445#1:1058,6\n476#1:1064,6\n494#1:1070,6\n510#1:1076\n-1#1:1077,10\n-1#1:1087,4\n-1#1:1091,9\n-1#1:1100\n-1#1:1101,2\n-1#1:1103,10\n-1#1:1113,4\n-1#1:1117,9\n-1#1:1126\n-1#1:1127,2\n-1#1:1129,10\n-1#1:1139,4\n-1#1:1143,9\n-1#1:1152\n-1#1:1153,2\n-1#1:1155,10\n-1#1:1165,4\n-1#1:1169,9\n-1#1:1178\n-1#1:1179,2\n-1#1:1181,10\n-1#1:1191,4\n-1#1:1195,9\n-1#1:1204\n-1#1:1205,2\n*E\n"})
/* loaded from: classes.dex */
public abstract class LongList {

    @JvmField
    public int _size;

    @JvmField
    @NotNull
    public long[] content;

    public /* synthetic */ LongList(int i2, f fVar) {
        this(i2);
    }

    @PublishedApi
    public static /* synthetic */ void getContent$annotations() {
    }

    @PublishedApi
    public static /* synthetic */ void get_size$annotations() {
    }

    public static /* synthetic */ String joinToString$default(LongList longList, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i2, CharSequence charSequence4, int i3, Object obj) {
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
        CharSequence charSequence5 = charSequence4;
        CharSequence charSequence6 = charSequence3;
        return longList.joinToString(charSequence, charSequence2, charSequence6, i2, charSequence5);
    }

    public final boolean any() {
        return isNotEmpty();
    }

    public final boolean contains(long element) {
        long[] jArr = this.content;
        int i2 = this._size;
        for (int i3 = 0; i3 < i2; i3++) {
            if (jArr[i3] == element) {
                return true;
            }
        }
        return false;
    }

    public final boolean containsAll(@NotNull LongList elements) {
        j.e(elements, "elements");
        d dVarJ = E1.f.j(0, elements._size);
        int iA = dVarJ.a();
        int iB = dVarJ.b();
        if (iA > iB) {
            return true;
        }
        while (contains(elements.get(iA))) {
            if (iA == iB) {
                return true;
            }
            iA++;
        }
        return false;
    }

    /* renamed from: count, reason: from getter */
    public final int get_size() {
        return this._size;
    }

    public final long elementAt(@IntRange(from = 0) int index) {
        if (index >= 0 && index < this._size) {
            return this.content[index];
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Index ");
        sb.append(index);
        sb.append(" must be in 0..");
        sb.append(this._size - 1);
        throw new IndexOutOfBoundsException(sb.toString());
    }

    public final long elementAtOrElse(@IntRange(from = 0) int index, @NotNull Function1<? super Integer, Long> defaultValue) {
        j.e(defaultValue, "defaultValue");
        return (index < 0 || index >= this._size) ? defaultValue.invoke(Integer.valueOf(index)).longValue() : this.content[index];
    }

    public boolean equals(@Nullable Object other) {
        if (other instanceof LongList) {
            LongList longList = (LongList) other;
            int i2 = longList._size;
            int i3 = this._size;
            if (i2 == i3) {
                long[] jArr = this.content;
                long[] jArr2 = longList.content;
                d dVarJ = E1.f.j(0, i3);
                int iA = dVarJ.a();
                int iB = dVarJ.b();
                if (iA > iB) {
                    return true;
                }
                while (jArr[iA] == jArr2[iA]) {
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

    public final long first() {
        if (isEmpty()) {
            throw new NoSuchElementException("LongList is empty.");
        }
        return this.content[0];
    }

    public final <R> R fold(R initial, @NotNull Function2<? super R, ? super Long, ? extends R> operation) {
        j.e(operation, "operation");
        long[] jArr = this.content;
        int i2 = this._size;
        for (int i3 = 0; i3 < i2; i3++) {
            initial = operation.invoke(initial, Long.valueOf(jArr[i3]));
        }
        return initial;
    }

    public final <R> R foldIndexed(R initial, @NotNull Function3<? super Integer, ? super R, ? super Long, ? extends R> operation) {
        j.e(operation, "operation");
        long[] jArr = this.content;
        int i2 = this._size;
        for (int i3 = 0; i3 < i2; i3++) {
            R r2 = initial;
            initial = operation.invoke(Integer.valueOf(i3), r2, Long.valueOf(jArr[i3]));
        }
        return initial;
    }

    public final <R> R foldRight(R initial, @NotNull Function2<? super Long, ? super R, ? extends R> operation) {
        j.e(operation, "operation");
        long[] jArr = this.content;
        int i2 = this._size;
        while (true) {
            i2--;
            if (-1 >= i2) {
                return initial;
            }
            initial = operation.invoke(Long.valueOf(jArr[i2]), initial);
        }
    }

    public final <R> R foldRightIndexed(R initial, @NotNull Function3<? super Integer, ? super Long, ? super R, ? extends R> operation) {
        j.e(operation, "operation");
        long[] jArr = this.content;
        int i2 = this._size;
        while (true) {
            i2--;
            if (-1 >= i2) {
                return initial;
            }
            initial = operation.invoke(Integer.valueOf(i2), Long.valueOf(jArr[i2]), initial);
        }
    }

    public final void forEach(@NotNull Function1<? super Long, kotlin.j> block) {
        j.e(block, "block");
        long[] jArr = this.content;
        int i2 = this._size;
        for (int i3 = 0; i3 < i2; i3++) {
            block.invoke(Long.valueOf(jArr[i3]));
        }
    }

    public final void forEachIndexed(@NotNull Function2<? super Integer, ? super Long, kotlin.j> block) {
        j.e(block, "block");
        long[] jArr = this.content;
        int i2 = this._size;
        for (int i3 = 0; i3 < i2; i3++) {
            block.invoke(Integer.valueOf(i3), Long.valueOf(jArr[i3]));
        }
    }

    public final void forEachReversed(@NotNull Function1<? super Long, kotlin.j> block) {
        j.e(block, "block");
        long[] jArr = this.content;
        int i2 = this._size;
        while (true) {
            i2--;
            if (-1 >= i2) {
                return;
            } else {
                block.invoke(Long.valueOf(jArr[i2]));
            }
        }
    }

    public final void forEachReversedIndexed(@NotNull Function2<? super Integer, ? super Long, kotlin.j> block) {
        j.e(block, "block");
        long[] jArr = this.content;
        int i2 = this._size;
        while (true) {
            i2--;
            if (-1 >= i2) {
                return;
            } else {
                block.invoke(Integer.valueOf(i2), Long.valueOf(jArr[i2]));
            }
        }
    }

    public final long get(@IntRange(from = 0) int index) {
        if (index >= 0 && index < this._size) {
            return this.content[index];
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
        long[] jArr = this.content;
        int i2 = this._size;
        int iHashCode = 0;
        for (int i3 = 0; i3 < i2; i3++) {
            iHashCode += Long.hashCode(jArr[i3]) * 31;
        }
        return iHashCode;
    }

    public final int indexOf(long element) {
        long[] jArr = this.content;
        int i2 = this._size;
        for (int i3 = 0; i3 < i2; i3++) {
            if (element == jArr[i3]) {
                return i3;
            }
        }
        return -1;
    }

    public final int indexOfFirst(@NotNull Function1<? super Long, Boolean> predicate) {
        j.e(predicate, "predicate");
        long[] jArr = this.content;
        int i2 = this._size;
        for (int i3 = 0; i3 < i2; i3++) {
            if (predicate.invoke(Long.valueOf(jArr[i3])).booleanValue()) {
                return i3;
            }
        }
        return -1;
    }

    public final int indexOfLast(@NotNull Function1<? super Long, Boolean> predicate) {
        j.e(predicate, "predicate");
        long[] jArr = this.content;
        int i2 = this._size;
        do {
            i2--;
            if (-1 >= i2) {
                return -1;
            }
        } while (!predicate.invoke(Long.valueOf(jArr[i2])).booleanValue());
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
        return joinToString$default(this, null, null, null, 0, null, 31, null);
    }

    public final long last() {
        if (isEmpty()) {
            throw new NoSuchElementException("LongList is empty.");
        }
        return this.content[this._size - 1];
    }

    public final int lastIndexOf(long element) {
        long[] jArr = this.content;
        int i2 = this._size;
        do {
            i2--;
            if (-1 >= i2) {
                return -1;
            }
        } while (jArr[i2] != element);
        return i2;
    }

    public final boolean none() {
        return isEmpty();
    }

    public final boolean reversedAny(@NotNull Function1<? super Long, Boolean> predicate) {
        j.e(predicate, "predicate");
        long[] jArr = this.content;
        for (int i2 = this._size - 1; -1 < i2; i2--) {
            if (predicate.invoke(Long.valueOf(jArr[i2])).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public String toString() {
        return joinToString$default(this, null, "[", "]", 0, null, 25, null);
    }

    private LongList(int i2) {
        this.content = i2 == 0 ? LongSetKt.getEmptyLongArray() : new long[i2];
    }

    public final boolean any(@NotNull Function1<? super Long, Boolean> predicate) {
        j.e(predicate, "predicate");
        long[] jArr = this.content;
        int i2 = this._size;
        for (int i3 = 0; i3 < i2; i3++) {
            if (predicate.invoke(Long.valueOf(jArr[i3])).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    public final int count(@NotNull Function1<? super Long, Boolean> predicate) {
        j.e(predicate, "predicate");
        long[] jArr = this.content;
        int i2 = this._size;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            if (predicate.invoke(Long.valueOf(jArr[i4])).booleanValue()) {
                i3++;
            }
        }
        return i3;
    }

    @JvmOverloads
    @NotNull
    public final String joinToString(@NotNull CharSequence separator) {
        j.e(separator, "separator");
        return joinToString$default(this, separator, null, null, 0, null, 30, null);
    }

    @JvmOverloads
    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix) {
        j.e(separator, "separator");
        j.e(prefix, "prefix");
        return joinToString$default(this, separator, prefix, null, 0, null, 28, null);
    }

    public final long first(@NotNull Function1<? super Long, Boolean> predicate) {
        j.e(predicate, "predicate");
        long[] jArr = this.content;
        int i2 = this._size;
        for (int i3 = 0; i3 < i2; i3++) {
            long j2 = jArr[i3];
            if (predicate.invoke(Long.valueOf(j2)).booleanValue()) {
                return j2;
            }
        }
        throw new NoSuchElementException("LongList contains no element matching the predicate.");
    }

    @JvmOverloads
    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix) {
        j.e(separator, "separator");
        j.e(prefix, "prefix");
        j.e(postfix, "postfix");
        return joinToString$default(this, separator, prefix, postfix, 0, null, 24, null);
    }

    public static /* synthetic */ String joinToString$default(LongList longList, CharSequence separator, CharSequence prefix, CharSequence postfix, int i2, CharSequence truncated, Function1 transform, int i3, Object obj) {
        if (obj == null) {
            if ((i3 & 1) != 0) {
                separator = ", ";
            }
            if ((i3 & 2) != 0) {
                prefix = "";
            }
            if ((i3 & 4) != 0) {
                postfix = "";
            }
            if ((i3 & 8) != 0) {
                i2 = -1;
            }
            if ((i3 & 16) != 0) {
                truncated = "...";
            }
            j.e(separator, "separator");
            j.e(prefix, "prefix");
            j.e(postfix, "postfix");
            j.e(truncated, "truncated");
            j.e(transform, "transform");
            StringBuilder sb = new StringBuilder();
            sb.append(prefix);
            long[] jArr = longList.content;
            int i4 = longList._size;
            int i5 = 0;
            while (true) {
                if (i5 < i4) {
                    long j2 = jArr[i5];
                    if (i5 == i2) {
                        sb.append(truncated);
                        break;
                    }
                    if (i5 != 0) {
                        sb.append(separator);
                    }
                    sb.append((CharSequence) transform.invoke(Long.valueOf(j2)));
                    i5++;
                } else {
                    sb.append(postfix);
                    break;
                }
            }
            String string = sb.toString();
            j.d(string, "StringBuilder().apply(builderAction).toString()");
            return string;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: joinToString");
    }

    @JvmOverloads
    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i2) {
        j.e(separator, "separator");
        j.e(prefix, "prefix");
        j.e(postfix, "postfix");
        return joinToString$default(this, separator, prefix, postfix, i2, null, 16, null);
    }

    public final long last(@NotNull Function1<? super Long, Boolean> predicate) {
        long j2;
        j.e(predicate, "predicate");
        long[] jArr = this.content;
        int i2 = this._size;
        do {
            i2--;
            if (-1 < i2) {
                j2 = jArr[i2];
            } else {
                throw new NoSuchElementException("LongList contains no element matching the predicate.");
            }
        } while (!predicate.invoke(Long.valueOf(j2)).booleanValue());
        return j2;
    }

    @JvmOverloads
    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int limit, @NotNull CharSequence truncated) {
        j.e(separator, "separator");
        j.e(prefix, "prefix");
        j.e(postfix, "postfix");
        j.e(truncated, "truncated");
        StringBuilder sb = new StringBuilder();
        sb.append(prefix);
        long[] jArr = this.content;
        int i2 = this._size;
        int i3 = 0;
        while (true) {
            if (i3 < i2) {
                long j2 = jArr[i3];
                if (i3 == limit) {
                    sb.append(truncated);
                    break;
                }
                if (i3 != 0) {
                    sb.append(separator);
                }
                sb.append(j2);
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

    @JvmOverloads
    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int limit, @NotNull CharSequence truncated, @NotNull Function1<? super Long, ? extends CharSequence> transform) {
        j.e(separator, "separator");
        j.e(prefix, "prefix");
        j.e(postfix, "postfix");
        j.e(truncated, "truncated");
        j.e(transform, "transform");
        StringBuilder sb = new StringBuilder();
        sb.append(prefix);
        long[] jArr = this.content;
        int i2 = this._size;
        int i3 = 0;
        while (true) {
            if (i3 < i2) {
                long j2 = jArr[i3];
                if (i3 == limit) {
                    sb.append(truncated);
                    break;
                }
                if (i3 != 0) {
                    sb.append(separator);
                }
                sb.append(transform.invoke(Long.valueOf(j2)));
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

    @JvmOverloads
    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i2, @NotNull Function1<? super Long, ? extends CharSequence> transform) {
        j.e(separator, "separator");
        j.e(prefix, "prefix");
        j.e(postfix, "postfix");
        j.e(transform, "transform");
        StringBuilder sb = new StringBuilder();
        sb.append(prefix);
        long[] jArr = this.content;
        int i3 = this._size;
        int i4 = 0;
        while (true) {
            if (i4 < i3) {
                long j2 = jArr[i4];
                if (i4 == i2) {
                    sb.append((CharSequence) "...");
                    break;
                }
                if (i4 != 0) {
                    sb.append(separator);
                }
                sb.append(transform.invoke(Long.valueOf(j2)));
                i4++;
            } else {
                sb.append(postfix);
                break;
            }
        }
        String string = sb.toString();
        j.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    @JvmOverloads
    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, @NotNull Function1<? super Long, ? extends CharSequence> transform) {
        j.e(separator, "separator");
        j.e(prefix, "prefix");
        j.e(postfix, "postfix");
        j.e(transform, "transform");
        StringBuilder sb = new StringBuilder();
        sb.append(prefix);
        long[] jArr = this.content;
        int i2 = this._size;
        int i3 = 0;
        while (true) {
            if (i3 < i2) {
                long j2 = jArr[i3];
                if (i3 == -1) {
                    sb.append((CharSequence) "...");
                    break;
                }
                if (i3 != 0) {
                    sb.append(separator);
                }
                sb.append(transform.invoke(Long.valueOf(j2)));
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

    @JvmOverloads
    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull Function1<? super Long, ? extends CharSequence> transform) {
        j.e(separator, "separator");
        j.e(prefix, "prefix");
        j.e(transform, "transform");
        StringBuilder sb = new StringBuilder();
        sb.append(prefix);
        long[] jArr = this.content;
        int i2 = this._size;
        int i3 = 0;
        while (true) {
            if (i3 < i2) {
                long j2 = jArr[i3];
                if (i3 == -1) {
                    sb.append((CharSequence) "...");
                    break;
                }
                if (i3 != 0) {
                    sb.append(separator);
                }
                sb.append(transform.invoke(Long.valueOf(j2)));
                i3++;
            } else {
                sb.append((CharSequence) "");
                break;
            }
        }
        String string = sb.toString();
        j.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    @JvmOverloads
    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull Function1<? super Long, ? extends CharSequence> transform) {
        j.e(separator, "separator");
        j.e(transform, "transform");
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) "");
        long[] jArr = this.content;
        int i2 = this._size;
        int i3 = 0;
        while (true) {
            if (i3 < i2) {
                long j2 = jArr[i3];
                if (i3 == -1) {
                    sb.append((CharSequence) "...");
                    break;
                }
                if (i3 != 0) {
                    sb.append(separator);
                }
                sb.append(transform.invoke(Long.valueOf(j2)));
                i3++;
            } else {
                sb.append((CharSequence) "");
                break;
            }
        }
        String string = sb.toString();
        j.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    @JvmOverloads
    @NotNull
    public final String joinToString(@NotNull Function1<? super Long, ? extends CharSequence> transform) {
        j.e(transform, "transform");
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) "");
        long[] jArr = this.content;
        int i2 = this._size;
        int i3 = 0;
        while (true) {
            if (i3 < i2) {
                long j2 = jArr[i3];
                if (i3 == -1) {
                    sb.append((CharSequence) "...");
                    break;
                }
                if (i3 != 0) {
                    sb.append((CharSequence) ", ");
                }
                sb.append(transform.invoke(Long.valueOf(j2)));
                i3++;
            } else {
                sb.append((CharSequence) "");
                break;
            }
        }
        String string = sb.toString();
        j.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }
}
