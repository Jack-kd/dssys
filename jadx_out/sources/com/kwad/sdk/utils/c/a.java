package com.kwad.sdk.utils.c;

import android.os.SystemClock;
import android.text.TextUtils;
import com.kwad.sdk.utils.ai;

/* loaded from: classes4.dex */
public abstract class a<T, P> {
    private String bsK;
    private boolean bsL = false;

    public a(String str) {
        this.bsK = str;
    }

    private T XG() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        String strI = ai.i("ksadsdk_long_cost_api_cache", this.bsK, "");
        if (TextUtils.isEmpty(strI)) {
            return null;
        }
        T tIA = iA(strI);
        com.kwad.sdk.core.d.c.d("AbstractFetcher", this.bsK + " readFromLocal cost: " + (SystemClock.elapsedRealtime() - jElapsedRealtime));
        return tIA;
    }

    private T v(P p2) throws Throwable {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        T tX = x(p2);
        w(tX);
        com.kwad.sdk.core.d.c.d("AbstractFetcher", this.bsK + " fetchAndSave cost: " + (SystemClock.elapsedRealtime() - jElapsedRealtime));
        return tX;
    }

    private void w(T t2) throws Throwable {
        if (t2 == null) {
            return;
        }
        ai.h("ksadsdk_long_cost_api_cache", this.bsK, dataToString(t2));
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0010  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T a(P r2, boolean r3) throws java.lang.Throwable {
        /*
            r1 = this;
            if (r3 == 0) goto L10
            java.lang.Object r3 = r1.XG()
            if (r3 == 0) goto Le
            r0 = 1
            r1.bsL = r0
            r1.b(r3, r2)
        Le:
            if (r3 != 0) goto L14
        L10:
            java.lang.Object r3 = r1.v(r2)
        L14:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r0 = r1.bsK
            r2.append(r0)
            java.lang.String r0 = " fetchData: "
            r2.append(r0)
            r2.append(r3)
            java.lang.String r0 = ", isFetchFromCache: "
            r2.append(r0)
            boolean r0 = r1.bsL
            r2.append(r0)
            java.lang.String r2 = r2.toString()
            java.lang.String r0 = "AbstractFetcher"
            com.kwad.sdk.core.d.c.d(r0, r2)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.sdk.utils.c.a.a(java.lang.Object, boolean):java.lang.Object");
    }

    public void b(T t2, P p2) {
    }

    public abstract String dataToString(T t2);

    public abstract T iA(String str);

    public abstract T x(P p2);
}
