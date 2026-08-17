package com.smartdigimkt.s;

import android.content.Context;
import android.content.Intent;
import com.bun.miitmdid.content.StringValues;
import java.util.Objects;

/* loaded from: classes5.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final String f43088a = b.class.getSimpleName();

    public final void a(Context context, com.smartdigimkt.q.a aVar) {
        if (context == null && aVar != null) {
            aVar.a("context is null");
        }
        a aVar2 = new a(this, aVar);
        try {
            g.a(context);
            Intent intent = new Intent(StringValues.ACTION_BINDTO_MSASERVICE);
            intent.setClassName("com.mdid.msa", "com.mdid.msa.service.MsaIdService");
            intent.putExtra(StringValues.PARAM_BIND_PKGNAME, context.getPackageName());
            h hVar = new h(context, aVar2, new f());
            try {
                if (!hVar.f43091a.bindService(intent, hVar, 1)) {
                    throw new RuntimeException("Service binding failed");
                }
                Objects.toString(intent);
            } catch (Exception e2) {
                hVar.f43092b.a(e2.getMessage());
            }
        } catch (Exception e3) {
            aVar2.a(e3.getMessage());
        }
    }
}
