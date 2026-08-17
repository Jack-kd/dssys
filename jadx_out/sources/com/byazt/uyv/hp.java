package com.byazt.uyv;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.byazt.fub.gu;
import com.byazt.go.j;
import com.byazt.go.jx;
import com.byazt.qo.v;
import com.byazt.xci.b;
import com.byazt.xci.e;
import com.byazt.xci.mp;
import com.byazt.ymw.u;
import com.byazt.zbc.a;
import com.byazt.zn.lv;
import com.byazt.zn.xh;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1833, 28})
/* loaded from: classes3.dex */
public class hp extends j implements com.byazt.thw.hp, jx {

    /* renamed from: e, reason: collision with root package name */
    public View f26495e;
    public v gu;
    public gu hp;

    /* renamed from: j, reason: collision with root package name */
    public WeakReference<ViewGroup> f26496j;
    public int jl;
    public mp jx;

    /* renamed from: l, reason: collision with root package name */
    public boolean f26497l;

    /* renamed from: w, reason: collision with root package name */
    public volatile boolean f26498w;

    public hp(mp mpVar, WeakReference<ViewGroup> weakReference) {
        super(null);
        this.f26498w = false;
        this.jl = Integer.MIN_VALUE;
        this.jx = mpVar;
        this.f26496j = weakReference;
    }

    private JSONObject j(View view) {
        return new JSONObject();
    }

    private void jx(View view) {
        try {
            hp(view, ((Integer) view.getTag()).intValue());
        } catch (ArrayIndexOutOfBoundsException e2) {
            e2.getMessage();
        } catch (Exception e3) {
            u.l("DynamicClickListener", e3.getMessage());
        }
    }

    @Override // com.byazt.thw.hp
    public void hp(gu guVar) {
        this.hp = guVar;
    }

    @Override // com.byazt.thw.hp
    public void l(View view) {
        this.eb.hp(view);
    }

    private void l() {
        WeakReference<ViewGroup> weakReference = this.f26496j;
        if (weakReference == null || weakReference.get() == null || !lv.hp(this.f26496j.get())) {
            return;
        }
        this.jl = 1;
        jx(this.f26495e);
    }

    @Override // com.byazt.thw.hp
    public void hp(boolean z2, v vVar) {
        this.f26498w = true;
        this.f26497l = z2;
        this.gu = vVar;
        WeakReference<ViewGroup> weakReference = this.f26496j;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        lv.hp(this.f26496j, this);
    }

    @Override // com.byazt.thw.hp
    public void hp(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        this.jl = jSONObject.optInt("convertActionType", Integer.MIN_VALUE);
    }

    @Override // com.byazt.thw.hp
    public void hp(View view) {
        this.eb.l(view);
    }

    @Override // com.byazt.go.j
    public void hp(View view, e eVar) {
        this.f26495e = view;
        if (this.f26498w) {
            this.f26498w = false;
        } else {
            jx(view);
        }
    }

    private void hp(View view, int i2) {
        CharSequence text;
        if (this.hp != null) {
            if (this.f26497l && this.jx != null) {
                a.f28347j = true;
            }
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            View viewQ = this.eb.q();
            if (viewQ != null) {
                int[] iArrHp = xh.hp(viewQ);
                if (iArrHp != null) {
                    iArr = iArrHp;
                }
                int[] iArrJx = xh.jx(viewQ);
                if (iArrJx != null) {
                    iArr2 = iArrJx;
                }
            }
            JSONObject jSONObject = new JSONObject();
            try {
                if ((view instanceof TextView) && (text = ((TextView) view).getText()) != null && text.toString().contains("下载")) {
                    jSONObject.put("is_compliant_download", true);
                }
                jSONObject.putOpt("convertActionType", Integer.valueOf(this.jl));
            } catch (Throwable unused) {
            }
            this.hp.hp(view, i2, new b.hp().j(this.eb.xs()).jx(this.eb.vv()).l(this.eb.ec()).hp(this.eb.sz()).l(this.eb.v()).hp(this.eb.u()).hp(iArr[0]).l(iArr[1]).jx(iArr2[0]).j(iArr2[1]).hp(j(view)).jx(String.valueOf(i2)).l(String.valueOf(view.getTag(2097610714))).hp(String.valueOf(view.getTag(2097610715))).j(String.valueOf(view.getTag(2097610713))).hp(this.eb.s()).hp(jSONObject).hp(this.eb.zy()).hp(), -1);
        }
    }

    @Override // com.byazt.go.jx
    public void hp() {
        l();
        this.f26498w = false;
        v vVar = this.gu;
        if (vVar != null) {
            vVar.w();
        }
    }
}
