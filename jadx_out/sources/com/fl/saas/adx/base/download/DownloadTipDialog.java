package com.fl.saas.adx.base.download;

import android.app.Activity;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.widget.Toast;
import com.anythink.core.common.d.i;
import com.fl.saas.AbstractC1194l;
import com.fl.saas.AbstractC1221u;
import com.fl.saas.C1188j;
import com.fl.saas.E;
import com.fl.saas.adx.base.download.DownloadTipDialog;
import com.fl.saas.adx.base.widget.DownloadProgressTextView;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.LogcatUtil;
import java.io.File;
import java.lang.ref.WeakReference;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class DownloadTipDialog extends Dialog {
    public static final String HTML_END = "</body>\n</html>";
    public static final String HTML_HEAD = "<!DOCTYPE html>\n<html id=\"html\">\n<head>\n<meta charset=\"UTF-8\">\n<meta name=\"viewport\" content=\"width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\" />\n<meta HTTP-EQUIV=\"pragma\" CONTENT=\"no-cache\">\n</head>\n<body>";
    private boolean canClickDownLoad;
    private DialogUIUpdateReceiver dialogUIUpdateReceiver;
    private String downLoadUrl;
    private String downloadFilePath;
    private int downloadProgress;
    private boolean isDownload;
    private boolean isDownloadSuccess;
    private Context mContext;
    private OnAgreeClickListener mLinstener;
    private WeakReference<Activity> mOwnerActivityRef;
    private View mRootView;
    private DownloadProgressTextView tvConfirm;

    /* renamed from: com.fl.saas.adx.base.download.DownloadTipDialog$4, reason: invalid class name */
    public class AnonymousClass4 implements View.OnClickListener {
        final /* synthetic */ C1188j val$AdxInfo;

        public AnonymousClass4(C1188j c1188j) {
            this.val$AdxInfo = c1188j;
        }

        public static /* synthetic */ void a(AnonymousClass4 anonymousClass4) {
            DownloadTipDialog.this.isDownload = true;
            if (DownloadTipDialog.this.mLinstener != null) {
                DownloadTipDialog.this.mLinstener.onClick();
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTipDialog downloadTipDialog;
            try {
                if (DownloadTipDialog.this.canClickDownLoad) {
                    DownloadTipDialog.this.canClickDownLoad = false;
                    if (DownloadTipDialog.this.isDownloadSuccess) {
                        DownloadTipDialog.this.canClickDownLoad = true;
                        if (TextUtils.isEmpty(DownloadTipDialog.this.downloadFilePath)) {
                            return;
                        }
                        File file = new File(DownloadTipDialog.this.downloadFilePath);
                        if (file.exists()) {
                            AbstractC1194l.a(DownloadTipDialog.this.mContext, file, this.val$AdxInfo);
                            return;
                        }
                        return;
                    }
                    if ("立即下载".equals(DownloadTipDialog.this.tvConfirm.getCurrentText().toString())) {
                        if (TextUtils.isEmpty(DownloadTipDialog.this.downLoadUrl)) {
                            Toast.makeText(DownloadTipDialog.this.mContext, "下载链接为空", 0).show();
                            return;
                        }
                        if (AbstractC1221u.f30660a) {
                            DownloadTipDialog.this.mContext.sendBroadcast(new Intent(E.f29870w));
                        }
                        DeviceUtil.postUIDelayed(100L, new Runnable() { // from class: com.fl.saas.adx.base.download.c
                            @Override // java.lang.Runnable
                            public final void run() {
                                DownloadTipDialog.AnonymousClass4.a(this.f30143b);
                            }
                        });
                        return;
                    }
                    Intent intent = new Intent();
                    if (DownloadTipDialog.this.isDownload) {
                        intent.setAction(E.f29867t);
                        downloadTipDialog = DownloadTipDialog.this;
                    } else {
                        intent.setAction(E.f29866s);
                        downloadTipDialog = DownloadTipDialog.this;
                    }
                    intent.putExtra("downLoadUrl", downloadTipDialog.downLoadUrl);
                    DownloadTipDialog.this.mContext.sendBroadcast(intent);
                }
            } catch (Throwable th) {
                LogcatUtil.debug(th);
            }
        }
    }

    public class DialogUIUpdateReceiver extends BroadcastReceiver {
        public DialogUIUpdateReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null) {
                String action = intent.getAction();
                if (TextUtils.isEmpty(action)) {
                    return;
                }
                if (E.f29866s.equals(action)) {
                    DownloadTipDialog.this.isDownload = true;
                    DownloadTipDialog.this.setProgressText();
                    return;
                }
                if (E.f29867t.equals(action)) {
                    DownloadTipDialog.this.isDownload = false;
                    DownloadTipDialog.this.canClickDownLoad = true;
                    DownloadTipDialog.this.tvConfirm.setState(2);
                    DownloadTipDialog.this.tvConfirm.setCurrentText("继续下载");
                    return;
                }
                if (E.f29868u.equals(action)) {
                    DownloadTipDialog.this.isDownload = false;
                    DownloadTipDialog.this.isDownloadSuccess = false;
                    DownloadTipDialog.this.downloadProgress = 0;
                    DownloadTipDialog.this.canClickDownLoad = true;
                    DownloadTipDialog.this.tvConfirm.setCurrentText("立即下载");
                    DownloadTipDialog.this.dismiss();
                    return;
                }
                if (E.f29869v.equals(action)) {
                    DownloadTipDialog.this.canClickDownLoad = true;
                    Toast.makeText(DownloadTipDialog.this.mContext, "下载失败,重新点击下载", 0).show();
                    return;
                }
                if (E.f29871x.equals(action)) {
                    DownloadTipDialog.this.downloadProgress = intent.getIntExtra("progress", 0);
                    DownloadTipDialog.this.setProgressText();
                } else if (E.f29872y.equals(action)) {
                    DownloadTipDialog.this.isDownloadSuccess = true;
                    DownloadTipDialog.this.canClickDownLoad = true;
                    DownloadTipDialog.this.tvConfirm.setState(0);
                    DownloadTipDialog.this.tvConfirm.setCurrentText("立即安装");
                    DownloadTipDialog.this.downloadFilePath = intent.getStringExtra("downloadFilePath");
                }
            }
        }
    }

    public interface OnAgreeClickListener {
        void onClick();
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0173 A[Catch: all -> 0x001d, TryCatch #0 {all -> 0x001d, blocks: (B:3:0x0006, B:5:0x0010, B:8:0x0020, B:10:0x0052, B:12:0x0056, B:14:0x0074, B:16:0x0079, B:18:0x00a5, B:20:0x00bf, B:22:0x00d1, B:24:0x00dd, B:26:0x00ef, B:28:0x00fb, B:30:0x010d, B:32:0x0119, B:34:0x0132, B:40:0x0153, B:42:0x015a, B:44:0x0173, B:46:0x0182, B:48:0x019b, B:50:0x01aa, B:52:0x01cd, B:54:0x01e9, B:53:0x01dd, B:49:0x01a7, B:45:0x017f, B:35:0x013b, B:37:0x0143, B:39:0x014b, B:41:0x0157, B:31:0x0116, B:27:0x00f8, B:23:0x00da, B:19:0x00bc, B:15:0x0077), top: B:58:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x017f A[Catch: all -> 0x001d, TryCatch #0 {all -> 0x001d, blocks: (B:3:0x0006, B:5:0x0010, B:8:0x0020, B:10:0x0052, B:12:0x0056, B:14:0x0074, B:16:0x0079, B:18:0x00a5, B:20:0x00bf, B:22:0x00d1, B:24:0x00dd, B:26:0x00ef, B:28:0x00fb, B:30:0x010d, B:32:0x0119, B:34:0x0132, B:40:0x0153, B:42:0x015a, B:44:0x0173, B:46:0x0182, B:48:0x019b, B:50:0x01aa, B:52:0x01cd, B:54:0x01e9, B:53:0x01dd, B:49:0x01a7, B:45:0x017f, B:35:0x013b, B:37:0x0143, B:39:0x014b, B:41:0x0157, B:31:0x0116, B:27:0x00f8, B:23:0x00da, B:19:0x00bc, B:15:0x0077), top: B:58:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x019b A[Catch: all -> 0x001d, TryCatch #0 {all -> 0x001d, blocks: (B:3:0x0006, B:5:0x0010, B:8:0x0020, B:10:0x0052, B:12:0x0056, B:14:0x0074, B:16:0x0079, B:18:0x00a5, B:20:0x00bf, B:22:0x00d1, B:24:0x00dd, B:26:0x00ef, B:28:0x00fb, B:30:0x010d, B:32:0x0119, B:34:0x0132, B:40:0x0153, B:42:0x015a, B:44:0x0173, B:46:0x0182, B:48:0x019b, B:50:0x01aa, B:52:0x01cd, B:54:0x01e9, B:53:0x01dd, B:49:0x01a7, B:45:0x017f, B:35:0x013b, B:37:0x0143, B:39:0x014b, B:41:0x0157, B:31:0x0116, B:27:0x00f8, B:23:0x00da, B:19:0x00bc, B:15:0x0077), top: B:58:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01a7 A[Catch: all -> 0x001d, TryCatch #0 {all -> 0x001d, blocks: (B:3:0x0006, B:5:0x0010, B:8:0x0020, B:10:0x0052, B:12:0x0056, B:14:0x0074, B:16:0x0079, B:18:0x00a5, B:20:0x00bf, B:22:0x00d1, B:24:0x00dd, B:26:0x00ef, B:28:0x00fb, B:30:0x010d, B:32:0x0119, B:34:0x0132, B:40:0x0153, B:42:0x015a, B:44:0x0173, B:46:0x0182, B:48:0x019b, B:50:0x01aa, B:52:0x01cd, B:54:0x01e9, B:53:0x01dd, B:49:0x01a7, B:45:0x017f, B:35:0x013b, B:37:0x0143, B:39:0x014b, B:41:0x0157, B:31:0x0116, B:27:0x00f8, B:23:0x00da, B:19:0x00bc, B:15:0x0077), top: B:58:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01cd A[Catch: all -> 0x001d, TryCatch #0 {all -> 0x001d, blocks: (B:3:0x0006, B:5:0x0010, B:8:0x0020, B:10:0x0052, B:12:0x0056, B:14:0x0074, B:16:0x0079, B:18:0x00a5, B:20:0x00bf, B:22:0x00d1, B:24:0x00dd, B:26:0x00ef, B:28:0x00fb, B:30:0x010d, B:32:0x0119, B:34:0x0132, B:40:0x0153, B:42:0x015a, B:44:0x0173, B:46:0x0182, B:48:0x019b, B:50:0x01aa, B:52:0x01cd, B:54:0x01e9, B:53:0x01dd, B:49:0x01a7, B:45:0x017f, B:35:0x013b, B:37:0x0143, B:39:0x014b, B:41:0x0157, B:31:0x0116, B:27:0x00f8, B:23:0x00da, B:19:0x00bc, B:15:0x0077), top: B:58:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01dd A[Catch: all -> 0x001d, TryCatch #0 {all -> 0x001d, blocks: (B:3:0x0006, B:5:0x0010, B:8:0x0020, B:10:0x0052, B:12:0x0056, B:14:0x0074, B:16:0x0079, B:18:0x00a5, B:20:0x00bf, B:22:0x00d1, B:24:0x00dd, B:26:0x00ef, B:28:0x00fb, B:30:0x010d, B:32:0x0119, B:34:0x0132, B:40:0x0153, B:42:0x015a, B:44:0x0173, B:46:0x0182, B:48:0x019b, B:50:0x01aa, B:52:0x01cd, B:54:0x01e9, B:53:0x01dd, B:49:0x01a7, B:45:0x017f, B:35:0x013b, B:37:0x0143, B:39:0x014b, B:41:0x0157, B:31:0x0116, B:27:0x00f8, B:23:0x00da, B:19:0x00bc, B:15:0x0077), top: B:58:0x0006 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DownloadTipDialog(@androidx.annotation.NonNull android.content.Context r6, final com.fl.saas.C1188j r7, com.fl.saas.adx.base.download.DownloadTipDialog.OnAgreeClickListener r8) {
        /*
            Method dump skipped, instructions count: 518
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fl.saas.adx.base.download.DownloadTipDialog.<init>(android.content.Context, com.fl.saas.j, com.fl.saas.adx.base.download.DownloadTipDialog$OnAgreeClickListener):void");
    }

    public static /* synthetic */ void b(DownloadTipDialog downloadTipDialog, DialogInterface dialogInterface) {
        DialogUIUpdateReceiver dialogUIUpdateReceiver = downloadTipDialog.dialogUIUpdateReceiver;
        if (dialogUIUpdateReceiver != null) {
            try {
                downloadTipDialog.mContext.unregisterReceiver(dialogUIUpdateReceiver);
            } catch (Throwable th) {
                LogcatUtil.debug(th);
            }
            downloadTipDialog.dialogUIUpdateReceiver = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setProgressText() {
        this.canClickDownLoad = true;
        this.tvConfirm.setState(1);
        this.tvConfirm.setProgressText("正在下载", this.downloadProgress);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String spliceHtml(C1188j c1188j) {
        StringBuilder sb;
        StringBuilder sb2 = new StringBuilder();
        if (c1188j != null) {
            try {
                if (TextUtils.isEmpty(c1188j.f30432I0)) {
                    sb2 = new StringBuilder("<div>暂未获取到权限列表，请稍后再试</div>");
                    sb = new StringBuilder(HTML_HEAD + ((Object) sb2) + HTML_END);
                } else {
                    JSONArray jSONArray = new JSONArray(c1188j.f30432I0);
                    int i2 = 0;
                    while (i2 < jSONArray.length()) {
                        JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
                        String strOptString = jSONObjectOptJSONObject.optString("permission_name");
                        String strOptString2 = jSONObjectOptJSONObject.optString("permission_desc");
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(" <li style=\"padding: 3px 0\">\n <span>");
                        i2++;
                        sb3.append(i2);
                        sb3.append(i.f2495E);
                        sb3.append(strOptString);
                        sb3.append(": ");
                        sb3.append(strOptString2);
                        sb3.append("</span>\n </li>");
                        sb2.append(sb3.toString());
                    }
                    sb = new StringBuilder(HTML_HEAD + ((Object) sb2) + HTML_END);
                }
            } catch (Throwable unused) {
                sb = new StringBuilder("<div>暂未获取到权限列表，请稍后再试</div>");
            }
        } else {
            sb2 = new StringBuilder("<div>暂未获取到权限列表，请稍后再试</div>");
            sb = new StringBuilder(HTML_HEAD + ((Object) sb2) + HTML_END);
        }
        return sb.toString();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        DialogUIUpdateReceiver dialogUIUpdateReceiver = this.dialogUIUpdateReceiver;
        if (dialogUIUpdateReceiver != null) {
            try {
                this.mContext.unregisterReceiver(dialogUIUpdateReceiver);
            } catch (Throwable th) {
                LogcatUtil.debug(th);
            }
            this.dialogUIUpdateReceiver = null;
        }
    }

    @Override // android.app.Dialog
    public void show() {
        Activity activity;
        try {
            WeakReference<Activity> weakReference = this.mOwnerActivityRef;
            if (weakReference == null || (activity = weakReference.get()) == null || (!activity.isFinishing() && !activity.isDestroyed())) {
                super.show();
                try {
                    if (this.dialogUIUpdateReceiver == null) {
                        this.dialogUIUpdateReceiver = new DialogUIUpdateReceiver();
                        IntentFilter intentFilter = new IntentFilter();
                        intentFilter.addAction(E.f29866s);
                        intentFilter.addAction(E.f29867t);
                        intentFilter.addAction(E.f29868u);
                        intentFilter.addAction(E.f29869v);
                        intentFilter.addAction(E.f29871x);
                        intentFilter.addAction(E.f29872y);
                        if (Build.VERSION.SDK_INT > 33) {
                            this.mContext.registerReceiver(this.dialogUIUpdateReceiver, intentFilter, 2);
                        } else {
                            this.mContext.registerReceiver(this.dialogUIUpdateReceiver, intentFilter);
                        }
                    }
                    setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.fl.saas.adx.base.download.b
                        @Override // android.content.DialogInterface.OnDismissListener
                        public final void onDismiss(DialogInterface dialogInterface) {
                            DownloadTipDialog.b(this.f30142b, dialogInterface);
                        }
                    });
                } catch (Throwable th) {
                    LogcatUtil.debug(th);
                }
            }
        } catch (Throwable th2) {
            LogcatUtil.debug(th2);
        }
    }
}
