package com.sigmob.sdk.base.views;

import android.content.Context;
import android.webkit.JavascriptInterface;
import com.sigmob.sdk.base.common.C1272o;
import com.sigmob.sdk.base.common.C1276q;
import com.sigmob.sdk.base.models.BaseAdUnit;

/* loaded from: classes4.dex */
public class ae {

    /* renamed from: a, reason: collision with root package name */
    private final int f36757a = -1;

    /* renamed from: b, reason: collision with root package name */
    private final Context f36758b;

    /* renamed from: c, reason: collision with root package name */
    private final BaseAdUnit f36759c;

    /* renamed from: d, reason: collision with root package name */
    private final a f36760d;

    public interface a {
        void onApkDownloadProcess();
    }

    public ae(Context context, BaseAdUnit baseAdUnit, a aVar) {
        this.f36758b = context;
        this.f36759c = baseAdUnit;
        this.f36760d = aVar;
    }

    private int a() {
        BaseAdUnit baseAdUnit = this.f36759c;
        if (baseAdUnit == null) {
            return -1;
        }
        return baseAdUnit.getApkDownloadType();
    }

    @JavascriptInterface
    public int cancelDownloadTask() {
        int iA = a();
        if (iA == -1 || iA == 0) {
            return -1;
        }
        return C1272o.c(this.f36758b, this.f36759c);
    }

    @JavascriptInterface
    public int getApKDownloadProcess() {
        if (com.sigmob.sdk.base.utils.v.b(this.f36760d)) {
            this.f36760d.onApkDownloadProcess();
        }
        if (this.f36758b == null || this.f36759c == null) {
            return -1;
        }
        long[] jArrA = a() == 0 ? C1276q.a(this.f36758b, this.f36759c.getDownloadId()) : C1272o.d(this.f36758b, this.f36759c);
        int i2 = (int) jArrA[2];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 4) {
                    return i2 != 8 ? -1 : 100;
                }
                return -2;
            }
            long j2 = jArrA[0];
            long j3 = jArrA[1];
            if (j3 != 0 && j2 != 0) {
                return (int) ((j2 * 100) / j3);
            }
        }
        return 0;
    }

    @JavascriptInterface
    public int getApKDownloadType() {
        return a();
    }

    @JavascriptInterface
    public int pauseDownload() {
        int iA = a();
        if (iA == -1 || iA == 0) {
            return -1;
        }
        return C1272o.a(this.f36758b, this.f36759c);
    }

    @JavascriptInterface
    public int resumeDownload() {
        int iA = a();
        if (iA == -1 || iA == 0) {
            return -1;
        }
        return C1272o.b(this.f36758b, this.f36759c);
    }
}
