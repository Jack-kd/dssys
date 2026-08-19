package com.byazt.ay;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.byazt.dth.TTViewStub;
import com.byazt.jz.sz;
import com.byazt.zn.xh;
import com.umeng.commonsdk.statistics.UMErrorCode;

@com.byazt.kj.hp(hp = {0, 1, 525, UMErrorCode.E_UM_BE_ERROR_WORK_MODE})
/* loaded from: classes2.dex */
public class v {

    /* renamed from: a, reason: collision with root package name */
    public boolean f18437a = false;
    public com.byazt.tw.j eb;
    public View hp;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.oh.l f18438j;
    public Context jx;

    /* renamed from: l, reason: collision with root package name */
    public TextView f18439l;

    /* renamed from: q, reason: collision with root package name */
    public View f18440q;

    /* renamed from: s, reason: collision with root package name */
    public TTViewStub f18441s;

    /* renamed from: w, reason: collision with root package name */
    public l f18442w;

    public enum hp {
        PAUSE_VIDEO,
        RELEASE_VIDEO,
        START_VIDEO
    }

    public interface l {
        boolean e();

        void jl();
    }

    private void j() {
        View view = this.hp;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jx() {
        if (this.jx == null) {
            return;
        }
        j();
    }

    private void l() {
        this.eb = null;
    }

    public void hp(Context context, View view) {
        if (context == null || !(view instanceof ViewGroup)) {
            return;
        }
        this.f18440q = view;
        this.jx = sz.getContext().getApplicationContext();
        try {
            this.f18441s = new TTViewStub(context, new com.byazt.kgm.s());
        } catch (Throwable unused) {
        }
    }

    private void hp(Context context, View view, boolean z2) {
        TTViewStub tTViewStub;
        if (context == null || view == null || (tTViewStub = this.f18441s) == null || tTViewStub.getParent() == null || this.hp != null) {
            return;
        }
        this.f18441s.hp();
        this.hp = view.findViewById(2114387870);
        this.f18439l = (TextView) view.findViewById(2114387817);
        View viewFindViewById = view.findViewById(2114387880);
        if (z2) {
            viewFindViewById.setClickable(true);
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.ay.v.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    v.this.jx();
                    if (v.this.f18438j != null) {
                        v.this.f18438j.hp(hp.START_VIDEO, (String) null);
                    }
                }
            });
        } else {
            viewFindViewById.setOnClickListener(null);
            viewFindViewById.setClickable(false);
        }
    }

    public void hp(com.byazt.oh.l lVar, l lVar2) {
        this.f18442w = lVar2;
        this.f18438j = lVar;
    }

    public boolean hp(int i2, com.byazt.tw.j jVar, boolean z2) {
        Context context = this.jx;
        if (context != null && jVar != null) {
            try {
                hp(context, this.f18440q, z2);
                this.eb = jVar;
                if (i2 == 1 || i2 == 2) {
                    return hp(i2);
                }
                return true;
            } catch (Throwable unused) {
            }
        }
        return true;
    }

    private boolean hp(int i2) {
        l lVar;
        if (hp() || this.f18437a) {
            return true;
        }
        if (this.f18438j != null && (lVar = this.f18442w) != null) {
            if (lVar.e()) {
                this.f18438j.w(null, null);
            }
            this.f18438j.hp(hp.PAUSE_VIDEO, (String) null);
        }
        hp(this.eb, true);
        return false;
    }

    public void hp(boolean z2) {
        if (z2) {
            l();
        }
        j();
    }

    public boolean hp() {
        View view = this.hp;
        return view != null && view.getVisibility() == 0;
    }

    private void hp(com.byazt.tw.j jVar, boolean z2) {
        View view;
        String str;
        View view2;
        if (jVar == null || (view = this.hp) == null || this.jx == null || view.getVisibility() == 0) {
            return;
        }
        l lVar = this.f18442w;
        if (lVar != null) {
            lVar.jl();
        }
        int iCeil = (int) Math.ceil((jVar.getSize() * 1.0d) / 1048576.0d);
        if (z2) {
            str = "播放将消耗" + iCeil + "MB流量";
        } else {
            str = "播放将消耗流量";
        }
        xh.hp(this.hp, 0);
        xh.hp(this.f18439l, str);
        if (!xh.j(this.hp) || (view2 = this.hp) == null) {
            return;
        }
        view2.bringToFront();
    }
}
