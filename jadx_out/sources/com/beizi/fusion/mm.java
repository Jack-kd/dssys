package com.beizi.fusion;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.widget.TwistView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes2.dex */
public class mm {

    /* renamed from: q, reason: collision with root package name */
    private static final String f15108q = "mm";

    /* renamed from: r, reason: collision with root package name */
    private static SensorManager f15109r;

    /* renamed from: s, reason: collision with root package name */
    private static String f15110s;

    /* renamed from: t, reason: collision with root package name */
    private static String f15111t;

    /* renamed from: u, reason: collision with root package name */
    private static String f15112u;

    /* renamed from: v, reason: collision with root package name */
    private static String f15113v;

    /* renamed from: a, reason: collision with root package name */
    private Context f15114a;

    /* renamed from: h, reason: collision with root package name */
    private long f15121h;

    /* renamed from: i, reason: collision with root package name */
    private double f15122i;

    /* renamed from: j, reason: collision with root package name */
    private double f15123j;

    /* renamed from: k, reason: collision with root package name */
    private TwistView f15124k;

    /* renamed from: o, reason: collision with root package name */
    private Boolean f15128o;

    /* renamed from: b, reason: collision with root package name */
    private long f15115b = 0;

    /* renamed from: c, reason: collision with root package name */
    private double f15116c = -999.0d;

    /* renamed from: d, reason: collision with root package name */
    private double f15117d = -999.0d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f15118e = false;

    /* renamed from: f, reason: collision with root package name */
    private boolean f15119f = false;

    /* renamed from: g, reason: collision with root package name */
    private int f15120g = 0;

    /* renamed from: l, reason: collision with root package name */
    private boolean f15125l = false;

    /* renamed from: m, reason: collision with root package name */
    private boolean f15126m = false;

    /* renamed from: n, reason: collision with root package name */
    private e f15127n = null;

    /* renamed from: p, reason: collision with root package name */
    private final SensorEventListener f15129p = new a();

    public class a implements SensorEventListener {
        public a() {
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i2) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            try {
                if (System.currentTimeMillis() - mm.this.f15115b < 80) {
                    return;
                }
                mm.this.f15115b = System.currentTimeMillis();
                float[] fArr = sensorEvent.values;
                double d2 = fArr[0] / 9.8d;
                double d3 = fArr[1] / 9.8d;
                double d4 = fArr[2] / 9.8d;
                double degrees = Math.toDegrees(Math.atan2(d2, d3));
                double d5 = degrees <= 0.0d ? (-degrees) - 180.0d : 180.0d - degrees;
                double degrees2 = Math.toDegrees(Math.atan2(d2, d4));
                double d6 = degrees2 <= 0.0d ? (-degrees2) - 180.0d : 180.0d - degrees2;
                double degrees3 = Math.toDegrees(Math.atan2(d4, Math.sqrt((d2 * d2) + (d3 * d3)))) + 90.0d;
                if (degrees3 > 45.0d && degrees3 < 135.0d && (Math.abs((Math.sin(d3) / 3.141592653589793d) * 180.0d) >= 45.0d || !mm.this.f15118e)) {
                    if (mm.this.f15117d != -999.0d && mm.this.f15119f) {
                        if ((d5 >= mm.this.f15117d && d5 - mm.this.f15117d > mm.this.f15122i && d5 - mm.this.f15117d <= 180.0d) || (d5 < mm.this.f15117d && mm.this.f15117d > 0.0d && (360.0d - mm.this.f15117d) + d5 > mm.this.f15122i && (360.0d - mm.this.f15117d) + d5 <= 180.0d)) {
                            mh.b(mm.f15108q, "11111发生垂直状态滚动 rollStatus:" + mm.this.f15120g);
                            mm.this.f15120g = 1;
                            mm.this.i();
                            return;
                        }
                        if (d5 < mm.this.f15117d || ((d5 - mm.this.f15117d >= mm.this.f15123j || Math.abs(d5 - mm.this.f15117d) > 180.0d) && (Math.abs(d5 - mm.this.f15117d) < 180.0d || (-(360.0d - Math.abs(d5 - mm.this.f15117d))) >= mm.this.f15123j))) {
                            if (d5 >= mm.this.f15117d) {
                                return;
                            }
                            if ((d5 - mm.this.f15117d >= mm.this.f15123j || Math.abs(d5 - mm.this.f15117d) > 180.0d) && (Math.abs(d5 - mm.this.f15117d) < 180.0d || 360.0d - Math.abs(d5 - mm.this.f15117d) >= mm.this.f15123j)) {
                                return;
                            }
                        }
                        if (mm.this.f15120g == 1) {
                            mm.this.f15120g = 2;
                            mh.a(mm.f15108q, "发生垂直状态回滚");
                            mm.this.i();
                            return;
                        }
                        return;
                    }
                    mm.this.f15117d = d5;
                    mm.this.f15119f = true;
                    mm.this.f15118e = false;
                    return;
                }
                if (mm.this.f15116c != -999.0d && mm.this.f15118e) {
                    if ((d6 >= mm.this.f15116c && d6 - mm.this.f15116c > mm.this.f15122i && d6 - mm.this.f15116c <= 180.0d) || (d6 < mm.this.f15116c && mm.this.f15116c > 0.0d && (360.0d - mm.this.f15116c) + d6 > mm.this.f15122i && (360.0d - mm.this.f15116c) + d6 <= 180.0d)) {
                        mh.b(mm.f15108q, "11111发生水平状态滚动 rollStatus:" + mm.this.f15120g);
                        mm.this.f15120g = 1;
                        mm.this.i();
                        return;
                    }
                    if (d6 < mm.this.f15116c || ((d6 - mm.this.f15116c >= mm.this.f15123j || Math.abs(d6 - mm.this.f15116c) > 180.0d) && (Math.abs(d6 - mm.this.f15116c) < 180.0d || (-(360.0d - Math.abs(d6 - mm.this.f15116c))) >= mm.this.f15123j))) {
                        if (d6 >= mm.this.f15116c) {
                            return;
                        }
                        if ((d6 - mm.this.f15116c >= mm.this.f15123j || Math.abs(d6 - mm.this.f15116c) > 180.0d) && (Math.abs(d6 - mm.this.f15116c) < 180.0d || 360.0d - Math.abs(d6 - mm.this.f15116c) >= mm.this.f15123j)) {
                            return;
                        }
                    }
                    mh.a(mm.f15108q, "2222发生水平状态回滚 rollStatus:" + mm.this.f15120g);
                    if (mm.this.f15120g == 1) {
                        mm.this.f15120g = 2;
                        mh.a(mm.f15108q, "发生水平状态回滚");
                        mm.this.i();
                        return;
                    }
                    return;
                }
                mm.this.f15116c = d6;
                mm.this.f15118e = true;
                mm.this.f15119f = false;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (mm.this.f15126m) {
                return;
            }
            mm.this.f15126m = true;
            if (mm.this.f15127n != null) {
                mm.this.f15127n.a(mm.f15110s, mm.f15111t, mm.f15112u, mm.f15113v, mm.f15110s, mm.f15111t, mm.f15112u, mm.f15113v);
            }
        }
    }

