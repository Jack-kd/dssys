package com.anythink.core.c;

import com.anythink.core.common.h.as;
import com.anythink.core.common.m.s;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class g extends e {
    public g(com.anythink.core.common.h.a aVar) {
        super(aVar);
    }

    @Override // com.anythink.core.c.e
    public final void a(List<JSONObject> list, s sVar) {
        as asVar;
        com.anythink.core.c.a.b bVar = new com.anythink.core.c.a.b();
        bVar.f1921f = this.f1998f.f3580n.a().aK();
        com.anythink.core.common.h.a aVar = this.f1998f;
        bVar.f1935t = (aVar == null || (asVar = aVar.f3569c) == null) ? null : asVar.b();
        com.anythink.core.c.a.a aVar2 = new com.anythink.core.c.a.a(this.f2100r, this.f2099q, this.f2098p, list, 1, this.f1998f.f3580n.a());
        aVar2.a(bVar);
        aVar2.a(0, sVar);
    }

    @Override // com.anythink.core.c.e
    public final String b() {
        return this.f1998f.f3582p;
    }
}
