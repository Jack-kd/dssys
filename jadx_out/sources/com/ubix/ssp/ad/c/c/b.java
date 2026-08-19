package com.ubix.ssp.ad.c.c;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.ubix.ssp.ad.e.b0.g;
import com.ubix.ssp.ad.e.q;
import com.ubix.ssp.ad.e.v.e;
import com.ubix.ssp.ad.g.k.j;
import java.util.HashMap;

/* loaded from: classes5.dex */
public class b extends c {

    /* renamed from: k, reason: collision with root package name */
    private boolean f45691k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f45692l;

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ g f45693a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Bundle f45694b;

        /* renamed from: com.ubix.ssp.ad.c.c.b$a$a, reason: collision with other inner class name */
        public class C0785a implements j {
            public C0785a() {
            }

            @Override // com.ubix.ssp.ad.g.k.b
            public void a(int i2) {
            }

            @Override // com.ubix.ssp.ad.g.k.b
            public void b(int i2) {
            }

            @Override // com.ubix.ssp.ad.g.k.j
            public void c(int i2) {
                View viewFindViewById = b.this.findViewById(100010);
                if (viewFindViewById != null) {
                    viewFindViewById.setVisibility(0);
                }
                try {
                    g gVar = a.this.f45693a;
                    if (gVar != null) {
                        gVar.setVisibility(8);
                        e.b().b(a.this.f45694b.getStringArray("IMAGE_URL")[0], (ImageView) b.this.findViewById(100010));
                        a.this.f45693a.p();
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
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
                View viewFindViewById = b.this.findViewById(100011);
                if (viewFindViewById != null) {
                    viewFindViewById.setVisibility(4);
                }
                View viewFindViewById2 = b.this.findViewById(100010);
                if (viewFindViewById2 != null) {
                    viewFindViewById2.setVisibility(4);
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
            }

            @Override // com.ubix.ssp.ad.g.k.b
            public void b(int i2, View view, HashMap<String, String> map) {
            }

            @Override // com.ubix.ssp.ad.g.k.b
            public void a(int i2, Bundle bundle) {
            }

            @Override // com.ubix.ssp.ad.g.k.b
            public void a(int i2, View view) {
            }
        }

        public a(g gVar, Bundle bundle) {
            this.f45693a = gVar;
            this.f45694b = bundle;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f45693a.a(this.f45694b.getString("VIDEO_URL"), "");
            this.f45693a.setVideoViewListener(new C0785a());
        }
    }

    public b(Context context, Bundle bundle) {
        super(context, bundle);
        boolean z2 = false;
        this.f45691k = false;
        this.f45692l = false;
        this.f45691k = bundle.getBoolean("IS_DOWNLOAD");
        int i2 = bundle.getInt("AUTO_PLAY", 2);
        if (i2 != 3 && (i2 != 2 ? i2 == 1 : com.ubix.ssp.ad.e.a0.c.i(getContext().getApplicationContext()))) {
            z2 = true;
        }
        this.f45692l = z2;
        ImageView imageView = new ImageView(context);
        imageView.setId(100011);
        imageView.setImageDrawable(q.a("ubix/ic_auto_play.webp"));
        addView(imageView);
    }

    @Override // com.ubix.ssp.ad.c.c.c
    public boolean a(Bundle bundle) {
        try {
            ImageView imageView = (ImageView) findViewById(100010);
            if (imageView != null) {
                imageView.setBackgroundDrawable(new BitmapDrawable(com.ubix.ssp.ad.e.a0.c.b(bundle.getStringArray("IMAGE_URL")[0])));
                e.b().b(bundle.getStringArray("IMAGE_URL")[0], imageView);
            }
            g gVar = (g) findViewById(100006);
            if (gVar != null) {
                if (this.f45692l) {
                    post(new a(gVar, bundle));
                } else {
                    gVar.setVisibility(4);
                }
            }
            ImageView imageView2 = (ImageView) findViewById(100008);
            if (imageView2 != null) {
                imageView2.setBackground(q.a("ubix/ic_logo_dark_bg.webp", this.f45706j));
            }
            ImageView imageView3 = (ImageView) findViewById(100007);
            if (imageView3 != null) {
                imageView3.setBackground(q.a("ubix/ic_close_gray.webp"));
            }
            TextView textView = (TextView) findViewById(100009);
            if (textView != null && !TextUtils.isEmpty(bundle.getString("AD_SOURCE", ""))) {
                textView.setShadowLayer(4.0f, 0.0f, 1.0f, 1711276032);
                textView.setText(bundle.getString("AD_SOURCE", ""));
            }
            TextView textView2 = (TextView) findViewById(100002);
            if (textView2 != null) {
                textView2.setText(bundle.getString("TITLE"));
            }
            TextView textView3 = (TextView) findViewById(100004);
            if (textView3 == null) {
                return true;
            }
            String string = bundle.getString("BUTTON_TEXT");
            if (TextUtils.isEmpty(string)) {
                string = this.f45691k ? "立即下载" : "查看详情";
            }
            textView3.setText(string);
            textView3.setBackground(com.ubix.ssp.ad.e.a0.c.a(getContext(), Color.parseColor("#FA800F"), 120));
            return true;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        ViewGroup.LayoutParams layoutParams;
        int i6;
        ViewGroup.LayoutParams layoutParams2;
        int left;
        int i7;
        super.onLayout(z2, i2, i3, i4, i5);
        this.f45701e.put("__WIDTH__", getWidth() + "");
        this.f45701e.put("__HEIGHT__", getHeight() + "");
        this.f45701e.put("__IMP_AREA__", getLeft() + "_" + getTop() + "_" + getRight() + "_" + getBottom());
        HashMap<String, String> map = this.f45701e;
        StringBuilder sb = new StringBuilder();
        sb.append(getLeft());
        sb.append("");
        map.put("adLeft", sb.toString());
        this.f45701e.put("adRight", getRight() + "");
        this.f45701e.put("adTop", getTop() + "");
        this.f45701e.put("adBottom", getBottom() + "");
        for (int i8 = 0; i8 < getChildCount(); i8++) {
            View childAt = getChildAt(i8);
            int id = childAt.getId();
            if (id != 100002) {
                if (id == 100004) {
                    int i9 = this.f45698b;
                    childAt.layout((i9 - (i9 / 4)) + (this.f45697a * 2), (i5 - childAt.getMeasuredHeight()) / 2, this.f45698b - (this.f45697a * 2), (childAt.getMeasuredHeight() + i5) / 2);
                    layoutParams2 = childAt.getLayoutParams();
                    left = this.f45698b / 4;
                    i7 = this.f45697a * 4;
                } else if (id != 920101) {
                    switch (id) {
                        case 100006:
                            childAt.layout(0, 0, this.f45698b / 4, i3 + this.f45699c);
                            layoutParams = childAt.getLayoutParams();
                            i6 = this.f45698b / 4;
                            break;
                        case 100007:
                            double d2 = i4;
                            double d3 = this.f45697a * 0.2d;
                            double d4 = (r6 * 4) + d3;
                            childAt.layout((int) (d2 - d4), (int) d3, (int) (d2 - d3), (int) d4);
                            continue;
                        case 100008:
                            int i10 = this.f45697a;
                            int i11 = this.f45699c;
                            childAt.layout(i4 - (i10 * 7), i11 - (i10 * 3), i4, i11);
                            continue;
                        case 100009:
                            View viewFindViewById = findViewById(100008);
                            childAt.layout(viewFindViewById.getLeft() - childAt.getMeasuredWidth(), viewFindViewById.getTop(), viewFindViewById.getLeft(), viewFindViewById.getBottom());
                            continue;
                        case 100010:
                            childAt.layout(0, 0, this.f45698b / 4, i3 + this.f45699c);
                            continue;
                        case 100011:
                            int iMin = Math.min(this.f45698b / 4, this.f45699c);
                            int i12 = this.f45698b / 4;
                            int i13 = iMin / 2;
                            int i14 = this.f45699c;
                            childAt.layout((i12 - i13) / 2, (i14 - i13) / 2, (i12 + i13) / 2, (i14 + i13) / 2);
                            continue;
                        default:
                    }
                } else {
                    View viewFindViewById2 = findViewById(100008);
                    childAt.layout(0, i5 - childAt.getMeasuredHeight(), viewFindViewById2.getLeft() - this.f45697a, i5);
                    layoutParams2 = childAt.getLayoutParams();
                    left = viewFindViewById2.getLeft();
                    i7 = this.f45697a;
                }
                layoutParams2.width = left - i7;
            } else {
                int i15 = this.f45698b / 4;
                childAt.layout(i15, 0, i15 * 3, this.f45699c);
                childAt.setBackgroundColor(0);
                layoutParams = childAt.getLayoutParams();
                i6 = this.f45698b / 2;
            }
            layoutParams.width = i6;
            childAt.getLayoutParams().height = this.f45699c;
        }
    }
}
