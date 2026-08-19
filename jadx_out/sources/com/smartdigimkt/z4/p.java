package com.smartdigimkt.z4;

import com.smartdigimkt.sdk.api.AdError;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public final class p implements com.smartdigimkt.l4.b {

    /* renamed from: a, reason: collision with root package name */
    public final String f45497a;

    /* renamed from: b, reason: collision with root package name */
    public final com.smartdigimkt.l4.b f45498b;

    /* renamed from: c, reason: collision with root package name */
    public final Map f45499c;

    public p(String str, o oVar, ConcurrentHashMap concurrentHashMap) {
        this.f45497a = str;
        this.f45498b = oVar;
        this.f45499c = concurrentHashMap;
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2) {
        com.smartdigimkt.l4.b bVar = this.f45498b;
        if (bVar != null) {
            bVar.a(i2);
        }
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2, Object obj) {
        com.smartdigimkt.l4.b bVar = this.f45498b;
        if (bVar != null) {
            bVar.a(i2, obj);
        }
        Map map = this.f45499c;
        if (map != null) {
            map.remove(this.f45497a);
        }
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2, String str, AdError adError) {
        com.smartdigimkt.l4.b bVar = this.f45498b;
        if (bVar != null) {
            bVar.a(i2, str, adError);
        }
        Map map = this.f45499c;
        if (map != null) {
            map.remove(this.f45497a);
        }
    }
}
