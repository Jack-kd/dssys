package com.byazt.qk;

import android.view.ViewGroup;
import com.byazt.jz.dy;
import com.byazt.jz.ud;
import com.byazt.xci.mp;
import com.byazt.ykc.SSWebView;
import com.byazt.zn.ky;
import com.byazt.zn.lv;
import java.lang.ref.WeakReference;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 64, 670})
/* loaded from: classes3.dex */
public class d implements SSWebView.l {
    public SSWebView hp;
    public ud jx;

    /* renamed from: l, reason: collision with root package name */
    public mp f24834l;

    public d(SSWebView sSWebView, ud udVar, mp mpVar) {
        this.hp = sSWebView;
        this.f24834l = mpVar;
        this.jx = udVar;
    }

    private boolean hp() {
        SSWebView sSWebView = this.hp;
        if (sSWebView == null) {
            return false;
        }
        return dy.l(sSWebView, 50, ky.jl(this.f24834l));
    }

    @Override // com.byazt.ykc.SSWebView.l
    public void hp(final int i2) throws JSONException {
        if (hp()) {
            if (com.byazt.jz.sz.l().vv()) {
                SSWebView sSWebView = this.hp;
                if (sSWebView != null) {
                    lv.hp((WeakReference<ViewGroup>) new WeakReference((ViewGroup) sSWebView.getParent()), new com.byazt.go.jx() { // from class: com.byazt.qk.d.1
                        @Override // com.byazt.go.jx
                        public void hp() throws JSONException {
                            if (d.this.jx != null) {
                                d.this.jx.hp(i2);
                            }
                        }
                    });
                    return;
                }
                return;
            }
            ud udVar = this.jx;
            if (udVar != null) {
                udVar.hp(i2);
            }
        }
    }
}
