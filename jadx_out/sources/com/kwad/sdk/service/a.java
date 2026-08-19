package com.kwad.sdk.service;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import androidx.work.WorkRequest;
import com.ksad.annotation.invoker.InvokeBy;
import com.kwad.sdk.DownloadTask;
import com.kwad.sdk.api.proxy.app.DownloadService;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes4.dex */
public class a extends com.kwad.sdk.l.a {
    private com.kwad.sdk.c bnQ;
    private Service bnS;
    private final Map<String, Integer> bnR = new ConcurrentHashMap();
    private final HandlerC0634a bnT = new HandlerC0634a(this);

    /* renamed from: com.kwad.sdk.service.a$a, reason: collision with other inner class name */
    public static class HandlerC0634a extends Handler {
        final WeakReference<a> bnU;

        public HandlerC0634a(a aVar) {
            this.bnU = new WeakReference<>(aVar);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            a aVar = this.bnU.get();
            if (aVar != null && message.what == 1) {
                if (aVar.bnQ == null || !aVar.bnQ.EE()) {
                    sendEmptyMessageDelayed(1, WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS);
                } else {
                    aVar.bnS.stopSelf();
                }
            }
        }
    }

    private void h(Intent intent) {
        if (intent == null) {
            return;
        }
        try {
            int intExtra = intent.getIntExtra("download_service_type_tag", 0);
            String stringExtra = intent.getStringExtra("download_service_id_tag");
            DownloadTask.DownloadRequest downloadRequest = (DownloadTask.DownloadRequest) intent.getSerializableExtra("download_service_args_tag");
            Integer num = TextUtils.isEmpty(stringExtra) ? null : this.bnR.get(stringExtra);
            int iIntValue = num != null ? num.intValue() : 0;
            if (intExtra == 1) {
                this.bnR.put(stringExtra, Integer.valueOf(this.bnQ.a(downloadRequest, (com.kwad.sdk.a) null)));
                return;
            }
            if (intExtra == 2) {
                this.bnQ.pause(iIntValue);
                return;
            }
            if (intExtra == 3) {
                this.bnQ.resume(iIntValue);
                return;
            }
            if (intExtra != 4) {
                return;
            }
            if (iIntValue != 0) {
                this.bnQ.cancel(iIntValue);
                return;
            }
            String stringExtra2 = intent.getStringExtra("download_service_path");
            if (stringExtra2 != null) {
                com.kwad.sdk.c.cL(stringExtra2);
            }
        } catch (Exception unused) {
        }
    }

    @InvokeBy(invokerClass = c.class, methodId = "initComponentProxyForInvoker")
    public static void register() {
        c.putComponentProxy(DownloadService.class, a.class);
    }

    @Override // com.kwad.sdk.l.a, com.kwad.sdk.api.proxy.IServiceProxy
    public void onCreate(Service service) {
        if (service == null) {
            return;
        }
        this.bnS = service;
        this.bnQ = com.kwad.sdk.c.Ey();
        this.bnT.sendEmptyMessageDelayed(1, WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS);
    }

    @Override // com.kwad.sdk.l.a, com.kwad.sdk.api.proxy.IServiceProxy
    public int onStartCommand(Service service, Intent intent, int i2, int i3) {
        h(intent);
        return super.onStartCommand(service, intent, i2, i3);
    }
}
