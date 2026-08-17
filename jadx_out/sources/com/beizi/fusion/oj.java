package com.beizi.fusion;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.beizi.fusion.rf;
import com.beizi.fusion.widget.CustomRoundImageView;

/* loaded from: classes2.dex */
public class oj {

    /* renamed from: a, reason: collision with root package name */
    private ViewGroup f15438a;

    /* renamed from: b, reason: collision with root package name */
    private View f15439b;

    /* renamed from: c, reason: collision with root package name */
    private CustomRoundImageView f15440c;

    /* renamed from: d, reason: collision with root package name */
    private TextView f15441d;

    /* renamed from: e, reason: collision with root package name */
    private TextView f15442e;

    /* renamed from: f, reason: collision with root package name */
    private LinearLayout f15443f;

    /* renamed from: g, reason: collision with root package name */
    private TextView f15444g;

    /* renamed from: h, reason: collision with root package name */
    private e f15445h;

    /* renamed from: i, reason: collision with root package name */
    private int f15446i;

    /* renamed from: j, reason: collision with root package name */
    private int f15447j;

    /* renamed from: k, reason: collision with root package name */
    private int f15448k;

    /* renamed from: l, reason: collision with root package name */
    private int f15449l;

    /* renamed from: m, reason: collision with root package name */
    private int f15450m;

    /* renamed from: n, reason: collision with root package name */
    private int f15451n;

    /* renamed from: o, reason: collision with root package name */
    private int f15452o;

    /* renamed from: p, reason: collision with root package name */
    private int f15453p;

    /* renamed from: q, reason: collision with root package name */
    private boolean f15454q;

