package com.anythink.odopt.a.a.a;

import android.content.Context;
import com.anythink.core.common.u.f;

/* loaded from: classes2.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private String f10530a = a.class.getSimpleName();

    public final void a(Context context, final com.anythink.odopt.a.a aVar) {
        if (context == null && aVar != null) {
            aVar.a("context is null");
        }
        new c().a(context, new com.anythink.odopt.a.a() { // from class: com.anythink.odopt.a.a.a.a.1
            @Override // com.anythink.odopt.a.a
            public final void a(String str, boolean z2) {
                com.anythink.odopt.a.a aVar2 = aVar;
                if (aVar2 != null) {
                    aVar2.a(str, z2);
                }
                f.a(str, "");
            }

            @Override // com.anythink.odopt.a.a
            public final void a(String str) {
                com.anythink.odopt.a.a aVar2 = aVar;
                if (aVar2 != null) {
                    aVar2.a(str);
                }
                f.a("", str);
            }
        });
    }
}
