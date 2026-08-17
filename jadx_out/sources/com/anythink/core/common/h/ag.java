package com.anythink.core.common.h;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes2.dex */
public final class ag {

    /* renamed from: a, reason: collision with root package name */
    HashMap<String, List<ad>> f3705a = new HashMap<>(2);

    public final synchronized void a(String str, ad adVar) {
        try {
            List<ad> arrayList = this.f3705a.get(str);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.f3705a.put(str, arrayList);
            }
            arrayList.add(adVar);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized ad a(String str) {
        try {
            HashMap<String, List<ad>> map = this.f3705a;
            ad adVar = null;
            if (map == null) {
                return null;
            }
            List<ad> list = map.get(str);
            if (list != null && list.size() != 0) {
                for (ad adVar2 : list) {
                    if (adVar == null || adVar2.price > adVar.price) {
                        adVar = adVar2;
                    }
                }
                if (adVar != null) {
                    list.remove(adVar);
                }
                return adVar;
            }
            return null;
        } finally {
        }
    }
}
