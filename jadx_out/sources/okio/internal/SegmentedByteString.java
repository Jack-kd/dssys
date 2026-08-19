package okio.internal;

import com.anythink.core.common.f.f;
import com.umeng.ccg.a;
import io.flutter.plugin.editing.SpellCheckPlugin;
import kotlin.Metadata;
import kotlin.collections.l;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.j;
import okio.Buffer;
import okio.ByteString;
import okio.C1744SegmentedByteString;
import okio.Segment;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000T\n\u0002\u0010\u0015\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0002\b\u0004\u001a+\u0010\u0005\u001a\u00020\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u001b\u0010\t\u001a\u00020\u0001*\u00020\u00072\u0006\u0010\b\u001a\u00020\u0001H\u0000¢\u0006\u0004\b\t\u0010\n\u001ad\u0010\u0014\u001a\u00020\u0012*\u00020\u00072K\u0010\u0013\u001aG\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u0010\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u00120\u000bH\u0080\bø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015\u001aq\u0010\u0014\u001a\u00020\u0012*\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u00012K\u0010\u0013\u001aG\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u0010\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u00120\u000bH\u0082\b¢\u0006\u0004\b\u0014\u0010\u0018\u001a$\u0010\u001a\u001a\u00020\u0019*\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u0001H\u0080\b¢\u0006\u0004\b\u001a\u0010\u001b\u001a\u001c\u0010\u001d\u001a\u00020\u001c*\u00020\u00072\u0006\u0010\b\u001a\u00020\u0001H\u0080\b¢\u0006\u0004\b\u001d\u0010\u001e\u001a\u0014\u0010\u001f\u001a\u00020\u0001*\u00020\u0007H\u0080\b¢\u0006\u0004\b\u001f\u0010 \u001a\u0014\u0010!\u001a\u00020\f*\u00020\u0007H\u0080\b¢\u0006\u0004\b!\u0010\"\u001a,\u0010%\u001a\u00020\u0012*\u00020\u00072\u0006\u0010$\u001a\u00020#2\u0006\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u0001H\u0080\b¢\u0006\u0004\b%\u0010&\u001a4\u0010*\u001a\u00020)*\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00012\u0006\u0010'\u001a\u00020\u00192\u0006\u0010(\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u0001H\u0080\b¢\u0006\u0004\b*\u0010+\u001a4\u0010*\u001a\u00020)*\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00012\u0006\u0010'\u001a\u00020\f2\u0006\u0010(\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u0001H\u0080\b¢\u0006\u0004\b*\u0010,\u001a4\u0010/\u001a\u00020\u0012*\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00012\u0006\u0010-\u001a\u00020\f2\u0006\u0010.\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u0001H\u0080\b¢\u0006\u0004\b/\u00100\u001a\u001e\u00102\u001a\u00020)*\u00020\u00072\b\u0010'\u001a\u0004\u0018\u000101H\u0080\b¢\u0006\u0004\b2\u00103\u001a\u0014\u00104\u001a\u00020\u0001*\u00020\u0007H\u0080\b¢\u0006\u0004\b4\u0010 \u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u00065"}, d2 = {"", "", f.a.f3244d, "fromIndex", "toIndex", "binarySearch", "([IIII)I", "Lokio/SegmentedByteString;", "pos", "segment", "(Lokio/SegmentedByteString;I)I", "Lkotlin/Function3;", "", "Lkotlin/ParameterName;", "name", "data", "offset", "byteCount", "Lkotlin/j;", a.f49772z, "forEachSegment", "(Lokio/SegmentedByteString;Lkotlin/jvm/functions/Function3;)V", "beginIndex", SpellCheckPlugin.END_INDEX_KEY, "(Lokio/SegmentedByteString;IILkotlin/jvm/functions/Function3;)V", "Lokio/ByteString;", "commonSubstring", "(Lokio/SegmentedByteString;II)Lokio/ByteString;", "", "commonInternalGet", "(Lokio/SegmentedByteString;I)B", "commonGetSize", "(Lokio/SegmentedByteString;)I", "commonToByteArray", "(Lokio/SegmentedByteString;)[B", "Lokio/Buffer;", "buffer", "commonWrite", "(Lokio/SegmentedByteString;Lokio/Buffer;II)V", "other", "otherOffset", "", "commonRangeEquals", "(Lokio/SegmentedByteString;ILokio/ByteString;II)Z", "(Lokio/SegmentedByteString;I[BII)Z", a.f49744F, "targetOffset", "commonCopyInto", "(Lokio/SegmentedByteString;I[BII)V", "", "commonEquals", "(Lokio/SegmentedByteString;Ljava/lang/Object;)Z", "commonHashCode", "okio"}, k = 2, mv = {1, 9, 0}, xi = 48)
@JvmName(name = "-SegmentedByteString")
@SourceDebugExtension({"SMAP\nSegmentedByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SegmentedByteString.kt\nokio/internal/-SegmentedByteString\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,250:1\n63#1,12:252\n85#1,14:264\n85#1,14:278\n85#1,14:292\n85#1,14:306\n63#1,12:320\n1#2:251\n*S KotlinDebug\n*F\n+ 1 SegmentedByteString.kt\nokio/internal/-SegmentedByteString\n*L\n147#1:252,12\n160#1:264,14\n182#1:278,14\n202#1:292,14\n219#1:306,14\n239#1:320,12\n*E\n"})
/* renamed from: okio.internal.-SegmentedByteString, reason: invalid class name */
/* loaded from: classes5.dex */
public final class SegmentedByteString {
    public static final int binarySearch(@NotNull int[] iArr, int i2, int i3, int i4) {
        j.e(iArr, "<this>");
        int i5 = i4 - 1;
        while (i3 <= i5) {
            int i6 = (i3 + i5) >>> 1;
            int i7 = iArr[i6];
            if (i7 < i2) {
                i3 = i6 + 1;
            } else {
                if (i7 <= i2) {
                    return i6;
                }
                i5 = i6 - 1;
            }
        }
        return (-i3) - 1;
    }

