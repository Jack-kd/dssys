package com.smartdigimkt.l1;

import com.anythink.core.common.a.b;
import com.smartdigimkt.i0.f;
import com.smartdigimkt.p1.d;
import com.smartdigimkt.p1.e;
import com.smartdigimkt.p1.g;
import com.smartdigimkt.p1.u;
import java.util.Map;

/* loaded from: classes5.dex */
public final class a extends d {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f41612d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ c f41613e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(c cVar, Map map, String str, String str2) {
        super(str, map);
        this.f41613e = cVar;
        this.f41612d = str2;
    }

    @Override // com.smartdigimkt.p1.d
    public final void a() {
        if (!this.f42553c) {
            this.f42553c = true;
            Map map = this.f42551a;
            if (map != null) {
                map.put(b.C0047b.f2179a, Integer.valueOf(this.f42552b));
            }
        }
        com.smartdigimkt.p1.a aVar = this.f41613e.f41618c;
        if (aVar != null) {
            aVar.onAdClosed();
        }
        e eVar = com.smartdigimkt.p1.b.f42548a;
        eVar.f42554a.remove(this.f41612d);
    }

    @Override // com.smartdigimkt.p1.d
    public final void b(u uVar) {
        com.smartdigimkt.p1.a aVar = this.f41613e.f41618c;
        if (aVar != null) {
            aVar.onAdShow(uVar);
        }
        this.f41613e.f41616a = null;
    }

    @Override // com.smartdigimkt.p1.d
    public final void c() {
        com.smartdigimkt.p1.a aVar = this.f41613e.f41618c;
        if (aVar == null || !(aVar instanceof g)) {
            return;
        }
        ((g) aVar).onRewardTaskFirst();
    }

    @Override // com.smartdigimkt.p1.d
    public final void d() {
        com.smartdigimkt.p1.a aVar = this.f41613e.f41618c;
        if (aVar == null || !(aVar instanceof g)) {
            return;
        }
        ((g) aVar).onVideoAdPlayEnd();
    }

    @Override // com.smartdigimkt.p1.d
    public final void e() {
        com.smartdigimkt.p1.a aVar = this.f41613e.f41618c;
        if (aVar == null || !(aVar instanceof g)) {
            return;
        }
        ((g) aVar).onVideoAdPlayStart();
    }

    @Override // com.smartdigimkt.p1.d
    public final void b() {
        com.smartdigimkt.p1.a aVar = this.f41613e.f41618c;
        if (aVar == null || !(aVar instanceof g)) {
            return;
        }
        ((g) aVar).onRewarded();
    }

    @Override // com.smartdigimkt.p1.d
    public final void a(f fVar) {
        com.smartdigimkt.p1.a aVar = this.f41613e.f41618c;
        if (aVar != null) {
            aVar.onShowFailed(fVar);
        }
        this.f41613e.f41616a = null;
    }

    @Override // com.smartdigimkt.p1.d
    public final void a(u uVar) {
        com.smartdigimkt.p1.a aVar = this.f41613e.f41618c;
        if (aVar != null) {
            aVar.onAdClick(uVar);
        }
    }

    @Override // com.smartdigimkt.p1.d
    public final void a(boolean z2) {
        com.smartdigimkt.p1.a aVar = this.f41613e.f41618c;
        if (aVar != null) {
            aVar.onDeeplinkCallback(z2);
        }
    }
}
