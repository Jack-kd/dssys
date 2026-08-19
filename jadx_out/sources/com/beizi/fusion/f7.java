package com.beizi.fusion;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;

/* loaded from: classes2.dex */
public abstract class f7 {

    public class a implements Animation.AnimationListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f13850a;

        public a(View view) {
            this.f13850a = view;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            try {
                View view = this.f13850a;
                if (view != null) {
                    view.setVisibility(8);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0093  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(android.view.View r8, int r9, int r10, int r11, int r12, int r13, int r14) {
        /*
            Method dump skipped, instructions count: 211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.f7.a(android.view.View, int, int, int, int, int, int):void");
    }

    public static void a(View view, int i2, int i3, int i4, int i5) {
        TranslateAnimation translateAnimation;
        TranslateAnimation translateAnimation2;
        if (view == null) {
            return;
        }
        try {
            if (view.getVisibility() == 8) {
                return;
            }
            if (i4 == 0) {
                translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, 0.0f, 1, -1.0f);
            } else if (i4 == 1) {
                translateAnimation = new TranslateAnimation(1, 0.0f, 1, -1.0f, 1, 0.0f, 1, 0.0f);
            } else if (i4 == 2) {
                translateAnimation = new TranslateAnimation(1, 0.0f, 0, i2, 1, 0.0f, 1, 0.0f);
            } else if (i4 == 3) {
                translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, 0.0f, 0, i3);
            } else {
                translateAnimation2 = null;
                translateAnimation2.setDuration(i5);
                translateAnimation2.setAnimationListener(new a(view));
                view.startAnimation(translateAnimation2);
            }
            translateAnimation2 = translateAnimation;
            translateAnimation2.setDuration(i5);
            translateAnimation2.setAnimationListener(new a(view));
            view.startAnimation(translateAnimation2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
