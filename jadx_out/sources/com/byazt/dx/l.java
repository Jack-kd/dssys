package com.byazt.dx;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.byazt.au.vv;
import com.byazt.f.s;
import com.byazt.fu.DownloadInfo;
import com.byazt.ni.j;
import com.byazt.xq.a;
import com.byazt.yk.Downloader;
import com.byazt.yk.jl;
import com.byazt.yk.jx;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 1279, 34})
/* loaded from: classes2.dex */
public class l implements jl {
    public List<Integer> hp;

    /* renamed from: l, reason: collision with root package name */
    public BroadcastReceiver f19342l;

    /* JADX INFO: Access modifiers changed from: private */
    public void l(List<DownloadInfo> list, int i2) throws JSONException {
        if (list == null || list.isEmpty()) {
            return;
        }
        j.gu();
        Context contextMp = jx.mp();
        if (contextMp == null) {
            return;
        }
        boolean zL = a.l(contextMp);
        Iterator<DownloadInfo> it = list.iterator();
        while (it.hasNext()) {
            hp(contextMp, it.next(), zL, i2);
        }
        List<Integer> list2 = this.hp;
        if (list2 == null || list2.isEmpty() || this.f19342l != null) {
            return;
        }
        this.f19342l = new BroadcastReceiver() { // from class: com.byazt.dx.l.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                final Context applicationContext = context.getApplicationContext();
                if (a.l(applicationContext)) {
                    com.byazt.nu.hp.l("LaunchResume", "onReceive : wifi connected !!!");
                    jx.jl().execute(new Runnable() { // from class: com.byazt.dx.l.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                if (l.this.hp != null && !l.this.hp.isEmpty()) {
                                    int size = l.this.hp.size();
                                    Integer[] numArr = new Integer[size];
                                    l.this.hp.toArray(numArr);
                                    l.this.hp.clear();
                                    for (int i3 = 0; i3 < size; i3++) {
                                        DownloadInfo downloadInfo = Downloader.getInstance(applicationContext).getDownloadInfo(numArr[i3].intValue());
                                        if (downloadInfo != null && (downloadInfo.getRealStatus() == -5 || (downloadInfo.getRealStatus() == -2 && downloadInfo.isPauseReserveOnWifi()))) {
                                            l.this.hp(applicationContext, downloadInfo, true, 2);
                                        }
                                    }
                                }
                            } catch (Exception unused) {
                            }
                        }
                    });
                    try {
                        applicationContext.unregisterReceiver(l.this.f19342l);
                    } catch (Throwable unused) {
                    }
                    l.this.f19342l = null;
                }
            }
        };
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            contextMp.registerReceiver(this.f19342l, intentFilter);
        } catch (Throwable unused) {
            this.f19342l = null;
        }
    }

    @Override // com.byazt.yk.jl
    public List<String> hp() {
        return com.byazt.ni.jx.jx();
    }

    @Override // com.byazt.yk.jl
    public void hp(final List<DownloadInfo> list, final int i2) throws JSONException {
        if (a.j()) {
            jx.jl().execute(new Runnable() { // from class: com.byazt.dx.l.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        l.this.l(list, i2);
                    } catch (Exception unused) {
                    }
                }
            });
        } else {
            l(list, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(Context context, DownloadInfo downloadInfo, boolean z2, int i2) throws JSONException {
        double d2;
        boolean z3;
        if (downloadInfo == null || !downloadInfo.isShowNotification()) {
            return;
        }
        int realStatus = downloadInfo.getRealStatus();
        if (realStatus == -5) {
            d2 = 3600000.0d;
            if ("application/ttpatch".equalsIgnoreCase(downloadInfo.getMimeType()) || !downloadInfo.isDownloaded()) {
                com.byazt.jb.hp hpVarHp = com.byazt.jb.hp.hp(downloadInfo.getId());
                int iHp = hpVarHp.hp("failed_resume_max_count", 0);
                double dHp = hpVarHp.hp("failed_resume_max_hours", 72.0d);
                double dHp2 = hpVarHp.hp("failed_resume_min_hours", 12.0d);
                long jCurrentTimeMillis = System.currentTimeMillis();
                boolean z4 = downloadInfo.getFailedResumeCount() < iHp && ((double) (jCurrentTimeMillis - downloadInfo.getLastDownloadTime())) < dHp * 3600000.0d && ((double) (jCurrentTimeMillis - downloadInfo.getLastFailedResumeTime())) > dHp2 * 3600000.0d;
                if (downloadInfo.isPauseReserveOnWifi() && z2) {
                    z4 = true;
                }
                if (z4) {
                    boolean z5 = hpVarHp.hp("failed_resume_need_wifi", 1) == 1;
                    boolean z6 = hpVarHp.hp("failed_resume_need_wait_wifi", 0) == 1;
                    if (!z2 && z5 && z6) {
                        if (this.hp == null) {
                            this.hp = new ArrayList();
                        }
                        int id = downloadInfo.getId();
                        if (!this.hp.contains(Integer.valueOf(id))) {
                            this.hp.add(Integer.valueOf(id));
                        }
                        downloadInfo.setOnlyWifi(true);
                        vv.hp().hp(downloadInfo);
                        z3 = false;
                    } else {
                        com.byazt.ni.jx.hp(downloadInfo, true, z5);
                        downloadInfo.setLastFailedResumeTime(jCurrentTimeMillis);
                        downloadInfo.setFailedResumeCount(downloadInfo.getFailedResumeCount() + 1);
                        downloadInfo.updateSpData();
                        if (downloadInfo.isPauseReserveOnWifi() && z2) {
                            downloadInfo.setDownloadFromReserveWifi(true);
                            com.byazt.yk.vv vvVarV = j.gu().v();
                            if (vvVarV != null) {
                                vvVarV.hp(downloadInfo, 5, i2);
                            }
                        }
                        z3 = true;
                    }
                } else {
                    z3 = false;
                }
                com.byazt.nu.hp.jx("LaunchResume", "launchResume, name = " + downloadInfo.getTitle() + ", canShowNotification = " + z4 + ", downloadResumed = " + z3);
                s sVarK = j.gu().k();
                if (sVarK != null) {
                    sVarK.hp(downloadInfo, z3);
                    return;
                }
                return;
            }
        } else {
            d2 = 3600000.0d;
        }
        if (realStatus != -3 || !hp(downloadInfo)) {
            if (realStatus == -2) {
                if (downloadInfo.isPauseReserveOnWifi()) {
                    if (z2) {
                        com.byazt.ni.jx.hp(downloadInfo, true, true);
                        downloadInfo.updateSpData();
                        downloadInfo.setDownloadFromReserveWifi(true);
                        s sVarK2 = j.gu().k();
                        if (sVarK2 != null) {
                            sVarK2.hp(downloadInfo, true);
                        }
                        com.byazt.yk.vv vvVarV2 = j.gu().v();
                        if (vvVarV2 != null) {
                            vvVarV2.hp(downloadInfo, 5, i2);
                            return;
                        }
                        return;
                    }
                    if (this.hp == null) {
                        this.hp = new ArrayList();
                    }
                    int id2 = downloadInfo.getId();
                    if (!this.hp.contains(Integer.valueOf(id2))) {
                        this.hp.add(Integer.valueOf(id2));
                    }
                    vv.hp().hp(downloadInfo);
                }
                hp(downloadInfo, context);
                return;
            }
            return;
        }
        com.byazt.jb.hp hpVarHp2 = com.byazt.jb.hp.hp(downloadInfo.getId());
        if (com.byazt.ni.jx.hp(context, downloadInfo)) {
            return;
        }
        int iHp2 = hpVarHp2.hp("uninstall_resume_max_count", 0);
        double dHp3 = hpVarHp2.hp("uninstall_resume_max_hours", 72.0d);
        double dHp4 = hpVarHp2.hp("uninstall_resume_min_hours", 12.0d);
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        boolean z7 = downloadInfo.getUninstallResumeCount() < iHp2 && ((double) (jCurrentTimeMillis2 - downloadInfo.getLastDownloadTime())) < dHp3 * d2 && ((double) (jCurrentTimeMillis2 - downloadInfo.getLastUninstallResumeTime())) > dHp4 * d2;
        com.byazt.nu.hp.jx("LaunchResume", "uninstallResume, name = " + downloadInfo.getTitle() + ", canShowNotification = " + z7);
        if (z7) {
            com.byazt.li.hp hpVarW = com.byazt.li.l.hp().w(downloadInfo.getId());
            if (hpVarW == null) {
                com.byazt.bu.hp hpVar = new com.byazt.bu.hp(context, downloadInfo.getId(), downloadInfo.getTitle(), downloadInfo.getSavePath(), downloadInfo.getName(), downloadInfo.getExtra());
                com.byazt.li.l.hp().hp(hpVar);
                hpVarW = hpVar;
            } else {
                hpVarW.hp(downloadInfo);
            }
            hpVarW.l(downloadInfo.getTotalBytes());
            hpVarW.hp(downloadInfo.getTotalBytes());
            hpVarW.hp(downloadInfo.getStatus(), null, false, false);
            downloadInfo.setLastUninstallResumeTime(jCurrentTimeMillis2);
            downloadInfo.setUninstallResumeCount(downloadInfo.getUninstallResumeCount() + 1);
            downloadInfo.updateSpData();
        }
    }

    private void hp(DownloadInfo downloadInfo, Context context) throws JSONException {
        com.byazt.jb.hp hpVarHp = com.byazt.jb.hp.hp(downloadInfo.getId());
        int iHp = hpVarHp.hp("paused_resume_max_count", 0);
        double dHp = hpVarHp.hp("paused_resume_max_hours", 72.0d);
        int pausedResumeCount = downloadInfo.getPausedResumeCount();
        if (pausedResumeCount >= iHp || System.currentTimeMillis() - downloadInfo.getLastDownloadTime() >= dHp * 3600000.0d) {
            return;
        }
        com.byazt.li.hp hpVarW = com.byazt.li.l.hp().w(downloadInfo.getId());
        if (hpVarW == null) {
            com.byazt.bu.hp hpVar = new com.byazt.bu.hp(context, downloadInfo.getId(), downloadInfo.getTitle(), downloadInfo.getSavePath(), downloadInfo.getName(), downloadInfo.getExtra());
            com.byazt.li.l.hp().hp(hpVar);
            hpVarW = hpVar;
        } else {
            hpVarW.hp(downloadInfo);
        }
        hpVarW.l(downloadInfo.getTotalBytes());
        hpVarW.hp(downloadInfo.getCurBytes());
        hpVarW.hp(downloadInfo.getStatus(), null, false, false);
        downloadInfo.setPausedResumeCount(pausedResumeCount + 1);
        downloadInfo.updateSpData();
    }

    private boolean hp(DownloadInfo downloadInfo) {
        if (com.byazt.jb.hp.hp(downloadInfo.getId()).l("uninstall_can_not_resume_for_force_task", false)) {
            return a.hp(downloadInfo, false, downloadInfo.getMd5());
        }
        return downloadInfo.isDownloaded();
    }
}
