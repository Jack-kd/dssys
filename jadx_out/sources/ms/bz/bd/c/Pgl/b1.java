package ms.bz.bd.c.Pgl;

import java.util.Arrays;

/* loaded from: classes5.dex */
public final class b1 extends RuntimeException {
    public b1(String str, String[] strArr, String[] strArr2) {
        super("Could not find '" + str + "'. Looked for: " + Arrays.toString(strArr) + ", but only found: " + Arrays.toString(strArr2) + com.anythink.core.common.d.i.f2495E);
    }
}
