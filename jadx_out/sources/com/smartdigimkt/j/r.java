package com.smartdigimkt.j;

import android.content.Intent;
import com.smartdigimkt.dlopt.common.service.ApkDownloadService;

/* loaded from: classes5.dex */
public final class r implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.k.r f40812a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f40813b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ u f40814c;

    public r(u uVar, com.smartdigimkt.k.r rVar, String str) {
        this.f40814c = uVar;
        this.f40812a = rVar;
        this.f40813b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f40812a.f41196s = com.smartdigimkt.k.c.IDLE;
            com.smartdigimkt.o.b bVar = this.f40814c.f40832m;
            if (bVar != null) {
                String str = this.f40813b;
                ApkDownloadService apkDownloadService = bVar.f42181a;
                int i2 = ApkDownloadService.f39918b;
                apkDownloadService.a(str);
                return;
            }
            Intent intent = new Intent();
            intent.setClass(this.f40814c.f40820a, ApkDownloadService.class);
            intent.putExtra("extra_unique_id", this.f40813b);
            u uVar = this.f40814c;
            uVar.f40820a.bindService(intent, uVar.f40833n, 1);
        } catch (Throwable th) {
            th.getMessage();
        }
    }
}