    /* renamed from: r, reason: collision with root package name */
    protected Handler f15455r = new a(Looper.getMainLooper());

    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1001:
                    if (oj.this.f15438a != null) {
                        try {
                            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(oj.this.f15448k, oj.this.f15449l);
                            oj.this.f15439b.setPadding(oj.this.f15453p, oj.this.f15453p, oj.this.f15453p, oj.this.f15453p);
                            yn.a(oj.this.f15439b, "#FFFFFF", 0, null, oj.this.f15449l / 4);
                            oj.this.f15438a.addView(oj.this.f15439b, layoutParams);
                            f7.a(oj.this.f15439b, oj.this.f15448k, oj.this.f15449l, oj.this.f15446i, oj.this.f15447j, oj.this.f15450m, 300);
                            if (oj.this.f15445h != null) {
                                oj.this.f15445h.b();
                                break;
                            }
                        } catch (Exception e2) {
                            e2.printStackTrace();
                            return;
                        }
                    }
                    break;
                case 1002:
                    oj.this.c();
                    break;
                case 1003:
                    oj.this.a();
                    break;
            }
        }
    }

    public class b implements rf.f {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f15457a;

        public class a implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ Bitmap f15459a;

            /* renamed from: com.beizi.fusion.oj$b$a$a, reason: collision with other inner class name */
            public class RunnableC0166a implements Runnable {

                /* renamed from: a, reason: collision with root package name */
                final /* synthetic */ BitmapDrawable f15461a;

                public RunnableC0166a(BitmapDrawable bitmapDrawable) {
                    this.f15461a = bitmapDrawable;
                }

                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (this.f15461a == null || oj.this.f15440c == null) {
                            return;
                        }
                        oj.this.f15440c.setBackground(this.f15461a);
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            }

            public a(Bitmap bitmap) {
                this.f15459a = bitmap;
            }

            @Override // java.lang.Runnable
            public void run() {
                Bitmap bitmap;
                try {
                    Context context = b.this.f15457a;
                    if (context == null || (bitmap = this.f15459a) == null) {
                        return;
                    }
                    BitmapDrawable bitmapDrawable = new BitmapDrawable(tf.a(context, bitmap, 20.0f));
                    Handler handler = oj.this.f15455r;
                    if (handler != null) {
                        handler.post(new RunnableC0166a(bitmapDrawable));
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }

        public b(Context context) {
            this.f15457a = context;
        }

        @Override // com.beizi.fusion.rf.f
        public void a() {
        }

        @Override // com.beizi.fusion.rf.f
        public void a(Bitmap bitmap) {
            try {
                float fAbs = Math.abs(1.0f - ((float) ((bitmap.getWidth() * 1.0d) / bitmap.getHeight())));
                if (fAbs > 0.1f) {
                    x3.c().e().execute(new a(bitmap));
                } else if (fAbs > 0.07d) {
                    oj.this.f15440c.setScaleType(ImageView.ScaleType.CENTER_CROP);
                } else {
                    oj.this.f15440c.setScaleType(ImageView.ScaleType.FIT_XY);
                }
                if (oj.this.f15440c != null) {
                    oj.this.f15440c.setVisibility(0);
                    oj.this.f15440c.setImageBitmap(bitmap);
                    oj.this.f15440c.setRectRadius(20.0f);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class c implements View.OnClickListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f15463a;

        public c(int i2) {
            this.f15463a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                Handler handler = oj.this.f15455r;
                if (handler != null) {
                    if (this.f15463a == 0) {
                        handler.sendEmptyMessage(1003);
                    } else {
                        handler.sendEmptyMessage(1002);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class d implements View.OnTouchListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f15465a;

        public d(int i2) {
            this.f15465a = i2;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            Handler handler;
            try {
                if (motionEvent.getAction() == 0 && (handler = oj.this.f15455r) != null) {
                    if (this.f15465a == 1) {
                        handler.sendEmptyMessage(1003);
                    } else {
                        handler.sendEmptyMessage(1002);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            return true;
        }
    }

    public interface e {
        void a();

        void b();
    }

    public void a(ViewGroup viewGroup, int i2, int i3, nj njVar, e eVar) {
        Handler handler;
        Handler handler2;
        TextView textView;
        TextView textView2;
        if (viewGroup == null || njVar == null) {
            return;
        }
        try {
            this.f15445h = eVar;
            this.f15438a = viewGroup;
            Context context = viewGroup.getContext();
            this.f15450m = njVar.a();
            View viewInflate = LayoutInflater.from(context).inflate(R.layout.beizi_notification_window, (ViewGroup) null);
            this.f15439b = viewInflate;
            this.f15440c = (CustomRoundImageView) viewInflate.findViewById(R.id.bz_notification_iv);
            this.f15441d = (TextView) this.f15439b.findViewById(R.id.bz_notification_title_tv);
            this.f15442e = (TextView) this.f15439b.findViewById(R.id.bz_notification_desc_tv);
            this.f15443f = (LinearLayout) this.f15439b.findViewById(R.id.bz_notification_action_container_ll);
            this.f15444g = (TextView) this.f15439b.findViewById(R.id.bz_notification_action_tv);
            a(context, i2, i3, njVar);
            String strG = njVar.g();
            this.f15453p = vo.a(context, 15.0f);
            if (TextUtils.isEmpty(strG)) {
                CustomRoundImageView customRoundImageView = this.f15440c;
                if (customRoundImageView != null) {
                    customRoundImageView.setVisibility(8);
                }
            } else {
                int i4 = this.f15449l - (this.f15453p * 2);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i4, i4);
                CustomRoundImageView customRoundImageView2 = this.f15440c;
                if (customRoundImageView2 != null) {
                    customRoundImageView2.setLayoutParams(layoutParams);
                    rf.a((Context) null).a(strG, new b(context));
                }
            }
            String strL = njVar.l();
            if (!TextUtils.isEmpty(strL) && (textView2 = this.f15441d) != null) {
                textView2.setText(strL);
            }
            String strE = njVar.e();
            if (!TextUtils.isEmpty(strE) && (textView = this.f15442e) != null) {
                textView.setText(strE);
            }
            String strC = njVar.c();
            if (TextUtils.isEmpty(strC)) {
                LinearLayout linearLayout = this.f15443f;
                if (linearLayout != null) {
                    linearLayout.setVisibility(8);
                }
            } else {
                LinearLayout linearLayout2 = this.f15443f;
                if (linearLayout2 != null) {
                    linearLayout2.setVisibility(0);
                    this.f15443f.setOnClickListener(new c(njVar.d()));
                }
                TextView textView3 = this.f15444g;
                if (textView3 != null) {
                    yn.a(textView3, "#80000000", 0, null, (this.f15449l - (this.f15453p * 2)) / 2);
                    this.f15444g.setText(strC);
                }
            }
            this.f15439b.setOnTouchListener(new d(njVar.k()));
            int iJ = njVar.j();
            Handler handler3 = this.f15455r;
            if (handler3 != null) {
                handler3.sendEmptyMessageDelayed(1001, iJ);
            }
            if (njVar.b() > 0 && (handler2 = this.f15455r) != null) {
                handler2.sendEmptyMessageDelayed(1003, r5 + iJ);
            }
            if (njVar.f() <= 0 || (handler = this.f15455r) == null) {
                return;
            }
            handler.sendEmptyMessageDelayed(1002, r5 + iJ);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void b() {
        try {
            Handler handler = this.f15455r;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            this.f15455r = null;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void c() {
        try {
            f7.a(this.f15439b, this.f15451n, this.f15452o, this.f15450m, 300);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a() {
        try {
            if (this.f15445h != null && !this.f15454q) {
                this.f15454q = true;
                View view = this.f15439b;
                if (view != null) {
                    if (view.getVisibility() != 8) {
                        c();
                    }
                }
                this.f15445h.a();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        } finally {
        }
    }

    private void a(Context context, int i2, int i3, nj njVar) {
        if (context == null || njVar == null) {
            return;
        }
        try {
            fl flVarI = njVar.i();
            if (flVarI == null) {
                return;
            }
            String strA = flVarI.a();
            String strD = flVarI.d();
            String strE = flVarI.e();
            String strC = flVarI.c();
            if (TextUtils.isEmpty(strA)) {
                strA = "0";
            }
            if (TextUtils.isEmpty(strD)) {
                strD = "10%";
            }
            if (TextUtils.isEmpty(strE) || "0".equals(strE)) {
                strE = "90%";
            }
            if (TextUtils.isEmpty(strC) || "0".equals(strC)) {
                strC = "80";
            }
            if (strA.endsWith("%")) {
                this.f15446i = (Integer.parseInt(strA.substring(0, strA.indexOf("%"))) * i2) / 100;
            } else {
                this.f15446i = vo.a(context, Integer.parseInt(strA));
            }
            if (strD.endsWith("%")) {
                this.f15447j = (Integer.parseInt(strD.substring(0, strD.indexOf("%"))) * i3) / 100;
            } else {
                this.f15447j = vo.a(context, Integer.parseInt(strD));
            }
            if (strE.endsWith("%")) {
                this.f15448k = (Integer.parseInt(strE.substring(0, strE.indexOf("%"))) * i2) / 100;
            } else {
                this.f15448k = vo.a(context, Integer.parseInt(strE));
            }
            if (strC.endsWith("%")) {
                this.f15449l = (i3 * Integer.parseInt(strC.substring(0, strC.indexOf("%")))) / 100;
            } else {
                this.f15449l = vo.a(context, Integer.parseInt(strC));
            }
            int iJ = vo.j(context);
            this.f15451n = iJ;
            if (this.f15448k > iJ) {
                this.f15448k = iJ;
            }
            int iG = vo.g(context);
            this.f15452o = iG;
            if (this.f15449l > iG) {
                this.f15449l = iG;
            }
            int i4 = this.f15446i;
            int i5 = this.f15448k;
            int i6 = i4 - (i5 / 2);
            this.f15446i = i6;
            if (i6 <= 0) {
                this.f15446i = (i2 - i5) / 2;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
