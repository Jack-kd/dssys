package com.byazt.hk;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.byazt.hk.di;
import com.byazt.hk.xs;

@com.byazt.kj.hp(hp = {0, 1, 227, 30})
/* loaded from: classes2.dex */
public abstract class jx<SERVICE> implements xs {
    public final String hp;

    /* renamed from: l, reason: collision with root package name */
    public l<Boolean> f20718l = new l<Boolean>() { // from class: com.byazt.hk.jx.1
        @Override // com.byazt.hk.l
        /* renamed from: jx, reason: merged with bridge method [inline-methods] */
        public Boolean hp(Object... objArr) {
            return Boolean.valueOf(s.hp((Context) objArr[0], jx.this.hp));
        }
    };

    public jx(String str) {
        this.hp = str;
    }

    public abstract Intent hp(Context context);

    public abstract di.l<SERVICE, String> hp();

    @Override // com.byazt.hk.xs
    public xs.hp jx(Context context) {
        return hp((String) new di(context, hp(context), hp()).hp());
    }

    @Override // com.byazt.hk.xs
    public boolean l(Context context) {
        if (context == null) {
            return false;
        }
        return this.f20718l.l(context).booleanValue();
    }

    private xs.hp hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        xs.hp hpVar = new xs.hp();
        hpVar.f20732l = str;
        return hpVar;
    }
}
