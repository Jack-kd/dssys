package com.meishu.sdk.meishu_ad.view;

import android.content.Context;
import android.media.MediaPlayer;
import android.util.AttributeSet;
import android.view.Surface;
import com.meishu.sdk.core.utils.LogUtil;

/* loaded from: classes4.dex */
public class MeishuVideoCahceTextureView extends MeishuVideoTextureView {
    public MeishuVideoCahceTextureView(Context context) {
        super(context);
    }

    public void setMediaPlayer(MediaPlayer mediaPlayer) {
        if (mediaPlayer == null) {
            LogUtil.e("MeishuVideoCahceTextureView", "setMediaPlayer error. player is null");
            return;
        }
        try {
            getMediaPlayer().release();
        } catch (Throwable th) {
            th.printStackTrace();
        }
        try {
            a(mediaPlayer);
            this.f32693g = true;
            LogUtil.d("MeishuVideoCahceTextureView", "setMediaPlayer");
            Surface surface = this.f32694h;
            if (surface != null) {
                mediaPlayer.setSurface(surface);
            }
            try {
                MediaPlayer.OnPreparedListener onPreparedListener = this.f32689c;
                if (onPreparedListener != null) {
                    onPreparedListener.onPrepared(mediaPlayer);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.meishu_ad.view.MeishuVideoTextureView
    public void setVideoPath(String str) {
        LogUtil.i("MeishuVideoCahceTextureView", "CacheVideoMediaPlayer don`t support re setDataSource");
    }

    public MeishuVideoCahceTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MeishuVideoCahceTextureView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
