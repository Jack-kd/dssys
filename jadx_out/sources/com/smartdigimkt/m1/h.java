package com.smartdigimkt.m1;

import android.view.View;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import okhttp3.internal.ws.WebSocketProtocol;

/* loaded from: classes5.dex */
public final class h extends com.smartdigimkt.x.b {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ l f41714b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(l lVar, com.smartdigimkt.m3.k kVar) {
        super(kVar);
        this.f41714b = lVar;
    }

    @Override // com.smartdigimkt.sdk.api.IExHandlerBaseAd.DataFetchListener
    public final void onStatusChanged(int i2, String str) {
        WeakReference weakReference = this.f41714b.f41725q;
        if (weakReference == null || weakReference.get() == null) {
            this.f41714b.g();
        }
        WeakReference weakReference2 = this.f41714b.f41725q;
        View view = weakReference2 != null ? (View) weakReference2.get() : null;
        if (view != null && (view instanceof TextView)) {
            ((TextView) view).setText(str);
        }
        if (i2 == 2) {
            this.f41714b.a(128);
        } else if (i2 == 4) {
            this.f41714b.a(WebSocketProtocol.PAYLOAD_SHORT);
        } else {
            if (i2 != 5) {
                return;
            }
            this.f41714b.a(127);
        }
    }
}
