package androidx.collection;

import androidx.exifinterface.media.ExifInterface;
import com.anythink.core.common.f.f;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.PublishedApi;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.j;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000n\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u0016\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u0001\n\u0002\b\u000b\u001a%\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001¢\u0006\u0004\b\u0003\u0010\u0004\u001a%\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001¢\u0006\u0004\b\u0006\u0010\u0007\u001aQ\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012*\u0010\n\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\t0\b\"\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\t¢\u0006\u0004\b\u0006\u0010\u000b\u001a\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0080\b¢\u0006\u0004\b\u000f\u0010\u0010\u001a\u0018\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0080\b¢\u0006\u0004\b\u0011\u0010\u0012\u001a\u0018\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0080\b¢\u0006\u0004\b\u0013\u0010\u0012\u001a\u0017\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000eH\u0000¢\u0006\u0004\b\u0015\u0010\u0012\u001a\u0017\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u000eH\u0000¢\u0006\u0004\b\u0017\u0010\u0012\u001a\u0017\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000eH\u0000¢\u0006\u0004\b\u0018\u0010\u0012\u001a\u0017\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000eH\u0000¢\u0006\u0004\b\u0019\u0010\u0012\u001a \u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u000eH\u0081\b¢\u0006\u0004\b\u001e\u0010\u001f\u001a(\u0010\"\u001a\u00020!2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020\u001dH\u0080\b¢\u0006\u0004\b\"\u0010#\u001a \u0010'\u001a\u00020&2\u0006\u0010$\u001a\u00020\u001a2\u0006\u0010%\u001a\u00020\u000eH\u0080\b¢\u0006\u0004\b'\u0010(\u001a \u0010)\u001a\u00020&2\u0006\u0010$\u001a\u00020\u001a2\u0006\u0010%\u001a\u00020\u000eH\u0080\b¢\u0006\u0004\b)\u0010(\u001a \u0010*\u001a\u00020&2\u0006\u0010$\u001a\u00020\u001a2\u0006\u0010%\u001a\u00020\u000eH\u0080\b¢\u0006\u0004\b*\u0010(\u001a\u0018\u0010*\u001a\u00020&2\u0006\u0010 \u001a\u00020\u001dH\u0081\b¢\u0006\u0004\b*\u0010+\u001a\u0018\u0010-\u001a\u00020\u000e*\u00060\u001dj\u0002`,H\u0081\b¢\u0006\u0004\b-\u0010.\u001a\u0018\u00100\u001a\u00020\u000e*\u00060\u001dj\u0002`/H\u0080\b¢\u0006\u0004\b0\u0010.\u001a\u0018\u00101\u001a\u00020\u001d*\u00060\u001dj\u0002`/H\u0080\b¢\u0006\u0004\b1\u00102\u001a\u0018\u00103\u001a\u00020&*\u00060\u001dj\u0002`/H\u0080\b¢\u0006\u0004\b3\u0010+\u001a$\u00105\u001a\u00060\u001dj\u0002`42\u0006\u0010$\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u000eH\u0080\b¢\u0006\u0004\b5\u0010\u001f\u001a$\u00107\u001a\u00060\u001dj\u0002`/*\u00060\u001dj\u0002`42\u0006\u00106\u001a\u00020\u000eH\u0081\b¢\u0006\u0004\b7\u00108\u001a\u001c\u00109\u001a\u00060\u001dj\u0002`/*\u00060\u001dj\u0002`4H\u0080\b¢\u0006\u0004\b9\u00102\u001a\u001c\u0010:\u001a\u00060\u001dj\u0002`/*\u00060\u001dj\u0002`4H\u0081\b¢\u0006\u0004\b:\u00102\"\u0014\u0010;\u001a\u00020\u001d8\u0000X\u0080T¢\u0006\u0006\n\u0004\b;\u0010<\"\u0014\u0010=\u001a\u00020\u001d8\u0000X\u0080T¢\u0006\u0006\n\u0004\b=\u0010<\"\u0014\u0010>\u001a\u00020\u001d8\u0000X\u0080T¢\u0006\u0006\n\u0004\b>\u0010<\"\u001a\u0010?\u001a\u00020\u001d8\u0000X\u0081T¢\u0006\f\n\u0004\b?\u0010<\u0012\u0004\b@\u0010A\"\u0014\u0010B\u001a\u00020\u001a8\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\bB\u0010C\"\u0014\u0010D\u001a\u00020\u000e8\u0000X\u0080T¢\u0006\u0006\n\u0004\bD\u0010E\"\u0014\u0010F\u001a\u00020\u000e8\u0000X\u0080T¢\u0006\u0006\n\u0004\bF\u0010E\"\u0014\u0010G\u001a\u00020\u000e8\u0000X\u0080T¢\u0006\u0006\n\u0004\bG\u0010E\"\"\u0010I\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\f\u0012\u0004\u0012\u00020H0\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bI\u0010J\"\u0014\u0010K\u001a\u00020\u000e8\u0000X\u0080T¢\u0006\u0006\n\u0004\bK\u0010E\"\u001a\u0010L\u001a\u00020\u001d8\u0000X\u0081T¢\u0006\f\n\u0004\bL\u0010<\u0012\u0004\bM\u0010A\"\u001a\u0010N\u001a\u00020\u001d8\u0000X\u0081T¢\u0006\f\n\u0004\bN\u0010<\u0012\u0004\bO\u0010A*\f\b\u0000\u0010P\"\u00020\u001d2\u00020\u001d*\f\b\u0000\u0010Q\"\u00020\u001d2\u00020\u001d*\f\b\u0000\u0010R\"\u00020\u001d2\u00020\u001d¨\u0006S"}, d2 = {"K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Landroidx/collection/ScatterMap;", "emptyScatterMap", "()Landroidx/collection/ScatterMap;", "Landroidx/collection/MutableScatterMap;", "mutableScatterMapOf", "()Landroidx/collection/MutableScatterMap;", "", "Lkotlin/Pair;", "pairs", "([Lkotlin/Pair;)Landroidx/collection/MutableScatterMap;", "", "k", "", "hash", "(Ljava/lang/Object;)I", "h1", "(I)I", "h2", "capacity", "nextCapacity", "n", "normalizeCapacity", "loadedCapacity", "unloadedCapacity", "", "data", "offset", "", "readRawMetadata", "([JI)J", f.a.f3244d, "Lkotlin/j;", "writeRawMetadata", "([JIJ)V", "metadata", com.umeng.ccg.a.f49746H, "", "isEmpty", "([JI)Z", "isDeleted", "isFull", "(J)Z", "Landroidx/collection/StaticBitmask;", "lowestBitSet", "(J)I", "Landroidx/collection/Bitmask;", "get", "next", "(J)J", "hasNext", "Landroidx/collection/Group;", "group", "m", "match", "(JI)J", "maskEmpty", "maskEmptyOrDeleted", "AllEmpty", "J", "Empty", "Deleted", "Sentinel", "getSentinel$annotations", "()V", "EmptyGroup", "[J", "GroupWidth", "I", "ClonedMetadataCount", "DefaultScatterCapacity", "", "EmptyScatterMap", "Landroidx/collection/MutableScatterMap;", "MurmurHashC1", "BitmaskLsb", "getBitmaskLsb$annotations", "BitmaskMsb", "getBitmaskMsb$annotations", "Bitmask", "Group", "StaticBitmask", "collection"}, k = 2, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nScatterMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,1850:1\n1661#1:1851\n1661#1:1852\n1661#1:1853\n1715#1:1854\n*S KotlinDebug\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1680#1:1851\n1682#1:1852\n1685#1:1853\n1721#1:1854\n*E\n"})
/* loaded from: classes.dex */
public final class ScatterMapKt {
    public static final long AllEmpty = -9187201950435737472L;
    public static final long BitmaskLsb = 72340172838076673L;
    public static final long BitmaskMsb = -9187201950435737472L;
    public static final int ClonedMetadataCount = 7;
    public static final int DefaultScatterCapacity = 6;
    public static final long Deleted = 254;
    public static final long Empty = 128;

