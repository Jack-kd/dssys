package com.kwad.components.core.innerEc.followuser;

import com.kwad.sdk.i;
import com.sigmob.sdk.base.e;
import java.util.ArrayList;
import java.util.Map;
import java.util.Set;

/* loaded from: classes4.dex */
public final class c extends com.kwad.sdk.core.network.d {
    private Map<String, String> Tk;
    private a Tl;

    public c(Map<String, String> map, a aVar) {
        this.Tk = map;
        this.Tl = aVar;
        ro();
        rp();
    }

    private static String d(Map<String, String> map) {
        Set<Map.Entry<String, String>> setEntrySet = map.entrySet();
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, String> entry : setEntrySet) {
            arrayList.add(entry.getKey() + "=" + entry.getValue());
        }
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            sb.append((String) arrayList.get(i2));
            if (i2 != size - 1) {
                sb.append("; ");
            }
        }
        return sb.toString();
    }

    private void ro() {
        addHeader(e.f36239a, d(this.Tk));
    }

    private void rp() {
        putBody("toUserId", this.Tl.Tg);
        putBody("fType", this.Tl.Th);
    }

    @Override // com.kwad.sdk.core.network.b, com.kwad.sdk.core.network.f
    public final String getUrl() {
        return i.EM();
    }
}
