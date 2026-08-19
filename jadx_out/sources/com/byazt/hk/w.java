package com.byazt.hk;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.bun.miitmdid.content.StringValues;
import com.byazt.hk.di;
import com.byazt.hk.xs;
import com.byazt.yq.a;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 227, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public final class w extends jx<com.byazt.yq.a> {
    public w() {
        super("com.mdid.msa");
    }

    @Override // com.byazt.hk.jx
    public di.l<com.byazt.yq.a, String> hp() {
        return new di.l<com.byazt.yq.a, String>() { // from class: com.byazt.hk.w.1
            @Override // com.byazt.hk.di.l
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public com.byazt.yq.a l(IBinder iBinder) {
                return a.hp.hp(iBinder);
            }

            @Override // com.byazt.hk.di.l
            public String hp(com.byazt.yq.a aVar) throws Exception {
                if (aVar == null) {
                    return null;
                }
                return aVar.hp();
            }
        };
    }

    @Override // com.byazt.hk.jx, com.byazt.hk.xs
    public xs.hp jx(Context context) {
        hp(context, context.getPackageName());
        return super.jx(context);
    }

    @Override // com.byazt.hk.jx
    public Intent hp(Context context) {
        Intent intent = new Intent();
        intent.setClassName("com.mdid.msa", "com.mdid.msa.service.MsaIdService");
        intent.setAction(StringValues.ACTION_BINDTO_MSASERVICE);
        intent.putExtra(StringValues.PARAM_BIND_PKGNAME, context.getPackageName());
        return intent;
    }

    private void hp(Context context, String str) {
        Intent intent = new Intent();
        intent.setClassName("com.mdid.msa", "com.mdid.msa.service.MsaKlService");
        intent.setAction(StringValues.ACTION_START_MSASERVICE);
        intent.putExtra(StringValues.PARAM_BIND_PKGNAME, str);
        try {
            intent.putExtra("com.bun.msa.param.runinset", true);
            context.startService(intent);
        } catch (Exception e2) {
            com.byazt.gt.e.hp(e2);
        }
    }
}
