package com.byazt.na;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import com.byazt.na.a;
import com.bytedance.component.sdk.annotation.MainThread;
import com.bytedance.component.sdk.annotation.RawRes;
import com.kwad.sdk.core.response.model.SdkConfigData;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import org.json.JSONArray;

@com.byazt.kj.hp(hp = {0, 1, 2, 599})
/* loaded from: classes3.dex */
public class LottieAnimationView extends ImageView {
    public static final String hp = "LottieAnimationView";

    /* renamed from: l, reason: collision with root package name */
    public static final e<Throwable> f23367l = new e<Throwable>() { // from class: com.byazt.na.LottieAnimationView.1
        @Override // com.byazt.na.e
        public void hp(Throwable th) {
            if (com.byazt.ze.e.hp(th)) {
                com.byazt.ze.a.hp("Unable to load composition.", th);
            } else {
                com.byazt.ze.a.hp("Unable to parse composition:", th);
            }
        }
    };

    /* renamed from: a, reason: collision with root package name */
    public int f23368a;
    public String as;

    /* renamed from: b, reason: collision with root package name */
    public com.byazt.dr.l f23369b;
    public final com.byazt.dr.hp cx;

    /* renamed from: d, reason: collision with root package name */
    public Handler f23370d;
    public volatile boolean di;
    public List<com.byazt.at.a> dy;

    /* renamed from: e, reason: collision with root package name */
    public boolean f23371e;
    public final s eb;
    public com.byazt.tw.l ec;

    /* renamed from: f, reason: collision with root package name */
    public final Runnable f23372f;
    public boolean gu;
    public volatile int hq;

    /* renamed from: j, reason: collision with root package name */
    public final e<Throwable> f23373j;
    public boolean jl;
    public final e<a> jx;

    /* renamed from: k, reason: collision with root package name */
    public final Set<Object> f23374k;
    public JSONArray kg;
    public int ky;
    public com.byazt.at.jl lv;

    /* renamed from: m, reason: collision with root package name */
    public int f23375m;
    public int mp;

    /* renamed from: ms, reason: collision with root package name */
    public int f23376ms;

    /* renamed from: n, reason: collision with root package name */
    public final RectF f23377n;
    public final RectF ns;
    public com.byazt.at.a nu;

    /* renamed from: o, reason: collision with root package name */
    public int f23378o;
    public int pu;

    /* renamed from: q, reason: collision with root package name */
    @RawRes
    public int f23379q;

    /* renamed from: r, reason: collision with root package name */
    public List<com.byazt.at.jl> f23380r;
    public hp rz;

    /* renamed from: s, reason: collision with root package name */
    public String f23381s;
    public com.byazt.at.jx sz;

    /* renamed from: u, reason: collision with root package name */
    public a f23382u;
    public final Runnable ud;

    /* renamed from: v, reason: collision with root package name */
    public zy<a> f23383v;
    public final Handler vv;

    /* renamed from: w, reason: collision with root package name */
    public e<Throwable> f23384w;
    public long wv;
    public int xh;
    public final Handler xs;
    public l yr;
    public final Set<j> zy;