    @JvmField
    @NotNull
    public static final long[] EmptyGroup = {-9187201950435737345L, -1};

    @NotNull
    private static final MutableScatterMap EmptyScatterMap = new MutableScatterMap(0);
    public static final int GroupWidth = 8;
    public static final int MurmurHashC1 = -862048943;
    public static final long Sentinel = 255;

    @NotNull
    public static final <K, V> ScatterMap<K, V> emptyScatterMap() {
        MutableScatterMap mutableScatterMap = EmptyScatterMap;
        j.c(mutableScatterMap, "null cannot be cast to non-null type androidx.collection.ScatterMap<K of androidx.collection.ScatterMapKt.emptyScatterMap, V of androidx.collection.ScatterMapKt.emptyScatterMap>");
        return mutableScatterMap;
    }

    public static final int get(long j2) {
        return Long.numberOfTrailingZeros(j2) >> 3;
    }

    @PublishedApi
    public static /* synthetic */ void getBitmaskLsb$annotations() {
    }

    @PublishedApi
    public static /* synthetic */ void getBitmaskMsb$annotations() {
    }

    @PublishedApi
    public static /* synthetic */ void getSentinel$annotations() {
    }

    public static final long group(@NotNull long[] metadata, int i2) {
        j.e(metadata, "metadata");
        int i3 = i2 >> 3;
        int i4 = (i2 & 7) << 3;
        return (((-i4) >> 63) & (metadata[i3 + 1] << (64 - i4))) | (metadata[i3] >>> i4);
    }

