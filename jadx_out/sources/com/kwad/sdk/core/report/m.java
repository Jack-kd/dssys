package com.kwad.sdk.core.report;

import androidx.annotation.NonNull;
import com.kwad.sdk.core.report.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public final class m<T extends e> implements l<T> {
    private final Map<String, T> aVr = new LinkedHashMap();

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.kwad.sdk.core.report.l
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public synchronized void o(@NonNull T t2) {
        this.aVr.put(t2.actionId, t2);
    }

    @Override // com.kwad.sdk.core.report.l
    public final synchronized void H(List<T> list) {
        for (T t2 : list) {
            if (t2 != null) {
                this.aVr.remove(t2.actionId);
            }
        }
    }

    @Override // com.kwad.sdk.core.report.l
    public final synchronized List<T> eE(int i2) {
        ArrayList arrayList;
        arrayList = new ArrayList(Math.min(this.aVr.size(), 200));
        Iterator<Map.Entry<String, T>> it = this.aVr.entrySet().iterator();
        for (int i3 = 0; i3 < 200; i3++) {
            if (!it.hasNext()) {
                break;
            }
            arrayList.add(it.next().getValue());
        }
        return arrayList;
    }

    @Override // com.kwad.sdk.core.report.l
    public final synchronized long size() {
        int size;
        size = this.aVr.size();
        com.kwad.sdk.core.d.c.d("MemReportCache", "size() = " + size);
        return size;
    }
}
