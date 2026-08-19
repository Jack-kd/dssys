package com.ubix.ssp.ad;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.qq.e.comm.managers.setting.GlobalSetting;
import com.ubix.ssp.ad.d.l;
import com.ubix.ssp.ad.e.a0.r;
import com.ubix.ssp.ad.e.a0.s;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.e.h;
import com.ubix.ssp.ad.e.k;
import com.ubix.ssp.ad.e.n;
import com.ubix.ssp.ad.e.o;
import java.util.HashMap;
import java.util.Random;

/* loaded from: classes5.dex */
public abstract class b extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    protected HashMap<String, String> f45638a;

    /* renamed from: b, reason: collision with root package name */
    protected int f45639b;

    /* renamed from: c, reason: collision with root package name */
    protected boolean f45640c;

    /* renamed from: d, reason: collision with root package name */
    protected boolean f45641d;

    /* renamed from: e, reason: collision with root package name */
    protected boolean f45642e;

    /* renamed from: f, reason: collision with root package name */
    protected s f45643f;

    /* renamed from: g, reason: collision with root package name */
    protected double f45644g;

    /* renamed from: h, reason: collision with root package name */
    protected double f45645h;

    /* renamed from: i, reason: collision with root package name */
    protected int f45646i;

    /* renamed from: j, reason: collision with root package name */
    private ValueAnimator f45647j;

    /* renamed from: k, reason: collision with root package name */
    protected float f45648k;

    public class a implements h.c {
        public a() {
        }

        @Override // com.ubix.ssp.ad.e.h.c
        public void a() {
            b.this.f45638a.put("__CLICK_TRIGGER__", GlobalSetting.UNIFIED_INTERSTITIAL_HS_AD);
            b.this.f45638a.put("__CLICK_AREA__", GlobalSetting.UNIFIED_INTERSTITIAL_HS_AD);
            HashMap<String, String> map = b.this.f45638a;
            map.put("__RAW_UP_X__", map.get("__RAW_DOWN_X__"));
            HashMap<String, String> map2 = b.this.f45638a;
            map2.put("__RAW_UP_Y__", map2.get("__RAW_DOWN_Y__"));
            HashMap<String, String> map3 = b.this.f45638a;
            map3.put("__UP_X__", map3.get("__DOWN_X__"));
            HashMap<String, String> map4 = b.this.f45638a;
            map4.put("__UP_Y__", map4.get("__DOWN_Y__"));
            if (b.this.getInterface() != null) {
                com.ubix.ssp.ad.g.k.b bVar = b.this.getInterface();
                b bVar2 = b.this;
                bVar.b(0, bVar2, bVar2.f45638a);
            }
        }
    }

    /* renamed from: com.ubix.ssp.ad.b$b, reason: collision with other inner class name */
    public class RunnableC0783b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.e.c f45650a;

        public RunnableC0783b(com.ubix.ssp.ad.e.c cVar) {
            this.f45650a = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.f45638a.put("__BUTTON_AREA__", this.f45650a.getLeft() + "_" + this.f45650a.getTop() + "_" + this.f45650a.getRight() + "_" + this.f45650a.getBottom());
        }
    }

    public class c implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f45652a;

        public c(View view) {
            this.f45652a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (this.f45652a.findViewById(910101) instanceof ImageView) {
                    b.this.a((ImageView) this.f45652a.findViewById(910101));
                } else {
                    b.this.a((ImageView) null);
                }
            } catch (Exception unused) {
            }
        }
    }

    public class d implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ e f45654a;

        public d(e eVar) {
            this.f45654a = eVar;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (Integer.parseInt(valueAnimator.getAnimatedValue() + "") == 0) {
                e eVar = this.f45654a;
                if (eVar != null) {
                    b bVar = b.this;
                    eVar.a(bVar.f45639b, bVar.f45638a);
                }
                b.this.f45647j = null;
            }
        }
    }

    public interface e {
        void a(int i2, HashMap<String, String> map);
    }

    public b(Context context) {
        super(context);
        this.f45638a = new HashMap<>();
        this.f45641d = false;
        this.f45642e = false;
        this.f45644g = -1.0d;
        this.f45645h = -1.0d;
        this.f45646i = 5;
        this.f45648k = 0.0f;
    }

    private void p() {
        try {
            int iNextInt = new Random().nextInt(MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME) + 100;
            int iNextInt2 = new Random().nextInt(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK) + 100;
            int iNextInt3 = new Random().nextInt(MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME) + 100;
            int iNextInt4 = new Random().nextInt(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK) + 100;
            this.f45638a.put("__DOWN_X__", iNextInt + "");
            this.f45638a.put("__DOWN_Y__", iNextInt2 + "");
            this.f45638a.put("__RAW_DOWN_X__", iNextInt3 + "");
            this.f45638a.put("__RAW_DOWN_Y__", iNextInt4 + "");
            this.f45638a.put("__UP_X__", (new Random().nextInt(100) + iNextInt) + "");
            this.f45638a.put("__UP_Y__", (new Random().nextInt(100) + iNextInt2) + "");
            this.f45638a.put("__WIDTH__", getWidth() + "");
            this.f45638a.put("__HEIGHT__", getHeight() + "");
            this.f45638a.put("__RAW_UP_X__", (iNextInt3 + new Random().nextInt(100)) + "");
            this.f45638a.put("__RAW_UP_Y__", (iNextInt4 + new Random().nextInt(100)) + "");
            this.f45638a.put("__CLICK_XY__", iNextInt + "_" + iNextInt2);
        } catch (Exception unused) {
        }
    }

    public abstract void a(Context context, Bundle bundle);

    public void b(int i2, double d2, int i3) {
        a(i2, false, d2, i3);
    }

    public abstract boolean b(Bundle bundle);

    public void c(int i2, int i3) {
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        a(motionEvent);
        return super.dispatchTouchEvent(motionEvent);
    }

    public HashMap<String, String> getClickMap() {
        u.b(this.f45638a.toString());
        if (TextUtils.isEmpty(this.f45638a.get("__DOWN_X__"))) {
            p();
        }
        return this.f45638a;
    }

    public abstract com.ubix.ssp.ad.g.k.b getInterface();

    public View h() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(r.b(24.0f), r.b(13.0f));
        layoutParams.addRule(9);
        layoutParams.addRule(10);
        layoutParams.setMargins(r.b(10.0f), r.b(23.0f), 0, 0);
        TextView textView = new TextView(getContext());
        textView.setGravity(17);
        textView.setBackground(com.ubix.ssp.ad.e.a0.c.a(getContext(), Integer.MIN_VALUE, 72));
        textView.setTextColor(-1);
        textView.setTextSize(13.0f);
        textView.setText("反馈");
        textView.setId(920301);
        textView.setLayoutParams(layoutParams);
        return textView;
    }

    public void i() {
        try {
            ValueAnimator valueAnimator = this.f45647j;
            if (valueAnimator == null) {
                return;
            }
            if (valueAnimator.isRunning()) {
                this.f45647j.cancel();
            }
            this.f45647j = null;
        } catch (Exception unused) {
        }
    }

    public void j() {
    }

    public void k() {
        this.f45640c = true;
    }

    public boolean l() {
        return this.f45640c;
    }

    public boolean m() {
        return this.f45641d;
    }

    public boolean n() {
        return false;
    }

    public void o() {
        this.f45640c = false;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        a(motionEvent);
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        if (i2 == 0) {
            ValueAnimator valueAnimator = this.f45647j;
            if (valueAnimator == null || !valueAnimator.isRunning()) {
                return;
            }
            this.f45647j.pause();
            return;
        }
        ValueAnimator valueAnimator2 = this.f45647j;
        if (valueAnimator2 == null || !valueAnimator2.isPaused()) {
            return;
        }
        this.f45647j.resume();
    }

    public void q() {
    }

    public ViewGroup r() {
        return this;
    }

    public abstract <T extends com.ubix.ssp.ad.g.k.b> void setInnerListener(T t2);

    public void setShakeSensor(View view) {
    }

    public void setShakeTrigger(boolean z2) {
        this.f45641d = z2;
    }

    public void setShowCloseBtnDelay(int i2) {
    }

    public void setSlideTrigger(boolean z2) {
        this.f45642e = z2;
    }

    public static b a(Context context, Bundle bundle, int i2, boolean z2) {
        b bVar = null;
        try {
            Class<? extends b> clsA = a(i2, z2);
            if (clsA == null) {
                return null;
            }
            b bVarNewInstance = clsA.getConstructor(Context.class).newInstance(context);
            try {
                bVarNewInstance.a(context, bundle);
                return bVarNewInstance;
            } catch (Throwable th) {
                th = th;
                bVar = bVarNewInstance;
                th.printStackTrace();
                return bVar;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static Class<? extends b> a(int i2, boolean z2) {
        if (i2 == 1) {
            return com.ubix.ssp.ad.j.a.class;
        }
        if (i2 == 2) {
            return z2 ? com.ubix.ssp.ad.i.a.class : com.ubix.ssp.ad.f.a.class;
        }
        if (i2 == 3) {
            return com.ubix.ssp.ad.f.a.class;
        }
        if (i2 == 4) {
            return com.ubix.ssp.ad.c.a.class;
        }
        if (i2 == 6) {
            return com.ubix.ssp.ad.h.a.class;
        }
        if (i2 != 9) {
            return null;
        }
        return com.ubix.ssp.ad.k.a.class;
    }

    public void a(int i2, double d2, int i3) {
        this.f45646i = i3;
        this.f45644g = d2;
        com.ubix.ssp.ad.e.e eVar = new com.ubix.ssp.ad.e.e(getContext());
        eVar.setId(910401);
        r().addView(eVar, r().getChildCount() <= 2 ? 0 : 2);
        q();
        eVar.a(i2 == 132);
        a(eVar);
    }

    public void a(int i2, int i3, int i4, double d2, int i5, int[] iArr, int i6, String str, String str2, int i7, double d3, boolean z2, boolean z3) {
    }

    public void a(int i2, e eVar) {
        if (this.f45647j != null) {
            return;
        }
        this.f45638a.put("__CLICK_AREA__", "6");
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(99, 0);
        this.f45647j = valueAnimatorOfInt;
        valueAnimatorOfInt.setDuration(i2);
        this.f45647j.setInterpolator(new LinearInterpolator());
        this.f45647j.addUpdateListener(new d(eVar));
        this.f45647j.start();
    }

    public void a(int i2, String str, String str2, double d2, int i3) {
        this.f45645h = d2;
        this.f45646i = i3;
        com.ubix.ssp.ad.e.r rVar = new com.ubix.ssp.ad.e.r(getContext());
        rVar.setId(910501);
        rVar.a(str, str2);
        r().addView(rVar, r().getChildCount() <= 2 ? 0 : 2);
        q();
        rVar.b();
    }

    public void a(int i2, String str, String str2, boolean z2) {
        boolean z3;
        try {
            com.ubix.ssp.ad.e.c cVar = new com.ubix.ssp.ad.e.c(getContext(), z2);
            cVar.setId(910301);
            String str3 = "点击此处";
            String str4 = !TextUtils.isEmpty(str) ? str : "点击此处";
            if ((i2 & 2) == 2) {
                if (TextUtils.isEmpty(str)) {
                    str4 = z2 ? "摇动手机" : "摇动或点击";
                }
                z3 = false;
            } else {
                z3 = true;
            }
            if ((i2 & 4) == 4) {
                if (TextUtils.isEmpty(str)) {
                    str4 = z2 ? "向上滑动" : "上滑或点击";
                }
                z3 = false;
            }
            if ((i2 & 32) == 32) {
                if (TextUtils.isEmpty(str)) {
                    str4 = i2 == 36 ? "滑动或点击" : "滑动";
                }
                z3 = false;
            }
            if ((i2 & 128) == 128) {
                if (!TextUtils.isEmpty(str)) {
                    str3 = str4;
                } else if (i2 == 132) {
                    str3 = "向上滑动或点击";
                }
                str4 = str3;
                z3 = false;
            }
            cVar.setTitle(str4);
            cVar.setSubTitle(str2);
            if (z2) {
                cVar.setBackgroundColor(0);
            } else {
                cVar.setBackground(com.ubix.ssp.ad.e.a0.c.a(getContext(), Color.parseColor("#99000000"), MediaPlayer.MEDIA_PLAYER_OPTION_UPDATE_TIMESTAMP_MODE, -1));
                a(cVar);
            }
            r().addView(cVar);
            cVar.setVisibility(0);
            cVar.setNeedWave(z3);
            post(new RunnableC0783b(cVar));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void a(int i2, String str, String str2, boolean z2, double d2, int i3) {
        this.f45644g = d2;
        this.f45646i = i3;
        com.ubix.ssp.ad.e.d dVar = new com.ubix.ssp.ad.e.d(getContext(), z2);
        boolean z3 = i2 == 68;
        if (TextUtils.isEmpty(str)) {
            str = z3 ? "向上滑动或点击" : "点击此处";
        }
        dVar.setTitle(str);
        if (!TextUtils.isEmpty(str2)) {
            dVar.setSubTitle(str2);
        }
        dVar.a(z3);
        dVar.setId(910701);
        r().addView(dVar, r().getChildCount() > 2 ? 2 : 0);
        q();
    }

    public void a(int i2, boolean z2, double d2, int i3) {
        this.f45645h = d2;
        this.f45644g = d2;
        this.f45646i = i3;
        o oVar = new o(getContext(), z2);
        oVar.a();
        oVar.setId(910601);
        r().addView(oVar);
        q();
    }

    public void a(Bundle bundle) {
    }

    public void a(MotionEvent motionEvent) {
        HashMap<String, String> map;
        String str;
        String str2;
        try {
            if (motionEvent.getAction() == 0) {
                this.f45638a.put("__DOWN_X__", motionEvent.getX() + "");
                this.f45638a.put("__DOWN_Y__", motionEvent.getY() + "");
                this.f45638a.put("__RAW_DOWN_X__", motionEvent.getRawX() + "");
                map = this.f45638a;
                str = motionEvent.getRawY() + "";
                str2 = "__RAW_DOWN_Y__";
            } else {
                if (motionEvent.getAction() != 1) {
                    return;
                }
                this.f45638a.put("__UP_X__", motionEvent.getX() + "");
                this.f45638a.put("__UP_Y__", motionEvent.getY() + "");
                this.f45638a.put("__WIDTH__", getWidth() + "");
                this.f45638a.put("__HEIGHT__", getHeight() + "");
                this.f45638a.put("__RAW_UP_X__", motionEvent.getRawX() + "");
                this.f45638a.put("__RAW_UP_Y__", motionEvent.getRawY() + "");
                map = this.f45638a;
                str = motionEvent.getX() + "_" + motionEvent.getY();
                str2 = "__CLICK_XY__";
            }
            map.put(str2, str);
        } catch (Exception unused) {
        }
    }

    public void a(View view) {
    }

    public void a(ViewGroup viewGroup, View view, boolean z2, int i2, boolean z3, double d2, int[] iArr, int i3, int i4, double d3, boolean z4, boolean z5) {
        a(viewGroup, view, z2, i2, false, z3, d2, iArr, i3, i4, d3, z4, z5);
    }

    public void a(ViewGroup viewGroup, View view, boolean z2, int i2, boolean z3, boolean z4, double d2, int[] iArr, int i3, int i4, double d3, boolean z5, boolean z6) {
        try {
            this.f45643f = i2 == 1 ? new s(getContext(), d2, iArr, i4, d3, z5, z6) : new s(getContext(), d2, iArr[0], d3);
            if (!z3 && !z2) {
                view.setVisibility(0);
            }
            if (viewGroup == null) {
                addView(view);
            } else {
                viewGroup.addView(view);
            }
            postDelayed(new c(view), i3);
            if (z4 || !(view.findViewById(910101) instanceof ImageView)) {
                return;
            }
            this.f45643f.a((ImageView) view.findViewById(910101));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void a(ImageView imageView) {
        setShakeSensor(imageView);
    }

    public void a(String str, String str2) {
    }

    public void a(String str, String str2, String str3, String str4, String str5, String str6, long j2) {
    }

    public void a(boolean z2, int i2, int i3, int i4, boolean z3, boolean z4, double d2, int[] iArr, int i5, int i6, double d3, boolean z5, boolean z6) {
        try {
            LinearLayout linearLayout = new LinearLayout(getContext());
            linearLayout.setId(910100);
            k kVar = new k(getContext(), i2, i4, z3, z4);
            kVar.setId(910104);
            linearLayout.setVisibility(4);
            linearLayout.setGravity(17);
            linearLayout.addView(kVar, new LinearLayout.LayoutParams(z2 ? 0 : -2, z2 ? 0 : -2));
            boolean z7 = false;
            ViewGroup viewGroupR = r();
            if (i2 != 0) {
                z7 = true;
            }
            a(viewGroupR, linearLayout, z2, i3, z7, d2, iArr, i5, i6, d3, z5, z6);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void a(boolean z2, boolean z3, double d2, int i2) {
        try {
            this.f45646i = i2;
            this.f45644g = d2;
            LinearLayout linearLayout = new LinearLayout(getContext());
            linearLayout.setId(910200);
            linearLayout.addView(new n(getContext(), z2, z3));
            r().addView(linearLayout);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x00df, code lost:
    
        if (java.lang.Math.toDegrees(java.lang.Math.atan(java.lang.Math.abs(r2 / r5))) <= r16.f45646i) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0124, code lost:
    
        if (r7 <= r16.f45646i) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0142, code lost:
    
        if (java.lang.Math.toDegrees(java.lang.Math.atan(java.lang.Math.abs(r5 / r2))) <= r16.f45646i) goto L75;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0074  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(int r17, android.view.MotionEvent r18) {
        /*
            Method dump skipped, instructions count: 338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.b.a(int, android.view.MotionEvent):boolean");
    }

    public boolean a(l.a aVar) {
        try {
            ViewGroup viewGroupR = r();
            if (viewGroupR == null) {
                return false;
            }
            h hVar = new h(getContext());
            hVar.setClickable(aVar.f());
            hVar.setMaxStage(3);
            hVar.setDuration(aVar.a());
            if (aVar.h()) {
                hVar.setResource(aVar.c());
            } else {
                if (TextUtils.isEmpty(aVar.e())) {
                    return false;
                }
                hVar.setResource(aVar.e());
            }
            viewGroupR.addView(hVar, new ViewGroup.LayoutParams(-1, -1));
            q();
            hVar.e();
            hVar.setItemClickListener(new a());
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }
}
