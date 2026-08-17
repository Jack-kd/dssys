package com.byazt.tv;

import android.animation.Animator;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.byazt.cw.SSRenderTextureView;
import com.byazt.cw.l;
import com.byazt.na.LottieAnimationView;
import com.byazt.na.j;
import com.byazt.na.n;
import com.byazt.na.sz;
import com.byazt.uah.l;
import com.byazt.wf.q;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_IS_TOO_LARGE_AV_DIFF, 1449})
/* loaded from: classes3.dex */
public class UpieVideoView extends FrameLayout implements com.byazt.cw.l {

    /* renamed from: a, reason: collision with root package name */
    public final Runnable f25998a;
    public l.hp eb;
    public final com.byazt.cw.l hp;

    /* renamed from: j, reason: collision with root package name */
    public final Map<String, Integer> f25999j;
    public final Map<String, Bitmap> jx;

    /* renamed from: l, reason: collision with root package name */
    public final LottieAnimationView f26000l;

    /* renamed from: w, reason: collision with root package name */
    public final Handler f26001w;

    public UpieVideoView(final Context context, final com.byazt.uah.hp hpVar) {
        super(context);
        this.jx = new HashMap();
        this.f25999j = new HashMap();
        this.f26001w = new Handler(Looper.getMainLooper());
        this.f25998a = new Runnable() { // from class: com.byazt.tv.UpieVideoView.6
            @Override // java.lang.Runnable
            public void run() {
                if (UpieVideoView.this.f26000l != null && UpieVideoView.this.f26000l.w()) {
                    UpieVideoView.this.f26000l.invalidate();
                }
                UpieVideoView.this.f26001w.postDelayed(UpieVideoView.this.f25998a, 40L);
            }
        };
        SSRenderTextureView sSRenderTextureView = new SSRenderTextureView(context);
        this.hp = sSRenderTextureView;
        addView(sSRenderTextureView.getView());
        sSRenderTextureView.getView().setTranslationX(2.1474836E9f);
        LottieAnimationView lottieAnimationView = new LottieAnimationView(context);
        this.f26000l = lottieAnimationView;
        lottieAnimationView.setImageAssetDelegate(new j() { // from class: com.byazt.tv.UpieVideoView.1
            /* JADX WARN: Code restructure failed: missing block: B:15:0x0035, code lost:
            
                if (r1.startsWith("http") != false) goto L17;
             */
            @Override // com.byazt.na.j
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public android.graphics.Bitmap hp(com.byazt.na.q r6) {
                /*
                    r5 = this;
                    r0 = 0
                    if (r6 == 0) goto L56
                    java.lang.String r1 = r6.zy()
                    boolean r2 = android.text.TextUtils.isEmpty(r1)
                    if (r2 != 0) goto L56
                    java.lang.String r2 = "${"
                    boolean r2 = r1.startsWith(r2)
                    if (r2 == 0) goto L38
                    java.lang.String r2 = "}"
                    boolean r2 = r1.endsWith(r2)
                    if (r2 == 0) goto L38
                    com.byazt.uah.hp r2 = r2
                    if (r2 == 0) goto L37
                    org.json.JSONObject r2 = r2.eb()
                    java.lang.String r1 = com.byazt.wb.hp.hp(r1, r2)
                    boolean r2 = android.text.TextUtils.isEmpty(r1)
                    if (r2 != 0) goto L37
                    java.lang.String r2 = "http"
                    boolean r2 = r1.startsWith(r2)
                    if (r2 != 0) goto L38
                L37:
                    return r0
                L38:
                    com.byazt.tv.UpieVideoView r2 = com.byazt.tv.UpieVideoView.this
                    java.util.Map r2 = com.byazt.tv.UpieVideoView.hp(r2)
                    java.lang.Object r2 = r2.get(r1)
                    android.graphics.Bitmap r2 = (android.graphics.Bitmap) r2
                    if (r2 == 0) goto L47
                    return r2
                L47:
                    com.byazt.tv.UpieVideoView r2 = com.byazt.tv.UpieVideoView.this
                    android.content.Context r3 = r3
                    int r4 = r6.hp()
                    int r6 = r6.l()
                    com.byazt.tv.UpieVideoView.hp(r2, r3, r1, r4, r6)
                L56:
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.byazt.tv.UpieVideoView.AnonymousClass1.hp(com.byazt.na.q):android.graphics.Bitmap");
            }
        });
        lottieAnimationView.setTextDelegate(new sz(lottieAnimationView) { // from class: com.byazt.tv.UpieVideoView.2
            @Override // com.byazt.na.sz
            public String hp(String str) {
                com.byazt.uah.hp hpVar2 = hpVar;
                return com.byazt.wb.hp.hp(str, hpVar2 != null ? hpVar2.eb() : null);
            }
        });
        lottieAnimationView.setViewDelegate(new n() { // from class: com.byazt.tv.UpieVideoView.3
            @Override // com.byazt.na.n
            public View hp(String str, Map<String, Object> map) {
                if ("videoview:".equals(str)) {
                    return UpieVideoView.this.hp.getView();
                }
                return null;
            }
        });
        lottieAnimationView.setRepeatMode(1);
        lottieAnimationView.setRepeatCount(-1);
        lottieAnimationView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        lottieAnimationView.setClickable(false);
        lottieAnimationView.hp(new Animator.AnimatorListener() { // from class: com.byazt.tv.UpieVideoView.4
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                if (UpieVideoView.this.f26000l != null) {
                    UpieVideoView.this.f26000l.l(this);
                }
                UpieVideoView.this.j();
            }
        });
        lottieAnimationView.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.byazt.tv.UpieVideoView.5
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                if (UpieVideoView.this.f26000l == view) {
                    UpieVideoView.this.jx();
                }
            }
        });
        addView(lottieAnimationView, new FrameLayout.LayoutParams(-1, -2));
    }

    public SurfaceHolder getHolder() {
        return null;
    }

    public LottieAnimationView getLottieAnimationView() {
        return this.f26000l;
    }

    @Override // com.byazt.cw.l
    public View getView() {
        return this;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        LottieAnimationView lottieAnimationView = this.f26000l;
        if (lottieAnimationView != null) {
            lottieAnimationView.invalidate();
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
    }

    public void setWindowVisibilityChangedListener(l.hp hpVar) {
        this.eb = hpVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        jx();
        if (this.f26000l != null) {
            this.f26001w.postDelayed(this.f25998a, 40L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jx() {
        this.f26001w.removeCallbacksAndMessages(null);
    }

    public void l() {
        com.byazt.wb.l.hp(new Runnable() { // from class: com.byazt.tv.UpieVideoView.9
            @Override // java.lang.Runnable
            public void run() {
                UpieVideoView.this.jx();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final Context context, final String str, final int i2, final int i3) {
        Integer num = this.f25999j.get(str);
        if (num == null || num.intValue() != 1) {
            this.f25999j.put(str, 1);
            this.f26000l.hp(str, new q() { // from class: com.byazt.tv.UpieVideoView.7
                @Override // com.byazt.wf.q
                public void hp(Bitmap bitmap) {
                    UpieVideoView.this.hp(bitmap, str, i2, i3);
                }

                @Override // com.byazt.wf.q
                public void hp() {
                    com.byazt.uah.l.hp().hp(context, str, new l.hp<Bitmap>() { // from class: com.byazt.tv.UpieVideoView.7.1
                        @Override // com.byazt.uah.l.hp
                        public void hp(Bitmap bitmap) {
                            AnonymousClass7 anonymousClass7 = AnonymousClass7.this;
                            UpieVideoView.this.hp(bitmap, str, i2, i3);
                        }

                        @Override // com.byazt.uah.l.hp
                        public void hp(int i4, String str2) {
                            UpieVideoView.this.f25999j.put(str, 2);
                        }
                    });
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(Bitmap bitmap, String str, int i2, int i3) {
        if (bitmap != null) {
            if (bitmap.getWidth() != i2 || bitmap.getHeight() != i3) {
                bitmap = Bitmap.createScaledBitmap(bitmap, i2, i3, false);
            }
            this.jx.put(str, bitmap);
        }
    }

    @Override // com.byazt.cw.l
    public void hp(com.byazt.cw.hp hpVar) {
        com.byazt.cw.l lVar = this.hp;
        if (lVar != null) {
            lVar.hp(hpVar);
        }
    }

    @Override // com.byazt.cw.l
    public void hp(int i2, int i3) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.height = i3;
        layoutParams.width = i2;
        setLayoutParams(layoutParams);
    }

    public void hp() {
        com.byazt.wb.l.hp(new Runnable() { // from class: com.byazt.tv.UpieVideoView.8
            @Override // java.lang.Runnable
            public void run() {
                UpieVideoView.this.j();
            }
        });
    }
}
