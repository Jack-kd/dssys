package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.widget.RegionClickView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes2.dex */
public class vl {

    /* renamed from: e, reason: collision with root package name */
    private static String f16692e;

    /* renamed from: f, reason: collision with root package name */
    private static String f16693f;

    /* renamed from: g, reason: collision with root package name */
    private static String f16694g;

    /* renamed from: h, reason: collision with root package name */
    private static String f16695h;

    /* renamed from: a, reason: collision with root package name */
    private Context f16696a;

    /* renamed from: b, reason: collision with root package name */
    private c f16697b;

    /* renamed from: c, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.RegionalClickViewBean f16698c = null;

    /* renamed from: d, reason: collision with root package name */
    private Boolean f16699d;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (vl.this.f16697b != null) {
                vl.this.f16697b.b(vl.f16692e, vl.f16693f, vl.f16694g, vl.f16695h, vl.f16692e, vl.f16693f, vl.f16694g, vl.f16695h);
            }
        }
    }

    public class b implements View.OnTouchListener {
        public b() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            try {
                if (motionEvent.getAction() != 0) {
                    return false;
                }
                String unused = vl.f16692e = motionEvent.getX() + "";
                String unused2 = vl.f16693f = motionEvent.getY() + "";
                String unused3 = vl.f16694g = motionEvent.getRawX() + "";
                String unused4 = vl.f16695h = motionEvent.getRawY() + "";
                return false;
            } catch (Exception e2) {
                e2.printStackTrace();
                return false;
            }
        }
    }

    public interface c {
        void b(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8);
    }

    public vl(Context context) {
        this.f16696a = context;
    }

    public void e() {
        this.f16696a = null;
        this.f16698c = null;
    }

    public void a(AdSpacesBean.BuyerBean.RegionalClickViewBean regionalClickViewBean) {
        this.f16698c = regionalClickViewBean;
    }

    public View a(int i2, int i3, AdSpacesBean.BuyerBean.PercentPositionBean percentPositionBean, boolean z2) {
        if (this.f16696a == null || percentPositionBean == null) {
            return null;
        }
        mh.b("BeiZis", "adWidthDp = " + i2 + ",adHeightDp = " + i3);
        RegionClickView regionClickView = new RegionClickView(this.f16696a);
        if (this.f16698c != null) {
            regionClickView.setDownloadApp(this.f16699d);
            regionClickView.setRegionalClickViewBean(this.f16698c);
        }
        regionClickView.setLayoutParams(a(i2, i3, percentPositionBean));
        if (z2) {
            regionClickView.setOnClickListener(new a());
            regionClickView.setOnTouchListener(new b());
        }
        return regionClickView;
    }

    private ViewGroup.MarginLayoutParams a(int i2, int i3, AdSpacesBean.BuyerBean.PercentPositionBean percentPositionBean) throws NumberFormatException {
        int i4;
        int i5;
        int i6;
        String centerX = percentPositionBean.getCenterX();
        String centerY = percentPositionBean.getCenterY();
        String width = percentPositionBean.getWidth();
        String height = percentPositionBean.getHeight();
        float f2 = vo.f(this.f16696a);
        if (TextUtils.isEmpty(centerX) || "0".equals(centerX)) {
            centerX = "50%";
        }
        if (TextUtils.isEmpty(centerY) || "0".equals(centerY)) {
            mh.a("BeiZis", "screenHeightDp = " + f2 + ",adHeightDp = " + i3);
            if (f2 > i3) {
                centerY = "63";
            } else {
                centerY = "188";
            }
        }
        if (TextUtils.isEmpty(width) || "0".equals(width)) {
            width = "325";
        }
        if (TextUtils.isEmpty(height) || "0".equals(height)) {
            height = "65";
        }
        float fI = vo.i(this.f16696a);
        if (centerX.endsWith("%")) {
            i4 = (Integer.parseInt(centerX.substring(0, centerX.indexOf("%"))) * i2) / 100;
        } else {
            i4 = Integer.parseInt(centerX);
        }
        if (centerY.endsWith("%")) {
            i5 = (Integer.parseInt(centerY.substring(0, centerY.indexOf("%"))) * i3) / 100;
        } else {
            i5 = i3 - Integer.parseInt(centerY);
            mh.a("BeiZis", "adHeightDp = " + i3 + ", centerYInt = " + i5);
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
        int iA = vo.a(this.f16696a, i7);
        int iA2 = vo.a(this.f16696a, i6);
        int iA3 = vo.a(this.f16696a, i4);
        int iA4 = vo.a(this.f16696a, i5);
        mh.a("BeiZis", "widthInt = " + iA + ",heightInt = " + iA2);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(iA, iA2);
        mh.a("BeiZis", "centerYInt = " + iA4 + ",centerXInt = " + iA3 + ",adWidthDp = " + i2 + ",adHeightDp = " + i3);
        marginLayoutParams.topMargin = iA4 - (iA2 / 2);
        marginLayoutParams.leftMargin = iA3 - (iA / 2);
        return marginLayoutParams;
    }

    public void a(c cVar) {
        this.f16697b = cVar;
    }

    public void a(Boolean bool) {
        this.f16699d = bool;
    }
}
