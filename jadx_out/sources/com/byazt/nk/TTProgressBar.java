package com.byazt.nk;

import android.content.Context;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import com.byazt.kj.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.reflect.Field;

@hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_ORIGINAL_RETRY, 1837})
/* loaded from: classes3.dex */
public class TTProgressBar extends ProgressBar {
    public TTProgressBar(Context context) {
        super(context);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        try {
            try {
                super.onRestoreInstanceState(parcelable);
            } catch (Throwable unused) {
            }
        } catch (Exception unused2) {
            Field field = getClass().getField("mPrivateFlags");
            field.setAccessible(true);
            field.set(this, Integer.valueOf(((Integer) field.get(this)).intValue() | 131072));
        }
    }

    public TTProgressBar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
