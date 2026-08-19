package com.byazt.yni;

import android.view.View;
import com.byazt.fjm.RecyclerView;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.ig.RewardDrawRecyclerView;
import com.byazt.ig.RewardGuideSlideUp;
import com.byazt.xci.mp;
import com.byazt.zn.xh;

@com.byazt.kj.hp(hp = {0, 1, 316, 38})
/* loaded from: classes3.dex */
public class j extends l {
    public float ec;

    /* renamed from: k, reason: collision with root package name */
    public boolean f28189k;

    /* renamed from: n, reason: collision with root package name */
    public boolean f28190n;
    public boolean ns;
    public float sz;

    /* renamed from: u, reason: collision with root package name */
    public RewardDrawRecyclerView f28191u;

    /* renamed from: v, reason: collision with root package name */
    public RewardGuideSlideUp f28192v;
    public com.byazt.ig.jx vv;
    public com.byazt.ig.hp xs;

    public j(TTBaseVideoActivity tTBaseVideoActivity, mp mpVar, boolean z2) {
        super(tTBaseVideoActivity, mpVar, z2);
        this.f28190n = true;
    }

    public void a() {
        if (this.f28189k) {
            this.f28190n = false;
            if (this.ns) {
                xh.hp((View) this.f28192v, 8);
                RewardGuideSlideUp rewardGuideSlideUp = this.f28192v;
                if (rewardGuideSlideUp != null) {
                    rewardGuideSlideUp.l();
                }
                this.ns = false;
            }
        }
    }

    @Override // com.byazt.yni.l
    public void e() {
        super.e();
        a();
    }

    public com.byazt.ig.jx j() {
        return this.vv;
    }

    public void w() {
        if (this.f28189k && this.f28190n) {
            this.eb.postDelayed(new Runnable() { // from class: com.byazt.yni.j.1
                @Override // java.lang.Runnable
                public void run() {
                    if (j.this.f28189k && j.this.f28190n) {
                        j.this.f28190n = false;
                        xh.hp((View) j.this.f28192v, 0);
                        j.this.f28192v.getSlideUpAnimatorSet().start();
                        j.this.ns = true;
                        j.this.eb.postDelayed(new Runnable() { // from class: com.byazt.yni.j.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                j.this.a();
                            }
                        }, 3000L);
                    }
                }
            }, 0L);
        }
    }

    public com.byazt.ig.hp jx() {
        return this.xs;
    }

    public void hp(float[] fArr) {
        this.ec = fArr[0];
        this.sz = fArr[1];
    }

    public RecyclerView l() {
        return this.f28191u;
    }

    @Override // com.byazt.yni.l
    public void hp() {
        super.hp();
        this.f28191u = (RewardDrawRecyclerView) this.eb.findViewById(2114387885);
        com.byazt.ig.jx jxVar = new com.byazt.ig.jx(this.f28200l, 0, false);
        this.vv = jxVar;
        this.f28191u.setLayoutManager(jxVar);
        com.byazt.ig.hp hpVar = new com.byazt.ig.hp(this.f28200l, this.ec, this.sz);
        this.xs = hpVar;
        this.f28191u.setAdapter(hpVar);
        if (this.f28189k) {
            RewardGuideSlideUp rewardGuideSlideUp = (RewardGuideSlideUp) this.eb.findViewById(2114387966);
            this.f28192v = rewardGuideSlideUp;
            rewardGuideSlideUp.hp();
        }
    }

    public void hp(boolean z2) {
        com.byazt.ig.jx jxVar = this.vv;
        if (jxVar == null) {
            return;
        }
        jxVar.l(false);
    }
}
