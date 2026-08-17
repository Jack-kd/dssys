package com.byazt.gjx;

import android.content.Context;

@com.byazt.kj.hp(hp = {0, 1, 737, 94})
/* loaded from: classes2.dex */
public class eb {
    public Context hp;

    /* renamed from: j, reason: collision with root package name */
    public boolean f20470j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public String f20471l;

    /* renamed from: w, reason: collision with root package name */
    public s f20472w;

    @com.byazt.kj.hp(hp = {0, 1, 737, 131})
    public static class hp {
        public final Context hp;
        public final String jx;

        /* renamed from: l, reason: collision with root package name */
        public final String f20474l;

        /* renamed from: j, reason: collision with root package name */
        public boolean f20473j = false;

        /* renamed from: w, reason: collision with root package name */
        public s f20475w = null;

        public hp(Context context, String str, String str2) {
            this.hp = context;
            this.jx = str2;
            this.f20474l = str;
        }

        public void hp(s sVar) {
            this.f20475w = sVar;
        }

        public hp hp(boolean z2) {
            this.f20473j = z2;
            return this;
        }

        public eb hp() {
            eb ebVar = new eb();
            ebVar.hp = this.hp;
            ebVar.f20471l = this.f20474l;
            ebVar.jx = this.jx;
            ebVar.f20472w = this.f20475w;
            ebVar.f20470j = this.f20473j;
            return ebVar;
        }
    }

    public s j() {
        return this.f20472w;
    }

    public boolean jx() {
        return this.f20470j;
    }

    public String l() {
        return this.f20471l;
    }

    public Context hp() {
        return this.hp;
    }
}
