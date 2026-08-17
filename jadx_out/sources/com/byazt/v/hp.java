package com.byazt.v;

import com.umeng.commonsdk.statistics.UMErrorCode;

@com.byazt.kj.hp(hp = {0, 1, UMErrorCode.E_UM_BE_ERROR_WORK_MODE, 28})
/* loaded from: classes3.dex */
public class hp {
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public String f26502j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public String f26503l;

    /* renamed from: w, reason: collision with root package name */
    public String f26504w;

    @com.byazt.kj.hp(hp = {0, 1, UMErrorCode.E_UM_BE_ERROR_WORK_MODE, 170})
    /* renamed from: com.byazt.v.hp$hp, reason: collision with other inner class name */
    public static class C0390hp {
        public String hp;

        /* renamed from: j, reason: collision with root package name */
        public String f26505j;
        public String jx;

        /* renamed from: l, reason: collision with root package name */
        public String f26506l;

        /* renamed from: w, reason: collision with root package name */
        public String f26507w;

        public C0390hp hp(String str) {
            this.hp = str;
            return this;
        }

        public C0390hp j(String str) {
            this.f26507w = str;
            return this;
        }

        public C0390hp jx(String str) {
            this.f26505j = str;
            return this;
        }

        public C0390hp l(String str) {
            this.f26506l = str;
            return this;
        }

        public hp hp() {
            return new hp(this);
        }
    }

    public hp(C0390hp c0390hp) {
        this.f26503l = "";
        this.hp = c0390hp.hp;
        this.f26503l = c0390hp.f26506l;
        this.jx = c0390hp.jx;
        this.f26502j = c0390hp.f26505j;
        this.f26504w = c0390hp.f26507w;
    }
}
