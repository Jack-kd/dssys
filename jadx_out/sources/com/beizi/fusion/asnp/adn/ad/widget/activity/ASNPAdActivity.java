package com.beizi.fusion.asnp.adn.ad.widget.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.RelativeLayout;
import android.window.OnBackInvokedCallback;
import com.beizi.fusion.C1124a;
import com.beizi.fusion.C1126b;
import com.beizi.fusion.ih;
import com.beizi.fusion.rm;

/* loaded from: classes2.dex */
public class ASNPAdActivity extends Activity {

    /* renamed from: a, reason: collision with root package name */
    private String f12957a;

    /* renamed from: b, reason: collision with root package name */
    private String f12958b;

    /* renamed from: c, reason: collision with root package name */
    private String f12959c;

    /* renamed from: d, reason: collision with root package name */
    private RelativeLayout f12960d;

    public class a implements OnBackInvokedCallback {
        public a() {
        }

        public void onBackInvoked() {
        }
    }

    public class b implements ViewGroup.OnHierarchyChangeListener {
        public b() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            if (!(view instanceof ViewGroup) || ((ViewGroup) view).getChildCount() > 0) {
                return;
            }
            ASNPAdActivity.this.a(false, "");
        }
    }

    private void b() {
        if (Build.VERSION.SDK_INT >= 33) {
            getOnBackInvokedDispatcher().registerOnBackInvokedCallback(0, new a());
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        b();
        if (intent == null) {
            a(true, "Intent为空...");
            return;
        }
        Bundle bundleExtra = intent.getBundleExtra("AdBundle");
        if (bundleExtra != null) {
            this.f12957a = bundleExtra.getString("SpaceId");
            this.f12958b = bundleExtra.getString("AdType");
            this.f12959c = bundleExtra.getString("consumeId");
        }
        if (!a(this.f12957a, this.f12958b, this.f12959c)) {
            a(true, "无效的广告信息...");
            return;
        }
        View viewA = ((C1124a) C1126b.a().b(getApplicationContext())).a(this.f12959c);
        a(viewA);
        if (viewA == null) {
            a(true, "无效的渲染View...");
            return;
        }
        a();
        RelativeLayout relativeLayout = this.f12960d;
        if (relativeLayout != null) {
            relativeLayout.addView(viewA, new ViewGroup.LayoutParams(-2, -2));
        } else {
            a(true, "无效的contentView...");
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f12960d = null;
    }

    private void a(View view) {
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view);
            }
        }
    }

    public void a() {
        RelativeLayout relativeLayout = new RelativeLayout(this);
        this.f12960d = relativeLayout;
        addContentView(relativeLayout, new ViewGroup.LayoutParams(-1, -1));
        this.f12960d.setOnHierarchyChangeListener(new b());
    }

    private boolean a(String str, String str2, String str3) {
        return (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z2, String str) {
        rm.b("ASNPAdActivity", "广告Activity异常..." + str);
        if (z2) {
            a(str);
        }
        finish();
    }

    private void a(String str) {
        Intent intent = new Intent();
        intent.putExtra("Result", str);
        intent.setAction("com.asnp.ad.ACTION_ACTIVITY_RESULT");
        ih.a(getApplicationContext()).a(intent);
    }
}
