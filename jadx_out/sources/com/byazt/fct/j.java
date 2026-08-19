package com.byazt.fct;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.byazt.lsx.a;
import com.byazt.zg.ns;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_VIDEO_FRAME_META_CALLBACK, 38})
/* loaded from: classes2.dex */
public class j {
    public static Context hp;
    public static volatile hp jx;

    /* renamed from: l, reason: collision with root package name */
    public static volatile hp f19671l;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_VIDEO_FRAME_META_CALLBACK, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_FAST_MODE})
    public static class hp {

        /* renamed from: a, reason: collision with root package name */
        public final int f19681a;

        /* renamed from: e, reason: collision with root package name */
        public Map<String, Object> f19682e;
        public final JSONObject eb;
        public final Handler hp;

        /* renamed from: j, reason: collision with root package name */
        public final long f19683j;
        public final String jx;

        /* renamed from: l, reason: collision with root package name */
        public volatile boolean f19684l = false;

        /* renamed from: q, reason: collision with root package name */
        public int f19685q = 0;

        /* renamed from: s, reason: collision with root package name */
        public final long f19686s;

        /* renamed from: w, reason: collision with root package name */
        public final int f19687w;

        public hp(String str, long j2, long j3, int i2, int i3, JSONObject jSONObject, Map<String, Object> map) {
            this.f19686s = j2 == -1 ? System.currentTimeMillis() : j2;
            this.jx = str;
            this.f19683j = j3;
            this.f19687w = i2;
            this.f19681a = i3;
            this.eb = jSONObject;
            this.f19682e = map;
            this.hp = new Handler(Looper.getMainLooper());
        }

        public static /* synthetic */ int l(hp hpVar) {
            int i2 = hpVar.f19685q;
            hpVar.f19685q = i2 + 1;
            return i2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void hp() {
            this.hp.postDelayed(new Runnable() { // from class: com.byazt.fct.j.hp.1
                @Override // java.lang.Runnable
                public void run() {
                    hp.l(hp.this);
                    if (hp.this.f19685q >= 5 || j.hp()) {
                        hp.this.hp(1);
                        return;
                    }
                    com.byazt.aw.l.hp("TMe", "--==-- 重试一次 eventType:" + hp.this.jx + ", 重试次数：" + hp.this.f19685q);
                    hp.this.hp();
                }
            }, 500L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:27:0x008a  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public synchronized void hp(int r10) {
            /*
                r9 = this;
                monitor-enter(r9)
                android.os.Handler r0 = r9.hp     // Catch: java.lang.Throwable -> L3e
                r1 = 0
                r0.removeCallbacksAndMessages(r1)     // Catch: java.lang.Throwable -> L3e
                boolean r0 = r9.f19684l     // Catch: java.lang.Throwable -> L3e
                if (r0 == 0) goto Ld
                monitor-exit(r9)
                return
            Ld:
                r0 = 1
                r9.f19684l = r0     // Catch: java.lang.Throwable -> L3e
                if (r10 != r0) goto L41
                java.lang.String r10 = "TMe"
                java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L3e
                java.lang.String r2 = "--==-- 最终上报：eventType:"
                r1.<init>(r2)     // Catch: java.lang.Throwable -> L3e
                java.lang.String r2 = r9.jx     // Catch: java.lang.Throwable -> L3e
                r1.append(r2)     // Catch: java.lang.Throwable -> L3e
                java.lang.String r2 = ", 重试次数："
                r1.append(r2)     // Catch: java.lang.Throwable -> L3e
                int r2 = r9.f19685q     // Catch: java.lang.Throwable -> L3e
                r1.append(r2)     // Catch: java.lang.Throwable -> L3e
                java.lang.String r2 = ", did: "
                r1.append(r2)     // Catch: java.lang.Throwable -> L3e
                java.lang.String r2 = com.byazt.fct.j.j()     // Catch: java.lang.Throwable -> L3e
                r1.append(r2)     // Catch: java.lang.Throwable -> L3e
                java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L3e
                com.byazt.aw.l.hp(r10, r1)     // Catch: java.lang.Throwable -> L3e
                goto L65
            L3e:
                r0 = move-exception
                r10 = r0
                goto La8
            L41:
                r1 = 2
                if (r10 != r1) goto L65
                java.lang.String r10 = "TMe"
                java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L3e
                java.lang.String r2 = "--==-- 最终上报：eventType:"
                r1.<init>(r2)     // Catch: java.lang.Throwable -> L3e
                java.lang.String r2 = r9.jx     // Catch: java.lang.Throwable -> L3e
                r1.append(r2)     // Catch: java.lang.Throwable -> L3e
                java.lang.String r2 = ", 从applog回调中上报, did: "
                r1.append(r2)     // Catch: java.lang.Throwable -> L3e
                java.lang.String r2 = com.byazt.fct.j.j()     // Catch: java.lang.Throwable -> L3e
                r1.append(r2)     // Catch: java.lang.Throwable -> L3e
                java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L3e
                com.byazt.aw.l.hp(r10, r1)     // Catch: java.lang.Throwable -> L3e
            L65:
                java.lang.String r10 = r9.jx     // Catch: java.lang.Throwable -> L3e
                int r1 = r10.hashCode()     // Catch: java.lang.Throwable -> L3e
                r2 = -834688111(0xffffffffce3fab91, float:-8.03923E8)
                if (r1 == r2) goto L80
                r2 = 270071285(0x1018f5f5, float:3.0166193E-29)
                if (r1 == r2) goto L76
                goto L8a
            L76:
                java.lang.String r1 = "sdk_init"
                boolean r10 = r10.equals(r1)     // Catch: java.lang.Throwable -> L3e
                if (r10 == 0) goto L8a
                r10 = 0
                goto L8b
            L80:
                java.lang.String r1 = "sdk_init_end"
                boolean r10 = r10.equals(r1)     // Catch: java.lang.Throwable -> L3e
                if (r10 == 0) goto L8a
                r10 = r0
                goto L8b
            L8a:
                r10 = -1
            L8b:
                if (r10 == 0) goto La1
                if (r10 == r0) goto L90
                goto L9f
            L90:
                long r1 = r9.f19683j     // Catch: java.lang.Throwable -> L3e
                int r3 = r9.f19687w     // Catch: java.lang.Throwable -> L3e
                int r4 = r9.f19681a     // Catch: java.lang.Throwable -> L3e
                long r5 = r9.f19686s     // Catch: java.lang.Throwable -> L3e
                org.json.JSONObject r7 = r9.eb     // Catch: java.lang.Throwable -> L3e
                java.util.Map<java.lang.String, java.lang.Object> r8 = r9.f19682e     // Catch: java.lang.Throwable -> L3e
                com.byazt.fct.j.hp(r1, r3, r4, r5, r7, r8)     // Catch: java.lang.Throwable -> L3e
            L9f:
                monitor-exit(r9)
                return
            La1:
                long r0 = r9.f19686s     // Catch: java.lang.Throwable -> L3e
                com.byazt.fct.j.l(r0)     // Catch: java.lang.Throwable -> L3e
                monitor-exit(r9)
                return
            La8:
                monitor-exit(r9)     // Catch: java.lang.Throwable -> L3e
                throw r10
            */
            throw new UnsupportedOperationException("Method not decompiled: com.byazt.fct.j.hp.hp(int):void");
        }
    }

    public static void hp(Context context) {
        hp = context;
    }

    public static void jx() {
        new com.byazt.wu.l(2).hp(new Runnable() { // from class: com.byazt.fct.j.2
            @Override // java.lang.Runnable
            public void run() {
                a.hp();
            }
        });
    }

    public static void l() {
        new com.byazt.wu.l(1).hp(new Runnable() { // from class: com.byazt.fct.j.1
            @Override // java.lang.Runnable
            public void run() {
                a.jx();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String w() {
        return ns.hp();
    }

    public static void hp(long j2) {
        hp hpVar = new hp("sdk_init", j2, 0L, 0, 0, null, null);
        f19671l = hpVar;
        hpVar.hp();
    }

    public static void l(final long j2) {
        new com.byazt.wu.l(4).hp(new Runnable() { // from class: com.byazt.fct.j.3
            @Override // java.lang.Runnable
            public void run() {
                a.hp(j2);
            }
        });
    }

    public static void hp(long j2, int i2, int i3, JSONObject jSONObject, Map<String, Object> map) {
        hp hpVar = new hp("sdk_init_end", -1L, j2, i2, i3, jSONObject, map);
        jx = hpVar;
        hpVar.hp();
    }

    public static boolean hp() {
        return !TextUtils.isEmpty(ns.hp());
    }

    public static void hp(final long j2, final int i2, final int i3, final long j3, final JSONObject jSONObject, final Map<String, Object> map) {
        new com.byazt.wu.l(8).hp(new Runnable() { // from class: com.byazt.fct.j.4
            @Override // java.lang.Runnable
            public void run() {
                a.hp(j2, i2, i3, j3, jSONObject, (Map<String, Object>) map);
            }
        });
    }

    public static void hp(final boolean z2) {
        new com.byazt.wu.l(16).hp(new Runnable() { // from class: com.byazt.fct.j.5
            @Override // java.lang.Runnable
            public void run() {
                a.hp(z2);
            }
        });
    }

    public static void hp(final int i2, final int i3, final long j2, final boolean z2, final boolean z3, final JSONObject jSONObject, final long j3, final JSONObject jSONObject2) {
        new com.byazt.wu.l(32).hp(new Runnable() { // from class: com.byazt.fct.j.6
            @Override // java.lang.Runnable
            public void run() {
                a.hp(i2, i3, j2, z2, z3, jSONObject, j3, jSONObject2);
            }
        });
    }
}
