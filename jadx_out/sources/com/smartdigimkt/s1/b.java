package com.smartdigimkt.s1;

import android.content.Context;
import android.text.TextUtils;
import com.smartdigimkt.a5.e;
import com.smartdigimkt.e0.t;
import com.smartdigimkt.i0.f;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.z.b0;
import com.smartdigimkt.z4.m;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes5.dex */
public final class b {

    /* renamed from: b, reason: collision with root package name */
    public static b f43101b;

    /* renamed from: a, reason: collision with root package name */
    public final Context f43102a;

    public b(Context context) {
        this.f43102a = context.getApplicationContext();
    }

    public static b a(Context context) {
        if (f43101b == null) {
            f43101b = new b(context);
        }
        return f43101b;
    }

    public static com.smartdigimkt.p3.a a(String str, String str2) {
        List<com.smartdigimkt.p3.a> list;
        com.smartdigimkt.p3.b bVar;
        e eVarA = m.a().a(str);
        if (eVarA != null && (list = eVarA.f39410D) != null) {
            for (com.smartdigimkt.p3.a aVar : list) {
                if (aVar.f41832w == null) {
                    aVar.f41832w = eVarA.f39411E;
                }
                if (TextUtils.equals(str2, aVar.f41806a) && (bVar = eVarA.f39411E) != null && System.currentTimeMillis() - aVar.f42601q0 <= bVar.f41963q) {
                    return aVar;
                }
            }
        }
        return null;
    }

    public final void a(String str, com.smartdigimkt.p3.a aVar, com.smartdigimkt.l3.a aVar2, com.smartdigimkt.r1.b bVar) {
        List list = SDKContext.getInstance().f44129r.f40272a;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (TextUtils.equals(aVar.f41822m, (String) it.next())) {
                    bVar.a(new f(com.anythink.core.common.inner.b.b.f4591h, com.anythink.core.common.inner.b.b.f4570M));
                    return;
                }
            }
        }
        com.smartdigimkt.i0.c cVarA = d.a(this.f43102a).a(aVar);
        int i2 = aVar.f42599o0;
        if (i2 != -1 && cVarA.f40639d >= i2) {
            bVar.a(new f(com.anythink.core.common.inner.b.b.f4588e, com.anythink.core.common.inner.b.b.f4563F));
            return;
        }
        d dVarA = d.a(this.f43102a);
        dVarA.getClass();
        if (System.currentTimeMillis() - dVarA.a(aVar).f40640e <= aVar.f42600p0) {
            bVar.a(new f(com.anythink.core.common.inner.b.b.f4589f, com.anythink.core.common.inner.b.b.f4564G));
        } else {
            b0.a().getClass();
            b0.a(str, false, aVar, aVar2, bVar);
        }
    }

    public final boolean a(com.smartdigimkt.p3.a aVar, com.smartdigimkt.l3.a aVar2, boolean z2) {
        if (this.f43102a != null && aVar != null) {
            List list = SDKContext.getInstance().f44129r.f40272a;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    if (TextUtils.equals(aVar.f41822m, (String) it.next())) {
                        return false;
                    }
                }
            }
            if (z2) {
                b0.a().getClass();
                return t.a(aVar, aVar2);
            }
            com.smartdigimkt.i0.c cVarA = d.a(this.f43102a).a(aVar);
            int i2 = aVar.f42599o0;
            if (i2 == -1 || cVarA.f40639d < i2) {
                d dVarA = d.a(this.f43102a);
                dVarA.getClass();
                if (System.currentTimeMillis() - dVarA.a(aVar).f40640e > aVar.f42600p0) {
                    b0.a().getClass();
                    if (t.a(aVar, aVar2)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
}
