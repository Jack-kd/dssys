package com.byazt.nv;

import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.os.Build;
import android.os.LocaleList;
import androidx.core.view.ViewCompat;
import com.byazt.ze.q;

@com.byazt.kj.hp(hp = {0, 1, 1851, 28})
/* loaded from: classes3.dex */
public class hp extends Paint {
    public hp() {
    }

    @Override // android.graphics.Paint
    public void setAlpha(int i2) {
        if (Build.VERSION.SDK_INT >= 29) {
            super.setAlpha(q.hp(i2, 0, 255));
        } else {
            setColor((q.hp(i2, 0, 255) << 24) | (getColor() & ViewCompat.MEASURED_SIZE_MASK));
        }
    }

    @Override // android.graphics.Paint
    public void setTextLocales(LocaleList localeList) {
    }

    public hp(int i2) {
        super(i2);
    }

    public hp(PorterDuff.Mode mode) {
        setXfermode(new PorterDuffXfermode(mode));
    }

    public hp(int i2, PorterDuff.Mode mode) {
        super(i2);
        setXfermode(new PorterDuffXfermode(mode));
    }
}
