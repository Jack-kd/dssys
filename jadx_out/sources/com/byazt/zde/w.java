package com.byazt.zde;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.animation.BounceInterpolator;
import android.view.animation.LinearInterpolator;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 37, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w extends j {
    public w(View view, com.byazt.nw.hp hpVar) {
        super(view, hpVar);
    }

    private void j(List<ObjectAnimator> list) {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.jx, "translationY", 0.0f, -com.byazt.sq.s.hp(com.byazt.wkx.j.getContext(), this.f28382l.sz())).setDuration((int) (this.f28382l.e() * 1000.0d));
        duration.setInterpolator(new BounceInterpolator());
        list.add(hp(duration));
    }

    private void jx(List<ObjectAnimator> list) {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.jx, "translationY", 0.0f, -com.byazt.sq.s.hp(com.byazt.wkx.j.getContext(), this.f28382l.sz())).setDuration((int) (this.f28382l.e() * 1000.0d));
        duration.setInterpolator(new BounceInterpolator());
        duration.addListener(new Animator.AnimatorListener() { // from class: com.byazt.zde.w.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                w.this.jx.setTranslationY(0.0f);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        list.add(hp(duration));
    }

    private void l(List<ObjectAnimator> list) {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.jx, "translationY", 0.0f, -com.byazt.sq.s.hp(com.byazt.wkx.j.getContext(), this.f28382l.sz())).setDuration((int) (this.f28382l.e() * 1000.0d));
        duration.setInterpolator(new BounceInterpolator());
        duration.addListener(new Animator.AnimatorListener() { // from class: com.byazt.zde.w.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                w.this.jx.setTranslationY(0.0f);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        list.add(hp(duration));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:17:0x003d  */
    @Override // com.byazt.zde.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<android.animation.ObjectAnimator> hp() {
        /*
            r5 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            com.byazt.nw.hp r1 = r5.f28382l
            java.lang.String r1 = r1.n()
            int r2 = r1.hashCode()
            r3 = 1
            r4 = 2
            switch(r2) {
                case 3029889: goto L33;
                case 3387192: goto L29;
                case 483313230: goto L1f;
                case 1356771568: goto L15;
                default: goto L14;
            }
        L14:
            goto L3d
        L15:
            java.lang.String r2 = "backwards"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L3d
            r1 = r4
            goto L3e
        L1f:
            java.lang.String r2 = "forwards"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L3d
            r1 = r3
            goto L3e
        L29:
            java.lang.String r2 = "none"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L3d
            r1 = 3
            goto L3e
        L33:
            java.lang.String r2 = "both"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L3d
            r1 = 0
            goto L3e
        L3d:
            r1 = -1
        L3e:
            if (r1 == 0) goto L50
            if (r1 == r3) goto L4c
            if (r1 == r4) goto L48
            r5.jx(r0)
            return r0
        L48:
            r5.l(r0)
            return r0
        L4c:
            r5.j(r0)
            return r0
        L50:
            r5.hp(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.zde.w.hp():java.util.List");
    }

    private void hp(List<ObjectAnimator> list) {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.jx, "translationY", 0.0f, -com.byazt.sq.s.hp(com.byazt.wkx.j.getContext(), this.f28382l.sz())).setDuration(((int) (this.f28382l.e() * 1000.0d)) / 2);
        duration.setInterpolator(new LinearInterpolator());
        duration.setRepeatMode(2);
        com.byazt.nw.hp hpVar = this.f28382l;
        hpVar.a(hpVar.v() * 2);
        list.add(hp(duration));
    }
}
