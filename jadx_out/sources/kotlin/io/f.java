package kotlin.io;

import java.io.File;
import kotlin.jvm.internal.j;
import kotlin.text.B;

/* loaded from: classes5.dex */
public abstract class f extends e {
    public static String a(File file) {
        j.e(file, "<this>");
        String name = file.getName();
        j.d(name, "getName(...)");
        return B.A0(name, '.', "");
    }
}
