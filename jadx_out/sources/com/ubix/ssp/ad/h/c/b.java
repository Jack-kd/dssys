package com.ubix.ssp.ad.h.c;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.kwad.library.solder.lib.ext.PluginError;
import com.ubix.ssp.ad.e.a0.k;
import com.ubix.ssp.ad.e.a0.r;
import com.ubix.ssp.ad.e.q;
import com.ubix.ssp.ad.g.k.j;
import java.io.File;
import java.util.HashMap;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes5.dex */
public abstract class b extends RelativeLayout implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    protected int f48031a;

    /* renamed from: b, reason: collision with root package name */
    protected int f48032b;

    /* renamed from: c, reason: collision with root package name */
    protected int f48033c;

    /* renamed from: d, reason: collision with root package name */
    protected int f48034d;

    /* renamed from: e, reason: collision with root package name */
    protected int f48035e;

    /* renamed from: f, reason: collision with root package name */
    protected int f48036f;

    /* renamed from: g, reason: collision with root package name */
    protected int f48037g;

    /* renamed from: h, reason: collision with root package name */
    private int f48038h;

    /* renamed from: i, reason: collision with root package name */
    protected HashMap<String, Integer> f48039i;

    /* renamed from: j, reason: collision with root package name */
    protected int f48040j;

    /* renamed from: k, reason: collision with root package name */
    protected int f48041k;

    /* renamed from: l, reason: collision with root package name */
    protected HashMap<String, String> f48042l;

    /* renamed from: m, reason: collision with root package name */
    protected int f48043m;

    /* renamed from: n, reason: collision with root package name */
    protected String f48044n;

    /* renamed from: o, reason: collision with root package name */
    protected double f48045o;

    /* renamed from: p, reason: collision with root package name */
    private boolean f48046p;

    /* renamed from: q, reason: collision with root package name */
    protected com.ubix.ssp.ad.g.k.e f48047q;

    /* renamed from: r, reason: collision with root package name */
    protected int f48048r;

    /* renamed from: s, reason: collision with root package name */
    protected boolean f48049s;

    /* renamed from: t, reason: collision with root package name */
    protected int f48050t;

    /* renamed from: u, reason: collision with root package name */
    protected int f48051u;

    public class a implements j {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f48052a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.e.b0.g f48053b;

        public a(String str, com.ubix.ssp.ad.e.b0.g gVar) {
            this.f48052a = str;
            this.f48053b = gVar;
        }

        @Override // com.ubix.ssp.ad.g.k.b
        public void a(int i2) {
        }

        @Override // com.ubix.ssp.ad.g.k.b
        public void b(int i2) {
        }

        @Override // com.ubix.ssp.ad.g.k.j
        public void c(int i2) {
            if (this.f48052a == null || b.this.findViewById(400004) == null) {
                return;
            }
            try {
                if (b.this.findViewById(400009) != null) {
                    b.this.findViewById(400009).setVisibility(4);
                }
                this.f48053b.setVisibility(4);
                b.this.findViewById(400007).setVisibility(8);
                b.this.findViewById(400004).setVisibility(0);
            } catch (Exception unused) {
            }
        }

        @Override // com.ubix.ssp.ad.g.k.b
        public void e(int i2) {
        }

        @Override // com.ubix.ssp.ad.g.k.b
        public void f(int i2) {
        }

        @Override // com.ubix.ssp.ad.g.k.j
        public void g(int i2) {
        }

        @Override // com.ubix.ssp.ad.g.k.j
        public void h(int i2) {
            com.ubix.ssp.ad.e.b0.g gVar;
            if (this.f48052a == null || b.this.findViewById(400004) == null || (gVar = this.f48053b) == null || !gVar.f46651e) {
                return;
            }
            try {
                b bVar = b.this;
                if (bVar.f48043m == 6014 && bVar.findViewById(400009) != null) {
                    b.this.findViewById(400009).setBackgroundColor(-16777216);
                }
                b.this.findViewById(400007).setVisibility(0);
                b.this.findViewById(400004).setVisibility(8);
            } catch (Exception unused) {
            }
        }

        @Override // com.ubix.ssp.ad.g.k.b
        public void i(int i2) {
        }

        @Override // com.ubix.ssp.ad.g.k.j
        public void j(int i2) {
        }

        @Override // com.ubix.ssp.ad.g.k.j
        public void a(int i2, int i3) {
        }

        @Override // com.ubix.ssp.ad.g.k.j
        public void b(int i2, int i3) {
        }

        @Override // com.ubix.ssp.ad.g.k.j
        public void a(int i2, long j2, long j3) {
            com.ubix.ssp.ad.g.k.e eVar = b.this.f48047q;
            if (eVar != null) {
                eVar.a(i2, j2, j3);
            }
        }

        @Override // com.ubix.ssp.ad.g.k.b
        public void b(int i2, View view, HashMap<String, String> map) {
            b bVar = b.this;
            com.ubix.ssp.ad.g.k.e eVar = bVar.f48047q;
            if (eVar != null) {
                eVar.b(i2, view, bVar.f48042l);
            }
        }

        @Override // com.ubix.ssp.ad.g.k.b
        public void a(int i2, Bundle bundle) {
        }

        @Override // com.ubix.ssp.ad.g.k.b
        public void a(int i2, View view) {
        }
    }

    public b(Context context, Bundle bundle) {
        super(context);
        this.f48036f = 0;
        this.f48038h = 0;
        this.f48040j = 4;
        this.f48041k = 0;
        this.f48044n = "";
        this.f48048r = 0;
        this.f48049s = false;
        this.f48050t = 0;
        this.f48051u = 5;
        this.f48048r = bundle.getInt("RENDER_MODE", 0);
        this.f48045o = r.a().a(context);
        this.f48043m = bundle.getInt("TEMPLATE_ID");
        this.f48040j = (int) (this.f48040j * r.a().a(context));
        this.f48041k = bundle.getInt("AD_INDEX");
        this.f48044n = bundle.getString("AD_SOURCE");
        this.f48039i = (HashMap) bundle.getSerializable("SIZE_MAP");
        this.f48042l = (HashMap) bundle.getSerializable("CLICK_MAP");
        this.f48049s = bundle.getBoolean("SUPPORT_FEED_BACK");
        this.f48031a = this.f48039i.get("instlWidth").intValue();
        this.f48032b = this.f48039i.get("instlHeight").intValue();
        this.f48033c = this.f48039i.get("drawingWidth").intValue();
        this.f48034d = this.f48039i.get("drawingHeight").intValue();
        this.f48050t = bundle.getInt("SKIP_VIEW_STYLE", 0);
        this.f48051u = bundle.getInt("SKIP_COUNT_TIME", 5);
        a(bundle.getBoolean("IS_DOWNLOAD"), bundle.getInt("VIDEO_RENDER_TYPE", 0));
    }

    public static b a(Context context, Bundle bundle) {
        int i2 = bundle.getInt("TEMPLATE_ID");
        switch (i2) {
            case PluginError.ERROR_BUILD_REMOTE_PLUGIN_INFO /* 6001 */:
            case 6002:
                return new com.ubix.ssp.ad.h.c.a(context, bundle);
            case 6003:
                return bundle.getInt("AD_WIDTH") >= bundle.getInt("AD_HEIGHT") ? new e(context, bundle) : new com.ubix.ssp.ad.h.c.a(context, bundle);
            case 6004:
                return new c(context, bundle);
            default:
                switch (i2) {
                    case 6012:
                        return new g(context, bundle);
                    case 6013:
                        return bundle.getInt("AD_WIDTH") >= bundle.getInt("AD_HEIGHT") ? new f(context, bundle) : new g(context, bundle);
                    case 6014:
                        return new d(context, bundle);
                    default:
                        return null;
                }
        }
    }

    private void b() {
        addView(com.ubix.ssp.ad.e.f.a(getContext()));
    }

    public void c() {
        View viewFindViewById = findViewById(400001);
        if (viewFindViewById != null) {
            if (viewFindViewById instanceof ImageView) {
                ((ImageView) viewFindViewById).setImageDrawable(q.a("ubix/ic_close_gray.webp"));
            }
            viewFindViewById.setOnClickListener(this);
        }
    }

    public int getAppInfoTop() {
        int iC;
        int i2;
        View viewFindViewById = findViewById(920101);
        if (viewFindViewById == null || viewFindViewById.getVisibility() == 8) {
            iC = (getRealTemplateId() == 6003 || getRealTemplateId() == 6013) ? ((r.a().c(getContext()) - com.ubix.ssp.ad.e.a0.c.e(getContext())) + this.f48034d) / 2 : findViewById(400004).getBottom();
            i2 = this.f48040j * 3;
        } else {
            iC = viewFindViewById.getTop();
            i2 = this.f48040j * 2;
        }
        return iC - i2;
    }

    public abstract int getRealTemplateId();

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        com.ubix.ssp.ad.g.k.e eVar;
        int id = view.getId();
        if (id == 400001) {
            com.ubix.ssp.ad.g.k.e eVar2 = this.f48047q;
            if (eVar2 != null) {
                eVar2.e(this.f48041k);
            }
            a();
            return;
        }
        if (id == 400004) {
            this.f48042l.put("__CLICK_TRIGGER__", "");
            com.ubix.ssp.ad.g.k.e eVar3 = this.f48047q;
            if (eVar3 != null) {
                eVar3.b(this.f48041k, this, this.f48042l);
                return;
            }
            return;
        }
        if (id == 400007) {
            setMuted(!this.f48046p);
        } else if (id == 920301 && (eVar = this.f48047q) != null) {
            eVar.a(this.f48041k);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a();
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        setMeasuredDimension(r.a().h(getContext()), r.a().c(getContext()));
        this.f48036f = this.f48031a / 2;
        if (getResources().getConfiguration().orientation == 2) {
            this.f48036f = (int) (this.f48031a * 0.75d);
        }
        int i4 = this.f48037g;
        int i5 = this.f48036f;
        if (i4 > i5) {
            this.f48037g = i5;
        }
        this.f48035e = this.f48037g + (this.f48038h * 2);
    }

    public void setAdLogo(boolean z2) {
        try {
            ((ImageView) findViewById(400002)).setImageDrawable(q.a("ubix/ic_logo.png", z2));
        } catch (Throwable unused) {
        }
    }

    public void setInnerListener(com.ubix.ssp.ad.g.k.b bVar) {
        this.f48047q = (com.ubix.ssp.ad.g.k.e) bVar;
    }

    public void setMuted(boolean z2) {
        try {
            ImageView imageView = (ImageView) findViewById(400007);
            if (imageView != null) {
                imageView.setImageDrawable(q.a(z2 ? "ubix/ic_volume_off.webp" : "ubix/ic_volume_on.webp"));
                imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            }
            com.ubix.ssp.ad.e.b0.g gVar = (com.ubix.ssp.ad.e.b0.g) findViewById(400006);
            if (gVar != null) {
                gVar.setMute(z2);
            }
            this.f48046p = z2;
        } catch (Throwable unused) {
        }
    }

    public void a() {
        try {
            com.ubix.ssp.ad.e.b0.g gVar = (com.ubix.ssp.ad.e.b0.g) findViewById(400006);
            if (gVar != null) {
                gVar.p();
            }
            View viewFindViewById = findViewById(400001);
            if (viewFindViewById == null || !(viewFindViewById instanceof com.ubix.ssp.ad.e.g)) {
                return;
            }
            ((com.ubix.ssp.ad.e.g) viewFindViewById).c();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void a(String str, String str2) {
        try {
            com.ubix.ssp.ad.e.v.e.b().b(str2, (ImageView) findViewById(400004));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        com.ubix.ssp.ad.e.b0.g gVar = (com.ubix.ssp.ad.e.b0.g) findViewById(400006);
        String str3 = k.f(getContext()).getPath() + ServiceReference.DELIMITER + str.hashCode();
        File fileA = com.ubix.ssp.ad.e.v.e.c().a(str);
        if (fileA != null && fileA.exists()) {
            str = str3;
        }
        gVar.a(str, (String) null);
        gVar.setVideoViewListener(new a(str2, gVar));
        setMuted(this.f48046p);
    }

    public void a(String str, String str2, String str3, String str4, String str5, String str6, long j2) {
        boolean z2;
        String strA;
        String str7;
        String str8;
        TextView textView = (TextView) findViewById(920101);
        if (textView == null) {
            return;
        }
        String str9 = "";
        if (j2 > 0) {
            strA = k.a(j2);
            z2 = true;
        } else {
            z2 = false;
            strA = "";
        }
        if (TextUtils.isEmpty(str5)) {
            str7 = "";
        } else {
            str7 = "丨备案号:" + str5;
        }
        if (TextUtils.isEmpty(str6)) {
            str8 = "";
        } else {
            str8 = "丨适用年龄:" + str6;
        }
        if (z2) {
            str9 = "丨应用大小:" + strA;
        }
        textView.setText(new com.ubix.ssp.ad.e.f(String.format("应用名称:%s丨应用版本:%s丨开发者:%s%s%s%s丨权限丨隐私丨功能介绍", str, str2, str3, str7, str8, str9)).a(this.f48047q));
    }

    public void a(HashMap<String, Integer> map) {
        this.f48039i = map;
        this.f48031a = map.get("instlWidth").intValue();
        this.f48032b = map.get("instlHeight").intValue();
        this.f48033c = map.get("drawingWidth").intValue();
        this.f48034d = map.get("drawingHeight").intValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0218  */
    /* JADX WARN: Removed duplicated region for block: B:82:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(boolean r21, int r22) {
        /*
            Method dump skipped, instructions count: 611
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.h.c.b.a(boolean, int):void");
    }

    public boolean a(int i2) {
        return false;
    }

    public boolean a(Bundle bundle) {
        Bitmap bitmapB;
        try {
            this.f48046p = !bundle.getBoolean("AUTO_MUTE", true);
            int i2 = this.f48043m;
            if (i2 == 6013 || i2 == 6012 || i2 == 6014) {
                a(bundle.getString("VIDEO_URL"), bundle.getStringArray("IMAGE_URL")[0]);
            } else {
                com.ubix.ssp.ad.e.v.e.b().b(bundle.getStringArray("IMAGE_URL")[0], (ImageView) findViewById(400004));
            }
            setAdLogo(bundle.getBoolean("IS_UNNAMED"));
            c();
            int i3 = this.f48043m;
            if ((i3 == 6014 || i3 == 6004) && this.f48048r == 1 && (bitmapB = com.ubix.ssp.ad.e.a0.c.b(bundle.getStringArray("IMAGE_URL")[0])) != null) {
                setBackground(new BitmapDrawable(bitmapB));
            }
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }
}
