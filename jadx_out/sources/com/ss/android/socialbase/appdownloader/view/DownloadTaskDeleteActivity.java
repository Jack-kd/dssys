package com.ss.android.socialbase.appdownloader.view;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.Nullable;
import com.byazt.dx.hp;
import com.byazt.f.j;
import com.byazt.f.jl;
import com.byazt.f.w;
import com.byazt.f.zy;
import com.byazt.fn.o;
import com.byazt.fu.DownloadInfo;
import com.byazt.xq.a;
import com.byazt.yk.Downloader;
import com.byazt.yk.jx;

/* loaded from: classes5.dex */
public class DownloadTaskDeleteActivity extends Activity {
    private jl hp;

    /* renamed from: l, reason: collision with root package name */
    private Intent f45512l;

    private void l() {
        Intent intent;
        if (this.hp != null || (intent = this.f45512l) == null) {
            return;
        }
        try {
            final boolean z2 = false;
            final int intExtra = intent.getIntExtra("extra_click_download_ids", 0);
            final DownloadInfo downloadInfo = Downloader.getInstance(getApplicationContext()).getDownloadInfo(intExtra);
            if (downloadInfo == null) {
                return;
            }
            String title = downloadInfo.getTitle();
            if (TextUtils.isEmpty(title)) {
                return;
            }
            String str = String.format("确认要删除%1$s的下载任务吗？", title);
            j jVarL = com.byazt.ni.j.gu().l();
            zy zyVarHp = jVarL != null ? jVarL.hp(this) : null;
            if (zyVarHp == null) {
                zyVarHp = new hp(this);
            }
            String str2 = "确定";
            String str3 = "取消";
            if (com.byazt.jb.hp.hp(downloadInfo.getId()).hp("cancel_with_net_opt", 0) == 1 && a.s() && downloadInfo.getCurBytes() != downloadInfo.getTotalBytes()) {
                z2 = true;
            }
            if (z2) {
                str2 = "Wi-Fi下恢复";
                str3 = "直接取消";
                str = "您当前处于移动网络，是否需要在Wi-Fi环境下恢复下载？";
            }
            zyVarHp.hp((CharSequence) "提示").hp(str).hp(str2, new DialogInterface.OnClickListener() { // from class: com.ss.android.socialbase.appdownloader.view.DownloadTaskDeleteActivity.3
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    if (z2) {
                        downloadInfo.setOnlyWifi(true);
                        Downloader.getInstance(DownloadTaskDeleteActivity.this).pause(downloadInfo.getId());
                        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.ss.android.socialbase.appdownloader.view.DownloadTaskDeleteActivity.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                Downloader.getInstance(DownloadTaskDeleteActivity.this).resume(downloadInfo.getId());
                            }
                        }, 100L);
                    } else {
                        DownloadTaskDeleteActivity.this.hp(downloadInfo, intExtra);
                    }
                    DownloadTaskDeleteActivity.this.finish();
                }
            }).l(str3, new DialogInterface.OnClickListener() { // from class: com.ss.android.socialbase.appdownloader.view.DownloadTaskDeleteActivity.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    if (z2) {
                        DownloadTaskDeleteActivity.this.hp(downloadInfo, intExtra);
                    }
                    DownloadTaskDeleteActivity.this.finish();
                }
            }).hp(new DialogInterface.OnCancelListener() { // from class: com.ss.android.socialbase.appdownloader.view.DownloadTaskDeleteActivity.1
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialogInterface) {
                    DownloadTaskDeleteActivity.this.finish();
                }
            });
            this.hp = zyVarHp.hp();
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        hp();
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.f45512l = getIntent();
        l();
        jl jlVar = this.hp;
        if (jlVar != null && !jlVar.l()) {
            this.hp.hp();
        } else if (this.hp == null) {
            finish();
        }
    }

    private void hp() {
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.alpha = 0.0f;
        window.setAttributes(attributes);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(DownloadInfo downloadInfo, int i2) {
        w wVarJx = com.byazt.ni.j.gu().jx();
        if (wVarJx != null) {
            wVarJx.hp(downloadInfo);
        }
        o downloadNotificationEventListener = Downloader.getInstance(jx.mp()).getDownloadNotificationEventListener(i2);
        if (downloadNotificationEventListener != null) {
            downloadNotificationEventListener.hp(10, downloadInfo, "", "");
        }
        if (jx.mp() != null) {
            Downloader.getInstance(jx.mp()).cancel(i2);
        }
    }
}
