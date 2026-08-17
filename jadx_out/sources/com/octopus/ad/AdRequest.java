package com.octopus.ad;

import android.os.Bundle;
import com.octopus.ad.internal.b.a;
import com.octopus.ad.internal.x;
import java.util.Date;

/* loaded from: classes4.dex */
public final class AdRequest {

    /* renamed from: a, reason: collision with root package name */
    public static final String f33194a = com.octopus.ad.internal.b.a.f34215a;

    /* renamed from: b, reason: collision with root package name */
    private final a.C0746a f33195b;

    public static final class Builder {
        private final a.C0746a mImpl;

        public Builder() {
            a.C0746a c0746a = new a.C0746a();
            this.mImpl = c0746a;
            c0746a.b(AdRequest.f33194a);
        }

        public Builder addKeyword(String str) {
            this.mImpl.a(str);
            return this;
        }

        public Builder addNetworkExtrasBundle(Class<? extends Object> cls, Bundle bundle) {
            this.mImpl.a(cls, bundle);
            return this;
        }

        public Builder addTestDevice(String str) {
            this.mImpl.b(str);
            return this;
        }

        public AdRequest build() {
            return new AdRequest(this);
        }

        public Builder setBirthday(Date date) {
            this.mImpl.a(date);
            return this;
        }

        public Builder setContentUrl(String str) {
            x.a(str, (Object) "Content URL must be non-null.");
            x.a(str, (Object) "Content URL must be non-empty.");
            x.a(str.length() <= 512, "Content URL must not exceed %d in length.  Provided length was %d.", 512, Integer.valueOf(str.length()));
            this.mImpl.c(str);
            return this;
        }

        public Builder setGender(int i2) {
            this.mImpl.a(i2);
            return this;
        }

        public Builder setIsDesignedForFamilies(boolean z2) {
            this.mImpl.b(z2);
            return this;
        }

        public Builder setRequestAgent(String str) {
            this.mImpl.d(str);
            return this;
        }

        public Builder tagForChildDirectedTreatment(boolean z2) {
            this.mImpl.a(z2);
            return this;
        }
    }

    public a.C0746a a() {
        return this.f33195b;
    }

    private AdRequest(Builder builder) {
        this.f33195b = builder.mImpl;
    }
}
