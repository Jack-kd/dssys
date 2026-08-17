package io.flutter.plugins.urllauncher;

import android.util.Log;
import com.anythink.core.common.f.f;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.p;
import kotlin.collections.q;
import kotlin.jvm.internal.j;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\bÂ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0001J\u0016\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00052\u0006\u0010\b\u001a\u00020\tJ\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rJ\u0016\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\rJ\u000e\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0010J\u001a\u0010\u0016\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u00012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001J\u0010\u0010\u0017\u001a\u00020\u00122\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001¨\u0006\u0019"}, d2 = {"Lio/flutter/plugins/urllauncher/MessagesPigeonUtils;", "", "<init>", "()V", "wrapResult", "", "result", "wrapError", "exception", "", "doubleEquals", "", "a", "", "b", "floatEquals", "", "doubleHash", "", "d", "floatHash", "f", "deepEquals", "deepHash", f.a.f3244d, "url_launcher_android_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes5.dex */
final class MessagesPigeonUtils {

    @NotNull
    public static final MessagesPigeonUtils INSTANCE = new MessagesPigeonUtils();

    private MessagesPigeonUtils() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x013e, code lost:
    
        if (deepEquals(r2.getValue(), r5.getValue()) == false) goto L131;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean deepEquals(@org.jetbrains.annotations.Nullable java.lang.Object r9, @org.jetbrains.annotations.Nullable java.lang.Object r10) {
        /*
            Method dump skipped, instructions count: 379
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.flutter.plugins.urllauncher.MessagesPigeonUtils.deepEquals(java.lang.Object, java.lang.Object):boolean");
    }

    public final int deepHash(@Nullable Object value) {
        int iDeepHash = 0;
        if (value == null) {
            return 0;
        }
        if (value instanceof byte[]) {
            return Arrays.hashCode((byte[]) value);
        }
        if (value instanceof int[]) {
            return Arrays.hashCode((int[]) value);
        }
        if (value instanceof long[]) {
            return Arrays.hashCode((long[]) value);
        }
        int iDeepHash2 = 1;
        if (value instanceof double[]) {
            double[] dArr = (double[]) value;
            int length = dArr.length;
            while (iDeepHash < length) {
                iDeepHash2 = (iDeepHash2 * 31) + doubleHash(dArr[iDeepHash]);
                iDeepHash++;
            }
            return iDeepHash2;
        }
        if (value instanceof float[]) {
            float[] fArr = (float[]) value;
            int length2 = fArr.length;
            while (iDeepHash < length2) {
                iDeepHash2 = (iDeepHash2 * 31) + floatHash(fArr[iDeepHash]);
                iDeepHash++;
            }
            return iDeepHash2;
        }
        if (value instanceof Object[]) {
            Object[] objArr = (Object[]) value;
            int length3 = objArr.length;
            while (iDeepHash < length3) {
                iDeepHash2 = (iDeepHash2 * 31) + deepHash(objArr[iDeepHash]);
                iDeepHash++;
            }
            return iDeepHash2;
        }
        if (value instanceof List) {
            Iterator it = ((List) value).iterator();
            while (it.hasNext()) {
                iDeepHash2 = (iDeepHash2 * 31) + deepHash(it.next());
            }
            return iDeepHash2;
        }
        if (!(value instanceof Map)) {
            return value instanceof Double ? doubleHash(((Number) value).doubleValue()) : value instanceof Float ? floatHash(((Number) value).floatValue()) : value.hashCode();
        }
        for (Map.Entry entry : ((Map) value).entrySet()) {
            iDeepHash += deepHash(entry.getValue()) ^ (deepHash(entry.getKey()) * 31);
        }
        return iDeepHash;
    }

    public final boolean doubleEquals(double a3, double b3) {
        if ((a3 == 0.0d ? 0.0d : a3) == (b3 != 0.0d ? b3 : 0.0d)) {
            return true;
        }
        return Double.isNaN(a3) && Double.isNaN(b3);
    }

    public final int doubleHash(double d2) {
        if (d2 == 0.0d) {
            d2 = 0.0d;
        }
        long jDoubleToLongBits = Double.doubleToLongBits(d2);
        return (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
    }

    public final boolean floatEquals(float a3, float b3) {
        if ((a3 == 0.0f ? 0.0f : a3) == (b3 != 0.0f ? b3 : 0.0f)) {
            return true;
        }
        return Float.isNaN(a3) && Float.isNaN(b3);
    }

    public final int floatHash(float f2) {
        if (f2 == 0.0f) {
            f2 = 0.0f;
        }
        return Float.floatToIntBits(f2);
    }

    @NotNull
    public final List<Object> wrapError(@NotNull Throwable exception) {
        j.e(exception, "exception");
        if (exception instanceof FlutterError) {
            FlutterError flutterError = (FlutterError) exception;
            return q.o(flutterError.getCode(), flutterError.getMessage(), flutterError.getDetails());
        }
        return q.o(exception.getClass().getSimpleName(), exception.toString(), "Cause: " + exception.getCause() + ", Stacktrace: " + Log.getStackTraceString(exception));
    }

    @NotNull
    public final List<Object> wrapResult(@Nullable Object result) {
        return p.e(result);
    }
}