    public class c implements View.OnTouchListener {
        public c() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            try {
                if (motionEvent.getAction() != 0) {
                    return false;
                }
                String unused = mm.f15110s = motionEvent.getX() + "";
                String unused2 = mm.f15111t = motionEvent.getY() + "";
                String unused3 = mm.f15112u = motionEvent.getRawX() + "";
                String unused4 = mm.f15113v = motionEvent.getRawY() + "";
                return false;
            } catch (Exception e2) {
                e2.printStackTrace();
                return false;
            }
        }
    }

    public class d implements TwistView.i {
        public d() {
        }

        @Override // com.beizi.fusion.widget.TwistView.i
        public void a() {
            if (mm.this.f15125l) {
                return;
            }
            mm.this.f15125l = true;
            if (mm.this.f15127n != null) {
                mm.this.f15127n.a();
            }
        }
    }

    public interface e {
        void a();

        void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8);
    }

    public mm(Context context) {
        this.f15114a = context;
        f15109r = (SensorManager) context.getApplicationContext().getSystemService("sensor");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        TwistView twistView = this.f15124k;
        if (twistView != null) {
            twistView.updateRollStatus(this.f15120g);
        }
    }

    public void f() {
        SensorManager sensorManager = f15109r;
        if (sensorManager != null) {
            sensorManager.registerListener(this.f15129p, sensorManager.getDefaultSensor(1), 100000);
        }
    }

    public void g() {
        this.f15126m = false;
    }

    public void h() {
        SensorManager sensorManager = f15109r;
        if (sensorManager != null) {
            sensorManager.unregisterListener(this.f15129p);
        }
        TwistView twistView = this.f15124k;
        if (twistView != null) {
            twistView.destroyView();
            this.f15124k = null;
        }
        this.f15126m = false;
        this.f15125l = false;
    }

    public void b(double d2) {
        this.f15122i = d2;
    }

    public void a(ViewGroup viewGroup, int i2, int i3, AdSpacesBean.BuyerBean.RollViewBean rollViewBean) throws NumberFormatException {
        AdSpacesBean.BuyerBean.PercentPositionBean position;
        int i4;
        int i5;
        int i6;
        String downloadSubTitle;
        mh.a("BeiZis", "enter addRollView");
        if (this.f15114a == null || viewGroup == null || rollViewBean == null || (position = rollViewBean.getPosition()) == null) {
            return;
        }
        this.f15124k = new TwistView(this.f15114a);
        String centerX = position.getCenterX();
        String centerY = position.getCenterY();
        String width = position.getWidth();
        String height = position.getHeight();
        if (TextUtils.isEmpty(centerX) || "0".equals(centerX)) {
            centerX = "85%";
        }
        if (TextUtils.isEmpty(centerY) || "0".equals(centerY)) {
            centerY = "50%";
        }
        if (TextUtils.isEmpty(width) || "0".equals(width)) {
            width = "340";
        }
        if (TextUtils.isEmpty(height) || "0".equals(height)) {
            height = "70";
        }
        float fI = vo.i(this.f15114a);
        if (centerX.endsWith("%")) {
            i4 = (Integer.parseInt(centerX.substring(0, centerX.indexOf("%"))) * i2) / 100;
        } else {
            i4 = Integer.parseInt(centerX);
        }
        if (centerY.endsWith("%")) {
            i5 = (Integer.parseInt(centerY.substring(0, centerY.indexOf("%"))) * i3) / 100;
        } else {
            i5 = Integer.parseInt(centerY);
        }
        boolean zEndsWith = width.endsWith("%");
        int i7 = MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL;
        if (zEndsWith) {
            int i8 = Integer.parseInt(width.substring(0, width.indexOf("%")));
            if (fI >= 400.0f) {
                i7 = (i8 * MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL) / 100;
            } else {
                i7 = (((int) fI) * i8) / 100;
            }
        } else {
            int i9 = Integer.parseInt(width);
            if (i9 < 400) {
                i7 = i9;
            }
        }
        if (height.endsWith("%")) {
            i6 = (Integer.parseInt(height.substring(0, height.indexOf("%"))) * i7) / 100;
        } else {
            i6 = Integer.parseInt(height);
        }
        int iA = vo.a(this.f15114a, i7);
        int iA2 = vo.a(this.f15114a, i6 + 95);
        int iA3 = vo.a(this.f15114a, i4);
        int iA4 = vo.a(this.f15114a, i5);
        mh.a("BeiZis", "widthInt = " + iA + ",heightInt = " + iA2);
        int iA5 = vo.a(this.f15114a, 340.0f);
        int iA6 = vo.a(this.f15114a, 165.0f);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iA5, iA6);
        mh.a("BeiZis", "centerYInt = " + iA4 + ",centerXInt = " + iA3 + ",adWidthDp = " + i2 + ",adHeightDp = " + i3);
        if (iA4 == 0) {
            iA4 = vo.a(this.f15114a, i3) / 2;
        }
        if (iA3 == 0) {
            iA3 = vo.a(this.f15114a, i2) / 2;
        }
        layoutParams.topMargin = iA4 - (iA6 / 2);
        layoutParams.leftMargin = iA3 - (iA5 / 2);
        this.f15124k.setTwistTotalLayoutWidthAndHeight(iA5, iA6);
        this.f15124k.setLayoutParams(layoutParams);
        this.f15124k.setTwistTotalLayoutBg(rollViewBean.getBgColor());
        this.f15124k.setMainTitleText(rollViewBean.getTitle());
        if (!this.f15128o.booleanValue()) {
            downloadSubTitle = rollViewBean.getSubTitle();
        } else {
            downloadSubTitle = rollViewBean.getDownloadSubTitle();
            if (TextUtils.isEmpty(downloadSubTitle)) {
                downloadSubTitle = "下载应用";
            }
        }
        this.f15124k.setDescribeText(downloadSubTitle);
        this.f15124k.setJumpClickListener(new b());
        this.f15124k.setJumpOnTouchListener(new c());
        this.f15124k.setRotationEndCallback(new d());
        viewGroup.addView(this.f15124k, layoutParams);
    }

    public void a(AdSpacesBean.BuyerBean.RollViewBean rollViewBean) {
        if (rollViewBean == null) {
            return;
        }
        try {
            mh.a(f15108q, "setRollParams getRollTime:" + rollViewBean.getRollTime() + ";getRollPlusAmplitude:" + rollViewBean.getRollPlusAmplitude() + ";getRollMinusAmplitude:" + rollViewBean.getRollMinusAmplitude());
            a(rollViewBean.getRollTime());
            b(rollViewBean.getRollPlusAmplitude());
            a(rollViewBean.getRollMinusAmplitude());
            TwistView twistView = this.f15124k;
            if (twistView != null) {
                twistView.setDurationAnimation(rollViewBean.getRollTime());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void a(AdSpacesBean.BuyerBean.CoolRollViewBean coolRollViewBean) {
        if (coolRollViewBean == null) {
            return;
        }
        try {
            mh.a(f15108q, "setRollCoolParams getRollTime:" + coolRollViewBean.getRollTime() + ";getRollPlusAmplitude:" + coolRollViewBean.getRollPlusAmplitude() + ";getRollMinusAmplitude:" + coolRollViewBean.getRollMinusAmplitude());
            a(coolRollViewBean.getRollTime());
            b(coolRollViewBean.getRollPlusAmplitude());
            a(coolRollViewBean.getRollMinusAmplitude());
            TwistView twistView = this.f15124k;
            if (twistView != null) {
                twistView.setDurationAnimation(coolRollViewBean.getRollTime());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void a(long j2) {
        this.f15121h = j2;
    }

    public void a(double d2) {
        this.f15123j = d2;
    }

    public void a(e eVar) {
        this.f15127n = eVar;
    }

    public void a(Boolean bool) {
        this.f15128o = bool;
    }
}
