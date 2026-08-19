package com.byazt.qk;

import android.os.Looper;
import android.view.View;
import com.byazt.ek.ThemeStatusBroadcastReceiver;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 64, MediaPlayer.MEDIA_PLAYER_OPTION_PREPARE_CACHE_MS})
/* loaded from: classes3.dex */
public class ec extends com.byazt.fub.hp<BackupView> {

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.fub.zy f24845a;
    public BackupView hp;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.fub.jx f24846j;
    public ThemeStatusBroadcastReceiver jx;

    /* renamed from: l, reason: collision with root package name */
    public View f24847l;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.fub.eb f24848w;

    public ec(View view, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver, com.byazt.fub.zy zyVar) {
        this.f24847l = view;
        this.jx = themeStatusBroadcastReceiver;
        this.f24845a = zyVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        com.byazt.fub.jx jxVar = this.f24846j;
        if (jxVar == null || !jxVar.hp((NativeExpressView) this.f24847l, 0)) {
            this.f24848w.hp(107, (String) null);
            return;
        }
        this.f24845a.eb().e();
        BackupView backupView = (BackupView) this.f24847l.findViewWithTag("tt_express_backup_fl_tag_26");
        this.hp = backupView;
        if (backupView == null) {
            this.f24848w.hp(107, (String) null);
            return;
        }
        backupView.setThemeChangeReceiver(this.jx);
        com.byazt.fub.k kVar = new com.byazt.fub.k();
        BackupView backupView2 = this.hp;
        float realWidth = backupView2 == null ? 0.0f : backupView2.getRealWidth();
        BackupView backupView3 = this.hp;
        float realHeight = backupView3 != null ? backupView3.getRealHeight() : 0.0f;
        kVar.hp(true);
        kVar.hp(realWidth);
        kVar.l(realHeight);
        this.f24848w.hp(this.hp, kVar);
    }

    @Override // com.byazt.fub.j
    public void hp(com.byazt.fub.eb ebVar) {
        this.f24848w = ebVar;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            l();
        } else {
            com.byazt.jz.vv.a().post(new Runnable() { // from class: com.byazt.qk.ec.1
                @Override // java.lang.Runnable
                public void run() {
                    ec.this.l();
                }
            });
        }
    }

    @Override // com.byazt.fub.j
    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
    public BackupView eb() {
        return this.hp;
    }

    @Override // com.byazt.fub.hp
    public void hp(com.byazt.fub.jx jxVar) {
        this.f24846j = jxVar;
    }
}
