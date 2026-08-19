package com.byazt.vt;

import android.animation.Animator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.byazt.na.LottieAnimationView;
import com.byazt.na.j;
import com.byazt.na.q;
import com.byazt.na.sz;
import com.byazt.tw.jx;
import com.byazt.tw.l;
import com.byazt.uah.l;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 4, 1461})
/* loaded from: classes3.dex */
public class UpieImageView extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public final Map<String, Bitmap> f26653a;

    /* renamed from: e, reason: collision with root package name */
    public hp f26654e;
    public final Map<String, Integer> eb;
    public long gu;
    public final Context hp;

    /* renamed from: j, reason: collision with root package name */
    public String f26655j;
    public volatile LottieAnimationView jx;

    /* renamed from: l, reason: collision with root package name */
    public ImageView f26656l;

    /* renamed from: q, reason: collision with root package name */
    public int f26657q;

    /* renamed from: s, reason: collision with root package name */
    public int f26658s;

    /* renamed from: w, reason: collision with root package name */
    public Bitmap f26659w;

    public UpieImageView(Context context, com.byazt.uah.hp hpVar, l lVar, hp hpVar2) {
        super(context);
        this.f26653a = new HashMap();
        this.eb = new HashMap();
        this.f26658s = 0;
        this.f26657q = 0;
        this.hp = context;
        this.f26654e = hpVar2;
        hp(hpVar, lVar, hpVar2);
    }

    public static /* synthetic */ int jx(UpieImageView upieImageView) {
        int i2 = upieImageView.f26657q;
        upieImageView.f26657q = i2 + 1;
        return i2;
    }

    public static /* synthetic */ int s(UpieImageView upieImageView) {
        int i2 = upieImageView.f26658s;
        upieImageView.f26658s = i2 + 1;
        return i2;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.jx == null || this.f26655j == null) {
            return;
        }
        this.jx.hp();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.jx != null) {
            this.jx.a();
        }
    }

    public void setScaleType(ImageView.ScaleType scaleType) {
        if (scaleType != null) {
            if (this.jx != null) {
                this.jx.setScaleType(scaleType);
                return;
            }
            ImageView imageView = this.f26656l;
            if (imageView != null) {
                imageView.setScaleType(scaleType);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(final String str) {
        if (TextUtils.isEmpty(str)) {
            new jx(60008, 10002, "广告主图url为空");
        } else {
            com.byazt.uah.l.hp().l(str, new l.hp<Bitmap>() { // from class: com.byazt.vt.UpieImageView.4
                @Override // com.byazt.uah.l.hp
                public void hp(Bitmap bitmap) {
                    UpieImageView.this.f26659w = bitmap;
                    final Bitmap bitmapHp = com.byazt.sq.l.hp(UpieImageView.this.hp, UpieImageView.this.f26659w, 25);
                    com.byazt.wb.l.l(new Runnable() { // from class: com.byazt.vt.UpieImageView.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (UpieImageView.this.jx != null) {
                                UpieImageView.this.jx.invalidate();
                            }
                            UpieImageView.this.f26656l.setImageBitmap(UpieImageView.this.f26659w);
                            UpieImageView.this.f26656l.setScaleType(ImageView.ScaleType.FIT_CENTER);
                            if (bitmapHp != null) {
                                UpieImageView.this.f26656l.setBackground(new BitmapDrawable(bitmapHp));
                            }
                        }
                    });
                }

                @Override // com.byazt.uah.l.hp
                public void hp(int i2, String str2) {
                    UpieImageView.s(UpieImageView.this);
                    if (UpieImageView.this.f26658s <= 3) {
                        UpieImageView.this.l(str);
                    } else {
                        new jx(60008, 10003, "广告主图url加载失败");
                    }
                }
            });
        }
    }

    public synchronized void hp(final com.byazt.uah.hp hpVar, com.byazt.tw.l lVar, hp hpVar2) {
        if (hpVar == null) {
            return;
        }
        try {
            if (this.jx != null) {
                return;
            }
            this.f26654e = hpVar2;
            final String strJx = hpVar.jx();
            String strHp = hpVar.hp();
            if (!TextUtils.isEmpty(strHp)) {
                this.jx = new LottieAnimationView(this.hp);
                this.jx.setVideoStats(lVar);
                this.jx.setRepeatCount(-1);
                this.jx.setRepeatMode(1);
                this.jx.setClickable(false);
                this.jx.setImageAssetDelegate(new j() { // from class: com.byazt.vt.UpieImageView.1
                    @Override // com.byazt.na.j
                    public Bitmap hp(q qVar) {
                        if (qVar != null) {
                            String strZy = qVar.zy();
                            if (!TextUtils.isEmpty(strZy)) {
                                if (strZy.startsWith("${") && strZy.endsWith("}")) {
                                    strZy = com.byazt.wb.hp.hp(strZy, hpVar.eb());
                                    if (TextUtils.isEmpty(strZy)) {
                                        return null;
                                    }
                                    if (TextUtils.equals(strJx, strZy)) {
                                        Bitmap bitmap = UpieImageView.this.f26659w;
                                        if (bitmap != null && (bitmap.getWidth() != qVar.hp() || bitmap.getHeight() != qVar.l())) {
                                            UpieImageView.this.f26659w = Bitmap.createScaledBitmap(bitmap, qVar.hp(), qVar.l(), false);
                                        }
                                        return UpieImageView.this.f26659w;
                                    }
                                }
                                Bitmap bitmap2 = (Bitmap) UpieImageView.this.f26653a.get(strZy);
                                if (bitmap2 != null) {
                                    return bitmap2;
                                }
                                UpieImageView.this.hp(strZy, qVar.hp(), qVar.l());
                            }
                        }
                        return null;
                    }
                });
                this.jx.setTextDelegate(new sz(this.jx) { // from class: com.byazt.vt.UpieImageView.2
                    @Override // com.byazt.na.sz
                    public String hp(String str) {
                        return com.byazt.wb.hp.hp(str, hpVar.eb());
                    }
                });
            }
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            layoutParams.gravity = 17;
            ImageView imageView = new ImageView(this.hp);
            this.f26656l = imageView;
            addView(imageView, layoutParams);
            if (this.jx != null) {
                addView(this.jx, layoutParams);
            }
            this.gu = SystemClock.elapsedRealtime();
            hp(strHp);
            l(strJx);
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final String str) {
        if (TextUtils.isEmpty(str)) {
            hp(10000, "lottieJsonUrl为空");
        } else {
            com.byazt.wb.l.jx(new Runnable() { // from class: com.byazt.vt.UpieImageView.3
                @Override // java.lang.Runnable
                public void run() {
                    String strHp = com.byazt.uah.l.hp().hp(str);
                    if (TextUtils.isEmpty(strHp)) {
                        com.byazt.uah.l.hp().hp(str, new l.hp<String>() { // from class: com.byazt.vt.UpieImageView.3.1
                            @Override // com.byazt.uah.l.hp
                            public void hp(String str2) {
                                AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                                UpieImageView.this.hp(str2, str);
                            }

                            @Override // com.byazt.uah.l.hp
                            public void hp(int i2, String str2) {
                                if (i2 == 10006) {
                                    UpieImageView.this.hp(i2, str2);
                                    return;
                                }
                                UpieImageView.jx(UpieImageView.this);
                                if (UpieImageView.this.f26657q > 3) {
                                    UpieImageView.this.hp(i2, str2);
                                } else {
                                    AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                                    UpieImageView.this.hp(str);
                                }
                            }
                        });
                    } else {
                        UpieImageView.this.hp(strHp, str);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final String str, final int i2, final int i3) {
        Integer num = this.eb.get(str);
        if (num == null || num.intValue() != 1) {
            this.eb.put(str, 1);
            this.jx.hp(str, new com.byazt.wf.q() { // from class: com.byazt.vt.UpieImageView.5
                @Override // com.byazt.wf.q
                public void hp(Bitmap bitmap) {
                    UpieImageView.this.hp(bitmap, str, i2, i3);
                }

                @Override // com.byazt.wf.q
                public void hp() {
                    com.byazt.uah.l.hp().hp(UpieImageView.this.hp, str, new l.hp<Bitmap>() { // from class: com.byazt.vt.UpieImageView.5.1
                        @Override // com.byazt.uah.l.hp
                        public void hp(Bitmap bitmap) {
                            AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                            UpieImageView.this.hp(bitmap, str, i2, i3);
                        }

                        @Override // com.byazt.uah.l.hp
                        public void hp(int i4, String str2) {
                            UpieImageView.this.eb.put(str, 2);
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
            this.f26653a.put(str, bitmap);
            com.byazt.wb.l.hp(new Runnable() { // from class: com.byazt.vt.UpieImageView.6
                @Override // java.lang.Runnable
                public void run() {
                    if (UpieImageView.this.jx != null) {
                        UpieImageView.this.jx.invalidate();
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(int i2, String str) {
        hp hpVar = this.f26654e;
        if (hpVar != null) {
            hpVar.hp(i2, str);
        }
        com.byazt.wb.l.hp(new Runnable() { // from class: com.byazt.vt.UpieImageView.7
            @Override // java.lang.Runnable
            public void run() {
                if (UpieImageView.this.jx != null) {
                    UpieImageView upieImageView = UpieImageView.this;
                    upieImageView.removeView(upieImageView.jx);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(long j2) {
        if (this.f26654e != null) {
            HashMap map = new HashMap();
            map.put("duration", Long.valueOf(j2 - this.gu));
            this.f26654e.hp(map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final String str, final String str2) {
        this.f26655j = str;
        com.byazt.wb.l.hp(new Runnable() { // from class: com.byazt.vt.UpieImageView.8
            @Override // java.lang.Runnable
            public void run() {
                if (UpieImageView.this.jx != null) {
                    UpieImageView.this.jx.hp(str, str2);
                    UpieImageView.this.jx.hp(new Animator.AnimatorListener() { // from class: com.byazt.vt.UpieImageView.8.1
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
                            UpieImageView.this.jx.l(this);
                            UpieImageView.this.hp(SystemClock.elapsedRealtime());
                        }
                    });
                    UpieImageView.this.jx.hp();
                }
            }
        });
    }
}
