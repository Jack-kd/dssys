package com.smartdigimkt.d1;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import com.smartdigimkt.q1.v;
import com.smartdigimkt.sdk.basead.mraid.MraidWebView;
import java.lang.ref.WeakReference;
import java.util.Locale;

/* loaded from: classes5.dex */
public final class c extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f39875a;

    public c(d dVar) {
        this.f39875a = new WeakReference(dVar);
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        d dVar;
        v vVar;
        if ("android.media.VOLUME_CHANGED_ACTION".equals(intent.getAction())) {
            if (intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_TYPE", -1) != 3 || (dVar = (d) this.f39875a.get()) == null || (vVar = dVar.f39879d) == null) {
                return;
            }
            AudioManager audioManager = dVar.f39877b;
            double streamVolume = ((dVar.f39877b != null ? r6.getStreamVolume(3) : -1) * 100.0d) / (audioManager != null ? audioManager.getStreamMaxVolume(3) : -1);
            if (streamVolume >= 0.0d) {
                String str = MraidWebView.TAG;
                try {
                    MraidWebView mraidWebView = vVar.f42711a;
                    Locale locale = Locale.US;
                    String str2 = "javascript:window.mraidbridge.audioVolumeChange(" + streamVolume + ");";
                    if (mraidWebView != null) {
                        try {
                            mraidWebView.loadUrl(str2);
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    }
                } catch (Exception e2) {
                    String str3 = MraidWebView.TAG;
                    e2.getMessage();
                }
            }
        }
    }
}
