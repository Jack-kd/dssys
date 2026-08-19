package kotlinx.coroutines;

import androidx.core.location.LocationRequestCompat;

/* renamed from: kotlinx.coroutines.h0, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1665h0 {

    /* renamed from: a, reason: collision with root package name */
    public static final kotlinx.coroutines.internal.B f51749a = new kotlinx.coroutines.internal.B("REMOVED_TASK");

    /* renamed from: b, reason: collision with root package name */
    public static final kotlinx.coroutines.internal.B f51750b = new kotlinx.coroutines.internal.B("CLOSED_EMPTY");

    public static final long c(long j2) {
        return j2 / com.bykv.vk.component.ttvideo.player.C.MICROS_PER_SECOND;
    }

    public static final long d(long j2) {
        if (j2 <= 0) {
            return 0L;
        }
        return j2 >= 9223372036854L ? LocationRequestCompat.PASSIVE_INTERVAL : j2 * com.bykv.vk.component.ttvideo.player.C.MICROS_PER_SECOND;
    }
}
