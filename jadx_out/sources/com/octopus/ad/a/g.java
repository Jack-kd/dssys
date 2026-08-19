package com.octopus.ad.a;

/* loaded from: classes4.dex */
public final class g {

    public enum a {
        ADP_UNKNOWN(0),
        ADP_REWARD(1),
        ADP_SPLASH(2),
        ADP_INTERSTITIAL(3),
        ADP_BANNER(4),
        ADP_FULL_SCREEN(5),
        ADP_NATIVE(6),
        ADP_DRAW(7);


        /* renamed from: i, reason: collision with root package name */
        private final int f33642i;

        a(int i2) {
            this.f33642i = i2;
        }

        public static a a(int i2) {
            switch (i2) {
                case 0:
                    return ADP_UNKNOWN;
                case 1:
                    return ADP_REWARD;
                case 2:
                    return ADP_SPLASH;
                case 3:
                    return ADP_INTERSTITIAL;
                case 4:
                    return ADP_BANNER;
                case 5:
                    return ADP_FULL_SCREEN;
                case 6:
                    return ADP_NATIVE;
                case 7:
                    return ADP_DRAW;
                default:
                    return null;
            }
        }
    }

    public enum b {
        DEVICE_UNKNOWN(0),
        DEVICE_PHONE(1),
        DEVICE_FLAT(2),
        DEVICE_WEAR(3),
        DEVICE_PC(4),
        DEVICE_OTHER(5);


        /* renamed from: g, reason: collision with root package name */
        private final int f33650g;

        b(int i2) {
            this.f33650g = i2;
        }
    }

    public enum c {
        ISP_UNKNOWN(0),
        ISP_CN_MOBILE(1),
        ISP_CN_UNICOM(2),
        ISP_CN_TEL(3),
        ISP_OTHER(4);


        /* renamed from: f, reason: collision with root package name */
        private final int f33657f;

        c(int i2) {
            this.f33657f = i2;
        }

        public final int a() {
            return this.f33657f;
        }

        public static c a(int i2) {
            if (i2 == 0) {
                return ISP_UNKNOWN;
            }
            if (i2 == 1) {
                return ISP_CN_MOBILE;
            }
            if (i2 == 2) {
                return ISP_CN_UNICOM;
            }
            if (i2 == 3) {
                return ISP_CN_TEL;
            }
            if (i2 != 4) {
                return null;
            }
            return ISP_OTHER;
        }
    }

    public enum d {
        NET_UNKNOWN(0),
        NET_3G(1),
        NET_4G(2),
        NET_5G(3),
        NET_WIFI(4),
        NET_OTHER(5),
        NET_2G(6);


        /* renamed from: h, reason: collision with root package name */
        private final int f33666h;

        d(int i2) {
            this.f33666h = i2;
        }

        public final int a() {
            return this.f33666h;
        }

        public static d a(int i2) {
            switch (i2) {
                case 0:
                    return NET_UNKNOWN;
                case 1:
                    return NET_3G;
                case 2:
                    return NET_4G;
                case 3:
                    return NET_5G;
                case 4:
                    return NET_WIFI;
                case 5:
                    return NET_OTHER;
                case 6:
                    return NET_2G;
                default:
                    return null;
            }
        }
    }

    public enum e {
        PLATFORM_UNKNOWN(0),
        PLATFORM_IOS(1),
        PLATFORM_ANDROID(2),
        PLATFORM_OTHER(3);


        /* renamed from: e, reason: collision with root package name */
        private final int f33672e;

        e(int i2) {
            this.f33672e = i2;
        }
    }

    public enum f {
        RENDER_UNKNOWN(0),
        RENDER_VIDEO(1),
        RENDER_PIC(2),
        RENDER_H5(3),
        RENDER_JSON(4),
        RENDER_VAST_VIDEO(5);


        /* renamed from: g, reason: collision with root package name */
        private final int f33680g;

        f(int i2) {
            this.f33680g = i2;
        }

        public static f a(int i2) {
            if (i2 == 0) {
                return RENDER_UNKNOWN;
            }
            if (i2 == 1) {
                return RENDER_VIDEO;
            }
            if (i2 == 2) {
                return RENDER_PIC;
            }
            if (i2 == 3) {
                return RENDER_H5;
            }
            if (i2 == 4) {
                return RENDER_JSON;
            }
            if (i2 != 5) {
                return null;
            }
            return RENDER_VAST_VIDEO;
        }
    }

    /* renamed from: com.octopus.ad.a.g$g, reason: collision with other inner class name */
    public enum EnumC0713g {
        REQ_UNKNOWN(0),
        REQ_AD(1),
        REQ_WIFI_PRELOAD(2);


        /* renamed from: d, reason: collision with root package name */
        private final int f33685d;

        EnumC0713g(int i2) {
            this.f33685d = i2;
        }
    }

    public enum h {
        SCREEN_DIRECTION_UNKOWN(0),
        PORTRAIT(1),
        LANDSCAPE(2);


        /* renamed from: d, reason: collision with root package name */
        private final int f33690d;

        h(int i2) {
            this.f33690d = i2;
        }

        public static h a(int i2) {
            if (i2 == 0) {
                return SCREEN_DIRECTION_UNKOWN;
            }
            if (i2 == 1) {
                return PORTRAIT;
            }
            if (i2 != 2) {
                return null;
            }
            return LANDSCAPE;
        }
    }

    public enum i {
        SRC_UNKNOWN(0),
        SRC_APP(1),
        SRC_WAP(2),
        SRC_PC(3),
        SRC_TEST(4);


        /* renamed from: f, reason: collision with root package name */
        private final int f33697f;

        i(int i2) {
            this.f33697f = i2;
        }
    }
}
