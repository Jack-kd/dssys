package com.byazt.au;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import com.byazt.yk.CSJDownloadService;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 273, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes2.dex */
public class s extends com.byazt.yk.hp {

    /* renamed from: w, reason: collision with root package name */
    public static final String f18295w = "s";

    @Override // com.byazt.yk.hp, com.byazt.yk.v
    public void hp(Intent intent, int i2, int i3) {
        if (com.byazt.nu.hp.hp()) {
            com.byazt.nu.hp.l(f18295w, "onStartCommand");
        }
        if (!com.byazt.xq.hp.hp(262144)) {
            this.f27989l = true;
        }
        w();
    }

    @Override // com.byazt.yk.hp, com.byazt.yk.v
    public void jx() {
        if (com.byazt.xq.hp.hp(262144)) {
            this.f27989l = true;
            this.f27988j = false;
            if (com.byazt.nu.hp.hp()) {
                com.byazt.nu.hp.l(f18295w, "onStartCommandOnMainThread");
            }
        }
    }

    @Override // com.byazt.yk.hp
    public void startService(Context context, ServiceConnection serviceConnection) {
        try {
            context.startService(new Intent(context, (Class<?>) CSJDownloadService.class));
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.yk.hp
    public void stopService(Context context, ServiceConnection serviceConnection) {
        context.stopService(new Intent(context, (Class<?>) CSJDownloadService.class));
        this.f27989l = false;
    }
}
