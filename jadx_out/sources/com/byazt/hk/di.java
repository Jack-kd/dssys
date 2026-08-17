package com.byazt.hk;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.concurrent.CountDownLatch;

@com.byazt.kj.hp(hp = {0, 1, 227, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_HWDEC_SEAMLESS})
/* loaded from: classes2.dex */
public final class di<SERVICE, RESULT> {
    public final CountDownLatch hp = new CountDownLatch(1);

    /* renamed from: j, reason: collision with root package name */
    public final Context f20709j;
    public final l<SERVICE, RESULT> jx;

    /* renamed from: l, reason: collision with root package name */
    public final Intent f20710l;

    @com.byazt.kj.hp(hp = {0, 1, 227, MediaPlayer.MEDIA_PLAYER_OPTION_GET_STREAM_INFO_FIND_END_TIME})
    public class hp implements ServiceConnection {

        @Nullable
        public SERVICE hp;

        /* renamed from: j, reason: collision with root package name */
        public final l<SERVICE, RESULT> f20711j;
        public final CountDownLatch jx;

        public hp(CountDownLatch countDownLatch, l<SERVICE, RESULT> lVar) {
            this.jx = countDownLatch;
            this.f20711j = lVar;
        }

        @Override // android.content.ServiceConnection
        public void onBindingDied(ComponentName componentName) {
        }

        @Override // android.content.ServiceConnection
        public void onNullBinding(ComponentName componentName) {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            com.byazt.gt.e.hp("ServiceBlockBinder#onServiceConnected ".concat(String.valueOf(componentName)));
            try {
                this.hp = this.f20711j.l(iBinder);
            } catch (Throwable th) {
                try {
                    com.byazt.gt.e.jx("ServiceBlockBinder#onServiceConnected", th);
                    try {
                        this.jx.countDown();
                    } catch (Exception e2) {
                        com.byazt.gt.e.hp(e2);
                    }
                } finally {
                    try {
                        this.jx.countDown();
                    } catch (Exception e3) {
                        com.byazt.gt.e.hp(e3);
                    }
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            com.byazt.gt.e.hp("ServiceBlockBinder#onServiceDisconnected".concat(String.valueOf(componentName)));
            try {
                this.jx.countDown();
            } catch (Exception e2) {
                com.byazt.gt.e.hp(e2);
            }
        }
    }

    public interface l<T, RESULT> {
        RESULT hp(T t2) throws Exception;

        T l(IBinder iBinder);
    }

    public di(Context context, Intent intent, l<SERVICE, RESULT> lVar) {
        this.f20709j = context;
        this.f20710l = intent;
        this.jx = lVar;
    }

    public RESULT hp() {
        di<SERVICE, RESULT>.hp hpVar;
        if (Looper.getMainLooper() == Looper.myLooper()) {
            com.byazt.gt.e.jx("Don't do this in ui thread.", null);
            return null;
        }
        try {
            hpVar = new hp(this.hp, this.jx);
            this.f20709j.bindService(this.f20710l, hpVar, 1);
            this.hp.await();
            try {
                return this.jx.hp(hpVar.hp);
            } catch (Throwable th) {
                th = th;
                try {
                    com.byazt.gt.e.hp(th);
                    return null;
                } finally {
                    hp(hpVar);
                }
            }
        } catch (Throwable th2) {
            th = th2;
            hpVar = null;
        }
    }

    private void hp(di<SERVICE, RESULT>.hp hpVar) {
        if (hpVar != null) {
            try {
                this.f20709j.unbindService(hpVar);
            } catch (Throwable th) {
                com.byazt.gt.e.hp(th);
            }
        }
    }
}
