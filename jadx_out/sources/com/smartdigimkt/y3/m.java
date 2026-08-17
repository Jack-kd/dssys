package com.smartdigimkt.y3;

import android.content.Context;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public final class m extends o {

    /* renamed from: e, reason: collision with root package name */
    public static volatile m f45233e;

    public m(Context context) {
        super(context);
    }

    @Override // com.smartdigimkt.y3.o
    public final void a(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            arrayList2.add(((com.smartdigimkt.q3.c) obj).a().toString());
        }
        com.smartdigimkt.a5.a aVarA = com.smartdigimkt.z4.d.c().a();
        if (aVarA == null) {
            com.smartdigimkt.q4.d dVar = new com.smartdigimkt.q4.d(0, arrayList2);
            dVar.f42861j = true;
            dVar.a(0, (com.smartdigimkt.l4.b) null);
            return;
        }
        int i3 = aVarA.f39340B;
        if (i3 != 1) {
            com.smartdigimkt.q4.d dVar2 = new com.smartdigimkt.q4.d(i3, arrayList2);
            dVar2.f42861j = true;
            dVar2.a(0, (com.smartdigimkt.l4.b) null);
        } else {
            com.smartdigimkt.s4.a aVar = new com.smartdigimkt.s4.a(arrayList2);
            String str = aVarA.f39343E;
            aVar.f43140a = 1;
            aVar.f43141b = str;
            aVar.f43137e = true;
            aVar.a((com.smartdigimkt.s4.c) null);
        }
    }
}
