package kotlin.io.path;

import java.nio.file.FileSystemLoopException;

/* loaded from: classes5.dex */
public abstract /* synthetic */ class u {
    public static /* synthetic */ FileSystemLoopException a(String str) {
        return new FileSystemLoopException(str);
    }
}
