package com.smartdigimkt.e0;

import java.io.InputStream;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes5.dex */
public final class a extends com.smartdigimkt.v3.d {
    public a(String str) {
        super(str);
    }

    @Override // com.smartdigimkt.v3.d
    public final void a() {
    }

    @Override // com.smartdigimkt.v3.d
    public final boolean a(InputStream inputStream) throws NoSuchAlgorithmException {
        com.smartdigimkt.z.b0 b0VarA = com.smartdigimkt.z.b0.a();
        String str = this.f44713b;
        b0VarA.getClass();
        if (str == null || inputStream == null) {
            return false;
        }
        return com.smartdigimkt.t3.n.a().a(3, com.smartdigimkt.c5.i.b(str), inputStream);
    }

    @Override // com.smartdigimkt.v3.d
    public final void a(com.smartdigimkt.v3.c cVar) {
        com.smartdigimkt.b4.e.a().a(cVar, 5);
    }

    @Override // com.smartdigimkt.v3.d
    public final void a(String str) {
        u.a().a(this.f44713b, new com.smartdigimkt.i0.f(com.anythink.core.common.res.image.c.f7479a, str));
    }
}
