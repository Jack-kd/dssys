package com.smartdigimkt.m1;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.smartdigimkt.e5.v;
import com.smartdigimkt.sdk.basead.ui.OwnNativeATView;
import com.smartdigimkt.sdk.basead.ui.SimpleMediaATView;
import com.smartdigimkt.sdk.basead.ui.SimplePlayerMediaView;
import com.smartdigimkt.z.z;
import java.lang.ref.WeakReference;
import java.util.List;

/* loaded from: classes5.dex */
public final class o extends l {

    /* renamed from: E, reason: collision with root package name */
    public FrameLayout f41737E;

    public o(Context context, com.smartdigimkt.m3.k kVar, com.smartdigimkt.l3.a aVar, boolean z2) {
        super(context, kVar, aVar, z2);
    }

    @Override // com.smartdigimkt.m1.t
    public final View a(Context context, v vVar) {
        com.smartdigimkt.m3.e eVar;
        if (this.f41750h == 1 && !TextUtils.isEmpty(this.f41744b.f41818i)) {
            SimplePlayerMediaView simplePlayerMediaView = new SimplePlayerMediaView(context);
            this.f41726r = simplePlayerMediaView;
            simplePlayerMediaView.initPlayerView(this.f41744b, this.f41745c, this.f41727s, this.f41719B);
            this.f41726r.setIsMuted(this.f41748f);
            this.f41726r.setAutoPlay(this.f41749g);
            this.f41726r.setVideoListener(vVar);
            this.f41726r.setPlayerOnClickListener(new b(this));
            return simplePlayerMediaView;
        }
        if (TextUtils.isEmpty(this.f41744b.f41815f)) {
            return null;
        }
        SimpleMediaATView simpleMediaATView = new SimpleMediaATView(context);
        simpleMediaATView.initView(this.f41744b);
        com.smartdigimkt.l3.a aVar = this.f41745c;
        if (aVar != null && (eVar = aVar.f41644r) != null && eVar.f41927e != 1) {
            simpleMediaATView.setOnClickListener(this.f41720C);
        }
        return simpleMediaATView;
    }

    @Override // com.smartdigimkt.m1.t
    public final View b() {
        if (!z.d(this.f41745c)) {
            return null;
        }
        if (this.f41737E == null) {
            FrameLayout frameLayout = new FrameLayout(this.f41743a.getApplicationContext());
            this.f41737E = frameLayout;
            frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            this.f41733y.put("shake_view_extra_container", this.f41737E);
        }
        return this.f41737E;
    }

    @Override // com.smartdigimkt.m1.t
    public final ViewGroup c() {
        OwnNativeATView ownNativeATView = this.f41724p;
        if (ownNativeATView != null) {
            ownNativeATView.releaseAllCallback();
            com.smartdigimkt.u1.c cVar = this.f41719B;
            if (cVar != null) {
                cVar.f44385d = true;
                this.f41719B = null;
            }
        }
        OwnNativeATView ownNativeATView2 = new OwnNativeATView(this.f41743a);
        ownNativeATView2.setClickRecordHelper(this.f41730v);
        this.f41718A = false;
        this.f41724p = ownNativeATView2;
        return ownNativeATView2;
    }

    @Override // com.smartdigimkt.m1.l
    public final View g() {
        View[] viewArr = new View[1];
        a(this.f41724p, viewArr);
        if (viewArr[0] == null) {
            return this.f41724p;
        }
        this.f41725q = new WeakReference(viewArr[0]);
        return viewArr[0];
    }

    @Override // com.smartdigimkt.m1.l
    public final void a(View view, List list, List list2, FrameLayout.LayoutParams layoutParams, View view2) {
        com.smartdigimkt.m3.k kVar;
        Context context;
        super.a(view, list, list2, layoutParams, view2);
        if (this.f41724p == null || (kVar = this.f41744b) == null || this.f41745c == null || TextUtils.isEmpty(kVar.f41799T) || (context = this.f41724p.getContext()) == null) {
            return;
        }
        ImageView imageView = new ImageView(context);
        char[] cArr = com.smartdigimkt.c5.k.f39779a;
        int i2 = (int) ((context.getResources().getDisplayMetrics().density * 5.0f) + 0.5f);
        int i3 = (int) ((context.getResources().getDisplayMetrics().density * 24.0f) + 0.5f);
        int i4 = (int) ((context.getResources().getDisplayMetrics().density * 4.0f) + 0.5f);
        imageView.setPadding(i2, i2, i2, i2);
        imageView.setBackgroundResource(com.smartdigimkt.c5.k.a(context, "myoffer_bg_feedback_button", "drawable"));
        imageView.setImageResource(com.smartdigimkt.c5.k.a(context, "myoffer_feedback_icon", "drawable"));
        if (layoutParams != null) {
            layoutParams.width = i3;
            layoutParams.height = i3;
        } else {
            layoutParams = new FrameLayout.LayoutParams(i3, i3);
            layoutParams.gravity = 83;
            layoutParams.bottomMargin = i4;
            layoutParams.leftMargin = i4;
        }
        imageView.setOnClickListener(new n(this, context));
        this.f41724p.addView(imageView, layoutParams);
    }

    public final void a(View view, View[] viewArr) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                a(viewGroup.getChildAt(i2), viewArr);
            }
            return;
        }
        if ((view instanceof TextView) && TextUtils.equals(((TextView) view).getText().toString(), this.f41744b.f41817h)) {
            viewArr[0] = view;
        }
    }
}
