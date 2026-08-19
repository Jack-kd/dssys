package com.byazt.lb;

import android.content.Context;
import com.byazt.xs.jx;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 1293, 28})
/* loaded from: classes3.dex */
public class hp extends jx<PageWebView> {
    public String hp;

    public hp(Context context) {
        super(context);
    }

    @Override // com.byazt.xs.jx
    /* renamed from: eb, reason: merged with bridge method [inline-methods] */
    public PageWebView hp() {
        return new PageWebView(this.f27777l);
    }

    @Override // com.byazt.xs.jx
    public void l() throws JSONException {
        super.l();
        ((PageWebView) this.f27788w).setMeta(com.byazt.jz.hp.hp(e()));
        ((PageWebView) this.f27788w).l(e());
        ((PageWebView) this.f27788w).setUGenContext(this.f27782q);
        ((PageWebView) this.f27788w).hp();
        ((PageWebView) this.f27788w).hp(this.hp);
    }

    @Override // com.byazt.xs.jx
    public void hp(String str, String str2) {
        super.hp(str, str2);
        str.getClass();
        if (str.equals("src")) {
            this.hp = str2;
        }
    }
}
