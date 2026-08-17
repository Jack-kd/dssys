package com.ubix.ssp.ad.c.c;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.sigmob.sdk.base.common.C1244a;
import com.ubix.ssp.ad.e.v.e;
import java.util.HashMap;

/* loaded from: classes5.dex */
public class d extends c {

    public class a extends AnimatorListenerAdapter {
        public a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            AnimatorSet animatorSet = d.this.f45705i;
            if (animatorSet != null) {
                animatorSet.start();
            }
        }
    }

    public d(Context context, Bundle bundle) {
        super(context, bundle);
    }

    private void a() {
        try {
            View viewFindViewById = findViewById(500104);
            if (viewFindViewById == null) {
                return;
            }
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewFindViewById, "scaleX", 1.0f, 1.05f);
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(viewFindViewById, "scaleY", 1.0f, 1.05f);
            ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(viewFindViewById, "scaleX", 1.05f, 1.0f);
            ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(viewFindViewById, "scaleY", 1.05f, 1.0f);
            ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(viewFindViewById, C1244a.f35650B, 0.0f, 8.0f, -8.0f, 8.0f, -8.0f, 8.0f, -8.0f, 0.0f);
            ObjectAnimator objectAnimatorOfFloat6 = ObjectAnimator.ofFloat(viewFindViewById, "empty", 1.0f, 1.0f);
            long j2 = 100;
            objectAnimatorOfFloat.setDuration(j2);
            objectAnimatorOfFloat2.setDuration(j2);
            objectAnimatorOfFloat3.setDuration(j2);
            objectAnimatorOfFloat4.setDuration(j2);
            objectAnimatorOfFloat5.setDuration(AVMDLDataLoader.KeyIsSetAlogFuncPtr);
            objectAnimatorOfFloat6.setDuration(900);
            this.f45705i.play(objectAnimatorOfFloat6).with(objectAnimatorOfFloat5).with(objectAnimatorOfFloat).with(objectAnimatorOfFloat2).before(objectAnimatorOfFloat3).before(objectAnimatorOfFloat4);
            this.f45705i.setStartDelay(600);
            this.f45705i.start();
            this.f45705i.addListener(new a());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            AnimatorSet animatorSet = this.f45705i;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.f45705i.removeAllListeners();
                this.f45705i = null;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
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
        for (int i6 = 0; i6 < getChildCount(); i6++) {
            View childAt = getChildAt(i6);
            switch (childAt.getId()) {
                case 500101:
                    int i7 = this.f45697a * 5;
                    int i8 = (i5 - i3) - i7;
                    childAt.layout(i7, i7, i8, i8);
                    break;
                case 500102:
                    int i9 = i5 - i3;
                    int i10 = this.f45697a;
                    childAt.layout(i9 - (i10 * 2), (int) (i10 * 3.5d), (i4 - i9) - (i10 * 4), i9 / 2);
                    break;
                case 500103:
                    int i11 = i5 - i3;
                    int i12 = this.f45697a;
                    childAt.layout(i11 - (i12 * 2), (int) ((i11 / 2) - (i12 * 0.5d)), (i4 - i11) - (i12 * 4), i11 - (i12 * 3));
                    break;
                case 500104:
                    int i13 = this.f45697a;
                    double d2 = i13 * 3.5d;
                    int i14 = i13 * 8;
                    childAt.layout((int) ((i4 - r1) - d2), i14, (int) (i4 - d2), (i5 - i3) - i14);
                    break;
            }
        }
    }

    @Override // com.ubix.ssp.ad.c.c.c
    public boolean a(Bundle bundle) {
        setBackground(com.ubix.ssp.ad.e.a0.c.a(Color.parseColor("#00000000"), -16777216, 0));
        String string = bundle.getString("ICON_URL");
        String string2 = bundle.getString("TITLE");
        String string3 = bundle.getString("SUB_TITLE");
        String string4 = bundle.getString("BUTTON_TEXT");
        boolean z2 = bundle.getBoolean("IS_DOWNLOAD", false);
        e.b().a(string, (ImageView) findViewById(500101), -1, null);
        ((TextView) findViewById(500102)).setText(string2);
        ((TextView) findViewById(500103)).setText(string3);
        TextView textView = (TextView) findViewById(500104);
        if (TextUtils.isEmpty(string4)) {
            string4 = z2 ? "立即下载" : "查看详情";
        }
        textView.setText(string4);
        a();
        return false;
    }
}
