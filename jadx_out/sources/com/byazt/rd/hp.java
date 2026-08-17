package com.byazt.rd;

import android.content.Context;
import android.text.TextUtils;
import android.widget.ImageView;
import com.byazt.qp.RoundImageView;
import com.byazt.qp.l;
import com.kwad.library.solder.lib.ext.PluginError;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, PluginError.ERROR_UPD_NO_DOWNLOADER, 28})
/* loaded from: classes3.dex */
public abstract class hp extends l {

    /* renamed from: h, reason: collision with root package name */
    public int f25187h;

    public hp(Context context) {
        super(context);
        this.f25187h = -16777216;
    }

    private String zy(String str) {
        String strGu = gu(str);
        return TextUtils.isEmpty(strGu) ? "" : "local://".concat(String.valueOf(strGu));
    }

    @Override // com.byazt.qp.l
    public String eb() {
        return "drawable";
    }

    public abstract String gu(String str);

    @Override // com.byazt.qp.l, com.byazt.xs.jx
    public void hp(String str, String str2) {
        super.hp(str, str2);
        str.getClass();
        if (str.equals("textColor")) {
            this.f25187h = com.byazt.xa.hp.hp(str2);
        }
    }

    @Override // com.byazt.qp.l, com.byazt.xs.jx
    public void l() throws JSONException, NumberFormatException {
        ((l) this).hp = zy(((l) this).hp);
        super.l();
        ((RoundImageView) this.f27788w).setColorFilter(this.f25187h);
        ((RoundImageView) this.f27788w).setScaleType(ImageView.ScaleType.FIT_CENTER);
    }
}
