package com.byazt.ni;

import android.annotation.TargetApi;
import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobService;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.byazt.fu.DownloadInfo;
import com.byazt.yk.Downloader;
import com.byazt.yk.vv;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SIDX_VIDEO_WINDOW_SIZE, MediaPlayer.MEDIA_PLAYER_OPTION_HTTP_REQ_FINSIH_TIME})
@TargetApi(21)
/* loaded from: classes3.dex */
public class RetryJobSchedulerService extends JobService {
    public static void hp(DownloadInfo downloadInfo, long j2, boolean z2, int i2) {
        Context contextMp;
        long j3;
        vv reserveWifiStatusListener;
        vv reserveWifiStatusListener2;
        if (downloadInfo == null || j2 <= 0 || (contextMp = com.byazt.yk.jx.mp()) == null) {
            return;
        }
        int i3 = 2;
        if (downloadInfo.isPauseReserveOnWifi() && (reserveWifiStatusListener2 = Downloader.getInstance(com.byazt.yk.jx.mp()).getReserveWifiStatusListener()) != null) {
            reserveWifiStatusListener2.hp(downloadInfo, 2, 3);
        }
        try {
            JobScheduler jobScheduler = (JobScheduler) contextMp.getSystemService("jobscheduler");
            if (jobScheduler == null) {
                return;
            }
            try {
                jobScheduler.cancel(downloadInfo.getId());
            } catch (Throwable unused) {
            }
            if (i2 == 0 || (z2 && i2 != 2)) {
                j2 = 1000;
                j3 = 0;
            } else {
                j3 = 60000 + j2;
            }
            JobInfo.Builder minimumLatency = new JobInfo.Builder(downloadInfo.getId(), new ComponentName(contextMp.getPackageName(), RetryJobSchedulerService.class.getName())).setMinimumLatency(j2);
            if (!z2) {
                i3 = 1;
            }
            JobInfo.Builder requiresDeviceIdle = minimumLatency.setRequiredNetworkType(i3).setRequiresCharging(false).setRequiresDeviceIdle(false);
            if (j3 > 0) {
                requiresDeviceIdle.setOverrideDeadline(j3);
            }
            int iSchedule = jobScheduler.schedule(requiresDeviceIdle.build());
            if (iSchedule > 0 && downloadInfo.isPauseReserveOnWifi() && (reserveWifiStatusListener = Downloader.getInstance(com.byazt.yk.jx.mp()).getReserveWifiStatusListener()) != null) {
                reserveWifiStatusListener.hp(downloadInfo, 3, 3);
            }
            if (iSchedule <= 0) {
                com.byazt.nu.hp.j("RetrySchedulerService", "schedule err errCode = ".concat(String.valueOf(iSchedule)));
            }
        } catch (Throwable unused2) {
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        com.byazt.yk.jx.hp(this);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, int i3) {
        int iOnStartCommand = super.onStartCommand(intent, i2, i3);
        if (com.byazt.yk.jx.e()) {
            return 2;
        }
        return iOnStartCommand;
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        if (jobParameters == null) {
            return false;
        }
        int jobId = jobParameters.getJobId();
        com.byazt.nu.hp.jx("RetrySchedulerService", "onStartJob, id = ".concat(String.valueOf(jobId)));
        com.byazt.au.vv.hp().hp(jobId);
        return false;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return false;
    }
}