    @com.byazt.kj.hp(hp = {0, 1, 2, 1585})
    /* renamed from: com.byazt.na.LottieAnimationView$8, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass8 {
        public static final /* synthetic */ int[] hp;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            hp = iArr;
            try {
                iArr[ImageView.ScaleType.CENTER_CROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                hp[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                hp[ImageView.ScaleType.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                hp[ImageView.ScaleType.FIT_CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public interface hp {
        void hp(Map<String, Object> map);

        void l(Map<String, Object> map);
    }

    public enum j {
        SET_ANIMATION,
        SET_PROGRESS,
        SET_REPEAT_MODE,
        SET_REPEAT_COUNT,
        SET_IMAGE_ASSETS,
        PLAY_OPTION
    }

    @com.byazt.kj.hp(hp = {0, 1, 2, 1754})
    public static class jx extends View.BaseSavedState {
        public static final Parcelable.Creator<jx> CREATOR = new Parcelable.Creator<jx>() { // from class: com.byazt.na.LottieAnimationView.jx.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public jx createFromParcel(Parcel parcel) {
                return new jx(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public jx[] newArray(int i2) {
                return new jx[i2];
            }
        };

        /* renamed from: a, reason: collision with root package name */
        public int f23398a;
        public int eb;
        public String hp;

        /* renamed from: j, reason: collision with root package name */
        public boolean f23399j;
        public float jx;

        /* renamed from: l, reason: collision with root package name */
        public int f23400l;

        /* renamed from: w, reason: collision with root package name */
        public String f23401w;

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeString(this.hp);
            parcel.writeFloat(this.jx);
            parcel.writeInt(this.f23399j ? 1 : 0);
            parcel.writeString(this.f23401w);
            parcel.writeInt(this.f23398a);
            parcel.writeInt(this.eb);
        }

        public jx(Parcelable parcelable) {
            super(parcelable);
        }

        private jx(Parcel parcel) {
            super(parcel);
            this.hp = parcel.readString();
            this.jx = parcel.readFloat();
            this.f23399j = parcel.readInt() == 1;
            this.f23401w = parcel.readString();
            this.f23398a = parcel.readInt();
            this.eb = parcel.readInt();
        }
    }

    public interface l {
        void hp(String str, JSONArray jSONArray);
    }

    public LottieAnimationView(Context context) {
        super(context);
        this.jx = new e<a>() { // from class: com.byazt.na.LottieAnimationView.9
            @Override // com.byazt.na.e
            public void hp(a aVar) {
                a.l lVarJl = aVar.jl();
                com.byazt.wf.j jVar = lVarJl != null ? lVarJl.f23430s : null;
                if (jVar == null || com.byazt.wf.a.hp().jx()) {
                    LottieAnimationView.this.setComposition(aVar);
                } else {
                    LottieAnimationView.this.hp(aVar, jVar);
                }
            }
        };
        this.f23373j = new e<Throwable>() { // from class: com.byazt.na.LottieAnimationView.11
            @Override // com.byazt.na.e
            public void hp(Throwable th) {
                LottieAnimationView.this.hp(th);
            }
        };
        this.f23368a = 0;
        this.eb = new s(this);
        this.f23371e = false;
        this.gu = false;
        this.jl = true;
        this.zy = new HashSet();
        this.f23374k = new HashSet();
        this.xs = new Handler(Looper.getMainLooper());
        this.vv = new Handler(Looper.getMainLooper());
        this.f23377n = new RectF();
        this.ns = new RectF();
        this.cx = new com.byazt.dr.hp() { // from class: com.byazt.na.LottieAnimationView.12
            @Override // com.byazt.dr.hp
            public void hp() {
                LottieAnimationView lottieAnimationView = LottieAnimationView.this;
                lottieAnimationView.hp(lottieAnimationView.sz);
            }
        };
        this.di = false;
        this.f23378o = 0;
        this.wv = 0L;
        this.hq = 0;
        this.ud = new Runnable() { // from class: com.byazt.na.LottieAnimationView.6
            @Override // java.lang.Runnable
            public void run() {
                LottieAnimationView.this.v();
                if (LottieAnimationView.this.hq == 0) {
                    return;
                }
                if (LottieAnimationView.this.isShown()) {
                    if (LottieAnimationView.this.hq == 1) {
                        LottieAnimationView.this.hq = 2;
                        LottieAnimationView.this.xs();
                        return;
                    }
                    return;
                }
                if (LottieAnimationView.this.hq == 2) {
                    LottieAnimationView.this.hq = 1;
                    LottieAnimationView.this.vv();
                }
            }
        };
        this.f23372f = new Runnable() { // from class: com.byazt.na.LottieAnimationView.7
            @Override // java.lang.Runnable
            public void run() {
                int unused = LottieAnimationView.this.pu;
                int unused2 = LottieAnimationView.this.ky;
                if (LottieAnimationView.this.pu > LottieAnimationView.this.ky) {
                    LottieAnimationView.n(LottieAnimationView.this);
                    LottieAnimationView.this.ec();
                    LottieAnimationView.this.invalidate();
                    LottieAnimationView.this.xs();
                    return;
                }
                LottieAnimationView.this.hq = 0;
                LottieAnimationView.this.u();
                if (LottieAnimationView.this.xh < 0 || LottieAnimationView.this.f23376ms < 0) {
                    int unused3 = LottieAnimationView.this.xh;
                    int unused4 = LottieAnimationView.this.f23376ms;
                } else {
                    int unused5 = LottieAnimationView.this.xh;
                    LottieAnimationView.this.l();
                    LottieAnimationView lottieAnimationView = LottieAnimationView.this;
                    lottieAnimationView.setFrame(lottieAnimationView.xh);
                    LottieAnimationView.this.hp(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.na.LottieAnimationView.7.1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public void onAnimationUpdate(ValueAnimator valueAnimator) {
                            if (LottieAnimationView.this.getFrame() < LottieAnimationView.this.f23376ms - 1 || LottieAnimationView.this.getFrame() >= LottieAnimationView.this.f23376ms + 2) {
                                return;
                            }
                            int unused6 = LottieAnimationView.this.f23376ms;
                            LottieAnimationView.this.l(this);
                            LottieAnimationView.this.eb();
                        }
                    });
                }
                if ((!TextUtils.isEmpty(LottieAnimationView.this.as) || (LottieAnimationView.this.kg != null && LottieAnimationView.this.kg.length() > 0)) && LottieAnimationView.this.yr != null) {
                    LottieAnimationView.this.yr.hp(LottieAnimationView.this.as, LottieAnimationView.this.kg);
                }
            }
        };
        s();
    }

    private a.hp getArea() {
        a aVarD;
        s sVar = this.eb;
        if (sVar == null || (aVarD = sVar.d()) == null) {
            return null;
        }
        return aVarD.e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public a.l getGlobalConfig() {
        a aVarD;
        s sVar = this.eb;
        if (sVar == null || (aVarD = sVar.d()) == null) {
            return null;
        }
        return aVarD.jl();
    }

    private a.jx getGlobalEvent() {
        a aVarD;
        s sVar = this.eb;
        if (sVar == null || (aVarD = sVar.d()) == null) {
            return null;
        }
        return aVarD.gu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getPlayDelayedELExpressTimeS() {
        a aVarD;
        s sVar = this.eb;
        if (sVar == null || (aVarD = sVar.d()) == null) {
            return null;
        }
        return aVarD.q();
    }

    public static /* synthetic */ int j(LottieAnimationView lottieAnimationView) {
        int i2 = lottieAnimationView.f23378o;
        lottieAnimationView.f23378o = i2 + 1;
        return i2;
    }

    public static /* synthetic */ int n(LottieAnimationView lottieAnimationView) {
        int i2 = lottieAnimationView.pu;
        lottieAnimationView.pu = i2 - 1;
        return i2;
    }

    private void setCompositionTask(zy<a> zyVar) {
        this.zy.add(j.SET_ANIMATION);
        sz();
        zy();
        this.f23383v = zyVar.hp(this.jx).jx(this.f23373j);
    }

    public boolean getClipToCompositionBounds() {
        return this.eb.j();
    }

    public a getComposition() {
        return this.f23382u;
    }

    public long getDuration() {
        a aVar = this.f23382u;
        if (aVar != null) {
            return (long) aVar.w();
        }
        return 0L;
    }

    public int getFrame() {
        return this.eb.sz();
    }

    public String getImageAssetsFolder() {
        return this.eb.w();
    }

    public boolean getMaintainOriginalImageBounds() {
        return this.eb.a();
    }

    public float getMaxFrame() {
        return this.eb.u();
    }

    public float getMinFrame() {
        return this.eb.v();
    }

    public vv getPerformanceTracker() {
        return this.eb.q();
    }

    public float getProgress() {
        return this.eb.ud();
    }

    public ec getRenderMode() {
        return this.eb.eb();
    }

    public int getRepeatCount() {
        return this.eb.ns();
    }

    public int getRepeatMode() {
        return this.eb.n();
    }

    public float getSpeed() {
        return this.eb.xs();
    }

    public com.byazt.tw.l getVideoStats() {
        return this.ec;
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        Drawable drawable = getDrawable();
        if ((drawable instanceof s) && ((s) drawable).eb() == ec.SOFTWARE) {
            this.eb.invalidateSelf();
        }
    }

    @Override // android.widget.ImageView, android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable drawable2 = getDrawable();
        s sVar = this.eb;
        if (drawable2 == sVar) {
            super.invalidateDrawable(sVar);
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isInEditMode() || !this.gu) {
            return;
        }
        this.eb.jl();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        vv();
        u();
        Handler handler = this.f23370d;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        j();
        jx();
        a();
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        int i2;
        if (!(parcelable instanceof jx)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        jx jxVar = (jx) parcelable;
        super.onRestoreInstanceState(jxVar.getSuperState());
        this.f23381s = jxVar.hp;
        Set<j> set = this.zy;
        j jVar = j.SET_ANIMATION;
        if (!set.contains(jVar) && !TextUtils.isEmpty(this.f23381s)) {
            setAnimation(this.f23381s);
        }
        this.f23379q = jxVar.f23400l;
        if (!this.zy.contains(jVar) && (i2 = this.f23379q) != 0) {
            setAnimation(i2);
        }
        if (!this.zy.contains(j.SET_PROGRESS)) {
            hp(jxVar.jx, false);
        }
        if (!this.zy.contains(j.PLAY_OPTION) && jxVar.f23399j) {
            hp();
        }
        if (!this.zy.contains(j.SET_IMAGE_ASSETS)) {
            setImageAssetsFolder(jxVar.f23401w);
        }
        if (!this.zy.contains(j.SET_REPEAT_MODE)) {
            setRepeatMode(jxVar.f23398a);
        }
        if (this.zy.contains(j.SET_REPEAT_COUNT)) {
            return;
        }
        setRepeatCount(jxVar.eb);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        jx jxVar = new jx(super.onSaveInstanceState());
        jxVar.hp = this.f23381s;
        jxVar.f23400l = this.f23379q;
        jxVar.jx = this.eb.ud();
        jxVar.f23399j = this.eb.b();
        jxVar.f23401w = this.eb.w();
        jxVar.f23398a = this.eb.n();
        jxVar.eb = this.eb.ns();
        return jxVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0039, code lost:
    
        if (r4 <= (r3 + r0.f23415s)) goto L19;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r14) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.na.LottieAnimationView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void setAnimation(@RawRes int i2) {
        this.f23379q = i2;
        this.f23381s = null;
        setCompositionTask(hp(i2));
    }

    @Deprecated
    public void setAnimationFromJson(String str) {
        hp(str, (String) null);
    }

    public void setAnimationFromUrl(String str) {
        if (!this.di) {
            throw new IllegalStateException("必须先设置setImageAssetDelegate，再setAnimationFromUrl");
        }
        setCompositionTask(this.jl ? eb.hp(getContext(), str) : eb.hp(getContext(), str, (String) null));
    }

    public void setApplyingOpacityToLayersEnabled(boolean z2) {
        this.eb.w(z2);
    }

    public void setAutoPlay(boolean z2) {
        this.gu = z2;
    }

    public void setCacheComposition(boolean z2) {
        this.jl = z2;
    }

    public void setClipToCompositionBounds(boolean z2) {
        this.eb.hp(z2);
    }

    public void setComposition(a aVar) {
        boolean z2 = w.hp;
        this.eb.setCallback(this);
        this.f23382u = aVar;
        this.f23371e = true;
        boolean zHp = this.eb.hp(aVar, getContext().getApplicationContext());
        this.f23371e = false;
        if (getDrawable() != this.eb || zHp) {
            if (!zHp) {
                n();
            }
            onVisibilityChanged(this, getVisibility());
            requestLayout();
            Iterator<Object> it = this.f23374k.iterator();
            while (it.hasNext()) {
                it.next();
            }
        }
    }

    public void setDefaultFontFileExtension(String str) {
        this.eb.eb(str);
    }

    public void setEventMonitorProxy(com.byazt.dr.l lVar) {
        this.f23369b = lVar;
    }

    public void setFailureListener(e<Throwable> eVar) {
        this.f23384w = eVar;
    }

    public void setFallbackResource(int i2) {
        this.f23368a = i2;
    }

    public void setFontAssetDelegate(com.byazt.na.jx jxVar) {
        this.eb.hp(jxVar);
    }

    public void setFontMap(Map<String, Typeface> map) {
        this.eb.hp(map);
    }

    public void setFrame(int i2) {
        this.eb.jx(i2);
    }

    public void setIgnoreDisabledSystemAnimations(boolean z2) {
        this.eb.eb(z2);
    }

    public void setImageAssetDelegate(com.byazt.na.j jVar) {
        this.di = true;
        this.eb.hp(jVar);
    }

    public void setImageAssetsFolder(String str) {
        this.eb.hp(str);
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        zy();
        super.setImageBitmap(bitmap);
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        zy();
        super.setImageDrawable(drawable);
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i2) {
        zy();
        super.setImageResource(i2);
    }

    public void setLottieAnimListener(hp hpVar) {
        this.rz = hpVar;
    }

    public void setLottieClicklistener(l lVar) {
        this.yr = lVar;
    }

    public void setMaintainOriginalImageBounds(boolean z2) {
        this.eb.l(z2);
    }

    public void setMaxFrame(int i2) {
        this.eb.l(i2);
    }

    public void setMaxProgress(float f2) {
        this.eb.l(f2);
    }

    public void setMinAndMaxFrame(String str) {
        this.eb.j(str);
    }

    public void setMinFrame(int i2) {
        this.eb.hp(i2);
    }

    public void setMinProgress(float f2) {
        this.eb.hp(f2);
    }

    public void setOutlineMasksAndMattes(boolean z2) {
        this.eb.j(z2);
    }

    public void setPerformanceTrackingEnabled(boolean z2) {
        this.eb.jx(z2);
    }

    public void setProgress(float f2) {
        hp(f2, true);
    }

    public void setRenderMode(ec ecVar) {
        this.eb.hp(ecVar);
    }

    public void setRepeatCount(int i2) {
        this.zy.add(j.SET_REPEAT_COUNT);
        this.eb.w(i2);
    }

    public void setRepeatMode(int i2) {
        this.zy.add(j.SET_REPEAT_MODE);
        this.eb.j(i2);
    }

    public void setSafeMode(boolean z2) {
        this.eb.a(z2);
    }

    public void setSpeed(float f2) {
        this.eb.jx(f2);
    }

    public void setTextDelegate(sz szVar) {
        this.eb.hp(szVar);
    }

    public void setUseCompositionFrameRate(boolean z2) {
        this.eb.s(z2);
    }

    public void setVideoStats(com.byazt.tw.l lVar) {
        this.ec = lVar;
    }

    public void setViewDelegate(n nVar) {
        this.eb.hp(nVar);
    }

    @Override // android.view.View
    public void unscheduleDrawable(Drawable drawable) {
        s sVar;
        if (!this.f23371e && drawable == (sVar = this.eb) && sVar.cx()) {
            eb();
        } else if (!this.f23371e && (drawable instanceof s)) {
            s sVar2 = (s) drawable;
            if (sVar2.cx()) {
                sVar2.hq();
            }
        }
        super.unscheduleDrawable(drawable);
    }

    private void e() {
        hp(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.na.LottieAnimationView.14
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) throws NumberFormatException {
                Map<String, Object> map;
                int i2;
                Object animatedValue = valueAnimator.getAnimatedValue();
                if (!(animatedValue instanceof Float) || ((Float) animatedValue).floatValue() < 0.98f) {
                    return;
                }
                LottieAnimationView.j(LottieAnimationView.this);
                a.l globalConfig = LottieAnimationView.this.getGlobalConfig();
                if (globalConfig != null && (i2 = globalConfig.f23428j) > 0 && i2 > LottieAnimationView.this.f23378o) {
                    LottieAnimationView.this.k();
                    LottieAnimationView.this.hp();
                    LottieAnimationView.this.setProgress(0.0f);
                    return;
                }
                LottieAnimationView.this.l(this);
                if (LottieAnimationView.this.rz != null) {
                    if (globalConfig == null || (map = globalConfig.jx) == null) {
                        map = null;
                    }
                    LottieAnimationView.this.rz.l(map);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ec() {
        String[] strArrSplit;
        String[] strArrSplit2;
        List<com.byazt.at.a> list = this.dy;
        if (list == null || list.size() != 3) {
            com.byazt.at.a aVar = this.nu;
            if (aVar != null) {
                if (this.mp == 1) {
                    aVar.hp(l(this.pu));
                } else {
                    StringBuilder sb = new StringBuilder();
                    sb.append(this.pu);
                    aVar.hp(sb.toString());
                }
            }
        } else {
            String strL = l(this.pu);
            if (!TextUtils.isEmpty(strL) && (strArrSplit2 = strL.split(":")) != null && strArrSplit2.length == 3) {
                for (int i2 = 0; i2 < 3; i2++) {
                    com.byazt.at.a aVar2 = this.dy.get(i2);
                    if (aVar2 != null) {
                        aVar2.hp(strArrSplit2[i2]);
                    }
                }
            }
        }
        List<com.byazt.at.jl> list2 = this.f23380r;
        if (list2 == null || list2.size() != 3) {
            com.byazt.at.jl jlVar = this.lv;
            if (jlVar != null) {
                if (this.mp == 1) {
                    jlVar.hp(l(this.pu));
                    return;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append(this.pu);
                jlVar.hp(sb2.toString());
                return;
            }
            return;
        }
        String strL2 = l(this.pu);
        if (TextUtils.isEmpty(strL2) || (strArrSplit = strL2.split(":")) == null || strArrSplit.length != 3) {
            return;
        }
        for (int i3 = 0; i3 < 3; i3++) {
            com.byazt.at.jl jlVar2 = this.f23380r.get(i3);
            if (jlVar2 != null) {
                jlVar2.hp(strArrSplit[i3]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void gu() {
        final a.l globalConfig = getGlobalConfig();
        if (globalConfig == null || globalConfig.f23431w <= 0) {
            return;
        }
        if (TextUtils.isEmpty(globalConfig.f23427a) && globalConfig.eb == null) {
            return;
        }
        int maxFrame = globalConfig.f23431w;
        if (maxFrame > getMaxFrame()) {
            maxFrame = (int) getMaxFrame();
        }
        final float maxFrame2 = maxFrame / getMaxFrame();
        hp(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.na.LottieAnimationView.15
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                Object animatedValue = valueAnimator.getAnimatedValue();
                if (!(animatedValue instanceof Float) || ((Float) animatedValue).floatValue() < maxFrame2) {
                    return;
                }
                LottieAnimationView.this.l(this);
                if (LottieAnimationView.this.yr != null) {
                    l lVar = LottieAnimationView.this.yr;
                    a.l lVar2 = globalConfig;
                    lVar.hp(lVar2.f23427a, lVar2.eb);
                }
            }
        });
    }

    private void j(Matrix matrix, float f2, float f3, float f4, float f5) {
        if (f4 >= f2 || f5 >= f3) {
            if (f4 / f5 >= f2 / f3) {
                float f6 = f2 / f4;
                matrix.preScale(f6, f6);
                matrix.postTranslate(0.0f, (f3 - (f5 * f6)) / 2.0f);
                return;
            } else {
                float f7 = f3 / f5;
                matrix.preScale(f7, f7);
                matrix.postTranslate((f2 - (f4 * f7)) / 2.0f, 0.0f);
                return;
            }
        }
        if (f4 / f5 >= f2 / f3) {
            float f8 = f2 / f4;
            matrix.preScale(f8, f8);
            matrix.postTranslate(0.0f, (f3 - (f5 * f8)) / 2.0f);
        } else {
            float f9 = f3 / f5;
            matrix.preScale(f9, f9);
            matrix.postTranslate((f2 - (f4 * f9)) / 2.0f, 0.0f);
        }
    }

    private void jl() {
        hp(new Animator.AnimatorListener() { // from class: com.byazt.na.LottieAnimationView.16
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
                sz szVarDi;
                final long jElapsedRealtime = SystemClock.elapsedRealtime() - LottieAnimationView.this.wv;
                LottieAnimationView.this.l(this);
                String playDelayedELExpressTimeS = LottieAnimationView.this.getPlayDelayedELExpressTimeS();
                if (!TextUtils.isEmpty(playDelayedELExpressTimeS) && (szVarDi = LottieAnimationView.this.eb.di()) != null) {
                    try {
                        int i2 = Integer.parseInt(szVarDi.hp(playDelayedELExpressTimeS)) * 1000;
                        if (LottieAnimationView.this.wv > 0) {
                            long jElapsedRealtime2 = (LottieAnimationView.this.wv + i2) - SystemClock.elapsedRealtime();
                            if (jElapsedRealtime2 > 0) {
                                LottieAnimationView.this.eb();
                                LottieAnimationView.this.setVisibility(8);
                                if (LottieAnimationView.this.f23370d == null) {
                                    LottieAnimationView.this.f23370d = new Handler(Looper.getMainLooper());
                                }
                                LottieAnimationView.this.f23370d.removeCallbacksAndMessages(null);
                                LottieAnimationView.this.f23370d.postDelayed(new Runnable() { // from class: com.byazt.na.LottieAnimationView.16.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        LottieAnimationView.this.setVisibility(0);
                                        LottieAnimationView.this.hp();
                                        LottieAnimationView.this.hp(jElapsedRealtime);
                                    }
                                }, jElapsedRealtime2);
                                return;
                            }
                        }
                    } catch (NumberFormatException unused) {
                    }
                }
                LottieAnimationView.this.hp(jElapsedRealtime);
            }
        });
    }

    private void jx(Matrix matrix, float f2, float f3, float f4, float f5) {
        matrix.postTranslate((f2 - f4) / 2.0f, (f3 - f5) / 2.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() throws NumberFormatException {
        s sVar;
        final int i2;
        int i3;
        int i4;
        int i5;
        if (this.f23382u != null && (sVar = this.eb) != null) {
            sz szVarDi = sVar.di();
            final a.j jVarS = this.f23382u.s();
            if (jVarS != null && szVarDi != null && (i2 = jVarS.hp) >= 0) {
                int[] iArr = jVarS.f23423w;
                int i6 = -1;
                if (iArr == null || iArr.length < 2) {
                    i3 = -1;
                    i4 = -1;
                } else {
                    i4 = iArr[0];
                    i3 = iArr[1];
                }
                String strHp = szVarDi.hp(jVarS.jx);
                String strHp2 = szVarDi.hp(jVarS.f23419j);
                try {
                    i5 = Integer.parseInt(strHp);
                    try {
                        i6 = Integer.parseInt(strHp2);
                    } catch (NumberFormatException unused) {
                    }
                } catch (NumberFormatException unused2) {
                    i5 = -1;
                }
                if (jVarS.gu == 2 && jVarS.jl != null) {
                    this.dy = new ArrayList(3);
                    this.f23380r = new ArrayList(3);
                    for (String str : jVarS.jl) {
                        if (!TextUtils.isEmpty(str)) {
                            com.byazt.at.a aVarJ = j(str);
                            if (aVarJ != null) {
                                this.dy.add(aVarJ);
                            }
                            com.byazt.at.jl jlVarJx = jx(str);
                            if (jlVarJx != null) {
                                this.f23380r.add(jlVarJx);
                            }
                        }
                    }
                    if (this.dy.size() != 3 && this.f23380r.size() != 3) {
                        this.dy.size();
                        this.f23380r.size();
                        return;
                    }
                }
                if (!TextUtils.isEmpty(jVarS.f23420l)) {
                    this.nu = j(jVarS.f23420l);
                    this.lv = jx(jVarS.f23420l);
                }
                if (this.dy != null || this.nu != null || this.f23380r != null || this.lv != null) {
                    this.mp = jVarS.gu;
                    this.as = jVarS.f23417a;
                    this.kg = jVarS.eb;
                    this.f23375m = jVarS.zy;
                    this.pu = i5;
                    this.ky = i5 - i6;
                    this.xh = i4;
                    this.f23376ms = i3;
                    ec();
                    final int i7 = i6;
                    final int i8 = i5;
                    hp(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.na.LottieAnimationView.5
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public void onAnimationUpdate(ValueAnimator valueAnimator) {
                            JSONArray jSONArray;
                            if (LottieAnimationView.this.getFrame() < i2 - 1 || LottieAnimationView.this.getFrame() >= i2 + 2) {
                                return;
                            }
                            LottieAnimationView.this.getFrame();
                            LottieAnimationView.this.l(this);
                            if (i8 >= 0 && i7 >= 0) {
                                LottieAnimationView.this.hq = 2;
                                if (jVarS.f23418e == 1) {
                                    LottieAnimationView.this.v();
                                }
                                LottieAnimationView.this.xs();
                                if ((!TextUtils.isEmpty(jVarS.f23422s) || ((jSONArray = jVarS.f23421q) != null && jSONArray.length() > 0)) && LottieAnimationView.this.yr != null) {
                                    l lVar = LottieAnimationView.this.yr;
                                    a.j jVar = jVarS;
                                    lVar.hp(jVar.f23422s, jVar.f23421q);
                                }
                            }
                            if (LottieAnimationView.this.f23375m != 1) {
                                LottieAnimationView.this.eb();
                            }
                        }
                    });
                }
            }
        }
    }

    private void l(RectF rectF, RectF rectF2) {
        float width = getWidth();
        float height = getHeight();
        float fWidth = this.eb.getBounds().width();
        float fHeight = this.eb.getBounds().height();
        if (width == 0.0f || height == 0.0f || fWidth == 0.0f || fHeight == 0.0f) {
            return;
        }
        Matrix matrix = new Matrix();
        int i2 = AnonymousClass8.hp[getScaleType().ordinal()];
        if (i2 == 1) {
            hp(matrix, width, height, fWidth, fHeight);
        } else if (i2 == 2) {
            l(matrix, width, height, fWidth, fHeight);
        } else if (i2 == 3) {
            jx(matrix, width, height, fWidth, fHeight);
        } else if (i2 == 4) {
            j(matrix, width, height, fWidth, fHeight);
        }
        matrix.mapRect(rectF, rectF2);
    }

    private void n() {
        boolean zW = w();
        setImageDrawable(null);
        setImageDrawable(this.eb);
        if (zW) {
            this.eb.k();
        }
    }

    private void q() {
        hp(new Animator.AnimatorListener() { // from class: com.byazt.na.LottieAnimationView.13
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
            public void onAnimationStart(Animator animator) throws NumberFormatException {
                LottieAnimationView.this.l(this);
                LottieAnimationView.this.k();
                LottieAnimationView.this.gu();
            }
        });
    }

    private void s() {
        setSaveEnabled(false);
        this.jl = true;
        setFallbackResource(0);
        setImageAssetsFolder("");
        hp(0.0f, false);
        hp(false, getContext().getApplicationContext());
        setIgnoreDisabledSystemAnimations(false);
        this.eb.hp(Boolean.valueOf(com.byazt.ze.e.hp(getContext()) != 0.0f));
        q();
        e();
        jl();
    }

    private void sz() {
        this.f23382u = null;
        this.eb.gu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        this.vv.removeCallbacksAndMessages(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        u();
        this.vv.postDelayed(this.ud, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void vv() {
        this.xs.removeCallbacksAndMessages(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void xs() {
        vv();
        this.xs.postDelayed(this.f23372f, 1000L);
    }

    private void zy() {
        zy<a> zyVar = this.f23383v;
        if (zyVar != null) {
            zyVar.l(this.jx);
            this.f23383v.j(this.f23373j);
        }
    }

    @MainThread
    public void a() {
        this.zy.add(j.PLAY_OPTION);
        this.eb.wv();
    }

    @MainThread
    public void eb() {
        this.gu = false;
        this.eb.hq();
    }

    public void setMaxFrame(String str) {
        this.eb.jx(str);
    }

    public void setMinFrame(String str) {
        this.eb.l(str);
    }

    public boolean w() {
        return this.eb.cx();
    }

    private com.byazt.at.jl jx(String str) {
        com.byazt.at.j jVarJx;
        s sVar = this.eb;
        if (sVar == null || (jVarJx = sVar.jx()) == null) {
            return null;
        }
        return hp(jVarJx, str);
    }

    public void setAnimation(String str) {
        this.f23381s = str;
        this.f23379q = 0;
        setCompositionTask(l(str));
    }

    public void jx() {
        this.eb.vv();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final a aVar, com.byazt.wf.j jVar) {
        com.byazt.wf.a.hp().hp(jVar, new com.byazt.wf.eb() { // from class: com.byazt.na.LottieAnimationView.10
            @Override // com.byazt.wf.eb
            public void hp(com.byazt.wf.j jVar2) {
                LottieAnimationView.this.setComposition(aVar);
            }

            @Override // com.byazt.wf.eb
            public void hp(com.byazt.wf.j jVar2, int i2, String str) {
                LottieAnimationView.this.hp(i2, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(int i2, String str) {
        hp(new Exception("Lottie zip download failed, errorCode: " + i2 + ", errorDesc: " + str));
    }

    private com.byazt.at.a j(String str) {
        com.byazt.at.j jVarJx;
        s sVar = this.eb;
        if (sVar == null || (jVarJx = sVar.jx()) == null) {
            return null;
        }
        return l(jVarJx, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(Throwable th) {
        int i2 = this.f23368a;
        if (i2 != 0) {
            setImageResource(i2);
        }
        e<Throwable> eVar = this.f23384w;
        if (eVar == null) {
            eVar = f23367l;
        }
        eVar.hp(th);
    }

    private void l(Matrix matrix, float f2, float f3, float f4, float f5) {
        if (f4 < f2 && f5 < f3) {
            matrix.postTranslate((f2 - f4) / 2.0f, (f3 - f5) / 2.0f);
            return;
        }
        if (f4 / f5 >= f2 / f3) {
            float f6 = f2 / f4;
            matrix.preScale(f6, f6);
            matrix.postTranslate(0.0f, (f3 - (f5 * f6)) / 2.0f);
        } else {
            float f7 = f3 / f5;
            matrix.preScale(f7, f7);
            matrix.postTranslate((f2 - (f4 * f7)) / 2.0f, 0.0f);
        }
    }

    public void j() {
        this.eb.ec();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(long j2) {
        Map<String, Object> map;
        a.l globalConfig = getGlobalConfig();
        if (this.rz != null) {
            HashMap map2 = new HashMap();
            map2.put("duration", Long.valueOf(j2));
            if (globalConfig != null && (map = globalConfig.f23429l) != null && !map.isEmpty()) {
                map2.putAll(globalConfig.f23429l);
            }
            this.rz.hp(map2);
        }
    }

    private zy<a> l(final String str) {
        if (isInEditMode()) {
            return new zy<>(new Callable<jl<a>>() { // from class: com.byazt.na.LottieAnimationView.4
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public jl<a> call() throws Exception {
                    return LottieAnimationView.this.jl ? eb.jx(LottieAnimationView.this.getContext(), str) : eb.jx(LottieAnimationView.this.getContext(), str, null);
                }
            }, true);
        }
        return this.jl ? eb.l(getContext(), str) : eb.l(getContext(), str, (String) null);
    }

    private q hp(String str) {
        s sVar;
        a aVarD;
        Map<String, q> mapXs;
        if (TextUtils.isEmpty(str) || (sVar = this.eb) == null || (aVarD = sVar.d()) == null || (mapXs = aVarD.xs()) == null) {
            return null;
        }
        return mapXs.get(str);
    }

    public void l(String str, String str2) {
        if (this.di) {
            setCompositionTask(eb.hp(getContext(), str, str2));
            return;
        }
        throw new IllegalStateException("必须先设置setImageAssetDelegate，再setAnimationFromUrl");
    }

    private com.byazt.at.a l(com.byazt.at.j jVar, String str) {
        for (com.byazt.at.jx jxVar : jVar.k()) {
            if (jxVar instanceof com.byazt.at.j) {
                com.byazt.at.a aVarL = l((com.byazt.at.j) jxVar, str);
                if (aVarL != null) {
                    return aVarL;
                }
            } else if (TextUtils.equals(str, jxVar.gu()) && (jxVar instanceof com.byazt.at.a)) {
                return (com.byazt.at.a) jxVar;
            }
        }
        return null;
    }

    private void hp(int[][] iArr) {
        if (iArr == null || iArr.length == 0) {
            return;
        }
        try {
            int[] iArr2 = iArr[0];
            int i2 = iArr2[0];
            final int i3 = iArr2[1];
            if (i2 < 0 || i3 < 0) {
                return;
            }
            vv();
            hp();
            setFrame(i2);
            hp(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.na.LottieAnimationView.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    if (LottieAnimationView.this.getFrame() < i3 - 1 || LottieAnimationView.this.getFrame() >= i3 + 2) {
                        return;
                    }
                    LottieAnimationView.this.getFrame();
                    LottieAnimationView.this.l(this);
                    LottieAnimationView.this.eb();
                }
            });
        } catch (Throwable unused) {
        }
    }

    private String l(int i2) {
        int i3 = i2 / SdkConfigData.DEFAULT_REQUEST_INTERVAL;
        int i4 = i2 % SdkConfigData.DEFAULT_REQUEST_INTERVAL;
        int i5 = i4 / 60;
        int i6 = i4 % 60;
        StringBuilder sb = new StringBuilder();
        if (i3 < 10) {
            sb.append("0");
        }
        sb.append(i3);
        sb.append(":");
        if (i5 < 10) {
            sb.append("0");
        }
        sb.append(i5);
        sb.append(":");
        if (i6 < 10) {
            sb.append("0");
        }
        sb.append(i6);
        return sb.toString();
    }

    private void hp(a.hp hpVar) {
        hpVar.f23416w = com.byazt.ze.e.hp("x", hpVar.hp, getWidth());
        hpVar.f23412a = com.byazt.ze.e.hp("y", hpVar.f23414l, getHeight());
        hpVar.eb = com.byazt.ze.e.hp((String) null, hpVar.jx, getWidth());
        hpVar.f23415s = com.byazt.ze.e.hp((String) null, hpVar.f23413j, getHeight());
    }

    private boolean hp(q qVar) {
        if (qVar != null) {
            if (!TextUtils.isEmpty(qVar.eb())) {
                return true;
            }
            if (qVar.q() != null && qVar.q().length() > 0) {
                return true;
            }
            if ((qVar.s() != null && qVar.s().length > 0) || !TextUtils.isEmpty(qVar.u())) {
                return true;
            }
        }
        a.jx globalEvent = getGlobalEvent();
        if (globalEvent == null) {
            return false;
        }
        if (!TextUtils.isEmpty(globalEvent.hp)) {
            return true;
        }
        JSONArray jSONArray = globalEvent.jx;
        if (jSONArray != null && jSONArray.length() > 0) {
            return true;
        }
        int[][] iArr = globalEvent.f23425l;
        return (iArr != null && iArr.length > 0) || !TextUtils.isEmpty(globalEvent.f23426w);
    }

    @MainThread
    public void l() {
        this.zy.add(j.PLAY_OPTION);
        this.eb.k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(com.byazt.at.jx jxVar) {
        int[][] iArr;
        int[][] iArrS;
        if (jxVar == null) {
            return;
        }
        String strGu = jxVar.gu();
        if (strGu != null && strGu.startsWith("CSJCLOSE")) {
            vv();
        }
        q qVarHp = hp(jxVar.eb());
        if (qVarHp != null && (iArrS = qVarHp.s()) != null) {
            hp(iArrS);
        } else {
            if (getGlobalEvent() == null || (iArr = getGlobalEvent().f23425l) == null) {
                return;
            }
            hp(iArr);
        }
    }

    public void l(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.eb.l(animatorUpdateListener);
    }

    public void l(Animator.AnimatorListener animatorListener) {
        this.eb.l(animatorListener);
    }

    private com.byazt.at.jx hp(MotionEvent motionEvent) {
        com.byazt.at.j jVarJx;
        s sVar = this.eb;
        if (sVar == null || (jVarJx = sVar.jx()) == null) {
            return null;
        }
        return hp(jVarJx, motionEvent);
    }

    private com.byazt.at.jx hp(com.byazt.at.j jVar, MotionEvent motionEvent) {
        com.byazt.at.jx jxVarHp;
        for (com.byazt.at.jx jxVar : jVar.k()) {
            if (jxVar instanceof com.byazt.at.j) {
                if (jxVar.e() && jxVar.s() > 0.0f) {
                    RectF rectF = new RectF();
                    jxVar.hp(rectF, jxVar.a(), true);
                    if (rectF.width() >= 3.0f && rectF.height() >= 3.0f && (jxVarHp = hp((com.byazt.at.j) jxVar, motionEvent)) != null) {
                        return jxVarHp;
                    }
                }
            } else if (jxVar.e() && jxVar.s() > 0.0f) {
                RectF rectF2 = new RectF();
                s sVar = this.eb;
                if (sVar != null && sVar.s()) {
                    jxVar.hp(rectF2, jxVar.a(), true);
                    RectF rectFNu = this.eb.nu();
                    if (rectFNu != null) {
                        hp(rectF2, rectFNu);
                    }
                } else {
                    RectF rectF3 = new RectF();
                    jxVar.hp(rectF3, jxVar.a(), true);
                    l(rectF2, rectF3);
                }
                if (hp(motionEvent, rectF2)) {
                    return jxVar;
                }
            }
        }
        return null;
    }

    private boolean hp(MotionEvent motionEvent, RectF rectF) {
        if (motionEvent != null && rectF != null) {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            if (x2 >= rectF.left && x2 <= rectF.right && y2 >= rectF.top && y2 <= rectF.bottom) {
                return true;
            }
        }
        return false;
    }

    private void hp(RectF rectF, RectF rectF2) {
        float width = getWidth();
        float height = getHeight();
        float fWidth = rectF2.width();
        float fHeight = rectF2.height();
        if (width == 0.0f || height == 0.0f || fWidth == 0.0f || fHeight == 0.0f) {
            return;
        }
        Matrix matrix = new Matrix();
        int i2 = AnonymousClass8.hp[getScaleType().ordinal()];
        if (i2 == 1) {
            hp(matrix, width, height, fWidth, fHeight);
        } else if (i2 == 2) {
            l(matrix, width, height, fWidth, fHeight);
        } else if (i2 == 3) {
            jx(matrix, width, height, fWidth, fHeight);
        } else if (i2 == 4) {
            j(matrix, width, height, fWidth, fHeight);
        }
        matrix.mapRect(rectF);
    }

    private void hp(Matrix matrix, float f2, float f3, float f4, float f5) {
        if (f4 / f5 >= f2 / f3) {
            float f6 = f3 / f5;
            matrix.preScale(f6, f6);
            matrix.postTranslate(-(((f4 * f6) - f2) / 2.0f), 0.0f);
        } else {
            float f7 = f2 / f4;
            matrix.preScale(f7, f7);
            matrix.postTranslate(0.0f, -(((f5 * f7) - f3) / 2.0f));
        }
    }

    public void hp(boolean z2, Context context) {
        this.eb.hp(z2, context);
    }

    private zy<a> hp(@RawRes final int i2) {
        if (isInEditMode()) {
            return new zy<>(new Callable<jl<a>>() { // from class: com.byazt.na.LottieAnimationView.3
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public jl<a> call() throws Exception {
                    return LottieAnimationView.this.jl ? eb.l(LottieAnimationView.this.getContext(), i2) : eb.l(LottieAnimationView.this.getContext(), i2, (String) null);
                }
            }, true);
        }
        return this.jl ? eb.hp(getContext(), i2) : eb.hp(getContext(), i2, (String) null);
    }

    public void hp(String str, String str2) {
        if (this.di) {
            hp(new ByteArrayInputStream(str.getBytes()), str2);
            return;
        }
        throw new IllegalStateException("必须先设置setImageAssetDelegate，再setAnimationFromJson");
    }

    public void hp(InputStream inputStream, String str) {
        setCompositionTask(eb.hp(inputStream, str));
    }

    private com.byazt.at.jl hp(com.byazt.at.j jVar, String str) {
        for (com.byazt.at.jx jxVar : jVar.k()) {
            if (jxVar instanceof com.byazt.at.j) {
                com.byazt.at.jl jlVarHp = hp((com.byazt.at.j) jxVar, str);
                if (jlVarHp != null) {
                    return jlVarHp;
                }
            } else if (TextUtils.equals(str, jxVar.gu()) && (jxVar instanceof com.byazt.at.jl)) {
                return (com.byazt.at.jl) jxVar;
            }
        }
        return null;
    }

    @MainThread
    public void hp() {
        if (this.wv == 0) {
            this.wv = SystemClock.elapsedRealtime();
        }
        this.zy.add(j.PLAY_OPTION);
        this.eb.jl();
    }

    public void hp(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.eb.hp(animatorUpdateListener);
    }

    public void hp(Animator.AnimatorListener animatorListener) {
        this.eb.hp(animatorListener);
    }

    @Deprecated
    public void hp(boolean z2) {
        this.eb.w(z2 ? -1 : 0);
    }

    public Bitmap hp(String str, Bitmap bitmap) {
        return this.eb.hp(str, bitmap);
    }

    private void hp(float f2, boolean z2) {
        if (z2) {
            this.zy.add(j.SET_PROGRESS);
        }
        this.eb.j(f2);
    }

    public void hp(String str, com.byazt.wf.q qVar) {
        if (this.f23382u != null) {
            com.byazt.wf.hp.hp().hp(this.f23382u.jl(), str, qVar);
        } else if (qVar != null) {
            qVar.hp();
        }
    }
}
