package com.smartdigimkt.k1;

import android.text.TextUtils;
import com.smartdigimkt.t2.j;
import com.smartdigimkt.z.b0;

/* loaded from: classes5.dex */
public final class e implements j {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.l3.a f41268a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ g f41269b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.m3.b f41270c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ h f41271d;

    public e(h hVar, com.smartdigimkt.l3.a aVar, g gVar, com.smartdigimkt.m3.b bVar) {
        this.f41271d = hVar;
        this.f41268a = aVar;
        this.f41269b = gVar;
        this.f41270c = bVar;
    }

    @Override // com.smartdigimkt.t2.j
    public final void a(com.smartdigimkt.m3.b bVar) {
        h hVar = this.f41271d;
        com.smartdigimkt.l3.a aVar = this.f41268a;
        g gVar = this.f41269b;
        hVar.getClass();
        if (!TextUtils.isEmpty(bVar.f41777v0)) {
            if (gVar != null) {
                gVar.a(bVar, new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4601r, com.anythink.core.common.inner.b.b.f4580W));
            }
        } else {
            b0 b0VarA = b0.a();
            String str = aVar.f41627a;
            f fVar = new f(hVar, aVar, gVar, bVar);
            b0VarA.getClass();
            b0.a(str, false, bVar, aVar, fVar);
        }
    }

    @Override // com.smartdigimkt.t2.j
    public final void a(String str, String str2) {
        this.f41269b.a(this.f41270c, new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4600q, "[" + str + "," + str2 + "]"));
    }
}
