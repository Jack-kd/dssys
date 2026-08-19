package com.smartdigimkt.i0;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import com.smartdigimkt.z.p;

/* loaded from: classes5.dex */
public final class h implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f40655a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Dialog f40656b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ i f40657c;

    public h(i iVar, Context context, Dialog dialog) {
        this.f40657c = iVar;
        this.f40655a = context;
        this.f40656b = dialog;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        try {
            i iVar = this.f40657c;
            String str = iVar.f40660c;
            com.smartdigimkt.m3.c cVar = iVar.f40658a;
            com.smartdigimkt.y3.h.a(str, cVar.f41806a, iVar.f40659b, 8, (String) null, 0L, 0L, cVar, 0, 0L);
            if (p.b(this.f40655a, this.f40657c.f40658a)) {
                i iVar2 = this.f40657c;
                String str2 = iVar2.f40660c;
                com.smartdigimkt.m3.c cVar2 = iVar2.f40658a;
                com.smartdigimkt.y3.h.a(str2, cVar2.f41806a, iVar2.f40659b, 9, (String) null, 0L, 0L, cVar2, 0, iVar2.f40662e);
            } else {
                i iVar3 = this.f40657c;
                String str3 = iVar3.f40660c;
                com.smartdigimkt.m3.c cVar3 = iVar3.f40658a;
                com.smartdigimkt.y3.h.a(str3, cVar3.f41806a, iVar3.f40659b, 13, (String) null, 0L, 0L, cVar3, 0, 0L);
            }
            this.f40656b.dismiss();
            com.smartdigimkt.j.g gVar = this.f40657c.f40661d;
        } catch (Throwable unused) {
        }
    }
}