    public static final int h1(int i2) {
        return i2 >>> 7;
    }

    public static final int h2(int i2) {
        return i2 & 127;
    }

    public static final boolean hasNext(long j2) {
        return j2 != 0;
    }

    public static final int hash(@Nullable Object obj) {
        int iHashCode = (obj != null ? obj.hashCode() : 0) * MurmurHashC1;
        return iHashCode ^ (iHashCode << 16);
    }

    public static final boolean isDeleted(@NotNull long[] metadata, int i2) {
        j.e(metadata, "metadata");
        return ((metadata[i2 >> 3] >> ((i2 & 7) << 3)) & 255) == 254;
    }

    public static final boolean isEmpty(@NotNull long[] metadata, int i2) {
        j.e(metadata, "metadata");
        return ((metadata[i2 >> 3] >> ((i2 & 7) << 3)) & 255) == 128;
    }

    @PublishedApi
    public static final boolean isFull(long j2) {
        return j2 < 128;
    }

    public static final int loadedCapacity(int i2) {
        if (i2 == 7) {
            return 6;
        }
        return i2 - (i2 / 8);
    }

    @PublishedApi
    public static final int lowestBitSet(long j2) {
        return Long.numberOfTrailingZeros(j2) >> 3;
    }

    public static final long maskEmpty(long j2) {
        return j2 & ((~j2) << 6) & (-9187201950435737472L);
    }

    @PublishedApi
    public static final long maskEmptyOrDeleted(long j2) {
        return j2 & ((~j2) << 7) & (-9187201950435737472L);
    }

    @PublishedApi
    public static final long match(long j2, int i2) {
        long j3 = j2 ^ (i2 * BitmaskLsb);
        return (~j3) & (j3 - BitmaskLsb) & (-9187201950435737472L);
    }

    @NotNull
    public static final <K, V> MutableScatterMap<K, V> mutableScatterMapOf() {
        return new MutableScatterMap<>(0, 1, null);
    }

    public static final long next(long j2) {
        return j2 & (j2 - 1);
    }

    public static final int nextCapacity(int i2) {
        if (i2 == 0) {
            return 6;
        }
        return (i2 * 2) + 1;
    }

    public static final int normalizeCapacity(int i2) {
        if (i2 > 0) {
            return (-1) >>> Integer.numberOfLeadingZeros(i2);
        }
        return 0;
    }

    @PublishedApi
    public static final long readRawMetadata(@NotNull long[] data, int i2) {
        j.e(data, "data");
        return (data[i2 >> 3] >> ((i2 & 7) << 3)) & 255;
    }

    public static final int unloadedCapacity(int i2) {
        if (i2 == 7) {
            return 8;
        }
        return i2 + ((i2 - 1) / 7);
    }

    public static final void writeRawMetadata(@NotNull long[] data, int i2, long j2) {
        j.e(data, "data");
        int i3 = i2 >> 3;
        int i4 = (i2 & 7) << 3;
        data[i3] = (j2 << i4) | (data[i3] & (~(255 << i4)));
    }

    public static final boolean isFull(@NotNull long[] metadata, int i2) {
        j.e(metadata, "metadata");
        return ((metadata[i2 >> 3] >> ((i2 & 7) << 3)) & 255) < 128;
    }

    @NotNull
    public static final <K, V> MutableScatterMap<K, V> mutableScatterMapOf(@NotNull Pair<? extends K, ? extends V>... pairs) {
        j.e(pairs, "pairs");
        MutableScatterMap<K, V> mutableScatterMap = new MutableScatterMap<>(pairs.length);
        mutableScatterMap.putAll(pairs);
        return mutableScatterMap;
    }
}
