package com.anythink.core.api;

/* loaded from: classes.dex */
public class ATAdCreateConfig {
    private boolean isMultiton;

    public static class Builder {
        ATAdCreateConfig config = new ATAdCreateConfig();

        public ATAdCreateConfig build() {
            return this.config;
        }

        public Builder setMultiton(boolean z2) {
            this.config.isMultiton = z2;
            return this;
        }
    }

    public boolean isMultiton() {
        return this.isMultiton;
    }

    private ATAdCreateConfig() {
    }
}
