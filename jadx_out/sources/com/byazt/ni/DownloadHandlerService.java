package com.byazt.ni;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.os.IBinder;
import android.text.TextUtils;
import com.byazt.fn.nu;
import com.byazt.fn.o;
import com.byazt.fu.DownloadInfo;
import com.byazt.yi.AdBaseConstants;
import com.byazt.yk.Downloader;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.ss.android.socialbase.appdownloader.view.DownloadTaskDeleteActivity;
import java.io.File;
import java.util.ArrayList;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SIDX_VIDEO_WINDOW_SIZE, 1562})
/* loaded from: classes3.dex */
public class DownloadHandlerService extends Service {
    public static final String hp = "DownloadHandlerService";

    private boolean hp(Context context, Intent intent) throws JSONException {
        if (intent == null) {
            return false;
        }
        String action = intent.getAction();
        if (TextUtils.isEmpty(action)) {
            return false;
        }
        int intExtra = intent.getIntExtra("extra_click_download_ids", 0);
        intent.getIntExtra("extra_click_download_type", 0);
        com.byazt.f.w wVarJx = j.gu().jx();
        o downloadNotificationEventListener = Downloader.getInstance(this).getDownloadNotificationEventListener(intExtra);
        if (intent.getBooleanExtra("extra_from_notification", false) && com.byazt.jb.hp.hp(intExtra).l("notification_opt_2") == 1) {
            com.byazt.li.l.hp().a(intExtra);
        }
        DownloadInfo downloadInfo = Downloader.getInstance(context).getDownloadInfo(intExtra);
        if (downloadInfo == null) {
            return false;
        }
        if (action.equals("android.ss.intent.action.DOWNLOAD_CLICK_CONTENT")) {
            l(context, downloadInfo, wVarJx, downloadNotificationEventListener);
        } else if (action.equals("android.ss.intent.action.DOWNLOAD_OPEN")) {
            hp(context, downloadInfo, wVarJx, downloadNotificationEventListener);
        } else if (action.equals("android.ss.intent.action.DOWNLOAD_CLICK_BTN")) {
            if (downloadInfo.getStatus() == 0) {
                return false;
            }
            hp(context, downloadInfo, wVarJx, downloadNotificationEventListener);
            if (downloadInfo.isDownloadOverStatus() && com.byazt.jb.hp.hp(intExtra).hp("no_hide_notification", 0) == 0 && (com.byazt.jb.hp.hp(intExtra).l("enable_notification_ui") < 2 || downloadInfo.getStatus() != -1)) {
                com.byazt.li.l.hp().hp(intExtra);
                com.byazt.li.l.hp().a(intExtra);
            }
        } else if (action.equals("android.ss.intent.action.DOWNLOAD_DELETE")) {
            jx(context, downloadInfo, wVarJx, downloadNotificationEventListener);
        } else if (action.equals("android.ss.intent.action.DOWNLOAD_HIDE")) {
            com.byazt.li.l.hp().hp(intExtra);
        } else if (action.equals("android.intent.action.MEDIA_MOUNTED")) {
            com.byazt.yk.jx.jl().execute(new Runnable() { // from class: com.byazt.ni.DownloadHandlerService.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(AdBaseConstants.MIME_APK);
                        arrayList.add("mime_type_plg");
                        Downloader.getInstance(com.byazt.yk.jx.mp()).restartAllFailedDownloadTasks(arrayList);
                    } catch (Exception unused) {
                    }
                }
            });
            return true;
        }
        return false;
    }

    private void jx(Context context, DownloadInfo downloadInfo, com.byazt.f.w wVar, o oVar) {
        int id = downloadInfo.getId();
        Intent intent = new Intent(context, (Class<?>) DownloadTaskDeleteActivity.class);
        intent.putExtra("extra_click_download_ids", id);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        context.startActivity(intent);
        com.byazt.li.l.hp().hp(id);
        downloadInfo.updateDownloadTime();
        if (wVar != null) {
            wVar.hp(id, 7, "", downloadInfo.getStatus(), downloadInfo.getDownloadTime());
        }
        if (oVar != null) {
            oVar.hp(7, downloadInfo, "", "");
        }
    }

    private void l(Context context, DownloadInfo downloadInfo, com.byazt.f.w wVar, o oVar) {
        boolean zHp;
        int id = downloadInfo.getId();
        nu nuVarZy = com.byazt.yk.j.hp().zy(id);
        if (nuVarZy != null) {
            try {
                zHp = nuVarZy.hp(downloadInfo);
            } catch (Throwable unused) {
            }
        } else {
            zHp = false;
        }
        if (zHp) {
            return;
        }
        Intent intent = new Intent(context, (Class<?>) DownloadTaskDeleteActivity.class);
        intent.putExtra("extra_click_download_ids", id);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        context.startActivity(intent);
        com.byazt.li.l.hp().hp(id);
        downloadInfo.updateDownloadTime();
        if (wVar != null) {
            wVar.hp(id, 7, "", downloadInfo.getStatus(), downloadInfo.getDownloadTime());
        }
        if (oVar != null) {
            oVar.hp(7, downloadInfo, "", "");
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        com.byazt.yk.jx.hp(this);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, int i3) throws JSONException {
        super.onStartCommand(intent, i2, i3);
        if (com.byazt.nu.hp.hp()) {
            com.byazt.nu.hp.l(hp, "onStartCommand");
        }
        hp(com.byazt.yk.jx.mp(), intent);
        stopSelf();
        return 2;
    }

    private static void hp(Context context, DownloadInfo downloadInfo) throws JSONException {
        if (com.byazt.xq.a.l(context.getApplicationContext()) && downloadInfo.isPauseReserveOnWifi()) {
            downloadInfo.stopPauseReserveOnWifi();
        }
    }

    private static void hp(Context context, final com.byazt.f.w wVar, final DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return;
        }
        final o downloadNotificationEventListener = Downloader.getInstance(context).getDownloadNotificationEventListener(downloadInfo.getId());
        if (wVar == null && downloadNotificationEventListener == null) {
            return;
        }
        com.byazt.yk.jx.jl().execute(new Runnable() { // from class: com.byazt.ni.DownloadHandlerService.2
            @Override // java.lang.Runnable
            public void run() {
                PackageInfo packageInfoHp;
                try {
                    File file = new File(downloadInfo.getSavePath(), downloadInfo.getName());
                    if (file.exists()) {
                        String str = (com.byazt.yk.jx.mp() == null || (packageInfoHp = jx.hp(downloadInfo, file)) == null) ? "" : packageInfoHp.packageName;
                        com.byazt.f.w wVar2 = wVar;
                        if (wVar2 != null) {
                            wVar2.hp(downloadInfo.getId(), 3, str, -3, downloadInfo.getDownloadTime());
                        }
                        o oVar = downloadNotificationEventListener;
                        if (oVar != null) {
                            oVar.hp(3, downloadInfo, str, "");
                        }
                    }
                } catch (Exception unused) {
                }
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void hp(android.content.Context r2, int r3, boolean r4) {
        /*
            r0 = 0
            if (r4 == 0) goto L1c
            com.byazt.yk.j r4 = com.byazt.yk.j.hp()
            com.byazt.fn.nu r4 = r4.zy(r3)
            if (r4 == 0) goto L1c
            com.byazt.yk.Downloader r1 = com.byazt.yk.Downloader.getInstance(r2)     // Catch: java.lang.Throwable -> L1c
            com.byazt.fu.DownloadInfo r1 = r1.getDownloadInfo(r3)     // Catch: java.lang.Throwable -> L1c
            if (r1 == 0) goto L1c
            boolean r4 = r4.l(r1)     // Catch: java.lang.Throwable -> L1c
            goto L1d
        L1c:
            r4 = r0
        L1d:
            if (r4 == 0) goto L20
            goto L30
        L20:
            r4 = 1
            int r3 = com.byazt.ni.jx.hp(r2, r3, r4)
            if (r3 != 0) goto L30
            java.lang.String r3 = "Open Fail!"
            android.widget.Toast r2 = android.widget.Toast.makeText(r2, r3, r0)
            r2.show()
        L30:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ni.DownloadHandlerService.hp(android.content.Context, int, boolean):void");
    }

    public static void hp(Context context, DownloadInfo downloadInfo, com.byazt.f.w wVar, o oVar) throws JSONException {
        com.byazt.li.hp hpVarW;
        int id = downloadInfo.getId();
        nu nuVarZy = com.byazt.yk.j.hp().zy(id);
        if (AdBaseConstants.MIME_APK.equals(downloadInfo.getMimeType()) && nuVarZy != null && jx.hp(context, downloadInfo) && nuVarZy.jx(downloadInfo)) {
            return;
        }
        switch (downloadInfo.getStatus()) {
            case -4:
            case -1:
                if (com.byazt.jb.hp.hp(id).l("enable_notification_ui") >= 2 && downloadInfo.isOnlyWifi()) {
                    downloadInfo.setOnlyWifi(false);
                }
                Downloader.getInstance(context).restart(id);
                break;
            case -3:
                hp(com.byazt.yk.jx.mp(), id, true);
                hp(context, wVar, downloadInfo);
                if (com.byazt.jb.hp.hp(id).hp("notification_click_install_auto_cancel", 1) == 0 && (hpVarW = com.byazt.li.l.hp().w(id)) != null) {
                    hpVarW.eb();
                    hpVarW.hp(-3, null, false, true);
                    break;
                } else {
                    com.byazt.li.l.hp().hp(id);
                    break;
                }
            case -2:
                if (com.byazt.yk.j.hp().w(id)) {
                    Downloader.getInstance(context).resume(id);
                } else {
                    jx.hp(downloadInfo, true, false);
                }
                if (wVar != null) {
                    wVar.hp(id, 6, "", downloadInfo.getStatus(), downloadInfo.getDownloadTime());
                }
                if (oVar != null) {
                    oVar.hp(6, downloadInfo, "", "");
                    break;
                }
                break;
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                Downloader.getInstance(context).pause(id);
                hp(context, downloadInfo);
                if (wVar != null) {
                    wVar.hp(id, 5, "", downloadInfo.getStatus(), downloadInfo.getDownloadTime());
                }
                if (oVar != null) {
                    oVar.hp(5, downloadInfo, "", "");
                    break;
                }
                break;
        }
    }
}
