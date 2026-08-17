package com.sigmob.sdk.base.views;

import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.czhj.sdk.common.network.Networking;
import com.czhj.sdk.common.utils.Md5Util;
import com.czhj.sdk.common.utils.Preconditions;
import com.czhj.sdk.logger.SigmobLog;
import java.io.File;

/* renamed from: com.sigmob.sdk.base.views.o, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1303o extends C1295g {

    /* renamed from: a, reason: collision with root package name */
    private static final String f37135a = "o";

    /* renamed from: b, reason: collision with root package name */
    private final C1290b f37136b;

    /* renamed from: c, reason: collision with root package name */
    private a f37137c;

    /* renamed from: com.sigmob.sdk.base.views.o$a */
    public interface a {
        void onWebViewClick(MotionEvent motionEvent, MotionEvent motionEvent2);
    }

    /* renamed from: com.sigmob.sdk.base.views.o$b */
    public class b implements View.OnTouchListener {

        /* renamed from: a, reason: collision with root package name */
        MotionEvent f37138a;

        /* renamed from: c, reason: collision with root package name */
        private boolean f37140c;

        public b() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f37140c = true;
                this.f37138a = MotionEvent.obtain(motionEvent);
            } else {
                if (action != 1 || !this.f37140c) {
                    return false;
                }
                this.f37140c = false;
                if (C1303o.this.f37137c != null) {
                    C1303o.this.f37137c.onWebViewClick(this.f37138a, motionEvent);
                }
            }
            return false;
        }
    }

    private C1303o(Context context, String str, boolean z2, boolean z3) {
        super(context);
        j();
        com.sigmob.sdk.base.utils.j.a(f37135a, getSettings());
        a(true);
        setBackgroundColor(0);
        if (z2) {
            ViewGroup.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
            C1290b c1290b = new C1290b(getContext().getApplicationContext(), 1);
            this.f37136b = c1290b;
            c1290b.a(str);
            c1290b.b(com.sigmob.sdk.base.k.h());
            addView(c1290b, layoutParams);
        } else {
            this.f37136b = null;
        }
        setOnTouchListener(new b());
    }

    private void j() {
        setHorizontalScrollBarEnabled(false);
        setHorizontalScrollbarOverlay(false);
        setVerticalScrollBarEnabled(false);
        setVerticalScrollbarOverlay(false);
        getSettings().setSupportZoom(false);
        setScrollBarStyle(0);
    }

    @Override // com.sigmob.sdk.base.views.C1295g, android.webkit.WebView
    public void destroy() {
        SigmobLog.d("CreativeWebView destroy() callSigmobLog.d( \"CreativeWebView destroy() called\");ed");
        super.destroy();
        removeAllViews();
    }

    public void setLogoClickListener(View.OnClickListener onClickListener) {
        C1290b c1290b = this.f37136b;
        if (c1290b == null) {
            return;
        }
        c1290b.setOnClickListener(onClickListener);
    }

    public void setWebViewClickListener(a aVar) {
        this.f37137c = aVar;
    }

    public static C1303o a(Context context, String str, boolean z2, boolean z3) {
        Preconditions.NoThrow.checkNotNull(context);
        return new C1303o(context, str, z2, z3);
    }

    public void a(String str) {
        File fileB = com.sigmob.sdk.base.utils.n.b(str, Md5Util.md5(str) + ".html");
        if (fileB == null || TextUtils.isEmpty(fileB.getAbsolutePath())) {
            loadDataWithBaseURL(Networking.getBaseUrlScheme() + "://localhost/", str, "text/html", "utf-8", null);
            return;
        }
        loadUrl("file://" + fileB.getAbsolutePath());
    }
}
