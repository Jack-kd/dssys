package com.beizi.fusion;

import android.content.Context;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* renamed from: com.beizi.fusion.d0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1131d0 implements pd {

    /* renamed from: a, reason: collision with root package name */
    private final Context f13273a;

    /* renamed from: b, reason: collision with root package name */
    private final Map f13274b = a();

    public C1131d0(Context context) {
        this.f13273a = context;
    }

    private Map a() {
        HashMap map = new HashMap();
        map.put("AttentionListUpdater", new c3(this.f13273a));
        map.put("InvokeRequestByUpdate", new fg(this.f13273a));
        return map;
    }

    @Override // com.beizi.fusion.pd
    public void a(String str) {
        if (str.equals("plugins_all")) {
            Map map = this.f13274b;
            if (map == null || map.isEmpty()) {
                return;
            }
            Iterator it = this.f13274b.values().iterator();
            while (it.hasNext()) {
                ((od) it.next()).a();
            }
            return;
        }
        Map map2 = this.f13274b;
        if (map2 == null || map2.get(str) == null) {
            return;
        }
        od odVar = (od) this.f13274b.get(str);
        Objects.requireNonNull(odVar);
        odVar.a();
    }
}
