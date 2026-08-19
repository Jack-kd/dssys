package com.smartdigimkt.i5;

import android.text.TextUtils;
import com.smartdigimkt.c5.b0;
import com.smartdigimkt.c5.w;
import com.smartdigimkt.sdk.api.AdError;
import com.smartdigimkt.sdk.api.SDMSDK;
import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: classes5.dex */
public final class r implements com.smartdigimkt.z4.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.g5.a f40769a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.a5.e f40770b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.q3.a f40771c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ t f40772d;

    public r(t tVar, com.smartdigimkt.g5.a aVar, com.smartdigimkt.a5.e eVar, com.smartdigimkt.q3.a aVar2) {
        this.f40772d = tVar;
        this.f40769a = aVar;
        this.f40770b = eVar;
        this.f40771c = aVar2;
    }

    @Override // com.smartdigimkt.z4.l
    public final void a() {
    }

    @Override // com.smartdigimkt.z4.l
    public final void b() {
    }

    @Override // com.smartdigimkt.z4.l
    public final void a(com.smartdigimkt.a5.e eVar) {
    }

    @Override // com.smartdigimkt.z4.l
    public final void b(com.smartdigimkt.a5.e eVar) throws NumberFormatException {
        com.smartdigimkt.k4.a aVarA;
        int i2;
        int i3;
        t tVar = this.f40772d;
        com.smartdigimkt.g5.a aVar = this.f40769a;
        tVar.getClass();
        if (eVar == null) {
            aVarA = com.smartdigimkt.k4.b.a("10006", "The placeStrategy is null.");
        } else {
            com.smartdigimkt.a5.f fVarB = eVar.b();
            String str = fVarB == null ? "The placeStrategy does not has ADX ad source." : "";
            if (TextUtils.isEmpty(str) && (i2 = aVar.f40396c) != (i3 = eVar.f39423m)) {
                str = "Format corresponding to API: " + com.smartdigimkt.c5.j.a(String.valueOf(i2)) + ", Format corresponding to placement strategy: " + com.smartdigimkt.c5.j.a(String.valueOf(i3));
            }
            if (TextUtils.isEmpty(str) && eVar.f39420j != 1) {
                str = "Placement Ads switch is close.";
            }
            aVar.f40406m = fVarB;
            aVar.f40405l = eVar;
            aVarA = !TextUtils.isEmpty(str) ? com.smartdigimkt.k4.b.a("10006", str) : null;
        }
        if (aVarA != null) {
            this.f40769a.a(aVarA);
            this.f40772d.a(this.f40769a);
            return;
        }
        com.smartdigimkt.g5.a aVar2 = this.f40769a;
        long jCurrentTimeMillis = System.currentTimeMillis();
        com.smartdigimkt.h5.a aVar3 = aVar2.f40402i;
        if (aVar3 != null) {
            aVar3.f40593c = jCurrentTimeMillis;
        }
        com.smartdigimkt.q3.a aVar4 = this.f40769a.f40412s;
        if (aVar4 != null) {
            if (eVar == this.f40770b) {
                aVar4.f42786u = 1;
            } else {
                aVar4.f42786u = 2;
            }
        }
        b0.a(aVar4, eVar);
        com.smartdigimkt.y3.d.a(this.f40769a.f40394a).a(10, aVar4, -1L);
        this.f40772d.a(this.f40769a);
    }

    @Override // com.smartdigimkt.z4.l
    public final void a(AdError adError) throws NumberFormatException {
        ThreadPoolExecutor threadPoolExecutor;
        com.smartdigimkt.g5.a aVar = this.f40769a;
        String str = aVar.f40398e;
        String strA = com.smartdigimkt.c5.j.a(String.valueOf(aVar.f40396c));
        String errorInfo = adError.getErrorInfo();
        ThreadPoolExecutor threadPoolExecutor2 = w.f39821a;
        if (SDMSDK.getInstance().isNetworkLogDebug() && (threadPoolExecutor = w.f39821a) != null) {
            threadPoolExecutor.execute(new com.smartdigimkt.c5.t(str, strA, errorInfo));
        }
        this.f40769a.a(com.smartdigimkt.k4.b.a("10006", adError.getErrorInfo()));
        com.smartdigimkt.g5.a aVar2 = this.f40769a;
        long jCurrentTimeMillis = System.currentTimeMillis();
        com.smartdigimkt.h5.a aVar3 = aVar2.f40402i;
        if (aVar3 != null) {
            aVar3.f40593c = jCurrentTimeMillis;
        }
        b0.a(this.f40769a.f40412s, this.f40770b);
        com.smartdigimkt.y3.d.a(this.f40769a.f40394a).a(10, this.f40771c, -1L);
        this.f40772d.a(this.f40769a);
    }
}
