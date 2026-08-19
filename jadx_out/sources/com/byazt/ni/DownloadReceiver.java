package com.byazt.ni;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.byazt.fn.o;
import com.byazt.fu.DownloadInfo;
import com.byazt.io.BaseException;
import com.byazt.yi.AdBaseConstants;
import com.byazt.yk.Downloader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SIDX_VIDEO_WINDOW_SIZE, 1170})
/* loaded from: classes3.dex */
public class DownloadReceiver extends BroadcastReceiver {
    public static final String hp = "DownloadReceiver";

    /* renamed from: l, reason: collision with root package name */
    public Handler f23572l = new Handler(Looper.getMainLooper());

    @Override // android.content.BroadcastReceiver
    public void onReceive(final Context context, final Intent intent) {
        if (context == null || intent == null) {
            return;
        }
        String action = intent.getAction();
        if (TextUtils.isEmpty(action)) {
            return;
        }
        if (action.equals("android.intent.action.MEDIA_MOUNTED")) {
            if (com.byazt.nu.hp.hp()) {
                com.byazt.nu.hp.hp(hp, "Received broadcast intent for android.intent.action.MEDIA_MOUNTED");
            }
            hp(context, action);
        } else if (action.equals("android.intent.action.PACKAGE_ADDED") || action.equals("android.intent.action.PACKAGE_REPLACED")) {
            com.byazt.yk.jx.jl().execute(new Runnable() { // from class: com.byazt.ni.DownloadReceiver.1
                @Override // java.lang.Runnable
                public void run() throws JSONException {
                    Uri data = intent.getData();
                    if (data == null) {
                        return;
                    }
                    String schemeSpecificPart = data.getSchemeSpecificPart();
                    com.byazt.f.w wVarJx = j.gu().jx();
                    if (wVarJx != null) {
                        wVarJx.hp(context, schemeSpecificPart);
                    }
                    List<DownloadInfo> successedDownloadInfosWithMimeType = Downloader.getInstance(context).getSuccessedDownloadInfosWithMimeType(AdBaseConstants.MIME_APK);
                    if (successedDownloadInfosWithMimeType != null) {
                        for (final DownloadInfo downloadInfo : successedDownloadInfosWithMimeType) {
                            if (downloadInfo != null && jx.hp(downloadInfo, schemeSpecificPart)) {
                                o downloadNotificationEventListener = Downloader.getInstance(context).getDownloadNotificationEventListener(downloadInfo.getId());
                                if (downloadNotificationEventListener != null && com.byazt.xq.a.a(downloadNotificationEventListener.hp())) {
                                    downloadNotificationEventListener.hp(9, downloadInfo, schemeSpecificPart, "");
                                }
                                com.byazt.li.hp hpVarW = com.byazt.li.l.hp().w(downloadInfo.getId());
                                if (hpVarW != null) {
                                    hpVarW.hp((BaseException) null, false);
                                }
                                if (com.byazt.jb.hp.hp(downloadInfo.getId()).hp("install_queue_enable", 0) == 1) {
                                    eb.hp().hp(downloadInfo, schemeSpecificPart);
                                }
                                DownloadReceiver.this.f23572l.postDelayed(new Runnable() { // from class: com.byazt.ni.DownloadReceiver.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        com.byazt.yk.jx.jl().execute(new Runnable() { // from class: com.byazt.ni.DownloadReceiver.1.1.1
                                            @Override // java.lang.Runnable
                                            public void run() {
                                                try {
                                                    if (downloadInfo.isSavePathRedirected()) {
                                                        com.byazt.xq.a.l(downloadInfo);
                                                    }
                                                } catch (Throwable unused) {
                                                }
                                            }
                                        });
                                    }
                                }, 1000L);
                                return;
                            }
                        }
                    }
                }
            });
        }
    }

    private void hp(final Context context, final String str) {
        if (com.byazt.yk.jx.r()) {
            com.byazt.yk.jx.hp(new Runnable() { // from class: com.byazt.ni.DownloadReceiver.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Intent intent = new Intent(context, (Class<?>) DownloadHandlerService.class);
                        intent.setAction(str);
                        context.startService(intent);
                    } catch (Throwable unused) {
                    }
                }
            }, 2000L, TimeUnit.MILLISECONDS);
        }
    }
}
