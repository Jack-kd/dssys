package com.anythink.network.sigmob;

import com.sigmob.windad.WindAds;

/* loaded from: classes2.dex */
public class SigmobATConst {
    public static final int NETWORK_FIRM_ID = 29;

    public static class DEBUGGER_CONFIG {
        public static final int Sigmob_NETWORK = 29;
    }

    public static class REWARD_EXTRA {
        public static final String REWARD_EXTRA_KEY_REWARD_OPTIONS = "sigmob_reward_options";
    }

    public static String getNetworkVersion() {
        try {
            return WindAds.getVersion();
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }
}
