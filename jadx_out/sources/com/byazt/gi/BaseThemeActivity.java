package com.byazt.gi;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Window;
import androidx.annotation.Nullable;
import com.byazt.jz.n;
import com.byazt.kj.hp;
import com.byazt.lf.k;
import com.byazt.xci.mp;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@hp(hp = {0, 1, 290, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_STALL_COUNTER})
/* loaded from: classes2.dex */
public class BaseThemeActivity extends Activity {
    public mp pu;

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }

    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        Window window;
        super.onCreate(bundle);
        mp mpVarL = ky.l(getIntent());
        this.pu = mpVarL;
        if (mpVarL == null) {
            k.hp().hp("meta_null", (Throwable) null);
        } else {
            if (!mpVarL.ud() || (window = getWindow()) == null) {
                return;
            }
            window.addFlags(512);
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(0);
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        String stringExtra;
        super.onDestroy();
        Intent intent = getIntent();
        if (intent == null || (stringExtra = intent.getStringExtra("multi_process_materialmeta_key")) == null) {
            return;
        }
        n.l(stringExtra, mp.class);
    }
}
