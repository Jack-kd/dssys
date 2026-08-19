package kotlin.io.path;

import java.nio.file.FileSystemLoopException;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function3;

/* loaded from: classes5.dex */
public abstract class I extends B {

    public static final /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f51379a;

        /* renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f51380b;

        static {
            int[] iArr = new int[CopyActionResult.values().length];
            try {
                iArr[CopyActionResult.CONTINUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CopyActionResult.TERMINATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CopyActionResult.SKIP_SUBTREE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f51379a = iArr;
            int[] iArr2 = new int[OnErrorResult.values().length];
            try {
                iArr2[OnErrorResult.TERMINATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[OnErrorResult.SKIP_SUBTREE.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            f51380b = iArr2;
        }
    }

    public static final void c(Path path) throws IllegalFileNameException {
        kotlin.jvm.internal.j.e(path, "<this>");
        String strJ = N.j(path);
        int iHashCode = strJ.hashCode();
        if (iHashCode != 46) {
            if (iHashCode != 1518) {
                if (iHashCode != 45679) {
                    if (iHashCode != 45724) {
                        if (iHashCode != 1472) {
                            if (iHashCode != 1473 || !strJ.equals("./")) {
                                return;
                            }
                        } else if (!strJ.equals("..")) {
                            return;
                        }
                    } else if (!strJ.equals("..\\")) {
                        return;
                    }
                } else if (!strJ.equals("../")) {
                    return;
                }
            } else if (!strJ.equals(".\\")) {
                return;
            }
        } else if (!strJ.equals(com.anythink.core.common.d.i.f2495E)) {
            return;
        }
        throw new IllegalFileNameException(path);
    }

    public static final void d(Path path, Path path2) throws FileSystemLoopException {
        if (Files.isSymbolicLink(path) || !Files.isSameFile(path, path2)) {
            return;
        }
        v.a();
        throw u.a(path.toString());
    }

    public static final FileVisitResult e(ArrayList arrayList, Function3 function3, Path path, Path path2, Path path3, Function3 function32, Path path4, BasicFileAttributes basicFileAttributes) {
        try {
            if (!arrayList.isEmpty()) {
                c(path4);
                Object objR = kotlin.collections.y.R(arrayList);
                kotlin.jvm.internal.j.d(objR, "last(...)");
                d(path4, AbstractC1608b.a(objR));
            }
            return h((CopyActionResult) function3.invoke(C1607a.f51381a, path4, f(path, path2, path3, path4)));
        } catch (Exception e2) {
            return g(function32, path, path2, path3, path4, e2);
        }
    }

    public static final Path f(Path path, Path path2, Path path3, Path path4) throws IllegalFileNameException {
        Path pathResolve = path2.resolve(N.m(path4, path).toString());
        if (!pathResolve.normalize().startsWith(path3)) {
            throw new IllegalFileNameException(path4, pathResolve, "Copying files to outside the specified target directory is prohibited. The directory being recursively copied might contain an entry with an illegal name.");
        }
        kotlin.jvm.internal.j.b(pathResolve);
        return pathResolve;
    }

    public static final FileVisitResult g(Function3 function3, Path path, Path path2, Path path3, Path path4, Exception exc) {
        return i((OnErrorResult) function3.invoke(path4, f(path, path2, path3, path4), exc));
    }

    public static final FileVisitResult h(CopyActionResult copyActionResult) {
        int i2 = a.f51379a[copyActionResult.ordinal()];
        if (i2 == 1) {
            return FileVisitResult.CONTINUE;
        }
        if (i2 == 2) {
            return FileVisitResult.TERMINATE;
        }
        if (i2 == 3) {
            return FileVisitResult.SKIP_SUBTREE;
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final FileVisitResult i(OnErrorResult onErrorResult) {
        int i2 = a.f51380b[onErrorResult.ordinal()];
        if (i2 == 1) {
            return FileVisitResult.TERMINATE;
        }
        if (i2 == 2) {
            return FileVisitResult.SKIP_SUBTREE;
        }
        throw new NoWhenBranchMatchedException();
    }
}
