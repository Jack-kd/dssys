package kotlin.io;

import java.io.File;
import kotlin.jvm.internal.j;

/* loaded from: classes5.dex */
public abstract class b {
    public static final String b(File file, File file2, String str) {
        StringBuilder sb = new StringBuilder(file.toString());
        if (file2 != null) {
            sb.append(" -> " + file2);
        }
        if (str != null) {
            sb.append(": " + str);
        }
        String string = sb.toString();
        j.d(string, "toString(...)");
        return string;
    }
}
