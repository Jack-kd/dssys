package com.byazt.pjc;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.widget.ImageView;
import com.byazt.nke.b;
import com.byazt.nke.sz;
import com.byazt.nke.u;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1436, 28})
/* loaded from: classes3.dex */
public class hp {

    @com.byazt.kj.hp(hp = {0, 1, 1436, 170})
    /* renamed from: com.byazt.pjc.hp$hp, reason: collision with other inner class name */
    public static class C0341hp implements l {
        @Override // com.byazt.pjc.hp.l
        public void hp(int i2, String str, Throwable th) {
        }

        @Override // com.byazt.pjc.hp.l
        public void hp(u uVar, com.byazt.pjc.l lVar) {
        }
    }

    public interface l {
        void hp(int i2, String str, Throwable th);

        void hp(u uVar, com.byazt.pjc.l lVar);
    }

    public static C0341hp l() {
        return new C0341hp();
    }

    public void hp() {
    }

    public void hp(com.byazt.er.l lVar, l lVar2, int i2, int i3, String str) {
        hp(lVar, lVar2, i2, i3, ImageView.ScaleType.CENTER_INSIDE, str);
    }

    public void hp(com.byazt.er.l lVar, l lVar2, int i2, int i3, String str, int i4, sz szVar, boolean z2) {
        hp(lVar, lVar2, i2, i3, ImageView.ScaleType.CENTER_INSIDE, str, i4, szVar, z2);
    }

    public void hp(com.byazt.er.l lVar, final l lVar2, int i2, int i3, ImageView.ScaleType scaleType, String str) {
        com.byazt.ws.l.hp(lVar.hp).key(lVar.f19442l).width(i2).height(i3).cacheDir(str).config(Bitmap.Config.RGB_565).scaleType(scaleType).requestTime(!TextUtils.isEmpty(str)).to(new b() { // from class: com.byazt.pjc.hp.1
            @Override // com.byazt.nke.b
            public void onFailed(int i4, String str2, Throwable th) {
                hp.this.hp(i4, str2, th, lVar2);
            }

            @Override // com.byazt.nke.b
            public void onSuccess(u uVar) {
                hp.this.hp(uVar, lVar2);
            }
        });
        hp();
    }

    public void hp(com.byazt.er.l lVar, final l lVar2, int i2, int i3, ImageView.ScaleType scaleType, String str, int i4, sz szVar, boolean z2) {
        com.byazt.ws.l.hp(lVar.hp).key(lVar.f19442l).width(i2).height(i3).cacheDir(str).config(Bitmap.Config.RGB_565).scaleType(scaleType).loadSetp(szVar).headers(z2).requestTime(!TextUtils.isEmpty(str)).to(new b() { // from class: com.byazt.pjc.hp.2
            @Override // com.byazt.nke.b
            public void onFailed(int i5, String str2, Throwable th) {
                hp.this.hp(i5, str2, th, lVar2);
            }

            @Override // com.byazt.nke.b
            public void onSuccess(u uVar) {
                hp.this.hp(uVar, lVar2);
            }
        }, i4);
        hp();
    }

    public void hp(u uVar, l lVar) {
        if (lVar != null) {
            Object result = uVar.getResult();
            int iHp = hp(uVar);
            if (result instanceof byte[]) {
                lVar.hp(uVar, new com.byazt.pjc.l((byte[]) result, iHp));
            } else if (result instanceof Bitmap) {
                lVar.hp(uVar, new com.byazt.pjc.l((Bitmap) result, iHp));
            } else {
                lVar.hp(0, "not bitmap or gif result!", null);
            }
        }
    }

    private int hp(u uVar) {
        Map<String, String> headers = uVar.getHeaders();
        if (headers == null) {
            return 0;
        }
        try {
            String str = headers.get("image_size");
            if (str == null || !(str instanceof String)) {
                return 0;
            }
            return Integer.parseInt(str);
        } catch (Throwable unused) {
            return 0;
        }
    }

    public void hp(int i2, String str, Throwable th, l lVar) {
        if (lVar != null) {
            lVar.hp(i2, str, th);
        }
    }
}
