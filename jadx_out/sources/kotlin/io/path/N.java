package kotlin.io.path;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;

/* loaded from: classes5.dex */
public abstract class N extends I {
    public static final String j(Path path) {
        kotlin.jvm.internal.j.e(path, "<this>");
        Path fileName = path.getFileName();
        String string = fileName != null ? fileName.toString() : null;
        return string == null ? "" : string;
    }

    public static final List k(Path path, String glob) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        kotlin.jvm.internal.j.e(path, "<this>");
        kotlin.jvm.internal.j.e(glob, "glob");
        DirectoryStream directoryStreamNewDirectoryStream = Files.newDirectoryStream(path, glob);
        try {
            DirectoryStream directoryStreamA = M.a(directoryStreamNewDirectoryStream);
            kotlin.jvm.internal.j.b(directoryStreamA);
            List listA0 = kotlin.collections.y.a0(directoryStreamA);
            kotlin.io.a.a(directoryStreamNewDirectoryStream, null);
            return listA0;
        } finally {
        }
    }

    public static /* synthetic */ List l(Path path, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = "*";
        }
        return k(path, str);
    }

    public static final Path m(Path path, Path base) {
        kotlin.jvm.internal.j.e(path, "<this>");
        kotlin.jvm.internal.j.e(base, "base");
        try {
            return r.f51394a.a(path, base);
        } catch (IllegalArgumentException e2) {
            throw new IllegalArgumentException(e2.getMessage() + "\nthis path: " + path + "\nbase path: " + base, e2);
        }
    }
}
