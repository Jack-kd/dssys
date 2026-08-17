package com.byazt.bp;

import android.os.Bundle;
import android.os.RemoteException;
import com.byazt.gd.j;
import com.byazt.gd.w;
import com.byazt.jz.k;
import com.byazt.jz.sz;
import com.byazt.uid.eb;
import com.byazt.uid.s;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.concurrent.ExecutorService;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_SWITCH_CACHE_TIME, 28})
/* loaded from: classes2.dex */
public class hp {
    public static HashMap<Integer, k> hp = new HashMap<>();

    /* renamed from: l, reason: collision with root package name */
    public static final ExecutorService f18624l = com.byazt.uid.l.hp(new s("RewardFullCallback"));

    public static void hp(final int i2, final String str, final String str2, final Bundle bundle) {
        f18624l.execute(new eb("executeMultiProcessCallback") { // from class: com.byazt.bp.hp.1
            @Override // java.lang.Runnable
            public void run() {
                k kVarHp = hp.hp.get(Integer.valueOf(i2));
                if (kVarHp == null) {
                    kVarHp = k.hp.hp(com.byazt.pjz.hp.hp(sz.getContext()).hp(i2));
                    hp.hp.put(Integer.valueOf(i2), kVarHp);
                }
                if (kVarHp == null) {
                    return;
                }
                try {
                    int i3 = i2;
                    if (i3 == 0) {
                        kVarHp.hp(str, str2, bundle);
                    } else if (i3 == 1) {
                        kVarHp.l(str, str2, bundle);
                    } else {
                        if (i3 != 5) {
                            return;
                        }
                        kVarHp.jx(str, str2, bundle);
                    }
                } catch (RemoteException unused) {
                }
            }
        });
    }

    public static void hp(final String str, final com.byazt.mv.hp hpVar) {
        f18624l.execute(new eb("registerMultiProcessListener") { // from class: com.byazt.bp.hp.2
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.pjz.hp hpVarHp = com.byazt.pjz.hp.hp(sz.getContext());
                if (hpVar != null) {
                    w wVar = new w(hpVar);
                    k kVarHp = k.hp.hp(hpVarHp.hp(0));
                    if (kVarHp != null) {
                        try {
                            kVarHp.hp(str, wVar);
                        } catch (RemoteException unused) {
                        }
                    }
                }
            }
        });
    }

    public static void hp(final String str, final com.byazt.mv.l lVar) {
        f18624l.execute(new eb("registerMultiProcessListener") { // from class: com.byazt.bp.hp.3
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.pjz.hp hpVarHp = com.byazt.pjz.hp.hp(sz.getContext());
                if (lVar != null) {
                    j jVar = new j(lVar);
                    k kVarHp = k.hp.hp(hpVarHp.hp(5));
                    if (kVarHp != null) {
                        try {
                            kVarHp.hp(str, jVar);
                        } catch (RemoteException unused) {
                        }
                    }
                }
            }
        });
    }

    public static void hp(final String str, final com.byazt.pk.hp hpVar) {
        f18624l.execute(new eb("registerMultiProcessListener") { // from class: com.byazt.bp.hp.4
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.pjz.hp hpVarHp = com.byazt.pjz.hp.hp(sz.getContext());
                if (hpVar != null) {
                    com.byazt.gd.jx jxVar = new com.byazt.gd.jx(hpVar);
                    k kVarHp = k.hp.hp(hpVarHp.hp(1));
                    if (kVarHp != null) {
                        try {
                            kVarHp.hp(str, jxVar);
                        } catch (RemoteException unused) {
                        }
                    }
                }
            }
        });
    }
}
