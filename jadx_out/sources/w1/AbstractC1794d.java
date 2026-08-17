package w1;

import java.lang.reflect.Field;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.j;

/* renamed from: w1.d, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1794d {
    public static final DebugMetadata a(BaseContinuationImpl baseContinuationImpl) {
        return (DebugMetadata) baseContinuationImpl.getClass().getAnnotation(DebugMetadata.class);
    }

    public static final int b(BaseContinuationImpl baseContinuationImpl) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        try {
            Field declaredField = baseContinuationImpl.getClass().getDeclaredField("label");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(baseContinuationImpl);
            Integer num = obj instanceof Integer ? (Integer) obj : null;
            return (num != null ? num.intValue() : 0) - 1;
        } catch (Exception unused) {
            return -1;
        }
    }

    public static final StackTraceElement c(BaseContinuationImpl baseContinuationImpl) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        String strC;
        j.e(baseContinuationImpl, "<this>");
        DebugMetadata debugMetadataA = a(baseContinuationImpl);
        if (debugMetadataA == null || debugMetadataA.v() < 1) {
            return null;
        }
        int iB = b(baseContinuationImpl);
        int i2 = iB < 0 ? -1 : debugMetadataA.l()[iB];
        String strB = f.f52816a.b(baseContinuationImpl);
        if (strB == null) {
            strC = debugMetadataA.c();
        } else {
            strC = strB + '/' + debugMetadataA.c();
        }
        return new StackTraceElement(strC, debugMetadataA.m(), debugMetadataA.f(), i2);
    }
}
