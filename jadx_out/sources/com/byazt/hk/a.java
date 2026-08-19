package com.byazt.hk;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.provider.Settings;
import android.text.TextUtils;
import com.byazt.hk.di;
import com.byazt.hk.xs;
import com.byazt.yq.hp;

@com.byazt.kj.hp(hp = {0, 1, 227, 54})
/* loaded from: classes2.dex */
public class a extends jx<com.byazt.yq.hp> {
    public final Context hp;

    public a(Context context) {
        super("com.coolpad.deviceidsupport");
        this.hp = context;
    }

    @Override // com.byazt.hk.jx, com.byazt.hk.xs
    public xs.hp jx(Context context) {
        try {
            String string = Settings.Global.getString(context.getContentResolver(), "coolos.oaid");
            if (!TextUtils.isEmpty(string)) {
                xs.hp hpVar = new xs.hp();
                hpVar.f20732l = string;
                return hpVar;
            }
        } catch (Throwable unused) {
        }
        return super.jx(context);
    }

    @Override // com.byazt.hk.jx, com.byazt.hk.xs
    public /* bridge */ /* synthetic */ boolean l(Context context) {
        return super.l(context);
    }

    @Override // com.byazt.hk.jx
    public di.l<com.byazt.yq.hp, String> hp() {
        return new di.l<com.byazt.yq.hp, String>() { // from class: com.byazt.hk.a.1
            @Override // com.byazt.hk.di.l
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public com.byazt.yq.hp l(IBinder iBinder) {
                return hp.AbstractBinderC0428hp.hp(iBinder);
            }

            @Override // com.byazt.hk.di.l
            public String hp(com.byazt.yq.hp hpVar) throws Exception {
                if (hpVar == null) {
                    return null;
                }
                return hpVar.l(a.this.hp.getPackageName());
            }
        };
    }

    @Override // com.byazt.hk.jx
    public Intent hp(Context context) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.coolpad.deviceidsupport", "com.coolpad.deviceidsupport.DeviceIdService"));
        return intent;
    }
}
