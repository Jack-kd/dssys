package com.byazt.ws;

import android.widget.ImageView;
import com.byazt.nke.k;
import com.byazt.nke.ns;
import com.byazt.xci.dy;
import com.byazt.ym.j;
import com.byazt.zn.pu;
import java.io.InputStream;

@com.byazt.kj.hp(hp = {0, 1, 770, 34})
/* loaded from: classes3.dex */
public class l {
    public static com.byazt.ih.hp hp() {
        return new com.byazt.ih.hp() { // from class: com.byazt.ws.l.1
            @Override // com.byazt.ih.hp
            public void hp(ImageView imageView, String str) {
                l.hp(com.byazt.ij.jx.hp(str)).to(imageView);
            }
        };
    }

    public static ns l() {
        return (ns) j.getService("img_service");
    }

    public static k hp(String str) {
        return hp(l().from(str));
    }

    public static k hp(dy dyVar) {
        return hp(l().from(dyVar.hp()).width(dyVar.l()).height(dyVar.jx()).key(dyVar.eb()));
    }

    public static InputStream hp(String str, String str2) {
        return l().getCacheStream(str, str2);
    }

    private static k hp(k kVar) {
        return pu.hp() ? kVar.track(new jx()) : kVar;
    }
}
