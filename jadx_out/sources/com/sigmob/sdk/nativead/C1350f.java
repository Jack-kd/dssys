package com.sigmob.sdk.nativead;

import android.os.Bundle;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.volley.toolbox.DownloadItem;
import com.czhj.volley.toolbox.FileDownloadRequest;
import com.czhj.volley.toolbox.FileDownloader;
import com.sigmob.sdk.base.BaseAdActivity;
import com.sigmob.sdk.base.common.AbstractC1285y;
import com.sigmob.sdk.base.common.AdActivity;
import com.sigmob.sdk.base.common.C1280t;
import com.sigmob.sdk.base.common.InterfaceC1274p;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.rtb.MaterialMeta;
import java.io.File;

/* renamed from: com.sigmob.sdk.nativead.f, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1350f extends AbstractC1285y {

    /* renamed from: c, reason: collision with root package name */
    private NativeAdBroadcastReceiver f38404c;

    public C1350f(InterfaceC1274p interfaceC1274p) {
        super(interfaceC1274p);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a() {
        File adPrivacyTemplateFile = this.f36055b.getAdPrivacyTemplateFile();
        if (adPrivacyTemplateFile == null || adPrivacyTemplateFile.exists()) {
            return;
        }
        DownloadItem downloadItem = new DownloadItem();
        downloadItem.url = this.f36055b.getadPrivacy().privacy_template_url;
        downloadItem.filePath = adPrivacyTemplateFile.getAbsolutePath();
        downloadItem.type = DownloadItem.FileType.OTHER;
        FileDownloader fileDownloaderA = C1280t.a();
        if (fileDownloaderA == null) {
            return;
        }
        fileDownloaderA.add(downloadItem, new FileDownloadRequest.FileDownloadListener() { // from class: com.sigmob.sdk.nativead.f.1
            @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
            public void downloadProgress(DownloadItem downloadItem2, long j2, long j3) {
            }

            @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
            public void onCancel(DownloadItem downloadItem2) {
            }

            @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
            public void onErrorResponse(DownloadItem downloadItem2) {
            }

            @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
            public void onSuccess(DownloadItem downloadItem2) {
            }
        });
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1285y
    public void b(BaseAdUnit baseAdUnit) {
        NativeAdBroadcastReceiver nativeAdBroadcastReceiver = this.f38404c;
        if (nativeAdBroadcastReceiver != null) {
            nativeAdBroadcastReceiver.b(nativeAdBroadcastReceiver);
            this.f38404c = null;
        }
        super.b(baseAdUnit);
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1285y
    public void a(InterfaceC1274p interfaceC1274p) {
        ThreadPoolFactory.getFixIOExecutor().submit(new Runnable() { // from class: com.sigmob.sdk.nativead.S
            @Override // java.lang.Runnable
            public final void run() {
                this.f38299b.a();
            }
        });
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1285y
    public void a(BaseAdUnit baseAdUnit, Bundle bundle) {
        super.a(baseAdUnit, bundle);
        if (this.f38404c == null) {
            InterfaceC1274p interfaceC1274p = this.f36054a;
            if (interfaceC1274p instanceof InterfaceC1351g) {
                NativeAdBroadcastReceiver nativeAdBroadcastReceiver = new NativeAdBroadcastReceiver((InterfaceC1351g) interfaceC1274p, baseAdUnit.getUuid());
                this.f38404c = nativeAdBroadcastReceiver;
                nativeAdBroadcastReceiver.a(nativeAdBroadcastReceiver);
            }
        }
        BaseAdActivity.a(com.sigmob.sdk.b.e(), AdActivity.class, baseAdUnit.getUuid(), bundle, BaseAdActivity.f35511e);
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1285y
    public boolean a(BaseAdUnit baseAdUnit) {
        if (baseAdUnit.getMaterial() == null) {
            return false;
        }
        return a(baseAdUnit.getMaterial());
    }

    private static boolean a(MaterialMeta materialMeta) {
        return true;
    }
}
