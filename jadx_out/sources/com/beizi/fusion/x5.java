package com.beizi.fusion;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.beizi.fusion.w5;

/* loaded from: classes2.dex */
public class x5 {

    /* renamed from: a, reason: collision with root package name */
    private TextView f17423a;

    /* renamed from: b, reason: collision with root package name */
    private b f17424b;

    public class a implements View.OnClickListener {

        /* renamed from: com.beizi.fusion.x5$a$a, reason: collision with other inner class name */
        public class C0178a implements w5.b {
            public C0178a() {
            }

            @Override // com.beizi.fusion.w5.b
            public void a() {
            }

            @Override // com.beizi.fusion.w5.b
            public void a(String str) {
                if (x5.this.f17424b != null) {
                    x5.this.f17424b.a(str);
                }
            }
        }

        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                Context context = x5.this.f17423a.getContext();
                View rootView = x5.this.f17423a.getRootView();
                if (rootView != null) {
                    context = rootView.getContext();
                }
                w5.a aVar = new w5.a(context);
                aVar.a(new C0178a());
                aVar.a().show();
            } catch (Exception e2) {
                mh.b("BeiZis", "e ：" + e2);
            }
        }
    }

    public interface b {
        void a(String str);
    }

    public void a(Context context, ViewGroup viewGroup, String str) {
        try {
            a(context, str);
            TextView textView = this.f17423a;
            if (textView != null) {
                viewGroup.addView(textView);
            }
        } catch (Exception unused) {
        }
    }

    private void a(Context context, String str) {
        try {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            TextView textView = new TextView(context);
            this.f17423a = textView;
            textView.setText("投诉");
            this.f17423a.setTextColor(Color.parseColor("#FFFFFF"));
            yn.a(this.f17423a, "#99000000", 0, "", 30);
            if ("1".equals(str)) {
                this.f17423a.setTextSize(2, 13.0f);
                this.f17423a.setPadding(vo.a(context, 12.0f), vo.a(context, 1.0f), vo.a(context, 12.0f), vo.a(context, 1.0f));
                layoutParams.leftMargin = 18;
                layoutParams.topMargin = 18;
            } else if ("2".equals(str)) {
                this.f17423a.setTextSize(2, 13.0f);
                this.f17423a.setPadding(vo.a(context, 12.0f), vo.a(context, 1.0f), vo.a(context, 12.0f), vo.a(context, 1.0f));
                layoutParams.leftMargin = vo.a(context, 16.0f);
                layoutParams.topMargin = vo.a(context, 16.0f);
            } else if ("3".equals(str)) {
                this.f17423a.setTextSize(2, 10.0f);
                this.f17423a.setPadding(vo.a(context, 11.0f), vo.a(context, 1.0f), vo.a(context, 11.0f), vo.a(context, 1.0f));
                layoutParams.leftMargin = 16;
                layoutParams.topMargin = 16;
            }
            this.f17423a.setLayoutParams(layoutParams);
            a();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void a() {
        try {
            this.f17423a.setOnClickListener(new a());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void a(b bVar) {
        this.f17424b = bVar;
    }
}
