package com.fl.saas.adx.base.interfaces;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.fl.saas.adx.util.LogcatUtil;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public class VolumeChangeObserver {
    private AudioManager audioManager;
    private Context context;
    private boolean isRegistered;
    private int lastVolume;
    private WeakReference<VolumeChangeListener> listenerRef;
    private BroadcastReceiver volumeReceiver = new BroadcastReceiver() { // from class: com.fl.saas.adx.base.interfaces.VolumeChangeObserver.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int streamVolume;
            try {
                if (!intent.getAction().equals("android.media.VOLUME_CHANGED_ACTION") || (streamVolume = VolumeChangeObserver.this.audioManager.getStreamVolume(3)) == VolumeChangeObserver.this.lastVolume) {
                    return;
                }
                VolumeChangeObserver.this.lastVolume = streamVolume;
                boolean z2 = streamVolume == 0;
                VolumeChangeListener volumeChangeListener = VolumeChangeObserver.this.listenerRef != null ? (VolumeChangeListener) VolumeChangeObserver.this.listenerRef.get() : null;
                if (volumeChangeListener != null) {
                    volumeChangeListener.onVolumeChanged(streamVolume, z2);
                }
            } catch (Throwable th) {
                LogcatUtil.debug(th);
            }
        }
    };

    public interface VolumeChangeListener {
        void onVolumeChanged(int i2, boolean z2);
    }

    public VolumeChangeObserver(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.context = applicationContext;
        this.audioManager = (AudioManager) applicationContext.getSystemService(MediaFormat.KEY_AUDIO);
    }

    public void start(VolumeChangeListener volumeChangeListener) {
        try {
            this.listenerRef = new WeakReference<>(volumeChangeListener);
            this.lastVolume = this.audioManager.getStreamVolume(3);
            if (this.isRegistered) {
                return;
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.media.VOLUME_CHANGED_ACTION");
            this.context.registerReceiver(this.volumeReceiver, intentFilter);
            this.isRegistered = true;
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    public void stop() {
        try {
            this.listenerRef = null;
            if (this.isRegistered) {
                this.context.unregisterReceiver(this.volumeReceiver);
                this.isRegistered = false;
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }
}
