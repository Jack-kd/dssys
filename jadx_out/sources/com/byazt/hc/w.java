package com.byazt.hc;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1439, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w {

    @SuppressLint({"StaticFieldLeak"})
    public static volatile w hp;

    /* renamed from: j, reason: collision with root package name */
    public l f20671j;
    public Map<com.byazt.aj.jx, jx> jx = new HashMap();

    /* renamed from: l, reason: collision with root package name */
    public Context f20672l;

    /* renamed from: w, reason: collision with root package name */
    public j f20673w;

    @com.byazt.kj.hp(hp = {0, 1, 1439, 91})
    /* renamed from: com.byazt.hc.w$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] hp;

        static {
            int[] iArr = new int[com.byazt.aj.jx.values().length];
            hp = iArr;
            try {
                iArr[com.byazt.aj.jx.JAVA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                hp[com.byazt.aj.jx.ANR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                hp[com.byazt.aj.jx.CUSTOM_JAVA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private w(@NonNull Context context) {
        this.f20672l = context;
        this.f20671j = new l(this.f20672l);
        this.f20673w = new j(this.f20672l);
    }

    public static w hp() {
        if (hp != null) {
            return hp;
        }
        throw new IllegalArgumentException("CrashContextAssembly not init");
    }

    public static void hp(Context context) {
        if (hp == null) {
            hp = new w(context);
        }
    }

    @Nullable
    private jx hp(com.byazt.aj.jx jxVar) {
        jx ebVar = this.jx.get(jxVar);
        if (ebVar != null) {
            return ebVar;
        }
        int i2 = AnonymousClass1.hp[jxVar.ordinal()];
        if (i2 == 1) {
            ebVar = new eb(this.f20672l, this.f20671j, this.f20673w);
        } else if (i2 == 2) {
            ebVar = new hp(this.f20672l, this.f20671j, this.f20673w);
        } else if (i2 == 3) {
            ebVar = new a(this.f20672l, this.f20671j, this.f20673w);
        }
        if (ebVar != null) {
            this.jx.put(jxVar, ebVar);
        }
        return ebVar;
    }

    public com.byazt.rw.hp hp(com.byazt.aj.jx jxVar, com.byazt.rw.hp hpVar) {
        jx jxVarHp;
        return (jxVar == null || (jxVarHp = hp(jxVar)) == null) ? hpVar : jxVarHp.hp(hpVar);
    }
}
