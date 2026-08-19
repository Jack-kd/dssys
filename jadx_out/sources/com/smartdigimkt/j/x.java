package com.smartdigimkt.j;

import android.os.SystemClock;
import com.smartdigimkt.dlopt.api.CustomAdapterDownloadListener;
import com.smartdigimkt.dlopt.api.SDMAppDownloadListener;
import com.smartdigimkt.sdk.api.SDMEventInterface;
import java.lang.ref.WeakReference;

/* loaded from: classes5.dex */
public final class x implements CustomAdapterDownloadListener {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f40838a;

    /* renamed from: b, reason: collision with root package name */
    public long f40839b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f40840c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f40841d;

    public x(SDMEventInterface sDMEventInterface) {
        if (sDMEventInterface == null || !(sDMEventInterface instanceof SDMAppDownloadListener)) {
            return;
        }
        this.f40838a = new WeakReference((SDMAppDownloadListener) sDMEventInterface);
    }

    @Override // com.smartdigimkt.dlopt.api.CustomAdapterDownloadListener
    public final void onDownloadFail(long j2, long j3, String str, String str2) {
        WeakReference weakReference = this.f40838a;
        SDMAppDownloadListener sDMAppDownloadListener = weakReference != null ? (SDMAppDownloadListener) weakReference.get() : null;
        if (sDMAppDownloadListener != null) {
            sDMAppDownloadListener.onDownloadFail(j2, j3, str, str2);
        }
    }

    @Override // com.smartdigimkt.dlopt.api.CustomAdapterDownloadListener
    public final void onDownloadFinish(long j2, String str, String str2) {
        if (this.f40839b != 0 && !this.f40841d) {
            this.f40841d = true;
            SystemClock.elapsedRealtime();
            com.smartdigimkt.b4.e.a().c(new w());
        }
        WeakReference weakReference = this.f40838a;
        SDMAppDownloadListener sDMAppDownloadListener = weakReference != null ? (SDMAppDownloadListener) weakReference.get() : null;
        if (sDMAppDownloadListener != null) {
            sDMAppDownloadListener.onDownloadFinish(j2, str, str2);
        }
    }

    @Override // com.smartdigimkt.dlopt.api.CustomAdapterDownloadListener
    public final void onDownloadPause(long j2, long j3, String str, String str2) {
        WeakReference weakReference = this.f40838a;
        SDMAppDownloadListener sDMAppDownloadListener = weakReference != null ? (SDMAppDownloadListener) weakReference.get() : null;
        if (sDMAppDownloadListener != null) {
            sDMAppDownloadListener.onDownloadPause(j2, j3, str, str2);
        }
    }

    @Override // com.smartdigimkt.dlopt.api.CustomAdapterDownloadListener
    public final void onDownloadStart(long j2, long j3, String str, String str2) {
        this.f40839b = SystemClock.elapsedRealtime();
        com.smartdigimkt.b4.e.a().c(new w());
        WeakReference weakReference = this.f40838a;
        SDMAppDownloadListener sDMAppDownloadListener = weakReference != null ? (SDMAppDownloadListener) weakReference.get() : null;
        if (sDMAppDownloadListener != null) {
            sDMAppDownloadListener.onDownloadStart(j2, j3, str, str2);
        }
    }

    @Override // com.smartdigimkt.dlopt.api.CustomAdapterDownloadListener
    public final void onDownloadUpdate(long j2, long j3, String str, String str2) {
        WeakReference weakReference = this.f40838a;
        SDMAppDownloadListener sDMAppDownloadListener = weakReference != null ? (SDMAppDownloadListener) weakReference.get() : null;
        if (sDMAppDownloadListener != null) {
            sDMAppDownloadListener.onDownloadUpdate(j2, j3, str, str2);
        }
    }

    @Override // com.smartdigimkt.dlopt.api.CustomAdapterDownloadListener
    public final void onInstalled(String str, String str2) {
        if (!this.f40840c) {
            this.f40840c = true;
            com.smartdigimkt.b4.e.a().c(new w());
        }
        WeakReference weakReference = this.f40838a;
        SDMAppDownloadListener sDMAppDownloadListener = weakReference != null ? (SDMAppDownloadListener) weakReference.get() : null;
        if (sDMAppDownloadListener != null) {
            sDMAppDownloadListener.onInstalled(str, str2);
        }
    }
}
