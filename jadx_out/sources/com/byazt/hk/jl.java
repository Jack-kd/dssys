package com.byazt.hk;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.byazt.h.l;
import com.byazt.hk.di;
import com.byazt.hk.xs;

@com.byazt.kj.hp(hp = {0, 1, 227, 19})
/* loaded from: classes2.dex */
public class jl extends jx<com.byazt.h.l> {
    public final e hp;

    /* renamed from: l, reason: collision with root package name */
    public final gu f20717l;

    public jl() {
        super("com.hihonor.id");
        this.hp = new e();
        this.f20717l = new gu();
    }

    @Override // com.byazt.hk.jx
    public di.l<com.byazt.h.l, String> hp() {
        return new di.l<com.byazt.h.l, String>() { // from class: com.byazt.hk.jl.1
            @Override // com.byazt.hk.di.l
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public com.byazt.h.l l(IBinder iBinder) {
                return l.hp.hp(iBinder);
            }

            @Override // com.byazt.hk.di.l
            public String hp(com.byazt.h.l lVar) throws Exception {
                if (lVar == null) {
                    com.byazt.ymw.u.l("honor# ", "service is null");
                    return null;
                }
                lVar.hp(jl.this.hp);
                lVar.l(jl.this.f20717l);
                return "";
            }
        };
    }

    @Override // com.byazt.hk.jx, com.byazt.hk.xs
    public xs.hp jx(Context context) {
        new di(context, hp(context), hp()).hp();
        xs.hp hpVar = new xs.hp();
        hpVar.f20732l = this.hp.hp();
        hpVar.jx = this.f20717l.hp();
        return hpVar;
    }

    @Override // com.byazt.hk.jx, com.byazt.hk.xs
    public /* bridge */ /* synthetic */ boolean l(Context context) {
        return super.l(context);
    }

    @Override // com.byazt.hk.jx
    public Intent hp(Context context) {
        Intent intent = new Intent();
        intent.setAction("com.hihonor.id.HnOaIdService");
        intent.setPackage("com.hihonor.id");
        return intent;
    }
}
