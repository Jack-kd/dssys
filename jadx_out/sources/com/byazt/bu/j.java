package com.byazt.bu;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.FragmentManager;
import android.app.NotificationManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.view.KeyEvent;
import androidx.annotation.NonNull;
import com.byazt.f.k;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.ss.android.socialbase.appdownloader.view.DownloadHandleNotificationActivity;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_DEVICE, 38})
/* loaded from: classes2.dex */
public class j {
    public static final String hp = "j";

    /* renamed from: j, reason: collision with root package name */
    public static AlertDialog f18680j;
    public static com.byazt.dp.hp jx;

    /* renamed from: l, reason: collision with root package name */
    public static List<k> f18681l = new ArrayList();

    private static boolean l() {
        return ((NotificationManager) com.byazt.yk.jx.mp().getSystemService("notification")).areNotificationsEnabled();
    }

    public static boolean hp() {
        try {
            return l();
        } catch (Throwable unused) {
            return true;
        }
    }

    public static synchronized void hp(boolean z2) {
        try {
            AlertDialog alertDialog = f18680j;
            if (alertDialog != null) {
                alertDialog.cancel();
                f18680j = null;
            }
            for (k kVar : f18681l) {
                if (kVar != null) {
                    if (z2) {
                        kVar.hp();
                    } else {
                        kVar.l();
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    public static void l(@NonNull Activity activity, @NonNull k kVar) {
        if (activity != null) {
            try {
                try {
                    if (!activity.isFinishing()) {
                        FragmentManager fragmentManager = activity.getFragmentManager();
                        String str = hp;
                        com.byazt.dp.hp hpVar = (com.byazt.dp.hp) fragmentManager.findFragmentByTag(str);
                        jx = hpVar;
                        if (hpVar == null) {
                            jx = new com.byazt.dp.hp();
                            fragmentManager.beginTransaction().add(jx, str).commitAllowingStateLoss();
                            try {
                                fragmentManager.executePendingTransactions();
                            } catch (Throwable unused) {
                            }
                        }
                        jx.hp();
                        return;
                    }
                } catch (Throwable unused2) {
                    kVar.hp();
                    return;
                }
            } catch (Throwable unused3) {
                return;
            }
        }
        kVar.hp();
    }

    public static synchronized void hp(@NonNull final Activity activity, @NonNull final k kVar) {
        if (kVar == null) {
            return;
        }
        if (activity != null) {
            try {
                if (!activity.isFinishing()) {
                    f18681l.add(kVar);
                    AlertDialog alertDialog = f18680j;
                    if (alertDialog == null || !alertDialog.isShowing()) {
                        f18680j = new AlertDialog.Builder(activity).setTitle("设置").setMessage("为了您能在方便地在通知栏控制下载任务，请到设置中开启通知，如果不需要可直接下载").setPositiveButton("去设置", new DialogInterface.OnClickListener() { // from class: com.byazt.bu.j.3
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i2) {
                                j.l(activity, kVar);
                                dialogInterface.cancel();
                                AlertDialog unused = j.f18680j = null;
                            }
                        }).setNegativeButton("立即下载", new DialogInterface.OnClickListener() { // from class: com.byazt.bu.j.2
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i2) {
                                j.hp(false);
                            }
                        }).setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.byazt.bu.j.1
                            @Override // android.content.DialogInterface.OnKeyListener
                            public boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
                                if (i2 != 4) {
                                    return false;
                                }
                                if (keyEvent.getAction() == 1) {
                                    j.hp(false);
                                }
                                return true;
                            }
                        }).setCancelable(false).show();
                    }
                    return;
                }
            } catch (Throwable unused) {
                hp(false);
                return;
            }
        }
        kVar.l();
    }

    public static void hp(int i2) {
        if (Build.VERSION.SDK_INT < 33 || com.byazt.jb.hp.hp(i2).l("enable_target_34") <= 0 || hp()) {
            return;
        }
        Context contextMp = com.byazt.yk.jx.mp();
        try {
            Intent intent = new Intent(contextMp, (Class<?>) DownloadHandleNotificationActivity.class);
            intent.setAction("android.ss.intent.action.DOWNLOAD_REQUEST_PERMISSION");
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            contextMp.startActivity(intent);
        } catch (Throwable th) {
            com.byazt.nu.hp.w(hp, "requestNotificationPermissionError2:".concat(String.valueOf(th)));
        }
    }
}
