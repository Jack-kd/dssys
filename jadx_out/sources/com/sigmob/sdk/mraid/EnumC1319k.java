package com.sigmob.sdk.mraid;

import com.sigmob.sdk.base.models.PlacementType;

/* renamed from: com.sigmob.sdk.mraid.k, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public enum EnumC1319k {
    CLOSE("close"),
    EXPAND("expand") { // from class: com.sigmob.sdk.mraid.k.1
        @Override // com.sigmob.sdk.mraid.EnumC1319k
        public boolean a(PlacementType placementType) {
            return placementType == PlacementType.INLINE;
        }
    },
    USE_CUSTOM_CLOSE("usecustomclose"),
    OPEN("open") { // from class: com.sigmob.sdk.mraid.k.2
        @Override // com.sigmob.sdk.mraid.EnumC1319k
        public boolean a(PlacementType placementType) {
            return true;
        }
    },
    feedBack("feedback") { // from class: com.sigmob.sdk.mraid.k.3
        @Override // com.sigmob.sdk.mraid.EnumC1319k
        public boolean a(PlacementType placementType) {
            return true;
        }
    },
    UNLOAD("unload"),
    OPENFOURELEMENTS("openFourElements"),
    RESIZE("resize") { // from class: com.sigmob.sdk.mraid.k.4
        @Override // com.sigmob.sdk.mraid.EnumC1319k
        public boolean a(PlacementType placementType) {
            return true;
        }
    },
    SET_ORIENTATION_PROPERTIES("setOrientationProperties"),
    PLAY_VIDEO("playVideo") { // from class: com.sigmob.sdk.mraid.k.5
        @Override // com.sigmob.sdk.mraid.EnumC1319k
        public boolean a(PlacementType placementType) {
            return placementType == PlacementType.INLINE;
        }
    },
    STORE_PICTURE("storePicture") { // from class: com.sigmob.sdk.mraid.k.6
        @Override // com.sigmob.sdk.mraid.EnumC1319k
        public boolean a(PlacementType placementType) {
            return true;
        }
    },
    CREATE_CALENDAR_EVENT("createCalendarEvent") { // from class: com.sigmob.sdk.mraid.k.7
        @Override // com.sigmob.sdk.mraid.EnumC1319k
        public boolean a(PlacementType placementType) {
            return true;
        }
    },
    VPAID("vpaid") { // from class: com.sigmob.sdk.mraid.k.8
        @Override // com.sigmob.sdk.mraid.EnumC1319k
        public boolean a(PlacementType placementType) {
            return true;
        }
    },
    EXTENSION("extension") { // from class: com.sigmob.sdk.mraid.k.9
        @Override // com.sigmob.sdk.mraid.EnumC1319k
        public boolean a(PlacementType placementType) {
            return true;
        }
    },
    UNSPECIFIED("");


    /* renamed from: p, reason: collision with root package name */
    private final String f37977p;

    EnumC1319k(String str) {
        this.f37977p = str;
    }

    public static EnumC1319k a(String str) {
        for (EnumC1319k enumC1319k : values()) {
            if (enumC1319k.f37977p.equals(str)) {
                return enumC1319k;
            }
        }
        return UNSPECIFIED;
    }

    public String a() {
        return this.f37977p;
    }

    public boolean a(PlacementType placementType) {
        return false;
    }
}
