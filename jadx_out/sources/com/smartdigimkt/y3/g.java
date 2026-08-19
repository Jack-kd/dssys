package com.smartdigimkt.y3;

import android.app.KeyguardManager;
import android.os.Environment;
import android.os.PowerManager;
import android.os.StatFs;
import android.text.TextUtils;
import com.smartdigimkt.sdk.core.SDKContext;

/* loaded from: classes5.dex */
public final class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f45205a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f45206b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.l3.a f45207c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f45208d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f45209e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f45210f = 0;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ String f45211g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ String f45212h;

    /* renamed from: i, reason: collision with root package name */
    public final /* synthetic */ boolean f45213i;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ String f45214j;

    /* renamed from: k, reason: collision with root package name */
    public final /* synthetic */ long f45215k;

    public g(String str, String str2, com.smartdigimkt.l3.a aVar, String str3, int i2, String str4, String str5, boolean z2, String str6, long j2) {
        this.f45205a = str;
        this.f45206b = str2;
        this.f45207c = aVar;
        this.f45208d = str3;
        this.f45209e = i2;
        this.f45211g = str4;
        this.f45212h = str5;
        this.f45213i = z2;
        this.f45214j = str6;
        this.f45215k = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean zIsScreenOn;
        com.smartdigimkt.q3.c cVar = new com.smartdigimkt.q3.c(this.f45205a, this.f45206b);
        cVar.f42817a = "1004687";
        com.smartdigimkt.a5.a aVarA = com.smartdigimkt.z4.d.c().a();
        if (aVarA == null || !h.a(aVarA, cVar)) {
            cVar.a(this.f45207c);
            cVar.f42828l = this.f45208d;
            cVar.f42829m = String.valueOf(this.f45209e);
            cVar.f42830n = String.valueOf(this.f45210f);
            try {
                zIsScreenOn = ((PowerManager) SDKContext.getInstance().d().getSystemService("power")).isScreenOn();
            } catch (Throwable unused) {
                zIsScreenOn = true;
            }
            boolean zInKeyguardRestrictedInputMode = false;
            try {
                KeyguardManager keyguardManager = (KeyguardManager) SDKContext.getInstance().d().getSystemService("keyguard");
                if (keyguardManager != null) {
                    zInKeyguardRestrictedInputMode = keyguardManager.inKeyguardRestrictedInputMode();
                }
            } catch (Throwable unused2) {
            }
            cVar.f42831o = (zInKeyguardRestrictedInputMode || !zIsScreenOn) ? (zInKeyguardRestrictedInputMode || zIsScreenOn) ? (zInKeyguardRestrictedInputMode && zIsScreenOn) ? "2" : "3" : "1" : "0";
            String str = com.smartdigimkt.c5.k.g(SDKContext.getInstance().d()) ? "1" : "0";
            cVar.f42832p = str;
            cVar.f42833q = this.f45211g;
            cVar.f42834r = this.f45212h;
            cVar.f42835s = this.f45213i ? "1" : "2";
            if (TextUtils.isEmpty(h.f45216a)) {
                try {
                    StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
                    long blockSize = statFs.getBlockSize();
                    String str2 = ((statFs.getAvailableBlocks() * blockSize) / 1048576) + "MB";
                    h.f45216a = str2;
                    cVar.f42836t = str2;
                } catch (Throwable unused3) {
                }
            } else {
                cVar.f42836t = h.f45216a;
            }
            cVar.f42837u = this.f45214j;
            cVar.f42838v = String.valueOf(this.f45215k);
            h.a(cVar);
        }
    }
}
