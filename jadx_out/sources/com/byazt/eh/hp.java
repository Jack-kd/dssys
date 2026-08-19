package com.byazt.eh;

import android.view.animation.AnimationSet;
import android.view.animation.TranslateAnimation;

@com.byazt.kj.hp(hp = {0, 1, 1172, 28})
/* loaded from: classes2.dex */
public class hp {
    public static AnimationSet hp() {
        AnimationSet animationSet = new AnimationSet(true);
        TranslateAnimation translateAnimation = new TranslateAnimation(2, 0.0f, 2, 0.0f, 2, 1.0f, 2, 0.0f);
        translateAnimation.setDuration(1000L);
        translateAnimation.setFillAfter(true);
        TranslateAnimation translateAnimation2 = new TranslateAnimation(2, 0.0f, 2, -1.0f, 2, 0.0f, 2, 0.0f);
        translateAnimation2.setDuration(2000L);
        translateAnimation2.setStartOffset(1000L);
        translateAnimation2.setFillAfter(true);
        animationSet.addAnimation(translateAnimation);
        animationSet.addAnimation(translateAnimation2);
        return animationSet;
    }

    public static AnimationSet jx() {
        AnimationSet animationSet = new AnimationSet(true);
        TranslateAnimation translateAnimation = new TranslateAnimation(2, 0.0f, 2, 0.0f, 2, 0.0f, 2, -1.0f);
        translateAnimation.setDuration(1000L);
        animationSet.addAnimation(translateAnimation);
        return animationSet;
    }

    public static AnimationSet l() {
        AnimationSet animationSet = new AnimationSet(true);
        TranslateAnimation translateAnimation = new TranslateAnimation(2, 0.0f, 2, 0.0f, 2, 1.0f, 2, 0.0f);
        translateAnimation.setDuration(1000L);
        animationSet.addAnimation(translateAnimation);
        return animationSet;
    }
}
