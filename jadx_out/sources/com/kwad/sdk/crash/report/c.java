package com.kwad.sdk.crash.report;

import android.util.Log;
import androidx.annotation.Nullable;
import com.kwad.sdk.crash.model.message.ExceptionMessage;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes4.dex */
public abstract class c implements e {
    private ArrayList<a> bfD = new ArrayList<>();

    public static class a {
        private ExceptionMessage bfE;
        private int bfF;

        public a(ExceptionMessage exceptionMessage, int i2) {
            this.bfE = exceptionMessage;
            this.bfF = i2;
        }
    }

    private void QG() {
        if (this.bfD.isEmpty()) {
            return;
        }
        try {
            Iterator<a> it = this.bfD.iterator();
            while (it.hasNext()) {
                a next = it.next();
                b(next.bfE, next.bfF, null);
                it.remove();
            }
        } catch (Throwable th) {
            com.kwad.sdk.core.d.c.printStackTraceOnly(th);
        }
    }

    private void b(ExceptionMessage exceptionMessage, int i2, @Nullable CountDownLatch countDownLatch) {
        if (exceptionMessage == null || !c(exceptionMessage)) {
            return;
        }
        if (i2 == 3) {
            com.kwad.sdk.crash.report.a.b(exceptionMessage);
        }
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(com.kwad.sdk.crash.report.request.c.d(exceptionMessage));
        com.kwad.sdk.crash.report.request.b.a(arrayList, countDownLatch);
    }

    private boolean c(ExceptionMessage exceptionMessage) {
        try {
            com.kwad.sdk.crash.e eVarQd = com.kwad.sdk.crash.e.Qd();
            if (eVarQd.Qi() != null && eVarQd.Qh() != 2) {
                List<com.kwad.sdk.crash.a> list = eVarQd.Qi().bdU;
                double d2 = eVarQd.Qi().bdv;
                String appId = eVarQd.getAppId();
                String sdkVersion = eVarQd.getSdkVersion();
                for (com.kwad.sdk.crash.a aVar : list) {
                    if (aVar != null && (com.kwad.sdk.crash.utils.c.b(aVar.bds) || aVar.bds.contains(appId))) {
                        if (com.kwad.sdk.crash.utils.c.b(aVar.bdt) || aVar.bdt.contains(sdkVersion)) {
                            if (com.kwad.sdk.crash.utils.c.b(aVar.bdu) || a(exceptionMessage.mCrashDetail, aVar.bdu)) {
                                d2 = aVar.bdv;
                            }
                        }
                    }
                }
                return Math.random() < d2;
            }
            return true;
        } catch (Exception e2) {
            com.kwad.sdk.core.d.c.w("BaseExceptionUploader", Log.getStackTraceString(e2));
            return true;
        }
    }

    public final void a(ExceptionMessage exceptionMessage, int i2, @Nullable CountDownLatch countDownLatch) {
        try {
            QG();
            b(exceptionMessage, i2, countDownLatch);
        } catch (Throwable th) {
            com.kwad.sdk.core.d.c.printStackTraceOnly(th);
            this.bfD.add(new a(exceptionMessage, i2));
            if (countDownLatch != null) {
                countDownLatch.countDown();
            }
        }
    }

    private static boolean a(String str, List<String> list) {
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            if (str.contains(it.next())) {
                return true;
            }
        }
        return false;
    }
}
