package com.fl.saas.adx.base.download;

import android.app.IntentService;
import android.content.Intent;
import androidx.annotation.Nullable;
import com.fl.saas.AbstractC1221u;
import com.fl.saas.C1188j;
import com.fl.saas.E;
import com.fl.saas.adx.util.LogcatUtil;
import java.io.File;

/* loaded from: classes3.dex */
public class DownloadService extends IntentService {
    private E downLoadSupportPauseUtil;
    private boolean haveComplete;

    public DownloadService() {
        super("DownloadService");
        this.haveComplete = false;
    }

    @Override // android.app.IntentService, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        AbstractC1221u.f30660a = false;
        E e2 = this.downLoadSupportPauseUtil;
        if (e2 != null) {
            e2.b();
            this.downLoadSupportPauseUtil = null;
        }
    }

    @Override // android.app.IntentService
    public void onHandleIntent(@Nullable Intent intent) {
        AbstractC1221u.f30660a = true;
        if (intent != null) {
            C1188j c1188j = (C1188j) intent.getSerializableExtra("pojo");
            if (c1188j != null) {
                E e2 = new E(this, c1188j, new E.d() { // from class: com.fl.saas.adx.base.download.DownloadService.1
                    @Override // com.fl.saas.E.d
                    public void onCancel() {
                        DownloadService.this.haveComplete = true;
                    }

                    @Override // com.fl.saas.E.d
                    public void onError() {
                        DownloadService.this.haveComplete = true;
                        Intent intent2 = new Intent();
                        intent2.setAction(E.f29869v);
                        DownloadService.this.sendBroadcast(intent2);
                    }

                    @Override // com.fl.saas.E.d
                    public void onProgress(int i2) {
                        Intent intent2 = new Intent();
                        intent2.setAction(E.f29871x);
                        intent2.putExtra("progress", i2);
                        DownloadService.this.sendBroadcast(intent2);
                    }

                    @Override // com.fl.saas.E.d
                    public void onSuccess(File file) {
                        DownloadService.this.haveComplete = true;
                        if (file != null) {
                            Intent intent2 = new Intent();
                            intent2.setAction(E.f29872y);
                            intent2.putExtra("downloadFilePath", file.getAbsolutePath());
                            DownloadService.this.sendBroadcast(intent2);
                        }
                    }
                });
                this.downLoadSupportPauseUtil = e2;
                e2.f();
            }
            while (!this.haveComplete) {
                try {
                    Thread.sleep(50L);
                } catch (Throwable th) {
                    LogcatUtil.debug(th);
                }
            }
        }
    }
}
