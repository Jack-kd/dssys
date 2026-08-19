package com.fl.saas.adx.api;

import com.fl.saas.adx.base.base.builder.InnerBuilder;

/* loaded from: classes3.dex */
public class FLParamConfig {
    private final InnerBuilder<?, ?> mBuilder;

    public static final class Builder extends InnerBuilder<Builder, FLParamConfig> {
        /* JADX WARN: Multi-variable type inference failed */
        public Builder() {
            this.builder = this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fl.saas.adx.base.base.builder.InnerBuilder
        public FLParamConfig build() {
            return new FLParamConfig(this);
        }
    }

    public FLParamConfig(InnerBuilder<?, ?> innerBuilder) {
        this.mBuilder = innerBuilder;
    }

    public InnerBuilder<?, ?> getBuilder() {
        return this.mBuilder;
    }
}