    public static final void commonCopyInto(@NotNull C1744SegmentedByteString c1744SegmentedByteString, int i2, @NotNull byte[] target, int i3, int i4) {
        j.e(c1744SegmentedByteString, "<this>");
        j.e(target, "target");
        long j2 = i4;
        okio.SegmentedByteString.checkOffsetAndCount(c1744SegmentedByteString.size(), i2, j2);
        okio.SegmentedByteString.checkOffsetAndCount(target.length, i3, j2);
        int i5 = i4 + i2;
        int iSegment = segment(c1744SegmentedByteString, i2);
        while (i2 < i5) {
            int i6 = iSegment == 0 ? 0 : c1744SegmentedByteString.getDirectory()[iSegment - 1];
            int i7 = c1744SegmentedByteString.getDirectory()[iSegment] - i6;
            int i8 = c1744SegmentedByteString.getDirectory()[c1744SegmentedByteString.getSegments().length + iSegment];
            int iMin = Math.min(i5, i7 + i6) - i2;
            int i9 = i8 + (i2 - i6);
            l.d(c1744SegmentedByteString.getSegments()[iSegment], target, i3, i9, i9 + iMin);
            i3 += iMin;
            i2 += iMin;
            iSegment++;
        }
    }

    public static final boolean commonEquals(@NotNull C1744SegmentedByteString c1744SegmentedByteString, @Nullable Object obj) {
        j.e(c1744SegmentedByteString, "<this>");
        if (obj == c1744SegmentedByteString) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (byteString.size() == c1744SegmentedByteString.size() && c1744SegmentedByteString.rangeEquals(0, byteString, 0, c1744SegmentedByteString.size())) {
                return true;
            }
        }
        return false;
    }

    public static final int commonGetSize(@NotNull C1744SegmentedByteString c1744SegmentedByteString) {
        j.e(c1744SegmentedByteString, "<this>");
        return c1744SegmentedByteString.getDirectory()[c1744SegmentedByteString.getSegments().length - 1];
    }

    public static final int commonHashCode(@NotNull C1744SegmentedByteString c1744SegmentedByteString) {
        j.e(c1744SegmentedByteString, "<this>");
        int hashCode = c1744SegmentedByteString.getHashCode();
        if (hashCode != 0) {
            return hashCode;
        }
        int length = c1744SegmentedByteString.getSegments().length;
        int i2 = 0;
        int i3 = 1;
        int i4 = 0;
        while (i2 < length) {
            int i5 = c1744SegmentedByteString.getDirectory()[length + i2];
            int i6 = c1744SegmentedByteString.getDirectory()[i2];
            byte[] bArr = c1744SegmentedByteString.getSegments()[i2];
            int i7 = (i6 - i4) + i5;
            while (i5 < i7) {
                i3 = (i3 * 31) + bArr[i5];
                i5++;
            }
            i2++;
            i4 = i6;
        }
        c1744SegmentedByteString.setHashCode$okio(i3);
        return i3;
    }

    public static final byte commonInternalGet(@NotNull C1744SegmentedByteString c1744SegmentedByteString, int i2) {
        j.e(c1744SegmentedByteString, "<this>");
        okio.SegmentedByteString.checkOffsetAndCount(c1744SegmentedByteString.getDirectory()[c1744SegmentedByteString.getSegments().length - 1], i2, 1L);
        int iSegment = segment(c1744SegmentedByteString, i2);
        return c1744SegmentedByteString.getSegments()[iSegment][(i2 - (iSegment == 0 ? 0 : c1744SegmentedByteString.getDirectory()[iSegment - 1])) + c1744SegmentedByteString.getDirectory()[c1744SegmentedByteString.getSegments().length + iSegment]];
    }

    public static final boolean commonRangeEquals(@NotNull C1744SegmentedByteString c1744SegmentedByteString, int i2, @NotNull ByteString other, int i3, int i4) {
        j.e(c1744SegmentedByteString, "<this>");
        j.e(other, "other");
        if (i2 < 0 || i2 > c1744SegmentedByteString.size() - i4) {
            return false;
        }
        int i5 = i4 + i2;
        int iSegment = segment(c1744SegmentedByteString, i2);
        while (i2 < i5) {
            int i6 = iSegment == 0 ? 0 : c1744SegmentedByteString.getDirectory()[iSegment - 1];
            int i7 = c1744SegmentedByteString.getDirectory()[iSegment] - i6;
            int i8 = c1744SegmentedByteString.getDirectory()[c1744SegmentedByteString.getSegments().length + iSegment];
            int iMin = Math.min(i5, i7 + i6) - i2;
            if (!other.rangeEquals(i3, c1744SegmentedByteString.getSegments()[iSegment], i8 + (i2 - i6), iMin)) {
                return false;
            }
            i3 += iMin;
            i2 += iMin;
            iSegment++;
        }
        return true;
    }

    @NotNull
    public static final ByteString commonSubstring(@NotNull C1744SegmentedByteString c1744SegmentedByteString, int i2, int i3) {
        j.e(c1744SegmentedByteString, "<this>");
        int iResolveDefaultParameter = okio.SegmentedByteString.resolveDefaultParameter(c1744SegmentedByteString, i3);
        if (i2 < 0) {
            throw new IllegalArgumentException(("beginIndex=" + i2 + " < 0").toString());
        }
        if (iResolveDefaultParameter > c1744SegmentedByteString.size()) {
            throw new IllegalArgumentException(("endIndex=" + iResolveDefaultParameter + " > length(" + c1744SegmentedByteString.size() + ')').toString());
        }
        int i4 = iResolveDefaultParameter - i2;
        if (i4 < 0) {
            throw new IllegalArgumentException(("endIndex=" + iResolveDefaultParameter + " < beginIndex=" + i2).toString());
        }
        if (i2 == 0 && iResolveDefaultParameter == c1744SegmentedByteString.size()) {
            return c1744SegmentedByteString;
        }
        if (i2 == iResolveDefaultParameter) {
            return ByteString.EMPTY;
        }
        int iSegment = segment(c1744SegmentedByteString, i2);
        int iSegment2 = segment(c1744SegmentedByteString, iResolveDefaultParameter - 1);
        byte[][] bArr = (byte[][]) l.o(c1744SegmentedByteString.getSegments(), iSegment, iSegment2 + 1);
        int[] iArr = new int[bArr.length * 2];
        if (iSegment <= iSegment2) {
            int i5 = iSegment;
            int i6 = 0;
            while (true) {
                iArr[i6] = Math.min(c1744SegmentedByteString.getDirectory()[i5] - i2, i4);
                int i7 = i6 + 1;
                iArr[i6 + bArr.length] = c1744SegmentedByteString.getDirectory()[c1744SegmentedByteString.getSegments().length + i5];
                if (i5 == iSegment2) {
                    break;
                }
                i5++;
                i6 = i7;
            }
        }
        int i8 = iSegment != 0 ? c1744SegmentedByteString.getDirectory()[iSegment - 1] : 0;
        int length = bArr.length;
        iArr[length] = iArr[length] + (i2 - i8);
        return new C1744SegmentedByteString(bArr, iArr);
    }

    @NotNull
    public static final byte[] commonToByteArray(@NotNull C1744SegmentedByteString c1744SegmentedByteString) {
        j.e(c1744SegmentedByteString, "<this>");
        byte[] bArr = new byte[c1744SegmentedByteString.size()];
        int length = c1744SegmentedByteString.getSegments().length;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i2 < length) {
            int i5 = c1744SegmentedByteString.getDirectory()[length + i2];
            int i6 = c1744SegmentedByteString.getDirectory()[i2];
            int i7 = i6 - i3;
            l.d(c1744SegmentedByteString.getSegments()[i2], bArr, i4, i5, i5 + i7);
            i4 += i7;
            i2++;
            i3 = i6;
        }
        return bArr;
    }

    public static final void commonWrite(@NotNull C1744SegmentedByteString c1744SegmentedByteString, @NotNull Buffer buffer, int i2, int i3) {
        j.e(c1744SegmentedByteString, "<this>");
        j.e(buffer, "buffer");
        int i4 = i2 + i3;
        int iSegment = segment(c1744SegmentedByteString, i2);
        while (i2 < i4) {
            int i5 = iSegment == 0 ? 0 : c1744SegmentedByteString.getDirectory()[iSegment - 1];
            int i6 = c1744SegmentedByteString.getDirectory()[iSegment] - i5;
            int i7 = c1744SegmentedByteString.getDirectory()[c1744SegmentedByteString.getSegments().length + iSegment];
            int iMin = Math.min(i4, i6 + i5) - i2;
            int i8 = i7 + (i2 - i5);
            Segment segment = new Segment(c1744SegmentedByteString.getSegments()[iSegment], i8, i8 + iMin, true, false);
            Segment segment2 = buffer.head;
            if (segment2 == null) {
                segment.prev = segment;
                segment.next = segment;
                buffer.head = segment;
            } else {
                j.b(segment2);
                Segment segment3 = segment2.prev;
                j.b(segment3);
                segment3.push(segment);
            }
            i2 += iMin;
            iSegment++;
        }
        buffer.setSize$okio(buffer.size() + i3);
    }

    public static final void forEachSegment(@NotNull C1744SegmentedByteString c1744SegmentedByteString, @NotNull Function3<? super byte[], ? super Integer, ? super Integer, kotlin.j> action) {
        j.e(c1744SegmentedByteString, "<this>");
        j.e(action, "action");
        int length = c1744SegmentedByteString.getSegments().length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int i4 = c1744SegmentedByteString.getDirectory()[length + i2];
            int i5 = c1744SegmentedByteString.getDirectory()[i2];
            action.invoke(c1744SegmentedByteString.getSegments()[i2], Integer.valueOf(i4), Integer.valueOf(i5 - i3));
            i2++;
            i3 = i5;
        }
    }

    public static final int segment(@NotNull C1744SegmentedByteString c1744SegmentedByteString, int i2) {
        j.e(c1744SegmentedByteString, "<this>");
        int iBinarySearch = binarySearch(c1744SegmentedByteString.getDirectory(), i2 + 1, 0, c1744SegmentedByteString.getSegments().length);
        return iBinarySearch >= 0 ? iBinarySearch : ~iBinarySearch;
    }

    private static final void forEachSegment(C1744SegmentedByteString c1744SegmentedByteString, int i2, int i3, Function3<? super byte[], ? super Integer, ? super Integer, kotlin.j> function3) {
        int iSegment = segment(c1744SegmentedByteString, i2);
        while (i2 < i3) {
            int i4 = iSegment == 0 ? 0 : c1744SegmentedByteString.getDirectory()[iSegment - 1];
            int i5 = c1744SegmentedByteString.getDirectory()[iSegment] - i4;
            int i6 = c1744SegmentedByteString.getDirectory()[c1744SegmentedByteString.getSegments().length + iSegment];
            int iMin = Math.min(i3, i5 + i4) - i2;
            function3.invoke(c1744SegmentedByteString.getSegments()[iSegment], Integer.valueOf(i6 + (i2 - i4)), Integer.valueOf(iMin));
            i2 += iMin;
            iSegment++;
        }
    }

    public static final boolean commonRangeEquals(@NotNull C1744SegmentedByteString c1744SegmentedByteString, int i2, @NotNull byte[] other, int i3, int i4) {
        j.e(c1744SegmentedByteString, "<this>");
        j.e(other, "other");
        if (i2 < 0 || i2 > c1744SegmentedByteString.size() - i4 || i3 < 0 || i3 > other.length - i4) {
            return false;
        }
        int i5 = i4 + i2;
        int iSegment = segment(c1744SegmentedByteString, i2);
        while (i2 < i5) {
            int i6 = iSegment == 0 ? 0 : c1744SegmentedByteString.getDirectory()[iSegment - 1];
            int i7 = c1744SegmentedByteString.getDirectory()[iSegment] - i6;
            int i8 = c1744SegmentedByteString.getDirectory()[c1744SegmentedByteString.getSegments().length + iSegment];
            int iMin = Math.min(i5, i7 + i6) - i2;
            if (!okio.SegmentedByteString.arrayRangeEquals(c1744SegmentedByteString.getSegments()[iSegment], i8 + (i2 - i6), other, i3, iMin)) {
                return false;
            }
            i3 += iMin;
            i2 += iMin;
            iSegment++;
        }
        return true;
    }
}
