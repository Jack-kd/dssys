package com.anythink.core.mg.a;

import android.os.SystemClock;
import com.anythink.core.common.h.as;
import com.anythink.core.common.h.by;
import com.anythink.core.common.v.o;
import com.anythink.core.mg.api.MgAdInfo;
import com.anythink.core.mg.api.MgComparedResult;
import com.anythink.core.mg.api.MgPreLoadAdRequest;
import com.anythink.core.mg.api.MgPreLoadCallback;
import com.anythink.core.mg.api.MgPreLoadCallbackRegister;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f9027a = "a";

    /* renamed from: b, reason: collision with root package name */
    private final AtomicBoolean f9028b = new AtomicBoolean(false);

    /* renamed from: c, reason: collision with root package name */
    private final Object f9029c = new Object();

    /* renamed from: e, reason: collision with root package name */
    private final AtomicReference<MgComparedResult> f9031e = new AtomicReference<>();

    /* renamed from: d, reason: collision with root package name */
    private final List<b> f9030d = new ArrayList(2);

    private static boolean a(int i2) {
        return i2 == 0 || i2 == 9 || i2 == 8 || i2 == 5;
    }

    private static boolean b(as asVar, by byVar) {
        MgPreLoadAdRequest preLoadInfo;
        return (byVar == null || asVar == null || asVar.b() == null || (preLoadInfo = asVar.b().getPreLoadInfo()) == null || !preLoadInfo.isEnableCpEcpm()) ? false : true;
    }

    public final void a(b bVar) {
        synchronized (this.f9029c) {
            this.f9030d.add(bVar);
        }
    }

    private by b(by byVar) {
        MgComparedResult mgComparedResultA = a();
        if (o.a(byVar) > ((mgComparedResultA == null || mgComparedResultA.getMgAdInfo() == null) ? 0.0d : mgComparedResultA.getMgAdInfo().getUSDEcpm())) {
            return byVar;
        }
        return null;
    }

    private void a(MgComparedResult mgComparedResult) {
        ArrayList arrayList;
        this.f9031e.set(mgComparedResult);
        if (this.f9030d.isEmpty()) {
            return;
        }
        int i2 = 0;
        if (this.f9028b.compareAndSet(false, true)) {
            if (mgComparedResult == null) {
                mgComparedResult = MgComparedResult.create();
            }
            synchronized (this.f9029c) {
                arrayList = new ArrayList(this.f9030d);
                this.f9030d.clear();
            }
            if (arrayList.isEmpty()) {
                return;
            }
            int size = arrayList.size();
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                b bVar = (b) obj;
                if (bVar != null) {
                    bVar.a(mgComparedResult);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MgPreLoadAdRequest mgPreLoadAdRequest, by byVar, MgAdInfo mgAdInfo, long j2, boolean z2) {
        MgComparedResult mgComparedResultCreate = MgComparedResult.create(byVar, mgAdInfo, j2 > 0 ? SystemClock.elapsedRealtime() - j2 : 0L, z2);
        if (mgPreLoadAdRequest != null) {
            mgPreLoadAdRequest.setMgComparedResult(mgComparedResultCreate);
        }
        a(mgComparedResultCreate);
    }

    public final MgComparedResult a() {
        return this.f9031e.get();
    }

    private boolean a(by byVar) {
        MgComparedResult mgComparedResultA = a();
        if (mgComparedResultA != null && mgComparedResultA.isMgWin()) {
            double uSDEcpm = mgComparedResultA.getMgAdInfo() != null ? mgComparedResultA.getMgAdInfo().getUSDEcpm() : 0.0d;
            if (uSDEcpm > 0.0d && o.a(byVar) < uSDEcpm) {
                return true;
            }
        }
        return false;
    }

    public final void a(as asVar, final by byVar) {
        MgPreLoadAdRequest preLoadInfo;
        try {
            if (byVar != null && asVar != null) {
                try {
                    if (asVar.b() != null && (preLoadInfo = asVar.b().getPreLoadInfo()) != null && preLoadInfo.isEnableCpEcpm()) {
                        final MgPreLoadAdRequest preLoadInfo2 = asVar.b().getPreLoadInfo();
                        MgPreLoadCallbackRegister preLoadCallbackRegister = preLoadInfo2 != null ? preLoadInfo2.getPreLoadCallbackRegister() : null;
                        MgAdInfo mgAdInfo = preLoadCallbackRegister != null ? preLoadCallbackRegister.getMgAdInfo() : null;
                        if (preLoadCallbackRegister != null && !MgAdInfo.isMgAdInfoValid(mgAdInfo)) {
                            final long jElapsedRealtime = SystemClock.elapsedRealtime();
                            preLoadCallbackRegister.registerPreLoadCallback(new MgPreLoadCallback() { // from class: com.anythink.core.mg.a.a.1
                                @Override // com.anythink.core.mg.api.MgPreLoadCallback
                                public final void onMgAdInfo(MgAdInfo mgAdInfo2, boolean z2) {
                                    a.this.a(preLoadInfo2, byVar, mgAdInfo2, jElapsedRealtime, z2);
                                }
                            });
                            preLoadCallbackRegister.startTimeoutCountDown(preLoadInfo2.getCpEcpmTimeout());
                            return;
                        }
                        a(preLoadInfo2, byVar, mgAdInfo, 0L, false);
                        return;
                    }
                } catch (Throwable unused) {
                    a(MgComparedResult.create());
                    return;
                }
            }
            a(MgComparedResult.create());
        } catch (Throwable unused2) {
        }
    }
}
