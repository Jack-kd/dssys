package com.byazt.at;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.byazt.na.LottieAnimationView;
import com.byazt.um.eb;
import com.byazt.ymw.u;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_RES_FINSIH_TIME, 34})
/* loaded from: classes2.dex */
public class l extends eb {

    /* renamed from: e, reason: collision with root package name */
    public com.byazt.jc.j f18230e;
    public eb.hp gu;
    public volatile boolean jl;

    /* renamed from: k, reason: collision with root package name */
    public LottieAnimationView f18231k;

    /* renamed from: q, reason: collision with root package name */
    public float f18232q;

    /* renamed from: s, reason: collision with root package name */
    public float f18233s;

    /* renamed from: u, reason: collision with root package name */
    public final Runnable f18234u;

    /* renamed from: v, reason: collision with root package name */
    public final Handler f18235v;
    public hp zy;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_RES_FINSIH_TIME, 123})
    public static class hp extends TextureView {
        public hp(Context context) {
            super(context);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public l(com.byazt.na.s r3, com.byazt.at.s r4, final android.content.Context r5) {
        /*
            r2 = this;
            r2.<init>(r3, r4)
            r4 = -1082130432(0xffffffffbf800000, float:-1.0)
            r2.f18233s = r4
            r2.f18232q = r4
            android.os.Handler r4 = new android.os.Handler
            android.os.Looper r0 = android.os.Looper.getMainLooper()
            r4.<init>(r0)
            r2.f18235v = r4
            com.byazt.at.l$4 r4 = new com.byazt.at.l$4
            r4.<init>()
            r2.f18234u = r4
            com.byazt.na.q r4 = r2.eb
            if (r4 == 0) goto L9f
            if (r3 == 0) goto L9f
            if (r5 == 0) goto L9f
            com.byazt.na.LottieAnimationView r4 = r3.l()
            r2.f18231k = r4
            if (r4 != 0) goto L2c
            goto L9f
        L2c:
            float r4 = com.byazt.ze.e.hp()
            com.byazt.na.q r0 = r2.eb
            int r0 = r0.hp()
            float r0 = (float) r0
            float r0 = r0 * r4
            int r0 = (int) r0
            float r0 = (float) r0
            r2.f18233s = r0
            com.byazt.na.q r0 = r2.eb
            int r0 = r0.l()
            float r0 = (float) r0
            float r0 = r0 * r4
            int r4 = (int) r0
            float r4 = (float) r4
            r2.f18232q = r4
            com.byazt.na.sz r3 = r3.di()
            if (r3 == 0) goto L64
            com.byazt.na.q r4 = r2.eb
            java.lang.String r4 = r4.zy()
            java.lang.String r3 = r3.hp(r4)
            boolean r4 = android.text.TextUtils.isEmpty(r3)
            if (r4 != 0) goto L64
            org.json.JSONObject r4 = new org.json.JSONObject     // Catch: org.json.JSONException -> L64
            r4.<init>(r3)     // Catch: org.json.JSONException -> L64
            goto L65
        L64:
            r4 = 0
        L65:
            if (r4 == 0) goto L9f
            java.lang.String r3 = "file_hash"
            java.lang.String r3 = r4.optString(r3)
            java.lang.String r0 = "video_url"
            java.lang.String r0 = r4.optString(r0)
            java.lang.String r1 = "video_duration"
            r4.optString(r1)
            java.lang.String r1 = "resolution"
            r4.optString(r1)
            boolean r4 = android.text.TextUtils.isEmpty(r0)
            if (r4 != 0) goto L9f
            com.byazt.at.l$hp r4 = new com.byazt.at.l$hp
            r4.<init>(r5)
            r2.zy = r4
            com.byazt.at.l$1 r1 = new com.byazt.at.l$1
            r1.<init>()
            r4.setSurfaceTextureListener(r1)
            com.byazt.na.LottieAnimationView r3 = r2.f18231k
            com.byazt.at.l$2 r4 = new com.byazt.at.l$2
            r4.<init>()
            r3.addOnAttachStateChangeListener(r4)
            r2.u()
        L9f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.at.l.<init>(com.byazt.na.s, com.byazt.at.s, android.content.Context):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        ViewParent parent = this.zy.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.zy);
        }
        ViewParent parent2 = this.f18231k.getParent();
        if (parent2 instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) parent2;
            int i2 = 0;
            while (i2 < viewGroup.getChildCount()) {
                View childAt = viewGroup.getChildAt(i2);
                if (childAt instanceof hp) {
                    viewGroup.removeView(childAt);
                    i2--;
                }
                i2++;
            }
            this.zy.setTranslationX(2.1474836E9f);
            viewGroup.addView(this.zy);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        if (this.f18230e != null) {
            if (this.jl) {
                this.f18230e.stop();
            }
            this.f18230e.release();
            this.f18230e = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void vv() {
        xs();
        if (this.f18231k != null) {
            this.f18235v.postDelayed(this.f18234u, 40L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void xs() {
        this.f18235v.removeCallbacksAndMessages(null);
    }

    @Override // com.byazt.at.eb, com.byazt.at.jx
    public void l(Canvas canvas, Matrix matrix, int i2) {
        if (this.f18233s <= 0.0f || this.zy == null) {
            return;
        }
        canvas.save();
        canvas.concat(matrix);
        hp(i2);
        float fS = s();
        hp(this.zy, (int) this.f18233s, (int) this.f18232q);
        this.zy.setAlpha(fS);
        this.zy.draw(canvas);
        canvas.restore();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(String str, String str2, Context context, SurfaceTexture surfaceTexture) {
        v();
        LottieAnimationView lottieAnimationView = this.f18231k;
        com.byazt.jc.j jVar = new com.byazt.jc.j("uttie", lottieAnimationView != null ? lottieAnimationView.getVideoStats() : null);
        this.f18230e = jVar;
        jVar.setSurface(surfaceTexture);
        eb.hp hpVar = new eb.hp() { // from class: com.byazt.at.l.3
            @Override // com.byazt.um.eb.hp
            public void onBufferEnd(com.byazt.um.eb ebVar, int i2) {
            }

            @Override // com.byazt.um.eb.hp
            public void onBufferStart(com.byazt.um.eb ebVar, int i2, int i3, int i4) {
            }

            @Override // com.byazt.um.eb.hp
            public void onBufferingUpdate(com.byazt.um.eb ebVar, int i2) {
            }

            @Override // com.byazt.um.eb.hp
            public void onCompletion(com.byazt.um.eb ebVar) {
            }

            @Override // com.byazt.um.eb.hp
            public void onError(com.byazt.um.eb ebVar, com.byazt.um.jx jxVar) {
                u.l("uttie-video", jxVar.getCode() + ":" + jxVar.getExtraCode() + ":" + jxVar.getMsg());
            }

            @Override // com.byazt.um.eb.hp
            public void onMonitorLog(com.byazt.um.eb ebVar, JSONObject jSONObject, String str3) {
            }

            @Override // com.byazt.um.eb.hp
            public void onPause(com.byazt.um.eb ebVar) {
            }

            @Override // com.byazt.um.eb.hp
            public void onPlayPositionUpdate(com.byazt.um.eb ebVar, long j2, long j3) {
            }

            @Override // com.byazt.um.eb.hp
            public void onPrepared(com.byazt.um.eb ebVar) {
                l.this.jl = true;
                ebVar.setLoop(true);
            }

            @Override // com.byazt.um.eb.hp
            public void onRelease(com.byazt.um.eb ebVar) {
            }

            @Override // com.byazt.um.eb.hp
            public void onRenderStart(com.byazt.um.eb ebVar, long j2) {
            }

            @Override // com.byazt.um.eb.hp
            public void onResume(com.byazt.um.eb ebVar) {
            }

            @Override // com.byazt.um.eb.hp
            public void onSeekCompletion(com.byazt.um.eb ebVar, boolean z2) {
            }

            @Override // com.byazt.um.eb.hp
            public void onStart(com.byazt.um.eb ebVar) {
            }

            @Override // com.byazt.um.eb.hp
            public void onVideoSizeChanged(com.byazt.um.eb ebVar, int i2, int i3) {
            }
        };
        this.gu = hpVar;
        this.f18230e.addIVideoPlayerCallback(hpVar);
        com.byazt.tw.j jVar2 = new com.byazt.tw.j();
        jVar2.setVideo_url(str);
        jVar2.setFileHash(str2);
        this.f18230e.setDataSource(new com.byazt.tw.a(com.byazt.ze.jx.l(context), jVar2, null, 0, 0));
        this.f18230e.setQuietPlay(true);
        this.f18230e.start(true, 0L, true);
    }

    private static void hp(View view, int i2, int i3) {
        view.layout(0, 0, i2, i3);
        view.measure(View.MeasureSpec.makeMeasureSpec(i2, C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(i3, C.ENCODING_PCM_32BIT));
        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
    }
}
