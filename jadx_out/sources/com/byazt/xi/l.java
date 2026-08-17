package com.byazt.xi;

import com.bykv.vk.openvk.api.proto.Result;
import com.bykv.vk.openvk.api.proto.ValueSet;

@com.byazt.kj.hp(hp = {0, 1, 703, 34})
/* loaded from: classes3.dex */
public class l {
    public boolean hp = false;

    /* renamed from: l, reason: collision with root package name */
    public int f27673l = -1;
    public String jx = null;

    /* renamed from: j, reason: collision with root package name */
    public ValueSet f27672j = null;

    @com.byazt.kj.hp(hp = {0, 1, 703, 123})
    public static final class hp implements Result {
        public final boolean hp;

        /* renamed from: j, reason: collision with root package name */
        public final ValueSet f27674j;
        public final String jx;

        /* renamed from: l, reason: collision with root package name */
        public final int f27675l;

        @Override // com.bykv.vk.openvk.api.proto.Result
        public int code() {
            return this.f27675l;
        }

        @Override // com.bykv.vk.openvk.api.proto.Result
        public boolean isSuccess() {
            return this.hp;
        }

        @Override // com.bykv.vk.openvk.api.proto.Result
        public String message() {
            return this.jx;
        }

        @Override // com.bykv.vk.openvk.api.proto.Result
        public ValueSet values() {
            return this.f27674j;
        }

        private hp(boolean z2, int i2, String str, ValueSet valueSet) {
            this.hp = z2;
            this.f27675l = i2;
            this.jx = str;
            this.f27674j = valueSet;
        }
    }

    private l() {
    }

    public static final l hp() {
        return new l();
    }

    public Result l() {
        boolean z2 = this.hp;
        int i2 = this.f27673l;
        String str = this.jx;
        ValueSet valueSetL = this.f27672j;
        if (valueSetL == null) {
            valueSetL = jx.hp().l();
        }
        return new hp(z2, i2, str, valueSetL);
    }

    public l hp(boolean z2) {
        this.hp = z2;
        return this;
    }

    public l hp(int i2) {
        this.f27673l = i2;
        return this;
    }

    public l hp(String str) {
        this.jx = str;
        return this;
    }

    public l hp(ValueSet valueSet) {
        this.f27672j = valueSet;
        return this;
    }
}
