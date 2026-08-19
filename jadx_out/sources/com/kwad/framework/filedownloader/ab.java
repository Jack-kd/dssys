package com.kwad.framework.filedownloader;

import android.os.Handler;
import android.util.SparseArray;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
final class ab implements w {
    private final SparseArray<Handler> aAp = new SparseArray<>();

    private static void b(Handler handler) {
        handler.sendEmptyMessage(2);
    }

    private static void c(Handler handler) {
        handler.sendEmptyMessage(3);
    }

    @Override // com.kwad.framework.filedownloader.w
    public final void BM() {
        for (int i2 = 0; i2 < this.aAp.size(); i2++) {
            b(this.aAp.get(this.aAp.keyAt(i2)));
        }
    }

    @Override // com.kwad.framework.filedownloader.w
    public final int BN() {
        return this.aAp.size();
    }

    @Override // com.kwad.framework.filedownloader.w
    public final boolean cz(int i2) {
        return this.aAp.get(i2) != null;
    }

    @Override // com.kwad.framework.filedownloader.w
    public final void w(List<Integer> list) {
        Iterator<Integer> it = list.iterator();
        while (it.hasNext()) {
            c(this.aAp.get(it.next().intValue()));
        }
    }
}
