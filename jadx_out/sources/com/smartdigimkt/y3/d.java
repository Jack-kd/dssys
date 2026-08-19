package com.smartdigimkt.y3;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public final class d extends o {

    /* renamed from: e, reason: collision with root package name */
    public static volatile d f45200e;

    public d(Context context) {
        super(context);
    }

    public static d a(Context context) {
        if (f45200e == null) {
            synchronized (d.class) {
                try {
                    if (f45200e == null) {
                        f45200e = new d(context);
                    }
                } finally {
                }
            }
        }
        return f45200e;
    }

    @Override // com.smartdigimkt.y3.o
    public final void a(ArrayList arrayList) {
        com.smartdigimkt.a5.a aVarA = com.smartdigimkt.z4.d.c().a();
        if (aVarA != null) {
            int i2 = aVarA.f39340B;
            if (i2 == 1) {
                com.smartdigimkt.s4.f fVar = new com.smartdigimkt.s4.f(arrayList);
                String str = aVarA.f39343E;
                fVar.f43140a = 1;
                fVar.f43141b = str;
                fVar.a((com.smartdigimkt.s4.c) null);
                return;
            }
            if (i2 != 2) {
                new com.smartdigimkt.q4.q(i2, arrayList).a(0, (com.smartdigimkt.l4.b) null);
                return;
            }
            new com.smartdigimkt.q4.q(i2, arrayList).a(0, (com.smartdigimkt.l4.b) null);
            com.smartdigimkt.s4.f fVar2 = new com.smartdigimkt.s4.f(arrayList);
            String str2 = aVarA.f39343E;
            fVar2.f43140a = 2;
            fVar2.f43141b = str2;
            fVar2.a((com.smartdigimkt.s4.c) null);
            return;
        }
        new com.smartdigimkt.q4.q(0, arrayList).a(0, (com.smartdigimkt.l4.b) null);
    }

    public static void a(int i2, com.smartdigimkt.q3.a aVar) {
        if (i2 != 4) {
            if (i2 == 6 && aVar.f42758f != 1) {
                aVar.f42756e = 1;
            }
        } else {
            aVar.f42758f = 1;
        }
        b.a().getClass();
        if (aVar == null || TextUtils.isEmpty(aVar.f42748a) || TextUtils.isEmpty(null)) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (i2 != 4) {
            if (i2 != 6) {
                return;
            }
            aVar.f42767j0 = jCurrentTimeMillis;
        } else {
            try {
                String str = aVar.f42752c;
                if (!TextUtils.isEmpty(str)) {
                    str.equals("0");
                }
            } catch (Throwable th) {
                th.getMessage();
            }
            aVar.f42765i0 = jCurrentTimeMillis;
        }
    }

    public final void a(int i2, com.smartdigimkt.q3.a aVar, long j2) {
        if (aVar != null && aVar.f42737P == 66) {
            synchronized (aVar) {
                try {
                    a(i2, aVar);
                } catch (Throwable th) {
                    th = th;
                    while (true) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    }
                }
            }
            Handler handler = this.f45236b;
            if (handler != null) {
                handler.post(new c(this, i2, aVar, j2));
            }
        }
    }
}
