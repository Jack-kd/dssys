package com.baidu.mobads.sdk.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.baidu.mobads.sdk.internal.cb;

/* loaded from: classes2.dex */
class cd extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ cb f11309a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cd(cb cbVar, Looper looper) {
        super(looper);
        this.f11309a = cbVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        String string = message.getData().getString(cb.f11291n);
        bz bzVar = (bz) message.getData().getParcelable(cb.f11290m);
        if (!cb.f11288k.equals(string)) {
            this.f11309a.f11306z.a(cb.f11278a, "mOnApkDownloadCompleted: download failed, code: " + string);
            this.f11309a.a(false);
            if (this.f11309a.f11299A) {
                this.f11309a.f11299A = false;
                this.f11309a.a(false, "Refused to download remote for version...");
                return;
            }
            return;
        }
        bu buVar = new bu(bzVar.e(), this.f11309a.f11305y, bzVar);
        try {
            try {
                cb cbVar = this.f11309a;
                if (cbVar.f11302u == cb.f11297t) {
                    buVar.a();
                    buVar.a(cb.f());
                    if (cb.f11293p != null) {
                        cb.f11293p.f11212b = bzVar.b();
                    }
                    this.f11309a.l();
                    if (this.f11309a.f11299A) {
                        this.f11309a.f11299A = false;
                        cb cbVar2 = this.f11309a;
                        cbVar2.a(cbVar2.p(), "load remote file just downloaded");
                    }
                } else {
                    cbVar.a(buVar);
                    buVar.a(cb.f());
                    this.f11309a.a(true);
                }
            } catch (cb.a e2) {
                String str = "download apk file failed: " + e2.toString();
                this.f11309a.a(false);
                this.f11309a.f11306z.a(cb.f11278a, str);
            }
            buVar.delete();
        } catch (Throwable th) {
            buVar.delete();
            throw th;
        }
    }
}
