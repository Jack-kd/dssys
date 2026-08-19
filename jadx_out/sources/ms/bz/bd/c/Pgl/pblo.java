package ms.bz.bd.c.Pgl;

import java.io.Closeable;
import java.io.IOException;

/* loaded from: classes5.dex */
public final class pblo {
    public static void hp(Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }
}
