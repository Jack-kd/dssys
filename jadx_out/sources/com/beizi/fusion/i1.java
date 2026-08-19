package com.beizi.fusion;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.text.TextUtils;
import android.view.View;
import com.beizi.fusion.asnp.adn.ad.download.service.DownloadService;
import com.beizi.fusion.asnp.adn.ad.download.service.a;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.NativeModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.down.DownloadInfoModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.link.LinkModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.trace.AdTraceModel;

/* loaded from: classes2.dex */
public class i1 extends g1 {

    /* renamed from: f, reason: collision with root package name */
    private ec f14398f;

    public class b extends BroadcastReceiver {
        private b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null) {
                String stringExtra = intent.getStringExtra("prompt");
                LinkModel linkModelC = i1.this.c();
                if ("cancel".equals(stringExtra) && linkModelC != null) {
                    i1.this.a(context, linkModelC);
                }
                if ("confirm".equals(stringExtra) && linkModelC != null) {
                    i1.this.b(context, linkModelC);
                }
            }
            i1.this.b(context.getApplicationContext(), this);
        }
    }

    public static class c implements ServiceConnection {

        /* renamed from: a, reason: collision with root package name */
        private final Context f14400a;

        /* renamed from: b, reason: collision with root package name */
        private final a.C0150a f14401b;

        private void a(IBinder iBinder) {
            com.beizi.fusion.asnp.adn.ad.download.service.a aVarA;
            if (!(iBinder instanceof DownloadService.b) || (aVarA = ((DownloadService.b) iBinder).a()) == null) {
                return;
            }
            aVarA.a(this.f14401b);
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            a(iBinder);
            this.f14400a.unbindService(this);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }

        private c(Context context, String str, DownloadInfoModel downloadInfoModel, String str2, AdTraceModel adTraceModel) {
            this.f14400a = context.getApplicationContext();
            this.f14401b = new a.C0150a(str, downloadInfoModel, str2, adTraceModel);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(Context context, LinkModel linkModel) {
        if (!TextUtils.isEmpty(linkModel.getMarketURL()) && d(context, linkModel.getMarketURL())) {
            return true;
        }
        if (TextUtils.isEmpty(linkModel.getDownloadURL())) {
            return false;
        }
        return a(linkModel.getDownloadURL(), this.f13233b.getDownloadInfo());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public LinkModel c() {
        NativeModel nativeModel = this.f13233b;
        if (nativeModel == null || nativeModel.getLink() == null) {
            return null;
        }
        return this.f13233b.getLink();
    }

    private boolean d(Context context, String str) {
        return a(context, str);
    }

    private boolean e() {
        DownloadInfoModel downloadInfoModelB;
        LinkModel linkModelC = c();
        if (linkModelC != null && linkModelC.getInteractType() == 1) {
            String marketURL = linkModelC.getMarketURL();
            String downloadURL = linkModelC.getDownloadURL();
            if ((!TextUtils.isEmpty(marketURL) || !TextUtils.isEmpty(downloadURL)) && (downloadInfoModelB = b()) != null && downloadInfoModelB.isConformanceByDlInfo()) {
                return true;
            }
        }
        return false;
    }

    private boolean c(Context context, String str) {
        if (b() == null) {
            return false;
        }
        b bVar = new b();
        a(context, bVar);
        DownloadInfoModel downloadInfo = this.f13233b.getDownloadInfo();
        if (downloadInfo == null) {
            return false;
        }
        boolean zA = zf.a(context, str, downloadInfo.toJsonString());
        if (!zA) {
            b(context, bVar);
        }
        return zA;
    }

    @Override // com.beizi.fusion.ca
    public y9 a() {
        ec ecVar = new ec();
        this.f14398f = ecVar;
        return ecVar;
    }

    private DownloadInfoModel b() {
        NativeModel nativeModel = this.f13233b;
        if (nativeModel == null || nativeModel.getDownloadInfo() == null) {
            return null;
        }
        return this.f13233b.getDownloadInfo();
    }

    @Override // com.beizi.fusion.g1, com.beizi.fusion.j1, com.beizi.fusion.ja
    public void a(LinkModel linkModel, View view, int i2) {
        if (linkModel != null) {
            if (TextUtils.isEmpty(linkModel.getDeeplink()) || !a(view.getContext(), linkModel.getDeeplink())) {
                if (e()) {
                    if (a(i2)) {
                        if (c(view.getContext(), linkModel.getDownloadURL())) {
                            return;
                        }
                    } else if (b(view.getContext(), linkModel)) {
                        return;
                    }
                }
                super.a(linkModel, view, i2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Context context, b bVar) {
        if (context != null) {
            ih.a(context.getApplicationContext()).a(bVar);
        }
    }

    private boolean a(int i2) {
        LinkModel linkModelC = c();
        return (i2 == 0 || linkModelC == null || !linkModelC.showDownloadPrompt()) ? false : true;
    }

    @Override // com.beizi.fusion.j1
    public Bundle a(LinkModel linkModel) {
        if (linkModel != null && !TextUtils.isEmpty(linkModel.getLandingPageURL()) && b() != null) {
            LinkModel linkModelC = c();
            boolean z2 = linkModelC != null ? !linkModelC.shouldWebIntercept() : false;
            Bundle bundleA = super.a(linkModelC);
            bundleA.putBoolean("allow", z2);
            return bundleA;
        }
        return super.a(linkModel);
    }

    private boolean a(String str, DownloadInfoModel downloadInfoModel) {
        if (!qo.e(str)) {
            return false;
        }
        zf.a(this.f13234c, new c(this.f13234c, str, downloadInfoModel, this.f13235d, this.f14398f.b()));
        return true;
    }

    private void a(Context context, b bVar) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.asnp.ad.ACTION_DOWNLOAD_PROMPT_RESULT");
        if (context != null) {
            ih.a(context.getApplicationContext()).a(bVar, intentFilter);
        }
    }
}
