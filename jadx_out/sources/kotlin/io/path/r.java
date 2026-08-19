package kotlin.io.path;

import java.nio.file.Path;
import java.nio.file.Paths;

/* loaded from: classes5.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    public static final r f51394a = new r();

    /* renamed from: b, reason: collision with root package name */
    public static final Path f51395b = Paths.get("", new String[0]);

    /* renamed from: c, reason: collision with root package name */
    public static final Path f51396c = Paths.get("..", new String[0]);

    public final Path a(Path path, Path base) {
        kotlin.jvm.internal.j.e(path, "path");
        kotlin.jvm.internal.j.e(base, "base");
        Path pathNormalize = base.normalize();
        Path pathNormalize2 = path.normalize();
        Path pathRelativize = pathNormalize.relativize(pathNormalize2);
        int iMin = Math.min(pathNormalize.getNameCount(), pathNormalize2.getNameCount());
        for (int i2 = 0; i2 < iMin; i2++) {
            Path name = pathNormalize.getName(i2);
            Path path2 = f51396c;
            if (!kotlin.jvm.internal.j.a(name, path2)) {
                break;
            }
            if (!kotlin.jvm.internal.j.a(pathNormalize2.getName(i2), path2)) {
                throw new IllegalArgumentException("Unable to compute relative path");
            }
        }
        if (kotlin.jvm.internal.j.a(pathNormalize2, pathNormalize) || !kotlin.jvm.internal.j.a(pathNormalize, f51395b)) {
            String string = pathRelativize.toString();
            String separator = pathRelativize.getFileSystem().getSeparator();
            kotlin.jvm.internal.j.d(separator, "getSeparator(...)");
            pathNormalize2 = kotlin.text.z.u(string, separator, false, 2, null) ? pathRelativize.getFileSystem().getPath(kotlin.text.D.D0(string, pathRelativize.getFileSystem().getSeparator().length()), new String[0]) : pathRelativize;
        }
        kotlin.jvm.internal.j.b(pathNormalize2);
        return pathNormalize2;
    }
}
