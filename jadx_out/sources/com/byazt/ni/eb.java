package com.byazt.ni;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.anythink.core.common.d.i;
import com.byazt.dp.JumpUnknownSourceActivity;
import com.byazt.ei.hp;
import com.byazt.fu.DownloadInfo;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.SoftReference;
import java.util.ArrayDeque;
import java.util.Queue;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SIDX_VIDEO_WINDOW_SIZE, 94})
/* loaded from: classes3.dex */
public class eb {

    /* renamed from: a, reason: collision with root package name */
    public Handler f23580a;
    public Runnable eb;
    public final Queue<Integer> hp;

    /* renamed from: j, reason: collision with root package name */
    public long f23581j;
    public long jx;

    /* renamed from: l, reason: collision with root package name */
    public boolean f23582l;

    /* renamed from: w, reason: collision with root package name */
    public SoftReference<JumpUnknownSourceActivity> f23583w;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SIDX_VIDEO_WINDOW_SIZE, 131})
    public static class hp {
        public static final eb hp = new eb();
    }

    private eb() {
        this.hp = new ArrayDeque();
        this.f23582l = false;
        this.f23580a = new Handler(Looper.getMainLooper());
        this.eb = new Runnable() { // from class: com.byazt.ni.eb.1
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                eb.this.jx();
            }
        };
        com.byazt.ei.hp.hp().hp(new hp.InterfaceC0218hp() { // from class: com.byazt.ni.eb.2
            @Override // com.byazt.ei.hp.InterfaceC0218hp
            public void jx() {
            }

            @Override // com.byazt.ei.hp.InterfaceC0218hp
            public void l() throws JSONException {
                if (eb.this.hp.isEmpty()) {
                    return;
                }
                long jHp = com.byazt.jb.hp.jx().hp("install_on_resume_install_interval", i.l.f2678c);
                long jCurrentTimeMillis = System.currentTimeMillis() - eb.this.f23581j;
                if (jCurrentTimeMillis < jHp) {
                    if (eb.this.f23580a.hasCallbacks(eb.this.eb)) {
                        return;
                    }
                    eb.this.f23580a.postDelayed(eb.this.eb, jHp - jCurrentTimeMillis);
                } else {
                    eb.this.f23581j = System.currentTimeMillis();
                    eb.this.jx();
                }
            }
        });
    }

    private boolean j() {
        return System.currentTimeMillis() - this.jx < 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jx() throws JSONException {
        final Integer numPoll;
        if (Build.VERSION.SDK_INT < 29 || com.byazt.ei.hp.hp().l()) {
            synchronized (this.hp) {
                numPoll = this.hp.poll();
            }
            this.f23580a.removeCallbacks(this.eb);
            if (numPoll == null) {
                this.f23582l = false;
                return;
            }
            final Context contextMp = com.byazt.yk.jx.mp();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                this.f23580a.post(new Runnable() { // from class: com.byazt.ni.eb.3
                    @Override // java.lang.Runnable
                    public void run() throws JSONException {
                        eb.this.l(contextMp, numPoll.intValue(), false);
                    }
                });
            } else {
                l(contextMp, numPoll.intValue(), false);
            }
            this.f23580a.postDelayed(this.eb, 20000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int l(Context context, int i2, boolean z2) throws JSONException {
        int iL = jx.l(context, i2, z2);
        if (iL == 1) {
            this.f23582l = true;
        }
        this.jx = System.currentTimeMillis();
        return iL;
    }

    public void hp(DownloadInfo downloadInfo, String str) throws JSONException {
        if (downloadInfo == null || TextUtils.isEmpty(str)) {
            return;
        }
        jx();
    }

    public JumpUnknownSourceActivity l() {
        SoftReference<JumpUnknownSourceActivity> softReference = this.f23583w;
        JumpUnknownSourceActivity jumpUnknownSourceActivity = softReference == null ? null : softReference.get();
        this.f23583w = null;
        return jumpUnknownSourceActivity;
    }

    public static eb hp() {
        return hp.hp;
    }

    public int hp(final Context context, final int i2, final boolean z2) {
        if (z2) {
            return l(context, i2, z2);
        }
        if (j()) {
            this.f23580a.postDelayed(new Runnable() { // from class: com.byazt.ni.eb.4
                @Override // java.lang.Runnable
                public void run() {
                    eb.this.hp(context, i2, z2);
                }
            }, 1000L);
            return 1;
        }
        if (com.byazt.ei.hp.hp().l()) {
            com.byazt.nu.hp.jx("leaves", "on Foreground");
            return l(context, i2, z2);
        }
        if (l.hp()) {
            return 1;
        }
        boolean z3 = Build.VERSION.SDK_INT < 29;
        if (this.hp.isEmpty() && !this.f23582l && z3) {
            return l(context, i2, z2);
        }
        int iHp = com.byazt.jb.hp.jx().hp("install_queue_size", 3);
        synchronized (this.hp) {
            while (this.hp.size() > iHp) {
                try {
                    this.hp.poll();
                } finally {
                }
            }
        }
        if (z3) {
            this.f23580a.removeCallbacks(this.eb);
            this.f23580a.postDelayed(this.eb, com.byazt.jb.hp.hp(i2).hp("install_queue_timeout", 20000L));
        }
        synchronized (this.hp) {
            try {
                if (!this.hp.contains(Integer.valueOf(i2))) {
                    this.hp.offer(Integer.valueOf(i2));
                }
            } finally {
            }
        }
        return 1;
    }

    public void hp(JumpUnknownSourceActivity jumpUnknownSourceActivity) {
        this.f23583w = new SoftReference<>(jumpUnknownSourceActivity);
    }
}
