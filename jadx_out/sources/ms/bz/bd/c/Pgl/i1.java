package ms.bz.bd.c.Pgl;

import java.io.File;
import java.io.FilenameFilter;

/* loaded from: classes5.dex */
final class i1 implements FilenameFilter {
    final /* synthetic */ String hp;

    public i1(String str) {
        this.hp = str;
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        return str.startsWith(this.hp);
    }
}
