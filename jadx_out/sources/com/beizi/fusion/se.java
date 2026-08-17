package com.beizi.fusion;

/* loaded from: classes2.dex */
public interface se extends ab {

    public enum a implements za {
        REWARD_CLAIM_EVENT(600, "reward_claim");


        /* renamed from: a, reason: collision with root package name */
        private final int f16236a;

        /* renamed from: b, reason: collision with root package name */
        private final String f16237b;

        a(int i2, String str) {
            this.f16236a = i2;
            this.f16237b = str;
        }

        @Override // com.beizi.fusion.za
        public int getEventCode() {
            return this.f16236a;
        }
    }

    void g(za zaVar);
}
