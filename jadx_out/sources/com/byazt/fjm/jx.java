package com.byazt.fjm;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import com.byazt.fjm.RecyclerView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 30})
/* loaded from: classes2.dex */
public class jx extends gu {

    /* renamed from: q, reason: collision with root package name */
    public static TimeInterpolator f19998q;

    /* renamed from: e, reason: collision with root package name */
    public ArrayList<RecyclerView.cx> f20000e = new ArrayList<>();
    public ArrayList<RecyclerView.cx> gu = new ArrayList<>();
    public ArrayList<l> jl = new ArrayList<>();
    public ArrayList<hp> zy = new ArrayList<>();
    public ArrayList<ArrayList<RecyclerView.cx>> hp = new ArrayList<>();

    /* renamed from: l, reason: collision with root package name */
    public ArrayList<ArrayList<l>> f20002l = new ArrayList<>();
    public ArrayList<ArrayList<hp>> jx = new ArrayList<>();

    /* renamed from: j, reason: collision with root package name */
    public ArrayList<RecyclerView.cx> f20001j = new ArrayList<>();

    /* renamed from: w, reason: collision with root package name */
    public ArrayList<RecyclerView.cx> f20003w = new ArrayList<>();

    /* renamed from: a, reason: collision with root package name */
    public ArrayList<RecyclerView.cx> f19999a = new ArrayList<>();
    public ArrayList<RecyclerView.cx> eb = new ArrayList<>();

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 224})
    public static class l {
        public RecyclerView.cx hp;

        /* renamed from: j, reason: collision with root package name */
        public int f20023j;
        public int jx;

        /* renamed from: l, reason: collision with root package name */
        public int f20024l;

        /* renamed from: w, reason: collision with root package name */
        public int f20025w;

        public l(RecyclerView.cx cxVar, int i2, int i3, int i4, int i5) {
            this.hp = cxVar;
            this.f20024l = i2;
            this.jx = i3;
            this.f20023j = i4;
            this.f20025w = i5;
        }
    }

    private void gu(final RecyclerView.cx cxVar) {
        final View view = cxVar.hp;
        final ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.f19999a.add(cxVar);
        viewPropertyAnimatorAnimate.setDuration(eb()).alpha(0.0f).setListener(new AnimatorListenerAdapter() { // from class: com.byazt.fjm.jx.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                viewPropertyAnimatorAnimate.setListener(null);
                view.setAlpha(1.0f);
                jx.this.s(cxVar);
                jx.this.f19999a.remove(cxVar);
                jx.this.jx();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        }).start();
    }

    private void jl(RecyclerView.cx cxVar) {
        if (f19998q == null) {
            f19998q = new ValueAnimator().getInterpolator();
        }
        cxVar.hp.animate().setInterpolator(f19998q);
        j(cxVar);
    }

    @Override // com.byazt.fjm.RecyclerView.a
    public void hp() {
        boolean zIsEmpty = this.f20000e.isEmpty();
        boolean zIsEmpty2 = this.jl.isEmpty();
        boolean zIsEmpty3 = this.zy.isEmpty();
        boolean zIsEmpty4 = this.gu.isEmpty();
        if (zIsEmpty && zIsEmpty2 && zIsEmpty4 && zIsEmpty3) {
            return;
        }
        ArrayList<RecyclerView.cx> arrayList = this.f20000e;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            RecyclerView.cx cxVar = arrayList.get(i2);
            i2++;
            gu(cxVar);
        }
        this.f20000e.clear();
        if (!zIsEmpty2) {
            final ArrayList<l> arrayList2 = new ArrayList<>();
            arrayList2.addAll(this.jl);
            this.f20002l.add(arrayList2);
            this.jl.clear();
            Runnable runnable = new Runnable() { // from class: com.byazt.fjm.jx.1
                @Override // java.lang.Runnable
                public void run() {
                    ArrayList arrayList3 = arrayList2;
                    int size2 = arrayList3.size();
                    int i3 = 0;
                    while (i3 < size2) {
                        Object obj = arrayList3.get(i3);
                        i3++;
                        l lVar = (l) obj;
                        jx.this.l(lVar.hp, lVar.f20024l, lVar.jx, lVar.f20023j, lVar.f20025w);
                    }
                    arrayList2.clear();
                    jx.this.f20002l.remove(arrayList2);
                }
            };
            if (zIsEmpty) {
                runnable.run();
            } else {
                com.byazt.ln.eb.hp(arrayList2.get(0).hp.hp, runnable, eb());
            }
        }
        if (!zIsEmpty3) {
            final ArrayList<hp> arrayList3 = new ArrayList<>();
            arrayList3.addAll(this.zy);
            this.jx.add(arrayList3);
            this.zy.clear();
            Runnable runnable2 = new Runnable() { // from class: com.byazt.fjm.jx.2
                @Override // java.lang.Runnable
                public void run() {
                    ArrayList arrayList4 = arrayList3;
                    int size2 = arrayList4.size();
                    int i3 = 0;
                    while (i3 < size2) {
                        Object obj = arrayList4.get(i3);
                        i3++;
                        jx.this.hp((hp) obj);
                    }
                    arrayList3.clear();
                    jx.this.jx.remove(arrayList3);
                }
            };
            if (zIsEmpty) {
                runnable2.run();
            } else {
                com.byazt.ln.eb.hp(arrayList3.get(0).hp.hp, runnable2, eb());
            }
        }
        if (zIsEmpty4) {
            return;
        }
        final ArrayList<RecyclerView.cx> arrayList4 = new ArrayList<>();
        arrayList4.addAll(this.gu);
        this.hp.add(arrayList4);
        this.gu.clear();
        Runnable runnable3 = new Runnable() { // from class: com.byazt.fjm.jx.3
            @Override // java.lang.Runnable
            public void run() {
                ArrayList arrayList5 = arrayList4;
                int size2 = arrayList5.size();
                int i3 = 0;
                while (i3 < size2) {
                    Object obj = arrayList5.get(i3);
                    i3++;
                    jx.this.jx((RecyclerView.cx) obj);
                }
                arrayList4.clear();
                jx.this.hp.remove(arrayList4);
            }
        };
        if (zIsEmpty && zIsEmpty2 && zIsEmpty3) {
            runnable3.run();
        } else {
            com.byazt.ln.eb.hp(arrayList4.get(0).hp, runnable3, (!zIsEmpty ? eb() : 0L) + Math.max(!zIsEmpty2 ? w() : 0L, zIsEmpty3 ? 0L : s()));
        }
    }

    @Override // com.byazt.fjm.RecyclerView.a
    public void j(RecyclerView.cx cxVar) {
        View view = cxVar.hp;
        view.animate().cancel();
        int size = this.jl.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (this.jl.get(size).hp == cxVar) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                q(cxVar);
                this.jl.remove(size);
            }
        }
        hp(this.zy, cxVar);
        if (this.f20000e.remove(cxVar)) {
            view.setAlpha(1.0f);
            s(cxVar);
        }
        if (this.gu.remove(cxVar)) {
            view.setAlpha(1.0f);
            e(cxVar);
        }
        for (int size2 = this.jx.size() - 1; size2 >= 0; size2--) {
            ArrayList<hp> arrayList = this.jx.get(size2);
            hp(arrayList, cxVar);
            if (arrayList.isEmpty()) {
                this.jx.remove(size2);
            }
        }
        for (int size3 = this.f20002l.size() - 1; size3 >= 0; size3--) {
            ArrayList<l> arrayList2 = this.f20002l.get(size3);
            int size4 = arrayList2.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                }
                if (arrayList2.get(size4).hp == cxVar) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    q(cxVar);
                    arrayList2.remove(size4);
                    if (arrayList2.isEmpty()) {
                        this.f20002l.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        for (int size5 = this.hp.size() - 1; size5 >= 0; size5--) {
            ArrayList<RecyclerView.cx> arrayList3 = this.hp.get(size5);
            if (arrayList3.remove(cxVar)) {
                view.setAlpha(1.0f);
                e(cxVar);
                if (arrayList3.isEmpty()) {
                    this.hp.remove(size5);
                }
            }
        }
        this.f19999a.remove(cxVar);
        this.f20001j.remove(cxVar);
        this.eb.remove(cxVar);
        this.f20003w.remove(cxVar);
        jx();
    }

    public void jx(final RecyclerView.cx cxVar) {
        final View view = cxVar.hp;
        final ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.f20001j.add(cxVar);
        viewPropertyAnimatorAnimate.alpha(1.0f).setDuration(a()).setListener(new AnimatorListenerAdapter() { // from class: com.byazt.fjm.jx.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                view.setAlpha(1.0f);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                viewPropertyAnimatorAnimate.setListener(null);
                jx.this.e(cxVar);
                jx.this.f20001j.remove(cxVar);
                jx.this.jx();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        }).start();
    }

    @Override // com.byazt.fjm.gu
    public boolean l(RecyclerView.cx cxVar) {
        jl(cxVar);
        cxVar.hp.setAlpha(0.0f);
        this.gu.add(cxVar);
        return true;
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 219})
    public static class hp {

        /* renamed from: a, reason: collision with root package name */
        public int f20019a;
        public RecyclerView.cx hp;

        /* renamed from: j, reason: collision with root package name */
        public int f20020j;
        public int jx;

        /* renamed from: l, reason: collision with root package name */
        public RecyclerView.cx f20021l;

        /* renamed from: w, reason: collision with root package name */
        public int f20022w;

        private hp(RecyclerView.cx cxVar, RecyclerView.cx cxVar2) {
            this.hp = cxVar;
            this.f20021l = cxVar2;
        }

        public String toString() {
            return "ChangeInfo{oldHolder=" + this.hp + ", newHolder=" + this.f20021l + ", fromX=" + this.jx + ", fromY=" + this.f20020j + ", toX=" + this.f20022w + ", toY=" + this.f20019a + '}';
        }

        public hp(RecyclerView.cx cxVar, RecyclerView.cx cxVar2, int i2, int i3, int i4, int i5) {
            this(cxVar, cxVar2);
            this.jx = i2;
            this.f20020j = i3;
            this.f20022w = i4;
            this.f20019a = i5;
        }
    }

    public void l(final RecyclerView.cx cxVar, int i2, int i3, int i4, int i5) {
        final View view = cxVar.hp;
        final int i6 = i4 - i2;
        final int i7 = i5 - i3;
        if (i6 != 0) {
            view.animate().translationX(0.0f);
        }
        if (i7 != 0) {
            view.animate().translationY(0.0f);
        }
        final ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.f20003w.add(cxVar);
        viewPropertyAnimatorAnimate.setDuration(w()).setListener(new AnimatorListenerAdapter() { // from class: com.byazt.fjm.jx.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                if (i6 != 0) {
                    view.setTranslationX(0.0f);
                }
                if (i7 != 0) {
                    view.setTranslationY(0.0f);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                viewPropertyAnimatorAnimate.setListener(null);
                jx.this.q(cxVar);
                jx.this.f20003w.remove(cxVar);
                jx.this.jx();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        }).start();
    }

    public void jx() {
        if (l()) {
            return;
        }
        q();
    }

    private void l(hp hpVar) {
        RecyclerView.cx cxVar = hpVar.hp;
        if (cxVar != null) {
            hp(hpVar, cxVar);
        }
        RecyclerView.cx cxVar2 = hpVar.f20021l;
        if (cxVar2 != null) {
            hp(hpVar, cxVar2);
        }
    }

    @Override // com.byazt.fjm.RecyclerView.a
    public boolean l() {
        return (this.gu.isEmpty() && this.zy.isEmpty() && this.jl.isEmpty() && this.f20000e.isEmpty() && this.f20003w.isEmpty() && this.f19999a.isEmpty() && this.f20001j.isEmpty() && this.eb.isEmpty() && this.f20002l.isEmpty() && this.hp.isEmpty() && this.jx.isEmpty()) ? false : true;
    }

    @Override // com.byazt.fjm.gu
    public boolean hp(RecyclerView.cx cxVar) {
        jl(cxVar);
        this.f20000e.add(cxVar);
        return true;
    }

    @Override // com.byazt.fjm.gu
    public boolean hp(RecyclerView.cx cxVar, int i2, int i3, int i4, int i5) {
        View view = cxVar.hp;
        int translationX = i2 + ((int) view.getTranslationX());
        int translationY = i3 + ((int) cxVar.hp.getTranslationY());
        jl(cxVar);
        int i6 = i4 - translationX;
        int i7 = i5 - translationY;
        if (i6 == 0 && i7 == 0) {
            q(cxVar);
            return false;
        }
        if (i6 != 0) {
            view.setTranslationX(-i6);
        }
        if (i7 != 0) {
            view.setTranslationY(-i7);
        }
        this.jl.add(new l(cxVar, translationX, translationY, i4, i5));
        return true;
    }

    @Override // com.byazt.fjm.RecyclerView.a
    public void j() {
        int size = this.jl.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            l lVar = this.jl.get(size);
            View view = lVar.hp.hp;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            q(lVar.hp);
            this.jl.remove(size);
        }
        for (int size2 = this.f20000e.size() - 1; size2 >= 0; size2--) {
            s(this.f20000e.get(size2));
            this.f20000e.remove(size2);
        }
        int size3 = this.gu.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            RecyclerView.cx cxVar = this.gu.get(size3);
            cxVar.hp.setAlpha(1.0f);
            e(cxVar);
            this.gu.remove(size3);
        }
        for (int size4 = this.zy.size() - 1; size4 >= 0; size4--) {
            l(this.zy.get(size4));
        }
        this.zy.clear();
        if (l()) {
            for (int size5 = this.f20002l.size() - 1; size5 >= 0; size5--) {
                ArrayList<l> arrayList = this.f20002l.get(size5);
                for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                    l lVar2 = arrayList.get(size6);
                    View view2 = lVar2.hp.hp;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    q(lVar2.hp);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.f20002l.remove(arrayList);
                    }
                }
            }
            for (int size7 = this.hp.size() - 1; size7 >= 0; size7--) {
                ArrayList<RecyclerView.cx> arrayList2 = this.hp.get(size7);
                for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                    RecyclerView.cx cxVar2 = arrayList2.get(size8);
                    cxVar2.hp.setAlpha(1.0f);
                    e(cxVar2);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.hp.remove(arrayList2);
                    }
                }
            }
            for (int size9 = this.jx.size() - 1; size9 >= 0; size9--) {
                ArrayList<hp> arrayList3 = this.jx.get(size9);
                for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                    l(arrayList3.get(size10));
                    if (arrayList3.isEmpty()) {
                        this.jx.remove(arrayList3);
                    }
                }
            }
            hp(this.f19999a);
            hp(this.f20003w);
            hp(this.f20001j);
            hp(this.eb);
            q();
        }
    }

    @Override // com.byazt.fjm.gu
    public boolean hp(RecyclerView.cx cxVar, RecyclerView.cx cxVar2, int i2, int i3, int i4, int i5) {
        if (cxVar == cxVar2) {
            return hp(cxVar, i2, i3, i4, i5);
        }
        float translationX = cxVar.hp.getTranslationX();
        float translationY = cxVar.hp.getTranslationY();
        float alpha = cxVar.hp.getAlpha();
        jl(cxVar);
        int i6 = (int) ((i4 - i2) - translationX);
        int i7 = (int) ((i5 - i3) - translationY);
        cxVar.hp.setTranslationX(translationX);
        cxVar.hp.setTranslationY(translationY);
        cxVar.hp.setAlpha(alpha);
        if (cxVar2 != null) {
            jl(cxVar2);
            cxVar2.hp.setTranslationX(-i6);
            cxVar2.hp.setTranslationY(-i7);
            cxVar2.hp.setAlpha(0.0f);
        }
        this.zy.add(new hp(cxVar, cxVar2, i2, i3, i4, i5));
        return true;
    }

    public void hp(final hp hpVar) {
        RecyclerView.cx cxVar = hpVar.hp;
        final View view = cxVar == null ? null : cxVar.hp;
        RecyclerView.cx cxVar2 = hpVar.f20021l;
        final View view2 = cxVar2 != null ? cxVar2.hp : null;
        if (view != null) {
            final ViewPropertyAnimator duration = view.animate().setDuration(s());
            this.eb.add(hpVar.hp);
            duration.translationX(hpVar.f20022w - hpVar.jx);
            duration.translationY(hpVar.f20019a - hpVar.f20020j);
            duration.alpha(0.0f).setListener(new AnimatorListenerAdapter() { // from class: com.byazt.fjm.jx.7
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    duration.setListener(null);
                    view.setAlpha(1.0f);
                    view.setTranslationX(0.0f);
                    view.setTranslationY(0.0f);
                    jx.this.hp(hpVar.hp, true);
                    jx.this.eb.remove(hpVar.hp);
                    jx.this.jx();
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                }
            }).start();
        }
        if (view2 != null) {
            final ViewPropertyAnimator viewPropertyAnimatorAnimate = view2.animate();
            this.eb.add(hpVar.f20021l);
            viewPropertyAnimatorAnimate.translationX(0.0f).translationY(0.0f).setDuration(s()).alpha(1.0f).setListener(new AnimatorListenerAdapter() { // from class: com.byazt.fjm.jx.8
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    viewPropertyAnimatorAnimate.setListener(null);
                    view2.setAlpha(1.0f);
                    view2.setTranslationX(0.0f);
                    view2.setTranslationY(0.0f);
                    jx.this.hp(hpVar.f20021l, false);
                    jx.this.eb.remove(hpVar.f20021l);
                    jx.this.jx();
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                }
            }).start();
        }
    }

    private void hp(List<hp> list, RecyclerView.cx cxVar) {
        for (int size = list.size() - 1; size >= 0; size--) {
            hp hpVar = list.get(size);
            if (hp(hpVar, cxVar) && hpVar.hp == null && hpVar.f20021l == null) {
                list.remove(hpVar);
            }
        }
    }

    private boolean hp(hp hpVar, RecyclerView.cx cxVar) {
        boolean z2 = false;
        if (hpVar.f20021l == cxVar) {
            hpVar.f20021l = null;
        } else {
            if (hpVar.hp != cxVar) {
                return false;
            }
            hpVar.hp = null;
            z2 = true;
        }
        cxVar.hp.setAlpha(1.0f);
        cxVar.hp.setTranslationX(0.0f);
        cxVar.hp.setTranslationY(0.0f);
        hp(cxVar, z2);
        return true;
    }

    public void hp(List<RecyclerView.cx> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            list.get(size).hp.animate().cancel();
        }
    }

    @Override // com.byazt.fjm.RecyclerView.a
    public boolean hp(RecyclerView.cx cxVar, List<Object> list) {
        return !list.isEmpty() || super.hp(cxVar, list);
    }
}
